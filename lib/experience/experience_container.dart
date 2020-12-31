import 'package:dev_portfolio/experience/experience_view.dart';
import 'package:dev_portfolio/skills/skills_view.dart';
import 'package:flutter/material.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final ExperienceInfo experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3, color: ColorAssets.blue,
          // color: colors.elementAt(index % colors.length),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            experience.company,
            style: _textStyle(isBold: true),
          ),
          Text(
            experience.timeline,
            style: _textStyle(),
          ),
          for (final item in experience.descriptions)
            Text(
              item,
              style: _textStyle(),
            ),
        ],
      ),
    );
  }
}

TextStyle _textStyle({bool isBold, bool isGrey}) {
  return TextStyle(
    fontSize: 20,
    fontWeight: isBold ?? false ? FontWeight.bold : FontWeight.normal,
    height: 1.5,
    color: isGrey ?? false ? Colors.grey : Colors.black,
  );
}


class ExperienceInfo {
  final String company;
  final String timeline;
  final List<String> descriptions;
  ExperienceInfo({
    @required this.company,
    @required this.timeline,
    @required this.descriptions,
  });
}

final experiences = [
  ExperienceInfo(
    company:
        "Machine Learning Applications Engineer @ Hexagon Autonomy & Positioning Inc, Calgary ",
    timeline: "Dec 2017 - Present ",
    descriptions: [
      '- Reduced the time for integrating Hexagon A&P products on the customer systems by 10%',
      '- Reduced test equipment failures to below 1% by predicting errors in test equipment using an RNN by implementing a time-series analysis ',
      '- Developed a deep learning model for “Detecting Satellite Signal Interference in GNSS receivers. This invention has a patent-pending status in the US Patent Office ',
      '- Collaborated with the research team of 7 people to design an AI lab for the company ',
    ],
  ),
  ExperienceInfo(
    company:
        "Independent Data Scientist/Deep Learning Engineer	@ Upwork and PeoplePerHour ",
    timeline: "January 2020 - Present ",
    descriptions: [
      '- Created a recommendation engine for a real-estate business website using collaborative filtering and content-based recommendation system ',
      '- Predicted business analytical trends for a bike-sharing startup to enable the business to make informed decisions ',
      '- Built a text classification model to identify brand and product name for a client ',
    ],
  ),
  ExperienceInfo(
    company: 'Software Developer (Tools&Automation) @ Stream Systems, Calgary',
    timeline: "March-May 2017 ",
    descriptions: [
      '- Developed simple software automation tools used by developers and software testers for application development ',
      '- Worked with Selenium and Jenkins for software verification ',
    ],
  ),
];
