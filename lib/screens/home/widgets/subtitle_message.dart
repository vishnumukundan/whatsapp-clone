import 'package:flutter/material.dart';

import '../../../components/text.dart';
import '../../../config/colors.dart';

class SubtitleMessage__widget extends StatelessWidget {
  const SubtitleMessage__widget({
    Key? key,
    required this.icon,
    required this.data,
    required this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final iconColor;
  final data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          icon,
          color: iconColor,
          size: 16,
        ),
        SizedBox(width: 4),
        BodyLarge__text(text: data, color: kColorSecondary700),
      ],
    );
  }
}
