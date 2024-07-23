// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DataPlayers extends StatefulWidget {
  const DataPlayers({super.key});
  @override
  State<DataPlayers> createState() => _DataPlayersState();
}

class _DataPlayersState extends State<DataPlayers> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            const Card(
              color: Color.fromARGB(255, 242, 242, 242),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Color.fromARGB(255, 122, 134, 122),
                    child: SizedBox(
                      width: 400,
                      height: 200,
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 142, 162, 143),
                    child: SizedBox(
                      width: 400,
                      height: 200,
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 51, 112, 53),
                    child: SizedBox(
                      width: 400,
                      height: 200,
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 51, 112, 53),
                    child: SizedBox(
                      width: 400,
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
