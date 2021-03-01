import 'package:emergency/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyNumbersPage extends StatefulWidget {
  @override
  _EmergencyNumbersPageState createState() => _EmergencyNumbersPageState();
}

class _EmergencyNumbersPageState extends State<EmergencyNumbersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ارقام الطواري'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              ListTile(
                title: Text('الاسعاف'),
                subtitle: Text('101'),
                leading: Image.asset('assets/images/emergency.png', width: 40, height: 40,),
                trailing: Icon(Icons.call, color: mainColor,),
                onTap: () {
                  launch("tel://101");
                },
              ),
              ListTile(
                title: Text('الشرطة'),
                subtitle: Text('100'),
                leading: Image.asset('assets/images/police.png', width: 40, height: 40,),
                trailing: Icon(Icons.call, color: mainColor,),
                onTap: () {
                  launch("tel://100");
                },
              ),
              ListTile(
                title: Text('الدفاع المدني'),
                subtitle: Text('102'),
                leading: Image.asset('assets/images/civil_defense.png', width: 40, height: 40,),
                trailing: Icon(Icons.call, color: mainColor,),
                onTap: () {
                  launch("tel://102");
                },
              ),
              ListTile(
                title: Text('رقم الطوارئ الموحد'),
                subtitle: Text('911'),
                leading: Image.asset('assets/images/number.png', width: 40, height: 40,),
                trailing: Icon(Icons.call, color: mainColor,),
                onTap: () {
                  launch("tel://911");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
