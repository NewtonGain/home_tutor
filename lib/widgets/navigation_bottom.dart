import 'package:flutter/material.dart';
import 'constants.dart';
import 'homepage.dart';

class ButtonNavigation extends StatelessWidget {
  const ButtonNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kprimariColor.withOpacity(0.38))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Icon(
                Icons.home,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
