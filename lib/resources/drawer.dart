import 'package:flutter/material.dart';
import 'package:gitlogin/auth/login.dart';
import 'package:gitlogin/resources/constants.dart';

class CommonDrawer extends StatelessWidget {
  final List<DrawerItem> drawerItems = [
    DrawerItem(
      image: ConstantImage.gitHubIcon,
      title: ConstantText.Github,
      subtitle: 'www.github.com',
      color: const Color(0xFFFF9C37),
      onTap: (context) {},
    ),
    DrawerItem(
        image: ConstantImage.vgts,
        title: 'Profile Edit',
        subtitle: 'Modifying user account details.',
        onTap: (context) {},
        color: Colors.pink),
    DrawerItem(
        image: ConstantImage.vithea,
        title: 'Settings',
        subtitle: 'configurations or customization options.',
        onTap: (context) {},
        color: Colors.deepOrange),
    DrawerItem(
        image: ConstantImage.yolo,
        title: 'Privacy Policy',
        subtitle: 'Rules on personal data usage.',
        onTap: (context) {},
        color: Colors.green),
    DrawerItem(
        image: ConstantImage.onegold,
        title: 'Terms and Conditions',
        subtitle: 'Rules and agreements for usage.',
        onTap: (context) {},
        color: Colors.red),
    DrawerItem(
        image: ConstantImage.zoho,
        title: 'Help ChatBox',
        subtitle: 'Support chat for user assistance.',
        onTap: (context) {},
        color: Colors.blue),
    DrawerItem(
        image: ConstantImage.logout,
        title: 'Logout',
        subtitle: 'Sign out of your account.',
        onTap: (context) {
          // Pass context to function
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
        color: Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 9,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.pink, width: 0.5),
      ),
      clipBehavior: Clip.antiAlias,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: drawerItems.length + 1, // +1 for profile section
        separatorBuilder: (context, index) => index == 0
            ? const SizedBox() // No divider after top profile section
            : const Divider(
                color: Colors.grey,
                thickness: 0.5,
                indent: 16,
                endIndent: 16,
              ),
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildProfileHeader(context);
          }
          return drawerItems[index - 1].build(context);
        },
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Container(
        height: 150, // Increased height for better layout
        decoration: BoxDecoration(
          color: Colors.pink.shade100,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundImage:
                    AssetImage(ConstantImage.profile), // Use your image
              ),
              title: const Text(
                "Sunil Kumar", // Replace with actual name
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              subtitle: const Text(
                "Software Engineer", // Replace with actual designation
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              trailing: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, // Gray background
                ),
                child: IconButton(
                  icon: const Icon(Icons.close,
                      color: Colors.black), // Black icon
                  onPressed: () {
                    Navigator.pop(context); // Close Drawer on tap
                  },
                ),
              )),
        ));
  }
}

// class DrawerItem {
//   final String image;
//   final String title;
//   final String? subtitle;
//   final VoidCallback onTap;
//   final Color color;
//
//   DrawerItem({
//     required this.image,
//     required this.title,
//     this.subtitle,
//     required this.color,
//     required this.onTap,
//   });
//
//   Widget build(BuildContext context) {
//     return ListTile(
//       contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
//       leading: Container(
//         width: 50,
//         height: 50,
//         decoration: BoxDecoration(
//           shape: BoxShape.rectangle,
//           image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
//         ),
//       ),
//       title: Text(
//         title,
//         style: const TextStyle(
//             color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
//       ),
//       subtitle: subtitle != null
//           ? Container(
//               padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
//               decoration: BoxDecoration(
//                 // color: const Color(0xFFFF9C37),
//                 color: color,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Text(
//                 subtitle!,
//                 style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 12),
//               ),
//             )
//           : null,
//       onTap: onTap,
//     );
//   }
// }

class DrawerItem {
  final String image;
  final String title;
  final String? subtitle;
  final Color color;
  final Function(BuildContext) onTap; // Accepting BuildContext as parameter

  DrawerItem({
    required this.image,
    required this.title,
    this.subtitle,
    required this.color,
    required this.onTap,
  });

  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
      ),
      subtitle: subtitle != null
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                subtitle!,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
            )
          : null,
      onTap: () => onTap(context), // Pass context when tapped
    );
  }
}
