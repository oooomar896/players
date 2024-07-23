import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/dbhelper/users/AddUsers.dart';
import 'package:untitled/routes.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  DatabaseUsers.connect2;
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      getPages: routes,
    );
  }
}
