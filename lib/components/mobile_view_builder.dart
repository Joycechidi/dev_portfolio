import 'package:auto_size_text/auto_size_text.dart';
import 'package:dev_portfolio/constants.dart';
import 'package:flutter/material.dart';

class MobileViewBuilder extends StatelessWidget {
  final String titleText;
  final List<Widget> children;
  const MobileViewBuilder({
    Key key,
    @required this.titleText,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kScreenPadding,
      color: Colors.teal[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 3.0),
          AutoSizeText(
            titleText,
            style: Theme.of(context).textTheme.headline2,
            maxLines: 1,
          ),
          SizedBox(height: 40),
          ...children,
        ],
      ),
    );
  }
}
