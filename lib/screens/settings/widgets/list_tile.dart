import 'package:flutter/material.dart';

import '../../../components/text.dart';
import '../../../config/colors.dart';

class ListTile__widget extends StatelessWidget {
  const ListTile__widget({
    Key? key,
    required this.icon,
    required this.title,
    this.subText,
  }) : super(key: key);
  @override
  final icon;
  final title;
  final subText;

  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      minLeadingWidth: 32,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Icon(icon)],
      ),
      title: TitleMedium__text(text: title),
      subtitle: BodyLarge__text(text: subText, color: kColorSecondary700),
    );
  }
}
