import 'package:flutter/material.dart';
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
      itemCount: callListData.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: onTap,
          leading: CircleAvatar(
              backgroundColor: kColorSecondary,
              backgroundImage:
                  NetworkImage(callListData[index]['pofileImage'].toString())),
          title:
              TitleMedium__text(text: callListData[index]['name'].toString()),
          subtitle: BodyLarge__text(
            text: callListData[index]['time'].toString(),
            color: kColorSecondary700,
          ),
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
