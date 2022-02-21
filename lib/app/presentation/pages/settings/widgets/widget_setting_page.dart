import 'package:flutter/material.dart';
import 'package:musify/app/presentation/widgets/appbar/appbar_widget.dart';

class WidgetSettingPage extends StatefulWidget {
  const WidgetSettingPage({Key? key}) : super(key: key);

  @override
  _WidgetSettingPageState createState() => _WidgetSettingPageState();
}

class _WidgetSettingPageState extends State<WidgetSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBarWidget(title: Text("WidgetSettings", style: TextStyle(color: Colors.black),),),
      body: Text("WidgetSettings"),
    );
  }
}
