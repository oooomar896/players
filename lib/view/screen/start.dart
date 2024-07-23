import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/core/consert/assetImage.dart';
import 'package:untitled/view/screen/home/homelist.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Start> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Homelist())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  SizedBox(
                      child: Column(
                    children: [
                      Image(
                        image: AssetImage(AppImageAssets.logo),
                        width: 300,
                      ),
                    ],
                  )),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
