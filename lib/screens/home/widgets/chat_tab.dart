import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/values.dart';
import '../../../components/text.dart';
import '../../../config/colors.dart';
import '../../../data/chat_list_data.dart';

class ChatTab_widget extends StatelessWidget {
  const ChatTab_widget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatListData.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: onTap,
          leading: CircleAvatar(
              backgroundColor: kColorSecondary,
              backgroundImage:
                  NetworkImage(chatListData[index]['pofileImage'].toString())),
          title:
              TitleMedium__text(text: chatListData[index]['name'].toString()),
          subtitle: SubtitleMessage__widget(
            index: index,
            icon: Icons.done_all,
          ),
          trailing: BodyLarge__text(
            text: chatListData[index]['time'].toString(),
            color: kColorSecondary700,
          ),
        );
      },
    );
  }
}

class SubtitleMessage__widget extends StatelessWidget {
  const SubtitleMessage__widget({
    Key? key,
    required this.index,
    required this.icon,
    this.iconColor,
  }) : super(key: key);

  final index;
  final IconData icon;
  final iconColor;

  @override
  Widget build(BuildContext context) {
    final String messageText = chatListData[index]['message'].toString();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 16),
        SizedBox(width: 4),
        BodyLarge__text(text: messageText, color: kColorSecondary700),
      ],
    );
  }
}
