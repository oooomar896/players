// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled/core/consert/route.dart';

class Homelist extends StatefulWidget {
  const Homelist({super.key});
  @override
  State<Homelist> createState() => _HomelistState();
}

class _HomelistState extends State<Homelist> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 51, 112, 53),
        foregroundColor: const Color.fromARGB(255, 51, 112, 53),
        actions: [
          const Row(
            children: [
              Text(
                'اكاديمية صناع الإحتراف',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {
              Get.toNamed(AppRoute.add);
            },
            child: const Icon(
              Icons.add,
              color: Color.fromARGB(255, 51, 112, 53),
              size: 30,
            ),
          )
        ],
      ),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedIconTheme: const IconThemeData(
          color: Colors.green,
          size: 28.0,
        ),
        useLegacyColorScheme: true,
        unselectedIconTheme: const IconThemeData(
            size: 23.0, color: Color.fromARGB(255, 18, 37, 19)),
        // ignore: prefer_const_constructors
        selectedItemColor: Color.fromARGB(255, 18, 37, 19),
        unselectedItemColor: const Color.fromARGB(255, 18, 37, 19),
        unselectedFontSize: 12,
        selectedFontSize: 10,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() => currentIndex = index);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
            ),
            label: "Players".tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_applications),
            label: "Attendence".tr,
          ),
        ],
        iconSize: 20,
      ),
    );
  }
}
