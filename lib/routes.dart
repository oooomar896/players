import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untitled/core/consert/route.dart';
import 'package:untitled/view/screen/add/add.dart';
import 'package:untitled/view/screen/start.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: '/', page: () => const Start()),
  GetPage(name: AppRoute.add, page: () => const Add()),
];
