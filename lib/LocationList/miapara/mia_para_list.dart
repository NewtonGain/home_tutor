import 'package:flutter/material.dart';
import 'package:home_tutor/widgets/navigation_bottom.dart';


import 'newton.dart';

class MiaParaList extends StatefulWidget {
  @override
  _MiaParaListState createState() => _MiaParaListState();
}

class _MiaParaListState extends State<MiaParaList> {
  Widget locationList(Color color, String text, Function() onpressed) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: color,
      onPressed: onpressed,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
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
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(
          'Mia Para Teachers',
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  locationList(
                    Colors.blue,
                    'Newton Gain',
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Newton()),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  locationList(Colors.red, '2', () => null),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  locationList(Colors.red, '2', () => null),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  locationList(Colors.red, '2', () => null),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  locationList(Colors.red, '2', () => null),
                  SizedBox(
                    height: 20,
                  ),
                  locationList(Colors.red, '2', () => null),
                  SizedBox(
                    height: 20,
                  ),
                  locationList(Colors.red, '2', () => null),
                 
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
