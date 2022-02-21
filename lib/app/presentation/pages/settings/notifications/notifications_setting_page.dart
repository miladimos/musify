import 'package:flutter/material.dart';

import 'package:musify/app/presentation/widgets/appbar/appbar_widget.dart';

class NotificationsSettingPage extends StatefulWidget {
  const NotificationsSettingPage({Key? key}) : super(key: key);

  @override
  _NotificationsSettingPageState createState() => _NotificationsSettingPageState();
}

class _NotificationsSettingPageState extends State<NotificationsSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBarWidget(title: Text("NotificationsSettings", style: TextStyle(color: Colors.black),),),
      body: Text("NotificationsSettings"),
    );
  }
}
