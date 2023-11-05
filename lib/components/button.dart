// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class button_p extends StatelessWidget {
  final String text;
  final TextStyle style;
  final void Function()? onTap;
  const button_p({super.key, required this.text, required this.style, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: 200,
        decoration: BoxDecoration(
            color: Color.fromARGB(89, 126, 126, 126),
            borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: style,
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
