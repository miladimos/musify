import 'package:flutter/material.dart';

class PlayListsPage extends StatefulWidget {
  const PlayListsPage({Key? key}) : super(key: key);

  @override
  _PlayListsPageState createState() => _PlayListsPageState();
}

class _PlayListsPageState extends State<PlayListsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Playlist"),
    );
  }
}
