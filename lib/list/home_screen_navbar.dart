import 'package:flutter/material.dart';
import 'package:myproject/list/search.dart';
import 'package:myproject/list/sidebar_button.dart';

import '../constants.dart';

class HomeScreenNavbar extends StatelessWidget {
  HomeScreenNavbar({@required this.triggerAnimation});

  final Function triggerAnimation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation: triggerAnimation,
          ),
          Search(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          CircleAvatar(
            //ProfileImages
            radius: 18.0,
            backgroundImage: AssetImage('asset/images/fon.jpg'),
          ),
        ],
      ),
    );
  }
}