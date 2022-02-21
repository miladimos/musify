import 'package:flutter/material.dart';
import 'package:musify/app/presentation/widgets/appbar/appbar_widget.dart';

class InterfaceSettingPage extends StatefulWidget {
  const InterfaceSettingPage({Key? key}) : super(key: key);

  @override
  _InterfaceSettingPageState createState() => _InterfaceSettingPageState();
}

class _InterfaceSettingPageState extends State<InterfaceSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBarWidget(title: Text("InterfaceSettings", style: TextStyle(color: Colors.black),),),
      body: Text("InterfaceSettings"),
    );
  }
}
