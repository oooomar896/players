// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustTextFormSign extends StatelessWidget {
  final String hintText;
  final String label;
  final IconData? icondata;
  final TextEditingController? mycontroller;
  final bool isNumber;
  final bool? obScureText;
  final void Function()? onTapIcon;

  const CustTextFormSign({
    super.key,
    this.onTapIcon,
    required this.hintText,
    required this.label,
    this.icondata,
    this.mycontroller,
    required this.isNumber,
    this.obScureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColor.iconGreetColor,
      height: 60,
      margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        controller: mycontroller,
        obscureText: obScureText == null || obScureText == false ? false : true,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          /*label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(label),
          ),*/
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 18),
          suffixIcon: InkWell(
            onTap: onTapIcon,
            child: Icon(icondata),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
