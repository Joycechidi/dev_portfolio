import 'package:auto_size_text/auto_size_text.dart';
import 'package:dev_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:dev_portfolio/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dev_portfolio/utils/hover_extensions.dart';

class FooterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      desktopView: FooterDesktopView(),
      mobileView: FooterMobileView(),
    );
  }
}

class FooterDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;
    return Container(
      height: 100,
      width: kInitWidth,
      padding: kScreenPadding,
      child: Row(
        children: [
          AutoSizeText(
            '© $currentYear Made by Joyce Chidiadi with Dart 💕 Flutter ',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Colors.teal[300],
            ),
            // maxLines: 1,
          ),
          SizedBox(height: 50),
          InkWell(
            child: Text(
              ' <Source Code>',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black38,
                  fontSize: 18),
            ),
            mouseCursor: MaterialStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () => launch('https://github.com/Joycechidi/dev_portfolio'),
          ),
          Spacer(),
          for (final social in socials)
            IconButton(
              icon: social.icon,
              onPressed: () => launch(social.url),
              color: Colors.teal,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ).moveUpOnHover,
          SizedBox(width: 40),
        ],
      ),
    );
  }
}

class FooterMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;

    return Container(
      padding: kScreenPadding,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final social in socials)
                IconButton(
                  icon: social.icon,
                  onPressed: () => launch(social.url),
                  color: Colors.teal,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                )
            ],
          ),
          SizedBox(height: 15),
          // Text(
          //   '© $currentYear Built by Joyce Chidiadi with Dart 💕 Flutter ',

          // ),
          AutoSizeText(
            '© $currentYear Built by Joyce Chidiadi with Dart 💕 Flutter ',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Colors.teal[300],
            ),
            maxLines: 2,
          ),
          SizedBox(height: 15),
          InkWell(
            child: Text(
              '<Source Code>',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            mouseCursor: MaterialStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () => launch('https://github.com/Joycechidi/dev_portfolio'),
          ),
        ],
      ),
    );
  }
}

class SocialInfo {
  final Widget icon;
  final String url;
  SocialInfo({
    @required this.icon,
    @required this.url,
  });
}

final socials = [
  // SocialInfo(
  //   icon: FaIcon(FontAwesomeIcons.facebook),
  //   url: 'https://www.facebook.com',
  // ),
  SocialInfo(
    icon: FaIcon(FontAwesomeIcons.github),
    url: 'https://github.com/Joycechidi',
  ),
  SocialInfo(
    icon: FaIcon(FontAwesomeIcons.linkedin),
    url: 'https://www.linkedin.com/in/joycechidiadi/',
  ),
  SocialInfo(
    icon: FaIcon(FontAwesomeIcons.twitter),
    url: 'https://twitter.com/favoredjay',
  ),
  SocialInfo(
      icon: FaIcon(FontAwesomeIcons.medium),
      url: 'https://medium.com/@jcchidiadi'),
];
