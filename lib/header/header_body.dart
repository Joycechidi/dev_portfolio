import 'package:auto_size_text/auto_size_text.dart';
import 'package:dev_portfolio/constants.dart';
import 'package:dev_portfolio/default_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderBody extends StatelessWidget {
  final bool isMobile;
  const HeaderBody({
    Key key,
    this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'Hello I\'m </>',
          style: GoogleFonts.montserrat(
            fontSize: 30,
            color: Colors.teal[300],
          ),
          maxLines: 1,
        ),
        AutoSizeText(
          'Joyce\nChidiadi',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 60,
          ),
          maxLines: 2,
        ),
        SizedBox(
          height: isMobile ?? false ? 20 : 37,
        ),
        AutoSizeText(
          'Software Engineer - AI | ML & Deep Learning | Mobile App focused',
          style: GoogleFonts.montserrat(
            fontSize: 24,
            color: Colors.white,
          ),
          maxLines: 3,
        ),
        SizedBox(
          height: isMobile ?? false ? 20 : 40
        ),
        // AutoSizeText(
        //   'My interests:\nShuffling data for business insights.\nBuilding software products that solve human and business problems.\nSafeguarding customers data using secure and private AI tools.',
        //   style: TextStyle(fontSize: 16),
        //   maxLines: 6,
        // ),
        // FlatButton(
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(7),
        //     ),
        //   ),
        //   color: Colors.teal[500],
        //   onPressed: () {},
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(
        //       vertical: isMobile ?? false ? 10 : 17,
        //       horizontal: isMobile ?? false ? 8 : 15,
        //     ),
        //     child: Text('Contact Me',
        //         style: TextStyle(
        //             fontSize: isMobile ?? false ? 20 : 24,
        //             color: Colors.white)),
        //   ),
        // ),

        SizedBox(
          height: isMobile ?? false ? 20 : 40
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DefaultButton(
              imageSrc: "images/contact.png",
              text: "Contact Me",
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}
