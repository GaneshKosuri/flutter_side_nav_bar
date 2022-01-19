import 'package:flutter/material.dart';

import 'side_bar.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideNavBar(),
      appBar: AppBar(
        title: Text('Favourites Screen'),
      ),
      body: Center(
        child: Text('Favourites'),
      ),
    );
  }
}
