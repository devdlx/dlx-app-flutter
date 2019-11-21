// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAssets {
  static SvgPicture sauceTvLogo = SvgPicture.asset(
      'assets/images/saucetv_logo.svg',
      alignment: Alignment.center,
      color: Colors.white,
      // height: 30,
      fit: BoxFit.fitWidth,
      semanticsLabel: 'Acme Logo');
}
