import 'package:flutter/material.dart';
import 'package:negar/styles/color_palette.dart';
import 'package:negar/styles/negar_theme.dart';

class boxPopular extends StatelessWidget {
  final String urlImagePopular;
  final String textPoplar;
  final String followerPoplar;

  boxPopular(
      {required this.urlImagePopular,
        required this.textPoplar,
        required this.followerPoplar});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 27, top: 24, right: 8, bottom: 24),
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width / 2 - 40,
      height: 254,
      decoration: BoxDecoration(
        color: ColorPalette.light.primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: ColorPalette.light.black.withOpacity(0.3),
            blurRadius: 15,
            spreadRadius: 1,
            offset: Offset(3.0, 3.0),
          ),
          BoxShadow(
            color: ColorPalette.light.white,
            blurRadius: 15,
            spreadRadius: 1,
            offset: Offset(-4.0, -4.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 14),
            child: CircleAvatar(
              backgroundImage: AssetImage(urlImagePopular),
              radius: 58,
            ),
          ),
          Column(
            children: [
              Text(
                textPoplar,
                style: NegarTheme.lightTheme.textTheme.bodyText2,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                followerPoplar,
                style: NegarTheme.lightTheme.textTheme.subtitle1,
              ),
            ],
          )
        ],
      ),
    );
  }
}