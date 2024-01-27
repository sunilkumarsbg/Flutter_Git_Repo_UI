import 'package:flutter/material.dart';
import 'package:gitlogin/resources/constants.dart';
import 'package:gitlogin/view/homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ConstantImage.githubLogoImagePath,
                    height: 100,
                    width: 200,
                  ),
                  const SizedBox(height: 88),
                  Center(
                    child: Container(
                      height: 240,
                      width: 240,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ConstantImage.backgroundImagePath),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Foreground Image
                          Image.asset(ConstantImage.foregroundImagePath,
                            height: 116,
                            width: 152,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    children: [
                      Text(
                        ConstantText.welcomeText,
                        style: TextStyle(color: Color(0xff000000), fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        ConstantText.platformText,
                        style: TextStyle(color: Color(0xff5F607E), fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the home page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text(ConstantText.gitLoginText),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

