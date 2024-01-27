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
        title: 'Github',
        onNotificationPressed: () {
          // Handle notification icon press
        },
        notiflg: true,
        showBackButton: false,
      ),
      drawer: CommonDrawer(),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Hi Santhosh',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  'Project',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              buildListTile(
                  ConstantImage.heavenly,
                  'Heavenly',
                  'Rajesh Kannan'
              ),
              buildListTile(
                ConstantImage.surgtest,
                'Surgtest',
                'vijay',
              ),
              buildListTile(
                ConstantImage.M,
                'TNULM',
                'Vikky',
              ),
              buildListTile(
                ConstantImage.E,
                'Erp one',
                'vikky',
              ),
              buildListTile(
                ConstantImage.aggro,
                'Aggromalie',
                'Rajesh Kannan',
              ),
            ],
          ),
          Positioned(
            top: 50.0,
            left: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Card(
                child: Center(
                  child: ListTile(
                    leading: Container(
                      width: 55,
                      height: 55,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/vgts.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: const Text(
                      'Santhosh Kumar',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    subtitle: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF22CCCC),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4, right: 4),
                          child: Text(
                            'VGTS',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      // Handle the tap on the ListTile
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListTile(
      String imagePath, String title, String subtitle) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            size: 25.0,
            color: Colors.black,
          ),
          title: Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(color: Color(0xff5F607E), fontSize: 14),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProjectScreen()),
            );
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
