// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomIndicator extends StatelessWidget {
  final double? dotindex;

  const CustomIndicator({
    Key? key,
   @required this.dotindex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
          decorator: DotsDecorator(
            activeColor: Colors.yellow,color: Colors.transparent),
          dotsCount: 3,
          position: dotindex!,
          );
  }
}
