import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';

Center elevatedButton({
  required String label,
  required Function onPressedAction,
}) {
  return Center(
    child: SizedBox(
      height: 50,
      width: 250,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.greenSecondary)),
        onPressed: () => onPressedAction.call(),
        child: Text(label),
      ),
    ),
  );
}
