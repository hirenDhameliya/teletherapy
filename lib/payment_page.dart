import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:teletherapy/common_widget.dart';
import 'package:teletherapy/confirm_Appoinment.dart';

class PayMentPage extends StatefulWidget {
  const PayMentPage({Key key}) : super(key: key);

  @override
  _PayMentPageState createState() => _PayMentPageState();
}

class _PayMentPageState extends State<PayMentPage> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 5,
        leading: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Padding(
            padding: const EdgeInsets.all(2.7),
            child: InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmPage(),
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
          'Payment',
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
          children: [
            // Divider(
            //   thickness: 3,
            //   color: Colors.grey.shade300,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/mastercard.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '2222',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Colors.grey.shade200),
                        ),
                        Text(
                          '2555',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Colors.grey.shade200),
                        ),
                        Text(
                          '7894',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Colors.grey.shade200),
                        ),
                        Text(
                          '4545',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Colors.grey.shade200),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 19, top: 145),
                    child: Text(
                      'Hiren',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.grey.shade200),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 220, top: 145),
                    child: Text(
                      '22-05-2030',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.grey.shade200),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name on card',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
                        hintStyle:  TextStyle(color: Colors.grey.shade400, fontSize:15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Card Number',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Enter Your Card Number',
                        hintStyle:  TextStyle(color: Colors.grey.shade400, fontSize:15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Expire Date',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 60,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1.5,
                                            color: Colors.grey,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          color: Colors.grey.shade300),
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'DD',
                                          hintStyle: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1.5,
                                            color: Colors.grey,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          color: Colors.grey.shade300),
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'MM',
                                          hintStyle: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1.5,
                                            color: Colors.grey,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          color: Colors.grey.shade300),
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'YY',
                                          hintStyle: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'CVV',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1.5,
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            color: Colors.grey.shade300),
                                        child: TextFormField(
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 16),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'CVV',
                                            hintStyle: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selected = !_selected;
                          });
                        },
                        child: Container(
                          height: 23,
                          width: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _selected ? Color(0xff9D50BB) : Colors.white,
                            border: Border.all(color: Colors.black45),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: _selected
                                  ? Icon(
                                      Icons.check,
                                      size: 15,
                                      color: Colors.white,
                                    )
                                  : Container()),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text('Remember me'),
                    ],
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pop(
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
                        child: Text('Pay \$ 300', style: TextStyle(
                          fontSize:18,
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
          ],
        ),
      ),
    );
  }
}
