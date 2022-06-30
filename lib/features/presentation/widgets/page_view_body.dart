// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_import, prefer_const_constructors, implementation_imports


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageViewBody extends StatelessWidget {
  final String? title;
  final String? subtitle;
 final String? logo;
  final String? image;

  const PageViewBody({
    Key? key,
    this.title,
    this.subtitle,
    this.logo,
    this.image,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       SizedBox(
        height: 10,
       ),
      Image.asset(logo!),
       SizedBox(
        height: 20,
       ),
       Image.asset(image!),
       Text(title!,
        style: TextStyle(
             fontSize:25,
            color: Colors.black,
                ),
            ),
            SizedBox(
        height: 5,
       ),
             Text(subtitle!,
        style: TextStyle(
             fontSize:10,
            color: Colors.black,
                ),
            ),
         ],


    );
          
  }
}
