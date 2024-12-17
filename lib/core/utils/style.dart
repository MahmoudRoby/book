import 'package:flutter/material.dart';

import 'package:bookly/constants.dart';


abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
    color: Colors.white,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.none,
    color: Colors.white,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: kGtSectraFine,
    letterSpacing: 1.2,
    decoration: TextDecoration.none,
    color: Colors.white,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.none,
    color: Colors.white,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    color: Colors.white,
  );
}

const TextStyle textStyle = TextStyle();
