import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/settings/view/settings.dart';
import 'package:whatsapp_clone/utilities/services/navigator.dart';

class PopMenu__widget extends StatelessWidget {
  PopMenu__widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      padding: const EdgeInsets.all(8),
      onSelected: (value) => value == 'Settings'
          ? PageNav().push(context, ScreenSettings())
          : null,
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem(value: 'New Group', child: Text('New Group')),
          const PopupMenuItem(
              value: 'New Broadcast', child: Text('New Broadcast')),
          const PopupMenuItem(
              value: 'Linked Devices', child: Text('Linked Devices')),
          const PopupMenuItem(
              value: 'Starres Messages', child: Text('Starres Messages')),
          const PopupMenuItem(value: 'Payments', child: Text('Payments')),
          const PopupMenuItem(value: 'Settings', child: Text('Settings')),
        ];
      },
    );
  }
}
