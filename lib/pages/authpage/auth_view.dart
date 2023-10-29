import 'package:flutter/material.dart';
import 'package:lesson_navigator_two/pages/musiclistpage/music_list.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
        title: const Text("SIGN UP PAGE"),
        backgroundColor: const Color.fromARGB(255, 62, 103, 93),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Your Name: Dadaxon"),
            const SizedBox(
              height: 10,
            ),
            const Text("Your age: 17"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your Email:dadaxonmakh@gmail.com",
            ),
            const SizedBox(height: 13),
            const Text("TAP  TO SEE MUSIC LISTS"),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MusicListPage();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.queue_music_outlined,
                size: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
