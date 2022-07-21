import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home/widgets/subtitle_message.dart';
import '../../../components/text.dart';
import '../../../config/colors.dart';
import '../../../data/call_list_data.dart';
import '../../../gen/assets.gen.dart';

class CallTab_widget extends StatelessWidget {
  const CallTab_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: callListData.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
                backgroundColor: kColorSecondary,
                backgroundImage: AssetImage(Assets.images.avatar.path)),
          ),
          title:
              TitleMedium__text(text: callListData[index]['name'].toString()),
          subtitle: SubtitleMessage__widget(
              icon: Icons.call_received,
              data: callListData[index]['time'].toString(),
              iconColor: Colors.green),
          trailing: const TrailingIcon(),
        );
      },
    );
  }
}

class TrailingIcon extends StatelessWidget {
  const TrailingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.phone,
      color: kColorSecondary700,
    );
  }
}
