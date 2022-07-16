import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/chat_list_data.dart';
import '../../../components/text.dart';
import '../../../config/colors.dart';
import '../../../data/status_list_data.dart';

class StatusTab_widget extends StatelessWidget {
  const StatusTab_widget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final onTap;

  @override
  Widget build(BuildContext context) {
    //
    var totalLength =
        statusRecentListData.length + statusViewedListData.length + 3;
    return ListView.builder(
      // shrinkWrap: true,
      itemCount: totalLength,
      itemBuilder: (context, index) {
        if (index == 0) {
          return myStatusListTile__method();
        }
        if (index == 1) {
          return const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: LabelLarge__text(
                text: 'Recent updates', color: kColorSecondary700),
          );
        }

        ///
        ///
        ///
        ///
        if (index > 1 && index < statusRecentListData.length + 2) {
          var newIndexValue = index - 2;
          return ListTile(
            onTap: onTap,
            leading: CircleAvatar(
                backgroundColor: kColorSecondary,
                backgroundImage: NetworkImage(
                    statusRecentListData[newIndexValue]['pofileImage']
                        .toString())),
            title: TitleMedium__text(
                text: statusRecentListData[newIndexValue]['name'].toString()),
            subtitle: BodyLarge__text(
              text: statusRecentListData[newIndexValue]['time'].toString(),
              color: kColorSecondary700,
            ),
          );
        }

        ///
        ///
        ///
        ///
        if (index == statusRecentListData.length + 2) {
          return const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: LabelLarge__text(
                text: 'Viewed updates', color: kColorSecondary700),
          );
        }

        ///
        ///
        ///
        if (index > statusRecentListData.length + 2) {
          var newIndexValue = index - (statusRecentListData.length + 3);
          return ListTile(
            onTap: onTap,
            leading: CircleAvatar(
                backgroundColor: kColorSecondary,
                backgroundImage: NetworkImage(
                    statusViewedListData[newIndexValue]['pofileImage']
                        .toString())),
            title: TitleMedium__text(
                text: statusViewedListData[newIndexValue]['name'].toString()),
            subtitle: BodyLarge__text(
              text: statusViewedListData[newIndexValue]['time'].toString(),
              color: kColorSecondary700,
            ),
          );
        } else {
          return myStatusListTile__method();
        }
      },
    );
  }

  ///

  ///
  ///
  ///
  ///
  ListTile myStatusListTile__method() {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
          backgroundColor: kColorSecondary,
          backgroundImage:
              NetworkImage(chatListData[9]['pofileImage'].toString())),
      title: const TitleMedium__text(text: 'My status'),
      subtitle: const BodyLarge__text(
        text: 'Tap to add status update',
        color: kColorSecondary700,
      ),
    );
  }
}
