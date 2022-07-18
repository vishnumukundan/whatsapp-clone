import 'package:flutter/material.dart';

class ScreenContactList extends StatelessWidget {
  const ScreenContactList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: const Text('ContactList')),
      ),
    );
  }
}
