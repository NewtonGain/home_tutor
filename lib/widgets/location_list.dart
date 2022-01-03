import 'package:flutter/material.dart';
import 'package:home_tutor/LocationList/Bed-Gram/bed_gram_list.dart';
import 'package:home_tutor/LocationList/Bot-Tala/bot_tala_list.dart';
import 'package:home_tutor/LocationList/Gate-para/gate_para_list.dart';
import 'package:home_tutor/LocationList/Medical/medical.dart';
import 'package:home_tutor/LocationList/Pachuriya/pachuriya.dart';
import 'package:home_tutor/LocationList/Varsity/varsity_list.dart';
import 'package:home_tutor/LocationList/mandartala/mandertalalist.dart';
import 'package:home_tutor/LocationList/miapara/mia_para_list.dart';


class ListOfLocation extends StatefulWidget {
  @override
  _ListOfLocationState createState() => _ListOfLocationState();
}

class _ListOfLocationState extends State<ListOfLocation> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        locationList(
          Colors.blue,
          'Mia-Para',
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MiaParaList()),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        locationList(
          Colors.red,
          'Bot-Tala',
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BotTalaList()),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        locationList(
          Colors.orange,
          'Pachuriya',
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PachuriyaList()),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        locationList(
          Colors.yellow,
          'Varsity',
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VarsityList()),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        locationList(
          Colors.pink,
          'Medical',
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MedicalList()),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        locationList(
            Colors.green,
            'Gate-Para',
            () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => GateParaList()))),
        SizedBox(
          height: 20,
        ),
        locationList(
            Colors.purple,
            'Mandar-Tala',
            () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ManderTalaList()))),
        SizedBox(
          height: 20,
        ),
        locationList(
            Colors.blue,
            'BedGram',
            () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => BedGramList()))),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
