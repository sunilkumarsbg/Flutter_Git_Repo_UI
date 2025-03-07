
import 'package:flutter/material.dart';
import 'package:gitlogin/resources/constants.dart';
import 'package:gitlogin/view/projectScreen.dart';
import '../resources/appbar.dart';
import '../resources/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: ConstantText.Github,
        onNotificationPressed: () {},
        notiflg: true,
        showBackButton: false,
      ),
      drawer: CommonDrawer(),
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height:100),
              _buildSectionTitle('Project'),
              _buildProjectList(),
            ],
          ),
          _buildHeader(),
          _buildProfileCard(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.pink.shade100,
      padding: const EdgeInsets.only(left: 16),
      alignment: Alignment.topLeft,
      child: const Padding(
        padding: EdgeInsets.only(top:10),
        child: Text(
          'HI, SUNIL KUMAR',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20),
      child: Text(
        title,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
      ),
    );
  }

  Widget _buildProjectList() {
    final projects = [
      {'image': ConstantImage.heavenly, 'title': 'Sunil', 'owner': 'Rajesh Kannan'},
      {'image': ConstantImage.surgtest, 'title': 'Kumar', 'owner': 'Vijay'},
      {'image': ConstantImage.heavenly, 'title': 'Vikram', 'owner': 'Rajesh Kannan'},
      {'image': ConstantImage.surgtest, 'title': 'Surgtest', 'owner': 'Vijay'},
      {'image': ConstantImage.heavenly, 'title': 'Heavenly', 'owner': 'Rajesh Kannan'},
      {'image': ConstantImage.surgtest, 'title': 'Surgtest', 'owner': 'Vijay'},
      {'image': ConstantImage.M, 'title': 'TNULM', 'owner': 'Vikky'},
      {'image': ConstantImage.E, 'title': 'Erp One', 'owner': 'Vikky'},
      {'image': ConstantImage.aggro, 'title': 'Aggromalie', 'owner': 'Rajesh Kannan'},
    ];

    return Column(
      children: projects.map((project) => _buildListTile(project['image']!, project['title']!, project['owner']!)).toList(),
    );
  }

  Widget _buildListTile(String imagePath, String title, String subtitle) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(imagePath, width: 40, height: 40, fit: BoxFit.cover),
          trailing: const Icon(Icons.keyboard_arrow_right, size: 25.0, color: Colors.black),
          title: Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
          subtitle: Text(subtitle, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400 ,fontSize: 14)),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectScreen())),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _buildProfileCard() {
    return Positioned(
      top: 50.0,
      left: 20.0,
      right: 20.0,
      child: Card(
        child: ListTile(
          leading: Image.asset('assets/images/vgts.png', width: 55, height: 55, fit: BoxFit.cover),
          title: const Text('Sunil Kumar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16)),
          subtitle: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: const Color(0xFF22CCCC),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Text('VGTS', style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}