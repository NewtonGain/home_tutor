import 'package:flutter/material.dart';
import 'package:home_tutor/widgets/login/components/Screens/login/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade200,
      body: SafeArea(
        child: Container(
          child: Center(
            child: CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/images/1.png'),
            ),
          ),
        ),
      ),
    );
  }
}
