import 'package:dev_portfolio/project/project_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItemBody extends StatelessWidget {
  const ProjectItemBody({
    Key key,
    @required this.item,
  }) : super(key: key);

  final ProjectItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: _launchURL,
        child: Image.asset(item.image),),
        Text(item.title, style: Theme.of(context).textTheme.headline4),
        
        SizedBox(
          height: 15,
        ),
        Text(
          item.description,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final tech in item.technologies)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Expanded(
                    child: Chip(
                      label: Text(tech),
                    ),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

// const projectUrls = [
// 'https://github.com/Joycechidi/bmi_calculator',
// 'https://github.com/Joycechidi/bmi_calculator',
// 'https://github.com/Joycechidi/bmi_calculator',
// 'https://github.com/Joycechidi/bmi_calculator',
// 'https://github.com/Joycechidi/bmi_calculator'
// ];
  _launchURL() async {
    const url = 'https://github.com/Joycechidi/bmi_calculator';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }