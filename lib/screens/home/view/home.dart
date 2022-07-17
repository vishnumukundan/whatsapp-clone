import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home/widgets/status_tab.dart';

import '../../../components/text.dart';
import '../../../config/colors.dart';
import '../../../config/screen_size_config.dart';
import '../widgets/calls_tab.dart';
import '../widgets/chat_tab.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

late final TabController _tabController;

class _ScreenHomeState extends State<ScreenHome>
    with SingleTickerProviderStateMixin {
  ///
  ///
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              backgroundColor: kColorPrimary,
              title: const TitleLarge__text(
                text: 'WhatsApp',
                color: kColorPrimary50,
                size: 20.0,
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: kColorPrimary50,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: kColorPrimary50,
                    )),
              ],
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: kColorPrimary50,
                indicatorWeight: 3,
                tabs: [
                  Container(
                    width: 24,
                    child: const Tab(
                      icon: Icon(Icons.camera_alt_rounded,
                          color: kColorPrimary50),
                    ),
                  ),
                  Container(
                    width: getScreenWidthPercentage(20),
                    child: const Tab(
                      child:
                          Button__text(text: 'chats', color: kColorPrimary50),
                    ),
                  ),
                  Container(
                    width: getScreenWidthPercentage(20),
                    child: const Tab(
                      child:
                          Button__text(text: 'status', color: kColorPrimary50),
                    ),
                  ),
                  Container(
                    width: getScreenWidthPercentage(20),
                    child: const Tab(
                      child:
                          Button__text(text: 'calls', color: kColorPrimary50),
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            const Center(child: HeadlineLarge__text(text: 'Camera')),
            ChatTab_widget(onTap: () {}),
            StatusTab_widget(onTap: () {}),
            CallTab_widget(onTap: () {}),
          ],
        ),
      ),
    );
  }
}
