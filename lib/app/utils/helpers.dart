import 'package:flutter/material.dart';

class Helpers {
  static Future navigateToPage(BuildContext context, page) async {
    return await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static Future navigateToPageRoute(BuildContext context, routeName) async {
    return await Navigator.of(context).pushNamed(routeName);
  }

  static Future<bool> onWillPopHandler(context) async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit an App'),
            actions: <Widget>[
              GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO"),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: Text("YES"),
              ),
            ],
          ),
        )) ??
        false;
  }

  // static Future<bool> handleDoubleClickToExit() async {
  //   var currentTime;

  //   DateTime now = DateTime.now();
  //   if (currentTime == null ||
  //       now.difference(currentTime) > Duration(seconds: 2)) {
  //     //add duration of press gap
  //     currentTime = now;
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text(
  //             'Press Back Button Again to Exit'))); //scaffold message, you can show Toast message too.
  //     return Future.value(false);
  //   }

  //   return Future.value(true);
  // }

  // Future<bool> showExitPopup() async {
  //   return await showDialog(
  //         //show confirm dialogue
  //         //the return value will be from "Yes" or "No" options
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: Text('Exit App'),
  //           content: Text('Do you want to exit an App?'),
  //           actions: [
  //             ElevatedButton(
  //               onPressed: () => Navigator.of(context).pop(false),
  //               //return false when click on "NO"
  //               child: Text('No'),
  //             ),
  //             ElevatedButton(
  //               onPressed: () => Navigator.of(context).pop(true),
  //               //return true when click on "Yes"
  //               child: Text('Yes'),
  //             ),
  //           ],
  //         ),
  //       ) ??
  //       false; //if showDialouge had returned null, then return false
  // }
}
