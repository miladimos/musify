import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({Key? key, required Text title})
      : super(
          key: key,
          title: title,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
        );
}
