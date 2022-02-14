import 'package:flutter/material.dart';
import 'package:steam_clone_ui/shared/color_pallet.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.customIcon,
    required this.voidCallback,
  }) : super(key: key);

  final Icon customIcon;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: voidCallback,
      icon: customIcon,
      color: AplicationColors.lightBlue,
      iconSize: 33.0,
    );
  }
}
