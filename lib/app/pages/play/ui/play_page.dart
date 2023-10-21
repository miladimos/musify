import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musify/app/pages/play/controller/play_page_controller.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayPage extends GetView<PlayPageController> {
  final SongModel data;
  const PlayPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text("Play"),
        ),
      ),
    );
  }
}
