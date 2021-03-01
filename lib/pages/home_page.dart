
import 'package:emergency/pages/emergency_numbers_page.dart';
import 'package:emergency/pages/first_aid_page.dart';
import 'package:emergency/pages/user_info_page.dart';
import 'package:flutter/material.dart';

import 'new_report_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('الصفحة الرئيسية'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              ListTile(
                title: Text('الاسعافات الاولية'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => FirstAidPage(),),);
                },
              ),
              ListTile(
                title: Text('ارقام الطوارئ'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => EmergencyNumbersPage(),),);
                },
              ),
              ListTile(
                title: Text('بلاغ جديد'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => NewReportPage(),),);
                },
              ),
              ListTile(
                title: Text('معلومات المستخدم'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => UserInfoPage(),),);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
