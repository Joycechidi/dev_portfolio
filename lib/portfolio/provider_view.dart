import 'package:after_layout/after_layout.dart';
import 'package:dev_portfolio/blog/blog_view.dart';
// import 'package:dev_portfolio/blog/blog_view.dart';
import 'package:dev_portfolio/drawer/drawer_view.dart';
import 'package:dev_portfolio/experience/experience_view.dart';
import 'package:dev_portfolio/footer/footer.dart';
import 'package:dev_portfolio/header/header_view.dart';
import 'package:dev_portfolio/navigation_bar/nav_bar_view.dart';
import 'package:dev_portfolio/portfolio/back_to_top_button.dart';
import 'package:dev_portfolio/project/project_view.dart';
import 'package:dev_portfolio/skills/skills_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({
    Key key,
  }) : super(key: key);

  @override
  _PortfolioViewState createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> with AfterLayoutMixin {
  final projectKey = GlobalKey();
  final skillsKey = GlobalKey();
  final experienceKey = GlobalKey();
  final blogKey = GlobalKey();
  List<NavigationItem> navigationItems = [];

  final ScrollController scrollController = ScrollController(
    initialScrollOffset: 0,
  );
  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      navigationItems = [
        NavigationItem('Skills ', key: skillsKey),
        NavigationItem('Projects ', key: projectKey),
        NavigationItem('Experience ', key: experienceKey),
        NavigationItem('Blog ', key: blogKey),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return MultiProvider(
      providers: [
        ProxyProvider0<List<NavigationItem>>(update: (_, __) {
          return navigationItems;
        }),
        ChangeNotifierProvider<ScrollController>(create: (_) {
          return scrollController;
        }),
      ],
      child: Scaffold(
        endDrawer: DrawerView(),
        body: SizedBox(
          width: width,
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                NavigationBarView(),
                HeaderView(),
                SkillsView(key: skillsKey),
                ProjectView(key: projectKey),
                ExperienceView(key: experienceKey),
                // BlogView(key: blogKey),
                FooterView(),
              ],
            ),
          ),
        ),
        floatingActionButton: BackToTopButton(),
      ),
    );
  }
}

class NavigationItem {
  final String text;
  final GlobalKey key;
  NavigationItem(
    this.text, {
    @required this.key,
  });

  double get position => _getPosition(key);
}

double _getPosition(GlobalKey key) {
  final RenderBox renderBox = key.currentContext.findRenderObject();
  final position = renderBox.localToGlobal(Offset.zero);
  final scrollOffset = position.dy;
  return scrollOffset;
}
