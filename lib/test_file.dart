// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/values.dart';
import 'package:whatsapp_clone/utilities/services/navigator.dart';

import 'config/colors.dart';

class TestWidget extends StatelessWidget {
  TestWidget({Key? key}) : super(key: key);

  GlobalKey _globalKey = GlobalKey();

//
// declarations -start

// declarations -end

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: kColorSecondary100,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  width: double.infinity,
                  child: IconButton(
                      onPressed: () => PageNav().pop(context),
                      icon: const Icon(Icons.close)),
                ),
                kSizedBoxHeight_64,

                // testing widget start here
                PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) {
                    return [
                      const PopupMenuItem(
                          value: 'New Group', child: Text('New Group')),
                      const PopupMenuItem(
                          value: 'New Broadcast', child: Text('New Broadcast')),
                      const PopupMenuItem(
                          value: 'Linked Devices',
                          child: Text('Linked Devices')),
                      const PopupMenuItem(
                          value: 'Starres Messages',
                          child: Text('Starres Messages')),
                      const PopupMenuItem(
                          value: 'Payments', child: Text('Payments')),
                      const PopupMenuItem(
                          value: 'Settings', child: Text('Settings')),
                    ];
                  },
                )
                // testing widget end here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
