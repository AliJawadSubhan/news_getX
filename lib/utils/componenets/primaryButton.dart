import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Colors,
        Container,
        InkWell,
        Key,
        StatelessWidget,
        Text,
        TextStyle,
        VoidCallback,
        Widget;

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
    return InkWell(
      onTap: onpress,
      child: Container(
        height: height,
        width: width,
        // color: buttonColor,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: loading ? Colors.grey[300] : buttonColor,
        ),
        child: loading
            ? Center(
                child: CircularProgressIndicator(
                  color: buttonColor,
                ),
              )
            : Center(
                child: Text(
                  mainText,
                  style: TextStyle(color: textColor),
                ),
              ),
      ),
    );
  }
}
