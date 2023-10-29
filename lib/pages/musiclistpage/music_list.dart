import 'package:flutter/material.dart';

class MusicListPage extends StatelessWidget {
  const MusicListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_sharp),
        ),
        centerTitle: true,
        title: const Text("Music List Page"),
        backgroundColor: const Color.fromARGB(255, 75, 73, 63),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("At the moment, There is no music lists"),
            SizedBox(
              height: 18,
            ),
            Text("ADD"),
            SizedBox(
              height: 10,
            ),
            Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}
