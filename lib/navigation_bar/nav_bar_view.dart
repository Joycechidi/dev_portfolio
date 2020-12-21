import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        if (size.isMobile) {
          return Container(
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(width: 20),
                Image.asset(
                  'images/logo.png',
                  height: 80,
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
        final onPressed = () => print('Click');
        // final text = 'About Me';
        return Container(
          height: 100,
          width: 1507,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Image.asset(
                'images/nav_logo.png',
                height: 600,
              ),
              Spacer(),
              for (var item in kNavigationItems)
                NavigationBarItem(
                  onPressed: onPressed,
                  text: item.text,
                ),
            ],
          ),
          // color: Colors.deepPurple,
        );
      },
    );
  }
}

class NavigationItem {
  final String text;

  NavigationItem(this.text);
}

final kNavigationItems = [
  NavigationItem('About Me'),
  NavigationItem('Skills'),
  NavigationItem('Projects'),
  NavigationItem('Writings'),
];

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
