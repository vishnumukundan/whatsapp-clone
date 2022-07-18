// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/config/values.dart';
import 'package:whatsapp_clone/utilities/services/navigator.dart';

class TestWidget extends StatelessWidget {
  TestWidget({Key? key}) : super(key: key);

  GlobalKey _globalKey = GlobalKey();

// declarations

//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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

            // testing widget end here
          ],
        ),
      ),
    );
  }
}
