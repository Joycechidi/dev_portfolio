import 'package:auto_size_text/auto_size_text.dart';
import 'package:dev_portfolio/footer/footer.dart';
import 'package:dev_portfolio/utils/hover_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderBody extends StatelessWidget {
  final bool isMobile;
  const HeaderBody({
    Key key,
    this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
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
            height: isMobile ?? false ? 20 : 35,
          ),
          AutoSizeText(
            'Software Engineer - AI | ML & Deep Learning | Mobile App focused',
            style: GoogleFonts.montserrat(
              fontSize: 24,
              color: Colors.white,
            ),
            maxLines: 3,
          ),
          SizedBox(height: isMobile ?? false ? 20 : 40),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            color: Colors.teal,
            onPressed: () => launch(
                'mailto:smith@example.org?subject=News&body=New%20plugin'),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: isMobile ?? false ? 10 : 17,
                horizontal: isMobile ?? false ? 8 : 15,
              ),
              child: Text(
                'Contact Me ',
                style: TextStyle(
                  fontSize: isMobile ?? false ? 20 : 24,
                  color: Colors.white,
                ),
              ),
            ),
          ).moveUpOnHover,
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final social in socials)
                IconButton(
                  icon: social.icon,
                  onPressed: () => launch(social.url),
                  color: Colors.teal,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ).moveUpOnHover,
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
