import 'package:emergency/widgets/my_button.dart';
import 'package:emergency/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

class NewReportPage extends StatefulWidget {
  @override
  _NewReportPageState createState() => _NewReportPageState();
}

class _NewReportPageState extends State<NewReportPage> {

  String selectedReportType;
  List<String> reportTypeList = [
    'مريض',
    'حادث سير',
    'حادث عمل',
    'اخرى',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('بلاغ جديد'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              children: [
                MyTextFormField(
                  hintText: 'عنوان البلاغ',
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffEEEEEE),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedReportType,
                      hint: Text('نوع البلاغ'),
                      items: reportTypeList.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                            child: Text(
                              value,
                              textAlign: TextAlign.right,
                            ),
                            alignment: Alignment.centerRight,
                          ),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedReportType = newValue;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                MyTextFormField(
                  hintText: 'هوست',
                ),
                SizedBox(
                  height: 48,
                ),
                myButton('ارسال'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
