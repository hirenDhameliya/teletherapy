import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:teletherapy/forgot_password.dart';
import 'package:teletherapy/home_page.dart';
import 'package:teletherapy/signup_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  bool _hidePass = true;
  bool _selected = false;

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
                    height: 40,
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
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    'WelCome Back',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(
                                    'Sign In your account',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Form(
                              key: _form,
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.local_post_office,
                                        color: Color(0xff9D50BB),
                                        size: 25,
                                      ),
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                      // enabledBorder: OutlineInputBorder(
                                      //   borderRadius: BorderRadius.all(
                                      //       Radius.circular(10)),
                                      //   borderSide: BorderSide(
                                      //     color: Colors.black38,
                                      //     width: 1.5,
                                      //   ),
                                      // ),
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
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    obscureText: _hidePass,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Color(0xff9D50BB),
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
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
                                      suffixIcon: GestureDetector(
                                        child: Icon(
                                          _hidePass
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.black45,
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _hidePass = !_hidePass;
                                          });
                                        },
                                      ),
                                    ),
                                    validator: (_password) {
                                      bool _passwordValid = RegExp(r"^[0-9]+$")
                                          .hasMatch(_password);
                                      if (_password.isEmpty)
                                        return 'please enter your password';
                                      if (!_passwordValid)
                                        return 'please enter your valide password';
                                      return null;
                                    },
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
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
                                      color: _selected
                                          ? Color(0xff9D50BB)
                                          : Colors.white,
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text('Remember me'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ForGotPassword(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff9D50BB),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
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
                                    'Sign In',
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
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text('Don\'t have an account ?'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUpPage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff9D50BB),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 10.0, right: 15.0),
                                    child: Divider(
                                      color: Colors.black,
                                      height: 35,
                                    ),
                                  ),
                                ),
                                Text("Or Continue with"),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 15.0, right: 10.0),
                                    child: Divider(
                                      color: Colors.black,
                                      height: 35,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 3,
                                          offset: Offset(1, 1),
                                          spreadRadius: 2.5),
                                    ],
                                  ),
                                  child: Image(
                                    image: Svg(
                                      "assets/image/google.svg",
                                      size: Size.fromRadius(16),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 3,
                                          offset: Offset(1, 1),
                                          spreadRadius: 2.5),
                                    ],
                                  ),
                                  child: Image(
                                    image: Svg(
                                      "assets/image/facebook.svg",
                                      size: Size.fromRadius(16),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 3,
                                          offset: Offset(1, 1),
                                          spreadRadius: 2.5),
                                    ],
                                  ),
                                  child: Image(
                                    image: Svg(
                                      "assets/image/twitter.svg",
                                      size: Size.fromRadius(16),
                                    ),
                                  ),
                                ),
                              ],
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
