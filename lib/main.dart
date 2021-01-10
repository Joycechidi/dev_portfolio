import 'package:after_layout/after_layout.dart';
import 'package:dev_portfolio/portfolio/provider_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:dev_portfolio/blog/blog_view.dart';
import 'package:dev_portfolio/drawer/drawer_view.dart';
import 'package:dev_portfolio/experience/experience_view.dart';
import 'package:dev_portfolio/header/header_view.dart';
import 'package:dev_portfolio/navigation_bar/nav_bar_view.dart';
import 'package:dev_portfolio/project/project_view.dart';
import 'package:dev_portfolio/skills/skills_view.dart';
import 'package:provider/provider.dart';

// echo "# dev_portfolio" >> README.md
// git init
// git add README.md
// git commit -m "first commit"
// git branch -M main
// git remote add origin https://github.com/Joycechidi/dev_portfolio.git
// git push -u origin main

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joyce Chidiadi',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline2: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            // fontSize: 60,
          ),
          headline4: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 26,
          ),
        ),
      ),
      home: PortfolioView(),
    );
  }
}

