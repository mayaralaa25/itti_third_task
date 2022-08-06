import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,required this.label, this.onTap, this.icon,
  }) : super(key: key);

final String label;
final VoidCallback? onTap;
final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
            onPressed: onTap,
            icon:  icon ?? Container(),
            label:  Text(label));
  }
}
