import 'package:flutter/material.dart';
import 'package:musify/app/helpers.dart';
import 'package:musify/app/pages/home/home_page.dart';

class BottomNavigationAppBar extends StatelessWidget {
  final PageController _pageController;

  BottomNavigationAppBar(this._pageController);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      notchMargin: 10.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 60.0,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2 - 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.blueGrey[600],
                      ),
                      highlightColor: Colors.blue,
                      onPressed: () {
                        _pageController.jumpTo(0);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.queue_music,
                        color: Colors.blueGrey[600],
                      ),
                      highlightColor: Colors.blue,
                      onPressed: () {
                        _pageController.jumpTo(1);
                      }),
                ],
              ),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: IconButton(
                        icon: Icon(
                          Icons.audiotrack_outlined,
                          color: Colors.blueGrey[600],
                        ),
                        highlightColor: Colors.blue,
                        onPressed: () {
                          _pageController.jumpTo(2);
                        }),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.blueGrey[600],
                    ),
                    onPressed: () {},
                    highlightColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
