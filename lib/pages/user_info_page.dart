import 'package:emergency/widgets/my_date_picker.dart';
import 'package:emergency/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

class UserInfoPage extends StatefulWidget {
  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  String selectedGender;
  List<String> genderList = [
    'ذكر',
    'انثي',
  ];

  String selectedBlood;
  List<String> bloodTypeList = [
    'AB+',
    'AB-',
    'O+',
    'O-',
    'B+',
    'B-',
    'A+',
    'A-',
  ];

  bool diabetic = false;
  bool sickOfPressure = false;
  bool heartSick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('معلومات المستخدم'),
      ),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              children: [
                MyTextFormField(
                  hintText: 'الاسم بالكامل',
                ),
                SizedBox(
                  height: 18,
                ),
                MyTextFormField(
                  hintText: 'رقم الهوية',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 18,
                ),
                MyDatePicker(
                  title: 'تاريخ الميلاد',
                  onDateSelected: (String date, DateTime selectedDate) {},
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
                      value: selectedGender,
                      hint: Text('النوع'),
                      items: genderList.map((String value) {
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
                          selectedGender = newValue;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                MyTextFormField(
                  hintText: 'الطول',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 18,
                ),
                MyTextFormField(
                  hintText: 'الوزن',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 18,
                ),
                MyTextFormField(
                  hintText: 'رقم الجوال',
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 18,
                ),
                MyTextFormField(
                  hintText: 'العنوان',
                  keyboardType: TextInputType.text,
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
                      value: selectedBlood,
                      hint: Text('فصيلة الدم'),
                      items: bloodTypeList.map((String value) {
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
                          selectedBlood = newValue;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffEEEEEE),
                  ),
                  child: SwitchListTile(
                    value: diabetic,
                    title: Text('مريض سكر؟'),
                    onChanged: (bool val) {
                      setState(() {
                        diabetic = val;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffEEEEEE),
                  ),
                  child: SwitchListTile(
                    value: sickOfPressure,
                    title: Text('مريض ضغط؟'),
                    onChanged: (bool val) {
                      setState(() {
                        sickOfPressure = val;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffEEEEEE),
                  ),
                  child: SwitchListTile(
                    value: heartSick,
                    title: Text('مريض قلب؟'),
                    onChanged: (bool val) {
                      setState(() {
                        heartSick = val;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
