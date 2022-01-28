import 'package:flutter/material.dart';
import 'package:musify/app/widgets/appbar/appbar_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBarWidget(title: Text("Settings", style: TextStyle(color: Colors.black),),),
      body: Text("Settings"),
    );
  }
}
