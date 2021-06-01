import 'package:flutter/material.dart';
import 'package:teletherapy/common_widget.dart';
import 'package:teletherapy/list_page.dart';
import 'package:teletherapy/model.dart';

class DoctorInfo extends StatefulWidget {
  const DoctorInfo({Key key}) : super(key: key);

  @override
  _DoctorInfoState createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  List<Detail> doctorinfolist1 = [];
  List<Detail> doctorinfolist2 = [];
  List<Detail> doctorinfolist3 = [];
  List<Detail> doctorinfolist4 = [];
  List<Detail> doctorinfolist5 = [];
  List<Detail> doctorinfolist6 = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      doctorinfolist1 = doctorinfo1;
      doctorinfolist2 = doctorinfo2;
      doctorinfolist3 = doctorinfo3;
      doctorinfolist4 = doctorinfo4;
      doctorinfolist5 = doctorinfo5;
      doctorinfolist6 = doctorinfo6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: doctorinfolist1.map((Detail doctorinfo) {
                return CommonWidget.doctorsinfo(doctorinfo: doctorinfo);
              }).toList(),
            ),

          ],
        ),
      ),
    );
  }
}
