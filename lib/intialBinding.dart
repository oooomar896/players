// ignore: file_names
import 'package:get/get.dart';
import 'package:untitled/core/services/services.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() async {
    await Get.putAsync(() => MyServices().init()); //Home
  }
}
