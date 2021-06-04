import 'package:flutter/material.dart';
import 'package:teletherapy/common_widget.dart';
import 'package:teletherapy/date_time_page.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key key}) : super(key: key);

  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
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
              onTap: (){
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>DateTimePage(),
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
      body: Column(
        children: [
          Divider(
            thickness: 3,
            color: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }
}
