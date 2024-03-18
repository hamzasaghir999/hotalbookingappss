import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


// ignore: must_be_immutable
class Backgrounddrawable extends StatelessWidget {
  Widget child;
  Color colors;
   Backgrounddrawable({super.key,required this.child,required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: Get.width,
      padding: const EdgeInsets.only(left: 20,top: 0,right: 20,bottom: 0),
      decoration:  BoxDecoration(
        // color: MyColors.textfieldbgcolor,
        color:colors,
        borderRadius: const BorderRadius.all(Radius.circular(10)),


      ),
      child:child,

    );
  }
}