import 'package:dev_portfolio/components/desktop_view_builder.dart';
import 'package:dev_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:dev_portfolio/components/mobile_view_builder.dart';
import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  static const title = 'Blog';
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      mobileView: BlogMobileView(),
      desktopView: BlogDesktopView(),
    );
  }
}

class BlogDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText: BlogView.title,
      children: [
        Row(
          children: [
            for (var i = 0; i < 2; i++)
              Expanded(
                child: BlogCard(),
              ),
          ],
        ),
      ],
    );
  }
}

class BlogCard extends StatelessWidget {
  const BlogCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.purple[200],
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 40),
              child: Text(
                "Canadian Analysis of the Kaggle Data Science/ML Survey 2019",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.black87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('January 1, 2020 '),
                  SizedBox(height: 15),
                  Text(
                    'Merry Christmas. ' * 30,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder();
  }
}
