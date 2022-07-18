import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/colors.dart';
import 'package:whatsapp_clone/config/values.dart';

Container bottonTypingBar() {
  return Container(
    padding: const EdgeInsets.all(8),
    color: kColorSecondary100,
    width: double.infinity,
    height: 56,
    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: kColorWhite,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Row(
              children: [
                const Icon(Icons.insert_emoticon_outlined,
                    color: kColorSecondary600, size: 24),
                kSizedBoxWidth_8,
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Message',
                      border: InputBorder.none,
                      isDense: true,
                    ),
                  ),
                ),
                kSizedBoxWidth_8,
                Transform.rotate(
                    alignment: Alignment.center,
                    angle: 5.5,
                    child: const Icon(Icons.attach_file,
                        color: kColorSecondary600, size: 24)),
              ],
            ),
          ),
        ),
        kSizedBoxWidth_8,
        FloatingActionButton.small(
          onPressed: () {},
          backgroundColor: kColorPrimary400,
          elevation: 3,
          child: const Icon(Icons.send, color: kColorWhite, size: 20),
        )
      ],
    ),
  );
}
