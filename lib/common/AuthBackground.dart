import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthBackground extends StatelessWidget {
  final Widget content;

  const AuthBackground({Key key, @required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xFF0f1115),
        ),
        SvgPicture.asset('assets/dots_rectangle.svg'),
        Positioned(
          top: 0,
          right: 0,
          child: SvgPicture.asset('assets/background_circles.svg'),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SvgPicture.asset('assets/striped_oval.svg'),
        ),
        content
      ],
    );
  }
}
