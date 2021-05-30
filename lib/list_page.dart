import 'package:flutter/material.dart';
import 'package:teletherapy/doctor_info.dart';
import 'package:teletherapy/model.dart';

final categories1 = [
  Detail(
    id: 1,
    image: 'assets/image/dental.svg',
    name: 'Dental',
  ),
  Detail(
    id: 2,
    image: 'assets/image/piediatrics.svg',
    name: 'Pediatrics',
  ),
  Detail(
    id: 3,
    image: 'assets/image/cardiology.svg',
    name: 'cardiology',
  ),
  Detail(
    id: 4,
    image: 'assets/image/covid19.svg',
    name: 'Covid-19',
  ),
  Detail(
    id: 5,
    image: 'assets/image/dental.svg',
    name: 'Dental',
  ),
];

final categories2 = [
  Detail(
    id: 1,
    image: 'assets/image/covid19.svg',
    name: 'Covid-19',
  ),
  Detail(
    id: 2,
    image: 'assets/image/eye.svg',
    name: 'Eye',
  ),
  Detail(
    id: 3,
    image: 'assets/image/burn.svg',
    name: 'Burn',
  ),
  Detail(
    id: 4,
    image: 'assets/image/dental.svg',
    name: 'Dental',
  ),
  Detail(
    id: 5,
    image: 'assets/image/covid19.svg',
    name: 'Covid-19',
  ),
];

final therapist = [
  Detail(
    image: 'assets/image/doctora.png',
    name: 'Dr. steven carter',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), DDv, MPH',
    speciality: 'skin,VD & hairTransplant',
    respondTime: 'Respond within 2h',
    fees: '\$300',
    star: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star_border,
          color: Colors.amber,
          size: 20,
        ),
      ],
    ),
    time: Icon(
      Icons.access_time_outlined,
    ),
  ),
  Detail(
    image: 'assets/image/doctorb.png',
    name: 'Dr.josh hazalwood',
    rating: '4.4',
    degree: 'BDS, PGT, ms resident',
    speciality: 'dental surgery(japan)',
    respondTime: 'Respond within 4h',
    fees: '\$230',
    star: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star_border,
          color: Colors.amber,
          size: 20,
        ),
      ],
    ),
    time: Icon(
      Icons.access_time_outlined,
    ),
  ),
  Detail(
    image: 'assets/image/doctorc.png',
    name: 'Dr.randip guleria',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), DDv, MPH',
    speciality: 'Covid -19 Specialist',
    respondTime: 'Respond within 3h',
    fees: '\$350',
    star: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star_border,
          color: Colors.amber,
          size: 20,
        ),
      ],
    ),
    time: Icon(
      Icons.access_time_outlined,
    ),
  ),
  Detail(
    image: 'assets/image/doctord.png',
    name: 'Dr.jason mark',
    rating: '4.4',
    degree: 'MBBS, MD, (UK)',
    speciality: 'Phd, piediatrics',
    respondTime: 'Respond within 1h',
    fees: '\$300',
    star: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star_border,
          color: Colors.amber,
          size: 20,
        ),
      ],
    ),
    time: Icon(
      Icons.access_time_outlined,
    ),
  ),
  Detail(
    image: 'assets/image/doctore.png',
    name: 'Dr.rancy d paul',
    rating: '4.4',
    degree: 'MBBS, DDv, MPH',
    speciality: 'Eye Specialist',
    respondTime: 'Respond within 2h',
    fees: '\$310',
    star: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star_border,
          color: Colors.amber,
          size: 20,
        ),
      ],
    ),
    time: Icon(
      Icons.access_time_outlined,
    ),
  ),
  Detail(
    image: 'assets/image/doctorf.png',
    name: 'Dr.mishell wood',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), MCH',
    speciality: 'Phd, Cardiaology',
    respondTime: 'Respond within 4h',
    fees: '\$300',
    star: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          Icons.star_border,
          color: Colors.amber,
          size: 20,
        ),
      ],
    ),
    time: Icon(
      Icons.access_time_outlined,
    ),
  ),
];

final doctorinfo = [
  Detail(
    image: 'assets/image/doctorf.png',
    name: 'Dr.mishell wood',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), MCH',
    speciality: 'Phd, Cardiaology',
    aboutDoctor: '',
    address: '',
    experience: '',
    medicalId: '',
    doctorBio: '',
  ),
  Detail(
    image: 'assets/image/doctorf.png',
    name: 'Dr.mishell wood',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), MCH',
    speciality: 'Phd, Cardiaology',
    aboutDoctor: '',
    address: '',
    experience: '',
    medicalId: '',
    doctorBio: '',
  ),
  Detail(
    image: 'assets/image/doctorf.png',
    name: 'Dr.mishell wood',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), MCH',
    speciality: 'Phd, Cardiaology',
    aboutDoctor: '',
    address: '',
    experience: '',
    medicalId: '',
    doctorBio: '',
  ),
  Detail(
    image: 'assets/image/doctorf.png',
    name: 'Dr.mishell wood',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), MCH',
    speciality: 'Phd, Cardiaology',
    aboutDoctor: '',
    address: '',
    experience: '',
    medicalId: '',
    doctorBio: '',
  ),
  Detail(
    image: 'assets/image/doctorf.png',
    name: 'Dr.mishell wood',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), MCH',
    speciality: 'Phd, Cardiaology',
    aboutDoctor: '',
    address: '',
    experience: '',
    medicalId: '',
    doctorBio: '',
  ),
  Detail(
    image: 'assets/image/doctorf.png',
    name: 'Dr.mishell wood',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), MCH',
    speciality: 'Phd, Cardiaology',
    aboutDoctor: '',
    address: '',
    experience: '',
    medicalId: '',
    doctorBio: '',
  ),
];
