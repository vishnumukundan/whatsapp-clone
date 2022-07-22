import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/colors.dart';
import 'package:whatsapp_clone/data/chat_list_data.dart';
import 'package:whatsapp_clone/gen/assets.gen.dart';
import 'package:whatsapp_clone/screens/chat/controller/focus_control.dart';
import '../../../utilities/services/navigator.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/chat_list.dart';

class ScreenChat extends StatelessWidget {
  const ScreenChat({Key? key, required this.dataIndex}) : super(key: key);

  final dataIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => hideKeyboard(context),
      child: Scaffold(
        backgroundColor: kColorSecondary100,
        appBar: AppBar(
          backgroundColor: kColorPrimary,
          elevation: 0,
          leadingWidth: 70,
          leading: GestureDetector(
            onTap: () => PageNav().pop(context),
            child: Row(
              children: [
                const Icon(Icons.arrow_back),
                CircleAvatar(
                  backgroundImage: AssetImage(Assets.images.avatar.path),
                ),
              ],
            ),
          ),
          title: InkWell(
            onTap: () {},
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(chatListData[dataIndex]['name'].toString())),
            ),
          ),
          titleSpacing: 0,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.videocam_rounded)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call_rounded)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: chatList(),
            )),
            bottonTypingBar(),
          ],
        ),
      ),
    );
  }
}
