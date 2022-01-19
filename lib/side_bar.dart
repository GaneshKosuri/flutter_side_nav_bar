import 'package:flutter/material.dart';
import 'package:side_nav_bar/favourites.dart';

class SideNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://googleflutter.com/sample_image.jpg"),
                    radius: 35,
                  ),
                  Text(
                    'Ganesh Kosuri',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'ganesh.kosuri@ibhubs.co.in',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ]),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            title: Text('Favourites'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Favourites()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Friends'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.ring_volume),
            title: Text('Request'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Policies'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
