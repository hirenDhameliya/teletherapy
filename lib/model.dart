import 'package:flutter/material.dart';

class Detail {
  final int id;
  final String image;
  final String name;
  final String degree;
  final String speciality;
  final String fees;
  final String respondTime;
  final Row star;
  final Icon time;
  final String rating;
  final String aboutDoctor;
  final String doctorBio;
  final String address;
  final String experience;
  final String medicalId;
  final String reviewimage;
  final String reviewname;
  final String reviewdate;
  final String review;


  Detail( {
    this.review,
    this.id,
    this.image,
    this.name,
    this.degree,
    this.speciality,
    this.fees,
    this.respondTime,
    this.star,
    this.time,
    this.rating,
    this.aboutDoctor,
    this.doctorBio,
    this.address,
    this.experience,
    this.medicalId,
    this.reviewimage,
    this.reviewname,
    this.reviewdate,
  });
}




// gradient: LinearGradient(
// begin: Alignment.topLeft,
// end: Alignment.bottomRight,
// colors: [
// Colors.lightBlue[500],
// Colors.white,
// ],),