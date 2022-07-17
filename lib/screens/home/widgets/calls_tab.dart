import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home/widgets/subtitle_message.dart';
import '../../../components/text.dart';
import '../../../config/colors.dart';
import '../../../data/call_list_data.dart';

class CallTab_widget extends StatelessWidget {
  const CallTab_widget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: callListData.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: onTap,
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
                backgroundColor: kColorSecondary,
                backgroundImage: NetworkImage(
                    callListData[index]['pofileImage'].toString())),
          ),
          title:
              TitleMedium__text(text: callListData[index]['name'].toString()),
          subtitle: SubtitleMessage__widget(
              icon: Icons.call_received,
              data: callListData[index]['time'].toString(),
              iconColor: Colors.green),
          trailing: TrailingIcon(),
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
    return Icon(
      Icons.phone,
      color: kColorSecondary700,
    );
  }
}
