// ignore_for_file: non_constant_identifier_names

// ignoreTfor_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AddController extends GetxController {}

class AddControllerImp extends AddController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController namePlayer;
  late TextEditingController numberPhone;
  late TextEditingController dob;

  bool isShowPassword = true;
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    namePlayer = TextEditingController();
    numberPhone = TextEditingController();
    dob = TextEditingController();
  }

  @override
  void dispose() {
    namePlayer.dispose();
    numberPhone.dispose();
    dob.dispose();

    super.dispose();
  }
}
