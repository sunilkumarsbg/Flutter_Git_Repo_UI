import 'package:flutter/material.dart';
import 'package:gitlogin/resources/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  bool notiflg;
  bool showBackButton;
  final Function() onNotificationPressed;

  MyAppBar({
    required this.title,
    required this.notiflg,
    required this.showBackButton,
    required this.onNotificationPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      leading: showBackButton
          ? IconButton(
              icon: Icon(Icons.keyboard_arrow_left),
              onPressed: () {
                Navigator.pop(context ?? context!);
              },
            )
          : null,
      actions: [
        notiflg
            ? IconButton(
                icon: Image.asset(
                  ConstantImage.noti_icon,
                  height: 20,
                  width: 20,
                ),
                onPressed: onNotificationPressed,
              )
            : SizedBox(),
      ],
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
