import 'dart:ffi';

import 'package:flutter/material.dart';

Widget customTextFormField({
  required String labelText,
  required TextInputType type,
  required Function onTap,
  required String errorMessage,
  //required Function validate,
  //required String? Function(String?) validate,
  required TextEditingController controller,
  IconData? icon,
  //final Color color = Colors.purple,
})
{
  return TextFormField(
    keyboardType: type,
    controller: controller,
    validator: (value)
     {
       if (value == null || value.isEmpty) {
         return errorMessage;
       }
       return null;
     },
    onTap: () {
      onTap();
    },
    obscureText: labelText == "Password" ? true : false,
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: Colors.deepOrange[600],
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.deepOrange,
      )),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.deepOrange,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      filled: true,
      fillColor: Colors.white,
      prefixIcon: Icon(
        icon,
        color: Colors.deepOrange[600],
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          style: BorderStyle.none,
          color: Colors.deepOrange,
        ),
      ),
      suffixIcon: labelText == "Password"
          ? Icon(Icons.remove_red_eye, color: Color(0xffA6A6A6))
          : Container(width: 1, height: 1),
    ),
  ); //Name
}
