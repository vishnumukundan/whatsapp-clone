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
                Spacer(),

                // testing widget start here
                Container(
                  padding: const EdgeInsets.all(8),
                  color: kColorSecondary100,
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          // height: 50,
                          constraints: const BoxConstraints(
                            minHeight: 50,
                            maxHeight: 150,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: kColorWhite,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 9.0),
                                child: Icon(Icons.insert_emoticon_outlined,
                                    color: kColorSecondary600, size: 24),
                              ),
                              kSizedBoxWidth_8,
                              const Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    hintText: 'Message',
                                    border: InputBorder.none,
                                    // isDense: true,
                                    // filled: true,
                                  ),
                                ),
                              ),
                              kSizedBoxWidth_8,
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 9.0),
                                child: Transform.rotate(
                                    alignment: Alignment.center,
                                    angle: 5.5,
                                    child: const Icon(Icons.attach_file,
                                        color: kColorSecondary600, size: 24)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      kSizedBoxWidth_8,
                      FloatingActionButton.small(
                        onPressed: () {},
                        backgroundColor: kColorPrimary400,
                        elevation: 3,
                        child: const Icon(Icons.send,
                            color: kColorWhite, size: 20),
                      )
                    ],
                  ),
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
