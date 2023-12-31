import 'package:flutter/material.dart';
import 'package:football_apps/config/theme.dart';

class AtributCard extends StatelessWidget {
  final String text;
  final Icon icon;

  const AtributCard({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          ),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          elevation: const MaterialStatePropertyAll(0),
          foregroundColor: const MaterialStatePropertyAll(blueColor),
          backgroundColor: const MaterialStatePropertyAll(Color(0xffEFF8FF))),
      onPressed: () {},
      icon: icon,
      label: Text(
        text,
        style:
            Theme.of(context).textTheme.bodySmall?.copyWith(color: blueColor),
      ),
    );
  }
}
