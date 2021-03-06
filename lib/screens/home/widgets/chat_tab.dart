import 'package:flutter/material.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';
import '../../../components/text.dart';
import '../../../config/colors.dart';
import '../../../data/chat_list_data.dart';
import '../../../utilities/services/navigator.dart';
import '../../chat/view/chat.dart';
import 'subtitle_message.dart';

class ChatTab_widget extends StatelessWidget {
  const ChatTab_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: chatListData.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            PageNav().push(context, ScreenChat(dataIndex: index));
          },
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
                backgroundColor: kColorSecondary,
                backgroundImage: AssetImage(Assets.images.avatar.path)),
          ),
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
