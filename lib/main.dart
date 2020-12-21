import 'package:dev_portfolio/header/header_view.dart';
import 'package:dev_portfolio/navigation_bar/nav_bar_view.dart';
import 'package:dev_portfolio/project/project_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
            color: Colors.white,
            fontSize: 60,
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

class PortfolioView extends StatelessWidget {
  const PortfolioView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      endDrawer: DrawerView(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBarView(),
            SizedBox(
              height: 50,
            ),
            HeaderView(),
            ProjectView(),
            Container(
              height: height,
              width: width,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (!size.isMobile) return SizedBox();
        return Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Joyce Chidiadi'),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple,
                      Colors.white,
                    ],
                    tileMode: TileMode.repeated,
                  ),
                ),
              ),
              for (var item in kNavigationItems)
                ListTile(
                  title: Text(item.text),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
