import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/values.dart';
import 'package:whatsapp_clone/test_file.dart';
import 'package:whatsapp_clone/utilities/services/navigator.dart';
import '../../../config/colors.dart';

Widget floatingActionButton(tabIndex) {
  if (tabIndex == 1) {
    //
    // chat tab fab -start
    return FloatingActionButton(
        backgroundColor: kColorAccent,
        onPressed: () {},
        child: const Icon(
          Icons.chat,
        ));
    // chat tab fab -end
  }
  if (tabIndex == 2) {
    //
    // status tab fab -start
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
    // status tab fab -end
  }
  if (tabIndex == 3) {
    //
    // call tab fab -start
    return FloatingActionButton(
        backgroundColor: kColorAccent,
        onPressed: () {},
        child: const Icon(Icons.add_ic_call));
    // call tab fab -end
  } else {
    return Container();
  }
}
