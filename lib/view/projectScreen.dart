import 'package:flutter/material.dart';
import '../resources/appbar.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  final List<String> buttonLabels = [
    'Button 1',
    'Button 2',
    'Button 3',
    'Button 4'
  ];
  final List<Map<String, String>> projects = [
    {'title': 'Surgtest', 'subtitle': 'Vijay', 'image': 'folder.png'},
    {'title': 'TNULM', 'subtitle': 'Vikky', 'image': 'folder.png'},
    {'title': 'Erp one', 'subtitle': 'Vikky', 'image': 'folder.png'},
    {'title': 'Aggromalie', 'subtitle': 'Rajesh Kannan', 'image': 'folder.png'},
    {'title': 'Erp one', 'subtitle': 'Vikky', 'image': 'folder.png'},
    {'title': 'Aggromalie', 'subtitle': 'Rajesh Kannan', 'image': 'folder.png'},
    {'title': 'Erp one', 'subtitle': 'Vikky', 'image': 'folder.png'},
    {'title': 'Aggromalie', 'subtitle': 'Rajesh Kannan', 'image': 'folder.png'},
  ];

  Widget _buildButton(String label) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: label == "Button 1" ? Colors.black : Colors.grey,
          backgroundColor: Colors.white,
        ),
        child: Text(label),
      ),
    );
  }

  Widget _buildListTile(Map<String, String> project) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset('assets/images/${project['image']}',
              width: 40, height: 40, fit: BoxFit.cover),
          title: Text(project['title']!,
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
          subtitle: Text(project['subtitle']!,
              style: const TextStyle( color: Colors.black,fontWeight: FontWeight.w400,  fontSize: 14)),
          onTap: () {},
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          title: 'Project',
          onNotificationPressed: () {},
          notiflg: false,
          showBackButton: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            width: double.infinity,
            color: Colors.pink.shade100,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/heavenly.png',
                        width: 40, height: 40, fit: BoxFit.cover),
                    title: const Text('Heavenly',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16)),
                    subtitle: const Text('Rajesh Kannan',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                    onTap: () {},
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text('Last update : 24/04/2023 9.30am',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ),
                ],
              ),
            ),
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(children: buttonLabels.map((label) => _buildButton(label)).toList()),
          // ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
                children: projects
                    .map((project) => _buildListTile(project))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
