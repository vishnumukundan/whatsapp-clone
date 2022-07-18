import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/chat_list_data.dart';
import '../../../components/text.dart';
import '../../../config/colors.dart';
import '../../../data/status_list_data.dart';

class StatusTab_widget extends StatelessWidget {
  const StatusTab_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    var totalLength =
        statusRecentListData.length + statusViewedListData.length + 3;
    return ListView.builder(
      padding: const EdgeInsets.all(0),
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
            onTap: () {},
            leading: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: kColorAccent),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                    backgroundColor: kColorSecondary,
                    backgroundImage: NetworkImage(
                        statusRecentListData[newIndexValue]['pofileImage']
                            .toString())),
              ),
            ),
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
            onTap: () {},
            leading: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: kColorSecondary),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                    backgroundColor: kColorSecondary,
                    backgroundImage: NetworkImage(
                        statusViewedListData[newIndexValue]['pofileImage']
                            .toString())),
              ),
            ),
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
  ///My status widget
  ListTile myStatusListTile__method() {
    return ListTile(
      onTap: () {},
      leading: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
              backgroundColor: kColorSecondary,
              backgroundImage:
                  NetworkImage(chatListData[9]['pofileImage'].toString())),
        ),
        Positioned(
          bottom: -1,
          right: -1,
          child: Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
                color: kColorAccent,
                borderRadius: BorderRadius.circular(60),
                border: Border.all(color: kColorWhite, width: 2)),
            child: Icon(
              Icons.add,
              size: 18,
              color: kColorWhite,
            ),
          ),
        ),
      ]),
      title: const TitleMedium__text(text: 'My status'),
      subtitle: const BodyLarge__text(
        text: 'Tap to add status update',
        color: kColorSecondary700,
      ),
    );
  }
}
