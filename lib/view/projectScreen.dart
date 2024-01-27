import 'package:flutter/material.dart';

import '../resources/appbar.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

Widget buildButton(String label) {
  return Padding(
    padding: const EdgeInsets.all(2),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: label == "Button 1" ? Colors.black : Colors.grey,
        onPrimary: Colors.white,
      ),
      child: Text(label),
    ),
  );
}

class _ProjectScreenState extends State<ProjectScreen> {
  final List<String> buttonLabels = ['Button 1', 'Button 2', 'Button 3', 'Button 4'];

  List<Widget> buildListTiles() {
    List<Widget> listTiles = [];

    // Sample data for list tiles
    List<Map<String, String>> projects = [
      {'title': 'Heavenly', 'subtitle': 'Rajesh Kannan', 'image': 'heavenly.png'},
      {'title': 'Heavenly', 'subtitle': 'Rajesh Kannan', 'image': 'folder.png'},
      {'title': 'Surgtest', 'subtitle': 'Vijay', 'image': 'folder.png'},
      {'title': 'TNULM', 'subtitle': 'Vikky', 'image': 'folder.png'},
      {'title': 'Erp one', 'subtitle': 'Vikky', 'image': 'folder.png'},
      {'title': 'Aggromalie', 'subtitle': 'Rajesh Kannan', 'image': 'folder.png'},
    ];

    for (int i = 0; i < projects.length; i++) {
      listTiles.add(ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage('assets/images/${projects[i]['image']}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          projects[i]['title']!,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        subtitle: Text(
          projects[i]['subtitle']!,
          style: TextStyle(color: const Color(0xff5F607E), fontSize: 14),
        ),
        onTap: () {
          // Handle the tap on the ListTile
        },
      ));
      if (i < projects.length - 1) {
        listTiles.add(SizedBox(height: 10));
      }
    }

    return listTiles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Project',
        onNotificationPressed: () {
          // Handle notification icon press
        },
        notiflg: false,
        showBackButton: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/heavenly.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text(
                      'Heavenly',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    subtitle: const Text(
                      'Rajesh Kannan',
                      style: TextStyle(color: Color(0xffE1E2FF), fontSize: 14),
                    ),
                    onTap: () {
                      // Handle the tap on the ListTile
                    },
                  ),
                  const SizedBox(height: 2),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Last update : 24/04/2023 9.30am',
                      style: TextStyle(color: Color(0xffE1E2FF), fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: buttonLabels.map((label) => buildButton(label)).toList(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: buildListTiles(),
          ),
        ],
      ),
    );
  }
}

