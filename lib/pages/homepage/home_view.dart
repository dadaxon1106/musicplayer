import 'package:flutter/material.dart';
import 'package:lesson_navigator_two/pages/authpage/auth_view.dart';
import 'package:lesson_navigator_two/pages/musiclistpage/music_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white70,
        title: const Text(
          "MUSIC PLAYER",
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "WELCOME OUR APP",
            ),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.music_note_sharp,
              size: 60,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AuthPage(),
                ),
              );
            },
            tooltip: "SIGN UP",
            child: const Icon(
              Icons.account_box,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MusicListPage();
                  },
                ),
              );
            },
            child: const Icon(
              Icons.queue_music,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
