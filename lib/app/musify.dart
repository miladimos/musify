import 'package:flutter/material.dart';
import 'package:musify/app/pages/home/home_page.dart';
import 'package:musify/app/pages/musics/musics.dart';
import 'package:musify/app/pages/playlists/playlists.dart';
import 'package:musify/app/widgets/appbar/appbar_widget.dart';
import 'package:musify/app/widgets/bottomappbar/bottom_navigation_app_bar2.dart';
import 'package:musify/app/widgets/drawer/drawer_widget.dart';

class Musify extends StatefulWidget {
  const Musify({Key? key}) : super(key: key);

  @override
  _MusifyState createState() => _MusifyState();
}

class _MusifyState extends State<Musify> {
  int _currentPageIndex = 0;

  void _onBottomNavigarionBartapped(int index) {
    setState(() {
      this._currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> pages = [
      new HomePage(),
      new PlayListsPage(),
      new MusicsPage(),
    ];

    return Scaffold(
      appBar: AppBarWidget(
        title: Text(
          "Musify",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: pages[_currentPageIndex],
      drawer:  DrawerWidget(context: context,),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onBottomNavigarionBartapped,
        currentIndex: _currentPageIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(color: Colors.red),
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: "",
          ),
        ],
      ),
    );
  }
}
