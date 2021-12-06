import 'package:flutter/material.dart';

class StudentSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Teacher SignUp'),
        ),
        backgroundColor: Colors.deepPurple,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Text('Please Input the Text field'),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Name', hintText: 'Input Your Name'),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Gender', hintText: 'Input Your Gender'),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Location', hintText: 'Input Your Location'),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Subject', hintText: 'Input your Subject Name'),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    hintText: 'Input Your mobile number'),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Class', hintText: 'What class do you Read in?'),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
