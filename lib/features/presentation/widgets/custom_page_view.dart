// ignore_for_file: public_member_api_docs, sort_constructors_first


// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:task1/features/presentation/widgets/page_view_body.dart';

class CustomPageView extends StatelessWidget {
  final PageController? pageController;
  const CustomPageView({
    Key? key,
  @required  this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
     children: [
      PageViewBody(
        title: 'Get Food Delivery To your \n doorstep asap ', 
        subtitle: 'we have young and professional delivery ', 
        logo:'logo.png',
        image: 'onboarding2.png',
       
        ),
        // ignore: prefer_const_constructors
        PageViewBody(
        title: 'Buy Any Food from your \n favorite restaurant ', 
        subtitle: 'we are constantly adding your favourite ', 
         logo:'logo.png',
       image: 'onboarding3.png',
       
        ),
     ],

    );
  }
}
