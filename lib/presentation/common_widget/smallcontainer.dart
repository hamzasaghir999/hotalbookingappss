import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotalbookingapp/core/constants/my_colors.dart';

class LikeFavourite extends StatelessWidget {
  String imagename;
LikeFavourite({super.key,required this.imagename});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(5.33),
      height: 18.67,
      width: 18.67,
      decoration: const BoxDecoration(color: MyColors.primaryColor,borderRadius: BorderRadius.all(Radius.circular(3.33))),
      child: SvgPicture.asset(imagename,height: 6,width:6,),

    );
  }
}