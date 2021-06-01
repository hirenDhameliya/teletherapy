import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              color: Color(0xffBE5FF9),
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
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Create Account',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize:25,
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
                                    'Create a new account',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize:13,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Form(
                              key: _form,
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person_rounded,
                                        color: Color(0xffBE5FF9),
                                      ),
                                      hintText: 'Username',
                                      hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                          fontSize:15),
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
                                    ),
                                    validator: (_user) {
                                      bool _userValid =
                                          RegExp(r"^[a-zA-Z]+").hasMatch(_user);
                                      if (_user.isEmpty)
                                        return 'please enter your name';
                                      if (!_userValid)
                                        return 'please enter your valide name';
                                      return null;
                                    },
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.local_post_office,
                                        color: Color(0xffBE5FF9),
                                      ),
                                      hintText: 'Email',
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
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.phone,
                                        color: Color(0xffBE5FF9),
                                      ),
                                      hintText: 'Phone Number',
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
                                    ),
                                    validator: (_number) {
                                      bool _numberValid =
                                          RegExp(r"^[0-9]+$").hasMatch(_number);
                                      if (_number.isEmpty)
                                        return 'please enter your number';
                                      if (!_numberValid)
                                        return 'please enter your valide number';
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
                                        color: Color(0xffBE5FF9),
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
                                          size:22,
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
                                    height: 10,
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
                                          ? Colors.deepPurple
                                          : Colors.white,
                                      border: Border.all(color: Colors.black45),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: _selected
                                            ? Icon(
                                                Icons.check,
                                                size: 16,
                                                color: Colors.white,
                                              )
                                            : Container()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                      'I agree With all terms and conditions ',style: TextStyle(fontSize: 12),),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
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
                                height:45,
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
                                    'Sign up',
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
