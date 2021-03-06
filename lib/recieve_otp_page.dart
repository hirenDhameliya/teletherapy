import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:teletherapy/reset_password.dart';

class OtpRecievePage extends StatefulWidget {
  const OtpRecievePage({Key key}) : super(key: key);

  @override
  _OtpRecievePageState createState() => _OtpRecievePageState();
}

class _OtpRecievePageState extends State<OtpRecievePage> {
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Enter The Code',
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
                              'Please enter 4-digit code send to\nyour verified email account',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            OTPTextField(
                              keyboardType: TextInputType.number,
                              length: 4,
                              width: MediaQuery.of(context).size.width,
                              textFieldAlignment: MainAxisAlignment.spaceEvenly,
                              fieldWidth:40,
                              fieldStyle: FieldStyle.box,
                              style: TextStyle(
                                fontSize:20,
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                              ),
                              obscureText: true,
                              onChanged: null,
                              onCompleted: null,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Resetassword(),
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
                                      fontSize:18,
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
                                  child: Text(
                                    'Didn\'t receive code ?',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:10),
                                  child: TextButton(
                                    onPressed: (){},
                                    child: Text(
                                      'Resend',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:Color(0xff9D50BB),
                                      ),
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
