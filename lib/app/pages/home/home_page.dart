import 'package:flutter/material.dart';
import 'package:musify/app/app_constants.dart';
import 'package:musify/app/widgets/drawer/drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.applicationTitle),
      ),
      body: Text('Musify'),
      drawer: const DrawerWidget(),
    );
  }
}
