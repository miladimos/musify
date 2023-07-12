import 'package:musify/app/utils/helpers.dart';
import 'package:musify/app/utils/translations/translation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musify/app/pages/home/controller/home_page_controller.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Musify"),
            centerTitle: true,
            elevation: 4,
            shadowColor: Colors.black,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            leading: const Icon(Icons.sort_rounded),
          ),
          body: FutureBuilder<List>(
            future: controller.audioQuery.querySongs(
              ignoreCase: true,
              orderType: OrderType.ASC_OR_SMALLER,
              sortType: null,
              uriType: UriType.EXTERNAL,
            ),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.data!.isEmpty) {
                return const Center(
                  child: Text("No Song found"),
                );
              } else {
                return Container(
                  padding: EdgeInsets.all(8),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Obx(
                          () => ListTile(
                            title: Text(
                              snapshot.data![index].displayNameWOExt,
                              style: TextStyle(fontSize: 18),
                            ),
                            subtitle: Text(
                              snapshot.data![index].artist,
                              style: TextStyle(fontSize: 14),
                            ),
                            leading: QueryArtworkWidget(
                              id: snapshot.data![index].id,
                              type: ArtworkType.AUDIO,
                              nullArtworkWidget: const Icon(
                                Icons.music_note,
                                color: Colors.red,
                                size: 32,
                              ),
                            ),
                            trailing: controller.playIndex.value == index &&
                                    controller.isPlaying.value
                                ? const Icon(Icons.play_arrow)
                                : null,
                            onTap: () {
                              // controller.playAudio(
                              //     snapshot.data![index].uri, index);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
