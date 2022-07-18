import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/text.dart';
import 'package:whatsapp_clone/config/colors.dart';
import 'package:whatsapp_clone/config/screen_size_config.dart';
import 'package:whatsapp_clone/config/values.dart';

const String data =
    'Messages and calls are end-to-end encrypted. No one outside of this chat, not even WhatsApp can read or listen to them. Tap to learn more.';

Widget chatList() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    child: Column(
      children: [
        const litIem_Date(text: '12 June'),
        kSizedBoxHeight_8,
        const litIem_info(text: data),
        kSizedBoxHeight_8,
        const litIem_Date(text: 'Yesterday'),
        kSizedBoxHeight_8,
        const litIem_SendMessage(text: 'hai 😀'),
        kSizedBoxHeight_8,
        const litIem_SendMessage(text: 'how are u?'),
        kSizedBoxHeight_8,
        const litIem_ReceivedMessage(text: 'fine ♥'),
        kSizedBoxHeight_8,
        const litIem_ReceivedMessage(text: 'what about you?'),
        kSizedBoxHeight_8,
        const litIem_SendMessage(text: 'great 😍'),
      ],
    ),
  );
}

///
/// info

class litIem_info extends StatelessWidget {
  const litIem_info({Key? key, required this.text}) : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: BodyLarge__text(text: text, textAlign: TextAlign.center),
    );
  }
}

///
/// date

class litIem_Date extends StatelessWidget {
  const litIem_Date({Key? key, required this.text}) : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kColorSecondary50,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: LabelLarge__text(text: text, color: kColorSecondary800),
    );
  }
}

///
/// sendmessage

class litIem_SendMessage extends StatelessWidget {
  const litIem_SendMessage({Key? key, required this.text}) : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Container(
          constraints: BoxConstraints(
            minWidth: 70,
            maxWidth: getScreenWidthPercentage(80.0),
            minHeight: 36,
            maxHeight: 200,
          ),
          decoration: const BoxDecoration(
            color: kColorPrimary100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              LabelLarge__text(text: text, color: kColorSecondary800),
              kSizedBoxWidth_8,
              Row(
                children: [
                  const BodySmall__text(text: '1:57 pm'),
                  SizedBox(width: 4),
                  Icon(Icons.done_all, size: 14, color: Colors.blue)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///
/// received message

class litIem_ReceivedMessage extends StatelessWidget {
  const litIem_ReceivedMessage({Key? key, required this.text})
      : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // height: 36,
          // width: 100,
          constraints: BoxConstraints(
            minHeight: 36,
            minWidth: 70,
            maxHeight: 500,
            maxWidth: getScreenWidthPercentage(80.0),
          ),
          decoration: const BoxDecoration(
            color: kColorWhite,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              LabelLarge__text(
                text: text,
                color: kColorSecondary800,
              ),
              kSizedBoxWidth_8,
              const BodySmall__text(text: '1:59 pm'),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
