import 'package:flutter/material.dart';
import 'package:steam_clone_ui/shared/color_pallet.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: TextFormField(
        style: TextStyle(
          color: AplicationColors.defaultText,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: AplicationColors.defaultText),
          filled: true,
          fillColor: AplicationColors.deepBlue,
          hintText: title,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7.0),
            ),
          ),
        ),
      ),
    );
  }
}
