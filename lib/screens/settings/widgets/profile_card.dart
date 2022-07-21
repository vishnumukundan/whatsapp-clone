import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/text.dart';
import 'package:whatsapp_clone/config/colors.dart';
import 'package:whatsapp_clone/config/values.dart';

import '../../../data/chat_list_data.dart';

Widget profileCard__widget() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Row(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png')),
          ),
        ),
        kSizedBoxWidth_16,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleLarge__text(text: chatListData[9]['name'].toString()),
            const BodyLarge__text(
                text: 'Busy at Work', color: kColorSecondary700)
          ],
        ),
        const Spacer(),
        const Icon(Icons.qr_code, size: 28, color: kColorAccent),
      ],
    ),
  );
}
