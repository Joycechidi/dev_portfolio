import 'package:dev_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:dev_portfolio/portfolio/provider_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:dev_portfolio/main.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      mobileView: DrawerMobileView(),
      desktopView: SizedBox(),
    );
  }
}

class DrawerMobileView extends StatelessWidget {
  const DrawerMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();

    return Drawer(
      // decoration: BoxDecoration(color: Colors.white),      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Joyce Chidiadi', style: Theme.of(context).textTheme.headline4),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurple],
                tileMode: TileMode.repeated,
              ),
            ),
          ),
          for (var item in navigationItems)
            ListTile(
              title: Text(item.text),
              onTap: () {
                scrollController.animateTo(
                  item.position,
                  duration: Duration(milliseconds: 700),
                  curve: Curves.easeInOut,
                );
                Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }
}
