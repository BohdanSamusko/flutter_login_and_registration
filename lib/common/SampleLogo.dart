import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SampleLogo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return SvgPicture.asset('assets/sample_logo.svg');
  }
}