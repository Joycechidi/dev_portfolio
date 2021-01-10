import 'package:dev_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:flutter/material.dart';

class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final onPressed = () => print('Click');
    return MobileDesktopViewBuilder(
        mobileView: NavigationMobileView(),
        desktopView: NavigationDesktopView(onPressed: onPressed));
  }
}

class NavigationDesktopView extends StatelessWidget {
  const NavigationDesktopView({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 1507,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Image.asset(
            'images/logo.png',
            height: 600,
          ),
          Spacer(),
          for (var item in [])
            NavigationBarItem(
              onPressed: onPressed,
              text: item.text,
            ),
        ],
      ),
      // color: Colors.deepPurple,
    );
  }
}

class NavigationMobileView extends StatelessWidget {
  const NavigationMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 20),
          Image.asset(
            'images/logo.png',
            height: 100,
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          )
        ],
      ),
    );
  }
}


class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    Key key,
    @required this.onPressed,
    @required this.text,
  }) : super(key: key);

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 650;
    // final isLarge = MediaQuery.of(context).size.width > 900;
    return Container(
      padding: const EdgeInsets.only(left: 64),
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: isSmall ? 17 : 24,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
