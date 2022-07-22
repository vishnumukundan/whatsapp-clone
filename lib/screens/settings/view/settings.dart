import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/settings/widgets/list_tile.dart';
import 'package:whatsapp_clone/screens/settings/widgets/profile_card.dart';

import '../../../components/text.dart';
import '../../../config/colors.dart';
import '../../../utilities/services/navigator.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorPrimary,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => PageNav().pop(context),
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('Settings'),
        titleSpacing: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            profileCard__widget(),
            const Divider(height: 0),
            const ListTile__widget(
              icon: Icons.key,
              title: 'Account',
              subText: 'Privacy, security, change number',
            ),
            const ListTile__widget(
              icon: Icons.chat,
              title: 'Chats',
              subText: 'Theme, wallpapers, chat history',
            ),
            const ListTile__widget(
              icon: Icons.notifications,
              title: 'Notifications',
              subText: 'Message, group & call tones',
            ),
            const ListTile__widget(
              icon: Icons.data_usage,
              title: 'Storage and data',
              subText: 'Network usage, auto-download',
            ),
            const ListTile__widget(
              icon: Icons.help_outline,
              title: 'Help',
              subText: 'Help centre, contact us, privacy policy',
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              minLeadingWidth: 32,
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Icon(Icons.people)],
              ),
              title: TitleMedium__text(text: 'Invite a friend'),
            )
          ],
        ),
      ),
    );
  }
}
