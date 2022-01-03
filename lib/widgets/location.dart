import 'package:flutter/material.dart';
import 'package:home_tutor/widgets/constants.dart';

class LocationList extends StatelessWidget {
  const LocationList({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kdefultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
