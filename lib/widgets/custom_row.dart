import 'package:flutter/material.dart';

Widget rightCustomRow({
  required var nameOfButton,
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.w400,
  required double buttonWidth,
  double buttonHeight = 50,
  bool shadow = true,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 15.0),
        child: Container(
          height: buttonHeight,
          width: buttonWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff074E7D),
              Color(0xff00A2AD),
            ]),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)),
          ),
          child: Center(
            child: Text(
              nameOfButton.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: fontWeight),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget leftCustomRow({
  required var nameOfButton,
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.w400,
  required double buttonWidth,
  double buttonHeight = 50,
  bool shadow = true,
}) {
  return Row(
    children: [
      Image.asset("assets/icon.png"),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 15.0),
        child: Container(
          height: buttonHeight,
          width: buttonWidth,
          decoration: BoxDecoration(
            color: Color.fromARGB(200, 32, 31, 100),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child:Text(
                nameOfButton.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
