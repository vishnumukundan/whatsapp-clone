import 'package:flutter/material.dart';
import '../../../components/text.dart';
import '../../../config/colors.dart';
import '../../../data/chat_list_data.dart';
import 'subtitle_message.dart';

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
            icon: Icons.done_all,
            iconColor: Colors.blue,
            data: chatListData[index]['message'].toString(),
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
