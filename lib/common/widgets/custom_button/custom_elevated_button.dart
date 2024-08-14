import 'package:apna_ai_app/utils/constraints/colors.dart';
import 'package:flutter/material.dart';

class WCustomElevatedButton extends StatelessWidget {
  const WCustomElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(WColors.primary),
              side: MaterialStateProperty.all(
                  const BorderSide(color: WColors.primary))),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(color: WColors.white),
          )),
    );
  }
}
