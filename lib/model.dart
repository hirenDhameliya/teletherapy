import 'package:flutter/material.dart';

class Detail {
  final String image;
  final String catagariesname;
  final String doctorname;
  final String degree;
  final String speciality;
  final String fees;
  final String respondtime;
  final Icons star;
  final Icons time;
  final String rating;

  Detail(
      {this.image,
      this.catagariesname,
      this.doctorname,
      this.degree,
      this.speciality,
      this.fees,
      this.respondtime,
      this.star,
      this.time,
      this.rating});
}
