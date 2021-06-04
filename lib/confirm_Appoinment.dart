import 'package:flutter/material.dart';
import 'package:teletherapy/common_widget.dart';
import 'package:teletherapy/date_time_page.dart';
import 'package:teletherapy/payment_page.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key key}) : super(key: key);

  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  DateTime selectedDate = DateTime.now();

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
                    builder: (context) => DateTimePage(),
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
          'Confirm',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              thickness: 3,
              color: Colors.grey.shade300,
            ),
            Text(
              'Time And Date',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.redAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "${selectedDate.toLocal()}".split(' ')[0],
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 3,
              color: Colors.grey.shade300,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PayMentPage(),
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
                  color: Color(0xffBE5FF9),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'Confirm Booking',
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
          ],
        ),
      ),
    );
  }
}
