import 'package:dev_portfolio/portfolio/provider_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: Color(0xFF1C1251)
            
            // fontSize: 60, #1C1251
          ),
          headline4: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Color(0xFF1C1251),
            // color: Colors.black,
            fontSize: 26,
          ),
        ),
      ),
      home: PortfolioView(),
    );
  }
}
