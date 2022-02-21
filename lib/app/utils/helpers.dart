import 'package:flutter/material.dart';

class Helpers {

  static Future navigateToPage(BuildContext context, page) async {
    return await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => page));
  }

  static Future navigateToPageRoute(BuildContext context, routeName) async {
    return await Navigator.of(context).pushNamed(routeName);
  }

}
