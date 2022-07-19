import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/colors.dart';
import 'package:whatsapp_clone/config/values.dart';

Widget bottonTypingBar() {
  return Container(
    padding: const EdgeInsets.all(8),
    color: kColorSecondary100,
    width: double.infinity,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Container(
            // height: 50,
            constraints: const BoxConstraints(
              minHeight: 50,
              maxHeight: 150,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            decoration: BoxDecoration(
              color: kColorWhite,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Icon(Icons.insert_emoticon_outlined,
                      color: kColorSecondary600, size: 24),
                ),
                kSizedBoxWidth_8,
                const Expanded(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Message',
                      border: InputBorder.none,
                      // isDense: true,
                      // filled: true,
                    ),
                  ),
                ),
                kSizedBoxWidth_8,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Transform.rotate(
                      alignment: Alignment.center,
                      angle: 5.5,
                      child: const Icon(Icons.attach_file,
                          color: kColorSecondary600, size: 24)),
                ),
              ],
            ),
          ),
        ),
        kSizedBoxWidth_8,
        Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: FloatingActionButton.small(
            onPressed: () {},
            backgroundColor: kColorPrimary400,
            elevation: 3,
            child: const Icon(Icons.send, color: kColorWhite, size: 20),
          ),
        ),
      ],
    ),
  );
}
