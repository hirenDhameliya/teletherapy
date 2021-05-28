import 'package:flutter/material.dart';

class Detail {
  final int id;
  final String image;
  final String name;
  final String degree;
  final String speciality;
  final String fees;
  final String respondTime;
  final Icons star;
  final Icons time;
  final String rating;
  final String aboutDoctor;
  final String doctorBio;
  final String address;
  final String experience;
  final String medicalId;

  Detail(
      {this.id,
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
      this.medicalId});
}
