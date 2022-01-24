import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('username'),
            accountEmail: Text('mobile'),
          ),
          ListTile(
            title: Text('Account'),
            leading: Icon(Icons.account_circle),
            onTap: null,
          ),
          ListTile(
            title: Text('Developers'),
            leading: Icon(Icons.code),
            onTap: null,
          ),
          ListTile(
            title: Text('Support us'),
            leading: Icon(Icons.card_giftcard),
            onTap: null,
          ),
          ListTile(
            title: Text('About us'),
            leading: Icon(Icons.settings),
            onTap: null,
          ),
          ListTile(
            title: Text('Contact us'),
            leading: Icon(Icons.settings),
            onTap: null,
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: null,
          ),
          ListTile(
            title: Text('Help'),
            leading: Icon(Icons.help),
            onTap: null,
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            // dense: true,
            title: Text('Night Mode'),
            leading: Icon(Icons.nightlight_round),
            onTap: null,
            trailing: Switch(value: false, onChanged: null),
          ),
        ],
      ),
    );
  }
}
