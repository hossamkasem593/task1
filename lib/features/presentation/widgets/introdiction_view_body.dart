  

// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task1/core/widgets/custom_button.dart';
import 'package:task1/features/presentation/widgets/custom_indecotor.dart';
import 'package:task1/features/presentation/widgets/custom_page_view.dart';

class IntroductionViewBody extends StatefulWidget {
  const IntroductionViewBody({Key? key}) : super(key: key);

  @override
  State<IntroductionViewBody> createState() => _IntroductionViewBodyState();
}

class _IntroductionViewBodyState extends State<IntroductionViewBody> {
 PageController? pageController;
 @override
  void initState() {
    pageController = PageController(
    initialPage: 0

    )..addListener(() {
      setState(() {
        
      });

    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Stack(
     children: [
      CustomPageView(
        pageController: pageController,
      ),
      Positioned(
        left: 0,
        right: 0,
        bottom: 60,
        child: CustomIndicator(
         dotindex:pageController!.hasClients ? pageController?.page:0,

        ),
        
        ),
      Positioned(
      top: MediaQuery.of(context).size.height * 0.1, 
      right: 25,
        child: Container(
          height:35 ,
          width: 60,
          decoration: BoxDecoration(
           color: Color.fromARGB(255, 218, 201, 207),
           borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {  },
            child: Text(
              'Skip',
            style: TextStyle(
             fontSize: 14,
             color: Colors.black,
                ),
          
             ),
          ),
        ),
        ),
     
       Positioned(
        left: 20,
        right: 20,
        bottom: 50,
        child: CustomButton(text: 'Get Start'),
        ),
        Row(
          children: [
            Text(
              "Don't have an account",
            style: TextStyle(
             fontSize: 14,
             color: Colors.black,
                ),
            ),
            Text(
              "Sign Up",
            style: TextStyle(
             fontSize: 14,
             color: Color.fromARGB(255, 94, 125, 192),
                ),
            ),
          ],
        ),
     ],

    );
  }
}