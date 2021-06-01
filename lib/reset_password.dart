import 'package:flutter/material.dart';
import 'package:teletherapy/signin_page.dart';

class Resetassword extends StatefulWidget {
  const Resetassword({Key key}) : super(key: key);

  @override
  _ResetasswordState createState() => _ResetasswordState();
}

class _ResetasswordState extends State<Resetassword> {
  bool _hidePass = true;

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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Reset Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize:22,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Please enter your password below\nminimum 6 characters with a number\nand letter',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
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
                                suffixIcon: GestureDetector(
                                  child: Icon(
                                    _hidePass
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black45,
                                    size: 20,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _hidePass = !_hidePass;
                                    });
                                  },
                                ),
                              ),
                              validator: (_password) {
                                bool _passwordValid =
                                    RegExp(r"^[0-9]+$").hasMatch(_password);
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
                            TextFormField(
                              maxLength: 5,
                              keyboardType: TextInputType.number,
                              obscureText: _hidePass,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Color(0xffBE5FF9),
                                ),
                                hintText: ' Confirm Password',
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
                                suffixIcon: GestureDetector(
                                  child: Icon(
                                    _hidePass
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black45,
                                    size: 20,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _hidePass = !_hidePass;
                                    });
                                  },
                                ),
                              ),
                              validator: (_password) {
                                bool _passwordValid =
                                    RegExp(r"^[0-9]+$").hasMatch(_password);
                                if (_password.isEmpty)
                                  return 'please enter your password';
                                if (!_passwordValid)
                                  return 'please enter your valide password';
                                return null;
                              },
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignInPage(),
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
                                  padding: const EdgeInsets.only(top:12),
                                  child: Text(
                                    'Done',
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
