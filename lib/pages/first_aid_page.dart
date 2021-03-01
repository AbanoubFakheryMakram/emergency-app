
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colors.dart';

class FirstAidPage extends StatefulWidget {
  @override
  _FirstAidPageState createState() => _FirstAidPageState();
}

class _FirstAidPageState extends State<FirstAidPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('الاسعافات الاولية'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              children: [
                ListTile(
                  title: Text('الانعاش القلبي الرئوي'),
                  trailing: Icon(Icons.open_in_new, color: mainColor,),
                  onTap: () {
                    launch('https://youtu.be/dP9qM2mCKzE');
                  },
                ),
                ListTile(
                  title: Text('انسداد مجري الهواء "الغصة"'),
                  trailing: Icon(Icons.open_in_new, color: mainColor,),
                  onTap: () {
                    launch('https://youtu.be/QHqVQkZnpC4');
                  },
                ),
                ListTile(
                  title: Text('انعاش القلب والرئه للبالغين'),
                  trailing: Icon(Icons.open_in_new, color: mainColor,),
                  onTap: () {
                    launch('https://youtu.be/LhhdKnCQVUk');
                  },
                ),
                ListTile(
                  title: Text('كيفية التصرف مع شخص فاقد الوعي'),
                  trailing: Icon(Icons.open_in_new, color: mainColor,),
                  onTap: () {
                    launch('https://youtu.be/w7TLdyQgzbY');
                  },
                ),
                ListTile(
                  title: Text('الاختناق عند الاطفال'),
                  trailing: Icon(Icons.open_in_new, color: mainColor,),
                  onTap: () {
                    launch('https://youtu.be/2QWIhLvHzpE');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
