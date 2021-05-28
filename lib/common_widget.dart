import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:teletherapy/model.dart';

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
              offset: Offset(3,3),
            ),
          ],
        ),
        height: 115,
        width:115,
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
}



