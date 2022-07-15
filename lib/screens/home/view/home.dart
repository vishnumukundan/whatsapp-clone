import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/text.dart';
import 'package:whatsapp_clone/config/screen_size_config.dart';
import 'package:whatsapp_clone/config/values.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  final data =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus gravida quis blandit turpis cursus in hac habitasse. Sit amet tellus cras adipiscing enim eu turpis egestas pretium.';

  // final data = 'Lorem ipsum dolor sit amet, consectetur';

  @override
  Widget build(BuildContext context) {
    ///
    ///initialising screenConfig
    ScreenConfig().init(context);

    ///
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getScreenWidthPercentage(5.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kSizedBoxHeight,
              DisplayLarge__text(text: 'data'),
              kSizedBoxHeight,
              DisplayMedium__text(text: 'data'),
              kSizedBoxHeight,
              DisplaySmall__text(text: 'data'),
              kSizedBoxHeight,
              HeadlineLarge__text(text: 'data'),
              kSizedBoxHeight,
              HeadlineMedium__text(text: 'data'),
              kSizedBoxHeight,
              HeadlineSmall__text(text: 'data'),
              kSizedBoxHeight,
              TitleLarge__text(text: 'data'),
              kSizedBoxHeight,
              TitleMedium__text(text: 'data'),
              kSizedBoxHeight,
              TitleSmall__text(text: 'data'),
              kSizedBoxHeight,
              LabelLarge__text(text: 'data'),
              kSizedBoxHeight,
              LabelMedium__text(text: 'data'),
              kSizedBoxHeight,
              LabelSmall__text(text: 'data'),
              kSizedBoxHeight,
              BodyLarge__text(text: '$data'),
              kSizedBoxHeight,
              BodyMedium__text(text: '$data'),
              kSizedBoxHeight,
              BodySmall__text(text: '$data'),
              kSizedBoxHeight,
              Button__text(text: 'data'),
              kSizedBoxHeight,
              Caption__text(text: 'data'),
              kSizedBoxHeight,
              Overline__text(text: 'data'),
              kSizedBoxHeight_64,
            ],
          ),
        ),
      )),
    );
  }
}
