import 'package:flutter/material.dart';

class Squaretitle extends StatelessWidget {
  final String imagepath;
  const Squaretitle({
    super.key,
    required this.imagepath
    }
  );

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagepath,height: 40,);
  }
}
