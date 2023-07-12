import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musify/app/pages/play/controller/play_page_controller.dart';

class PlayPage extends GetView<PlayPageController> {
  const PlayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(child: Text("Play")),
      ),
    );
  }
}
