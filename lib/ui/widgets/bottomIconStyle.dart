import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:negar/styles/color_palette.dart';

class BottomIconStyle extends StatelessWidget {
  final String assetsIcon;
  final Color colorIcon;
  final onTapButton;

  const BottomIconStyle({required this.assetsIcon, required this.colorIcon,required this.onTapButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: ColorPalette.light.primaryColor,
          borderRadius: BorderRadius.circular(12),
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
              spreadRadius: 0.5,
              offset: Offset(-4.0, -4.0),
            ),
          ],
        ),
        child: SvgPicture.asset(
          assetsIcon,
          color: colorIcon,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}