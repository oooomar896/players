// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/view/screen/add/controller_add.dart';
import 'package:untitled/view/widget/dataplayesr.dart';

class Add extends StatefulWidget {
  const Add({super.key});
  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  AddControllerImp conroller = Get.put(AddControllerImp());
  // ignore: unused_field
  File? _imageFile;

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
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustTextFormSign(
                  mycontroller: conroller.namePlayer,
                  hintText: 'name player',
                  label: 'name player',
                  isNumber: false,
                ),
                CustTextFormSign(
                  mycontroller: conroller.numberPhone,
                  hintText: 'number phone player',
                  label: 'number phone player',
                  isNumber: false,
                ),
                CustTextFormSign(
                  mycontroller: conroller.dob,
                  hintText: 'history of christmas',
                  label: 'التفاصيل',
                  isNumber: false,
                ),
                MaterialButton(
                  onPressed: _pickImage, //wait
                  child: Row(
                    children: [
                      //------------------------------------------------------
                      Text(
                        'add your photo'.tr,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      const Icon(
                        Icons.add,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  color: const Color.fromARGB(255, 12, 29, 12),
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = File(pickedFile!.path);
    });
  }
}
