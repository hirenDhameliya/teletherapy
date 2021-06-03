import 'package:flutter/material.dart';

class AppoinmentPage extends StatefulWidget {
  const AppoinmentPage({Key key}) : super(key: key);

  @override
  _AppoinmentPageState createState() => _AppoinmentPageState();
}

class _AppoinmentPageState extends State<AppoinmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading:  Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Image.asset(
            'assets/image/back.png',
            height:25,
            width: 25,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Essential Info',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.black),
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Divider(
              thickness:3,color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
