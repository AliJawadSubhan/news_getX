import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.loading,
    required this.mainText,
     this.height = 50.0,
     this.width = 50.0,
    required this.onpress,
    this.textColor = Colors.white,
     this.buttonColor = Colors.indigo,
  }) : super(key: key);

  final bool loading;
  final String mainText;
  final double height, width;
  final VoidCallback onpress;
  final textColor, buttonColor;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
