import 'package:flutter/material.dart';

import 'package:musicplayerapp/pages/events/events_page.dart';
import 'package:musicplayerapp/pages/home/home_page.dart';
import 'package:musicplayerapp/pages/search/search_page.dart';
import 'package:musicplayerapp/pages/settings/settings_page.dart';

import 'package:musicplayerapp/widgets/footer_bar_widget.dart';
import 'package:musicplayerapp/widgets/player_bar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  final List<Widget> _content = <Widget>[
    HomePage(),
    const SearchPage(),
    const EventPage(),
    const SettingsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            _content[_index],
            const PlayerBar()
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FooterAppBar(
        onTouched: (index) {
          _onItemTapped(index);
        }
      )
    );
  }
}