import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/values.dart';
import '../../../config/colors.dart';

Widget floatingActionButton(tabIndex) {
  if (tabIndex == 1) {
    return FloatingActionButton(
        backgroundColor: kColorAccent,
        onPressed: () {},
        child: const Icon(
          Icons.chat,
        ));
  }
  if (tabIndex == 2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton.small(
            backgroundColor: kColorSecondary200,
            onPressed: () {},
            child: const Icon(Icons.edit, color: kColorSecondary700)),
        kSizedBoxHeight_8,
        FloatingActionButton(
            backgroundColor: kColorAccent,
            onPressed: () {},
            child: const Icon(
              Icons.camera_alt_rounded,
            )),
      ],
    );
  }
  if (tabIndex == 3) {
    return FloatingActionButton(
        backgroundColor: kColorAccent,
        onPressed: () {},
        child: const Icon(Icons.add_ic_call));
  } else {
    return FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: const Icon(
          Icons.error,
        ));
  }
}
