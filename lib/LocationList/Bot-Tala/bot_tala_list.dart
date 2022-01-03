// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:home_tutor/LocationList/miapara/newton.dart';
import 'package:home_tutor/widgets/navigation_bottom.dart';


class BotTalaList extends StatelessWidget {
  Widget locationList(Color color, String text, Function() onpressed) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: color,
      onPressed: onpressed,
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bot-Tala Teachers'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  locationList(
                    Colors.orange,
                    'Newton Gain',
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Newton()),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  locationList(Colors.red, 'add', () => null),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: ButtonNavigation(),
    );
  }
}
