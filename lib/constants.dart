import 'package:flutter/material.dart';

const num kInitWidth = 1507;
const kScreenPadding = const EdgeInsets.symmetric(horizontal: 20);

const kTextColor = Color(0xff787078);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF300554).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

//TextField design
const kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

const kDefaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: Color(0xFF54C5CC),
  ),
);

class Constants{
  static const BLOG_API = 'https://jcchidiadi-medium.herokuapp.com/@jcchidiadi';
  static const MEDIUM_IMAGE_CDN = 'https://miro.medium.com/fit/c/700/300/';
  static const BLOG_URL = 'http://www.medium.com/@jcchidiadi/';
  static const PROFILE_MEDIUM = 'http://www.medium.com/@jcchidiadi';
  static const PROFILE_LINKEDIN = 'https://www.linkedin.com/in/joycechidiadi/';
  static const PROFILE_GITHUB = 'https://github.com/joycechidi/';
  static const PROFILE_TWITTER = 'https://twitter.com/favoredjay';

}
