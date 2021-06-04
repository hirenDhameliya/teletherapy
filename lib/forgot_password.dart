import 'package:flutter/material.dart';
import 'package:teletherapy/recieve_otp_page.dart';

class ForGotPassword extends StatefulWidget {
  const ForGotPassword({Key key}) : super(key: key);

  @override
  _ForGotPasswordState createState() => _ForGotPasswordState();
}

class _ForGotPasswordState extends State<ForGotPassword> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.centerLeft,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Image(
                            image: AssetImage("assets/image/main.png"),
                          ),
                          Text(
                            'Teletherapy',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Find Your Favourite Therapist',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    fit: FlexFit.loose,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Forgot Password ?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize:22,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Please enter your email address and\nwe will send you 4-digit verification\ncode to reset your password',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Form(
                              key: _form,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.local_post_office,
                                    color: Color(0xff9D50BB),
                                  ),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                      color: Colors.black38,
                                      width: 1.5,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                validator: (_email) {
                                  bool _emailValid = RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(_email);
                                  if (_email.isEmpty)
                                    return 'please enter your email';
                                  if (!_emailValid)
                                    return 'please enter your valide email';
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height:12,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>   OtpRecievePage (),
                                  ),
                                );
                              },
                              child: Container(
                                height:45,
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
