import 'package:flutter/material.dart';
import 'package:musify/app/presentation/pages/player/player_page.dart';
import 'package:musify/app/presentation/pages/playlists/playlists.dart';
import 'package:musify/app/presentation/pages/musics/musics.dart';
import 'package:musify/app/presentation/widgets/appbar/appbar_widget.dart';
import 'package:musify/app/presentation/widgets/drawer/drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;

  void _onBottomNavigarionBartapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> pages = [
      const PlayerPage(),
      const PlayListsPage(),
      const MusicsPage(),
    ];

    return Scaffold(
      appBar: AppBarWidget(
        title: const Text(
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
        selectedIconTheme: const IconThemeData(color: Colors.red),
        selectedItemColor: Colors.red,
        items: const [
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
