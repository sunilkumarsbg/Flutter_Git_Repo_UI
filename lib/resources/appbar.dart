import 'package:flutter/material.dart';
import 'package:gitlogin/resources/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  bool notiflg;
  bool showBackButton;
  final Function() onNotificationPressed;

  MyAppBar({
    super.key,
    required this.title,
    required this.notiflg,
    required this.showBackButton,
    required this.onNotificationPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink.shade100,
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
      ),
      leading: showBackButton
          ? IconButton(
              icon: Image.asset(
                ConstantImage.arrow,
                height: 18,
                width: 18,
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context ?? context!);
              },
            )
          : IconButton(
              icon: Image.asset(
                ConstantImage.drawer,
                height: 30,
                width: 30,
              ),
              color: Colors.white,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
      // //
      // null,
      // actions: [
      //   notiflg
      //       ? Padding(
      //         padding: const EdgeInsets.only(right: 10),
      //         child: IconButton(
      //             icon: Image.asset(
      //               ConstantImage.noti_icon,
      //               height: 20,
      //               width: 20,
      //             ),
      //             onPressed: onNotificationPressed,
      //           ),
      //       )
      //       : const SizedBox(),
      // ],
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
