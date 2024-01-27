import 'package:flutter/material.dart';
import 'package:gitlogin/resources/constants.dart';

class CommonDrawer extends StatelessWidget {
  final List<DrawerItem> drawerItems = [
    DrawerItem(
      image: ConstantImage.profile,
      title: ConstantText.Github,
      subtitle: 'santhoshVGTS',
      onTap: () {
        // Handle drawer item press
      },
    ),
    DrawerItem(
      image: ConstantImage.vgts,
      title: 'VGTS',
      onTap: () {
        // Handle drawer item press
      },
    ),
    DrawerItem(
      image: ConstantImage.vithea,
      title: 'Vithea',
      onTap: () {
        // Handle drawer item press
      },
    ),
    DrawerItem(
      image: ConstantImage.yolo,
      title: 'Yolo works',
      onTap: () {
        // Handle drawer item press
      },
    ),
    DrawerItem(
      image: ConstantImage.onegold,
      title: 'One Gold',
      onTap: () {
      },
    ),
    DrawerItem(
      image: ConstantImage.zoho,
      title: 'Zoho Books',
      onTap: () {
        // Handle drawer item press
      },
    ),
    DrawerItem(
      image: ConstantImage.logout,
      title: 'Logout',
      onTap: () {
        // Handle drawer item press
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Card(
            elevation: 0,
            color: Colors.black.withOpacity(0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: drawerItems.map((item) => item.build()).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem {
  final String image;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  DrawerItem({
    required this.image,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  Widget build() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        subtitle: subtitle != null
            ? Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFF9C37),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4, right: 4),
              child: Text(
                subtitle!,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        )
            : null,
        onTap: onTap,
      ),
    );
  }
}