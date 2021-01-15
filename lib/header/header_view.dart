import 'package:dev_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:dev_portfolio/constants.dart';
import 'package:dev_portfolio/header/header_body.dart';
import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      mobileView: HeaderMobileView(),
      desktopView: HeaderDesktopView(),
    );
  }
}

class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return Container(
      height: 864,
      width: kInitWidth,
      color: Color(0xFF180723),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Expanded(
              child: HeaderBody(),
            ),
            Image.asset(
              'images/header.png',
              height: isSmall ? imageWidth : 500,
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.85,
      width: width,
      color: Color(0xFF180723),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 40,
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'images/header.png',
            ),
          ),

          HeaderBody(isMobile: true),
        ],
      ),
    );
  }
}
