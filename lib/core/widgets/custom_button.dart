


// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task1/core/constants.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  const CustomButton({Key? key,@required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: KMainColor,
        borderRadius: BorderRadius.circular(8),
          ),
      child: Center(
        child: Text( 
           text!,
           style: TextStyle(
           fontSize: 14,
           color:Colors.white,
               ), 
          ),

       ),
    );
 }
}