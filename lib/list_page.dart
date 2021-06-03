import 'package:flutter/material.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
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
      mainAxisAlignment: MainAxisAlignment.center,
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
      mainAxisAlignment: MainAxisAlignment.center,
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
      mainAxisAlignment: MainAxisAlignment.center,
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
      mainAxisAlignment: MainAxisAlignment.center,
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
    time: Icon(
      Icons.access_time_outlined,
    ),
    fees: '\$300',
    star: Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
  ),
];

final doctorinfo = [
  Detail(
    image: 'assets/image/doctora.png',
    name: 'Dr. steven carter',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), DDv, MPH',
    speciality: 'skin,VD & hairTransplant',
    aboutDoctor:
        'Dr. steven carter is therapist who has\ncomprehensive expertisein the fields of an\n'
        'renal medicine and internal medicine this\n '
        'while dr specializes in dialysys and wild\n'
        ' critical care nephrology.',
    address: 'AMITA Health Resurrection\n,'
        'Medical Center, Chicago',
    experience: '10 year experience',
    medicalId: 'Medical registration id :5588',
    doctorBio: 'skin,VD & hairTransplant',
    fees: '\$300',
    respondTime: 'Respond within 4h',
    time: Icon(
      Icons.access_time_outlined,
    ),
    star: Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
    reviewimage: 'assets/image/reviewa.png',
    reviewname: 'david milne',
    reviewdate: '30 jan 2021',
    review:
        'my hair falling problem solved\nbecause of dr.carters hair transplant\n',
  ),
  Detail(
    image: 'assets/image/doctorb.png',
    name: 'Dr.josh hazalwood',
    rating: '4.4',
    degree: 'BDS, PGT, ms resident',
    speciality: 'dental surgery(japan)',
    aboutDoctor:
        'Dr.josh hazalwood is therapist who has\ncomprehensive expertisein the fields of an\n'
        'renal medicine and internal medicine this\n '
        'while dr specializes in dialysys and wild\n'
        ' critical care nephrology.',
    address: 'Alamance Regional Medical Center',
    experience: '7 years experience',
    medicalId: 'Medical registration id :5432',
    doctorBio: 'dental surgery(japan)',
    fees: '\$310',
    respondTime: 'Respond within 4h',
    time: Icon(
      Icons.access_time_outlined,
    ),
    star: Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
    reviewimage: 'assets/image/reviewa.png',
    reviewname: 'joseph phillipe',
    reviewdate: '15 feb 2021',
    review: 'happy with dr.josh treatment\nthank you dr.josh',
  ),
  Detail(
    image: 'assets/image/doctorc.png',
    name: 'Dr.randip guleria',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), MCH',
    speciality: 'Covid -19 Specialist',
    aboutDoctor:
        'Dr.randip guleria is therapist who has\ncomprehensive expertisein the fields of an\n'
        'renal medicine and internal medicine this\n '
        'while dr specializes in dialysys and wild\n'
        ' critical care nephrology.',
    address: 'Baylor Scott & White All Saints Medical\nCenter - Fort Worth',
    experience: '8 years experience',
    medicalId: 'Medical registration id :3258',
    doctorBio: 'Covid -19 Specialist',
    fees: '\$350',
    respondTime: 'Respond within 4h',
    time: Icon(
      Icons.access_time_outlined,
    ),
    star: Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
    reviewimage: 'assets/image/reviewa.png',
    reviewname: 'adama gilley',
    reviewdate: '11 may 2021',
    review:
        'recently i am covid positive\ni admit in hospital and\nafter successfull treatment\ni fell happy 😊 ',
  ),
  Detail(
    image: 'assets/image/doctord.png',
    name: 'Dr.jason mark',
    rating: '4.4',
    degree: 'MBBS, Bcs(helth), MCH',
    speciality: 'MBBS, MD, (UK)',
    aboutDoctor:
        'Dr.jason mark is therapist who has\ncomprehensive expertisein the fields of an\n'
        'renal medicine and internal medicine this\n '
        'while dr specializes in dialysys and wild\n'
        ' critical care nephrology.',
    address: 'MedStar Franklin Square Medical Center',
    experience: '5 years experience',
    medicalId: 'Medical registration id :1188',
    doctorBio: 'Phd, piediatrics',
    fees: '\$300',
    respondTime: 'Respond within 4h',
    time: Icon(
      Icons.access_time_outlined,
    ),
    star: Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
    reviewimage: 'assets/image/reviewa.png',
    reviewname: 'hope shai',
    reviewdate: '25 feb 2020',
    review:
        'my son is suffering from skin itching problem\ndr.marks advice help me\nthank you dr.mark',
  ),
  Detail(
      image: 'assets/image/doctore.png',
      name: 'Dr.rancy d paul',
      rating: '4.4',
      degree: 'MBBS, Bcs(helth), MCH',
      speciality: 'Eye Specialist',
      aboutDoctor:
          'Dr.rancy d paul is therapist who has\ncomprehensive expertisein the fields of an\n'
          'renal medicine and internal medicine this\n '
          'while dr specializes in dialysys and wild\n'
          ' critical care nephrology.',
      address: 'Methodist Specialty & Transplant Hospital',
      experience: '12 years experience',
      medicalId: 'Medical registration id :558',
      doctorBio: 'Eye Specialist',
      fees: '\$250',
      respondTime: 'Respond within 4h',
      time: Icon(
        Icons.access_time_outlined,
      ),
      star: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
      reviewimage: 'assets/image/reviewa.png',
      reviewname: 'keiron litchy',
      reviewdate: '30 jan 2021',
      review:
          'i have eye burning problem since last 1 month\ndr.rancy d paul advice help me\n now my problem is solve\n thank you dr.paul'),
  Detail(
      image: 'assets/image/doctorf.png',
      name: 'Dr.mishell wood',
      rating: '4.4',
      degree: 'MBBS, Bcs(helth), MCH',
      speciality: 'Phd, Cardiaology',
      aboutDoctor:
          'dr.mishell wood is therapist who has\ncomprehensive expertisein the fields of an\n'
          'renal medicine and internal medicine this\n '
          'while dr specializes in dialysys and wild\n'
          ' critical care nephrology.',
      address: 'Newton-Wellesley Hospital,new york',
      experience: '7 years experience',
      medicalId: 'Medical registration id :5998',
      doctorBio: 'Phd, Cardiaology',
      fees: '\$300',
      respondTime: 'Respond within 4h',
      time: Icon(
        Icons.access_time_outlined,
      ),
      star: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
      reviewimage: 'assets/image/reviewa.png',
      reviewname: 'louren fiaa',
      reviewdate: '30 march 2021',
      review:
          'i has problem releted heart and\nafter surgery i feel happy,thank you dr, mishell.'),
];
