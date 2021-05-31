import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:teletherapy/model.dart';

import 'model.dart';

class CommonWidget {
  static Widget categories({
    Detail categorieslist,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(3, 3),
            ),
          ],
        ),
        height: 80,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              maxRadius: 27,
              backgroundColor: Colors.grey,
              child: Image(
                image: Svg(
                  "${categorieslist.image}",
                ),
                fit: BoxFit.cover,
              ),
            ),
            Text("${categorieslist.name}"),
          ],
        ),
      ),
    );
  }

  static Widget therapist({
    Detail therapist,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 5,
                          spreadRadius: 2,
                        )
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(therapist.image),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "${therapist.name}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: therapist.star,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "${therapist.speciality}",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.deepPurple),
                        ),
                      ),
                      Text(
                        "${therapist.degree}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 15),
              child: Divider(
                height: 3,
                color: Colors.grey.shade300,
                thickness: 3,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: therapist.time,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "${therapist.respondTime}",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "${therapist.fees}",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget Doctorsinfo({Detail doctorinfo}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Stack(
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/image/bg.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                              AssetImage('assets/image/doctora.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Dr.mishell wood',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Phd, Cardiaology',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.deepPurple,
              ),
            ),
            Text(
              'MBBS, Bcs(helth), MCH',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.shade200,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Therapist',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        'abcd',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        'Other Info',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/image/experience.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Text('Experience'),
                                Text('Experience'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/image/verifie.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Text('Verified Doctor License'),
                                Text('Verified Doctor License'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/image/expert.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Text('Area Of Expertise '),
                                Text('Area Of Expertise '),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/image/hospital.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Text('Hospital Name & Address'),
                                Text('Hospital Name & Address'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey.shade200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'Rating & Review',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text('abc'),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              // child: therapist.star,
            ),
            Text('abc'),
            Container(
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
                  'Write Review',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.shade300,
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/image/doctora.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text('abc'),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      // child: therapist.star,
                    ),
                    Text('abc'),
                  ],
                ),
              ],
            ),
            Text('review'),
            Container(
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
                  'Book an Appointment',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );}
}
