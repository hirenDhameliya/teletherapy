import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:teletherapy/appoinment_page.dart';
import 'package:teletherapy/common_widget.dart';
import 'package:teletherapy/confirm_Appoinment.dart';

class DateTimePage extends StatefulWidget {
  const DateTimePage({Key key}) : super(key: key);

  @override
  _DateTimePageState createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Padding(
            padding: const EdgeInsets.all(2.7),
            child: InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppoinmentPage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/image/back.png',
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Time And Date',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Image.asset(
              'assets/image/profile.png',
              height: 37,
              width: 37,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Divider(
              thickness: 3,
              color: Colors.grey.shade300,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/bookbg.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:226,left: 103),
                      child: TextButton(
                        child: Container(
                          height:30,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Select Date ',
                              style: TextStyle(
                                fontSize:12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onPressed: () => _selectDate(context),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Divider(
                    thickness: 3,
                    color: Colors.grey.shade300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    'Morning',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    child: Row(
                      children: [
                        CommonWidget.Appoinmentslot('9:00 AM'),
                        CommonWidget.Appoinmentslot('10:00 AM'),
                        CommonWidget.Appoinmentslot('11:00 AM'),
                        CommonWidget.Appoinmentslot('12:00 PM'),
                        CommonWidget.Appoinmentslot('1:00 PM'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    'Evening',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonWidget.Appoinmentslot('4:30 PM'),
                        CommonWidget.Appoinmentslot('5:30 PM'),
                        CommonWidget.Appoinmentslot('6:30 PM'),
                        CommonWidget.Appoinmentslot('7:30 PM'),
                        CommonWidget.Appoinmentslot('8:30 PM'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 75,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmPage(),
                  ),
                );
              },
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.2,
                      0.7,
                    ],
                    colors: [
                      Color(0xff6E48AA),
                      Color(0xff9D50BB),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  DateFormat(String s) {}
}
