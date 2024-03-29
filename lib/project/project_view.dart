import 'package:dev_portfolio/components/desktop_view_builder.dart';
import 'package:dev_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:dev_portfolio/components/mobile_view_builder.dart';
import 'package:dev_portfolio/project/project_item_body.dart';
import 'package:flutter/material.dart';

class ProjectItem {
  final String image;
  final String title;
  final String url;
  final String description;
  final List<String> technologies;

  ProjectItem({
    @required this.image,
    @required this.title,
    @required this.url,
    @required this.description,
    @required this.technologies,
    // Future<bool> Function() onTap,
  });
}

final kProjectItems = [
  ProjectItem(
    image: 'images/bmi_calc.png',
    url: 'https://github.com/Joycechidi/bmi_calculator',
    title: "BMI Calculator",
    description:
        "BMI Calculator is a tool made to help you calculate your body mass index is. This index helps you know if your weight is normal, obese or overweight.",
    technologies: [
      'Flutter ',
      'Dart ',
    ],
    // onTap: () => launch('https://github.com/Joycechidi/bmi_calculator'),
  ),
  ProjectItem(
    image: 'images/know_canada.png',
    url: 'https://github.com/Joycechidi/know_canada',
    title: "Know_Canada",
    description:
        "Know Canada is a quiz app that helps people to prepare for Canadian Citizenship Test and for Canadians to have fun testing how much they know about Canada based on Discover Canada content.",
    technologies: [
      'Flutter ',
      'Dart ',
    ],
    // onTap: () => launch('https://github.com/Joycechidi/know_canada'),
  ),
  ProjectItem(
    image: 'images/recom_sys.png',
    url: 'https://github.com/Joycechidi/Data-Science-Portfolio/tree/master/Recommendation-Systems-With-IBM-Watson',
    title: "Recommendation System for IBM Watson Users",
    description:
        "This project focuses on creating article recommendation system for users of IBM Watson based on user-user collaborative filtering,rank-based recommendation and matrix factorization.",
    technologies: [
      'Python ',
      'Pandas ',
    ],
    // onTap: () => launch(
    // 'https://github.com/Joycechidi/Data-Science-Portfolio/tree/master/Recommendation-Systems-With-IBM-Watson'),
  ),
  ProjectItem(
    image: 'images/sage_maker.png',
    url: 'https://github.com/Joycechidi/Deep-Learning-Portfolio/tree/master/Deploying-Models-Using-AWS-SageMaker',
    title: "Deploying Sentiment Analysis Web App on AWS Sagemaker",
    description:
        "In this project, I used AWS SageMaker to Deploy an LSTM-based Sentiment Analysis of movie review",
    technologies: [
      'PyTorch ',
      'AWS ',
    ],
    // onTap: () => launch(
    // 'https://github.com/Joycechidi/Deep-Learning-Portfolio/tree/master/Deploying-Models-Using-AWS-SageMaker'),
  ),
];

class ProjectView extends StatelessWidget {
  const ProjectView({
    Key key,
  }) : super(key: key);
  static const title = 'Projects';
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      mobileView: ProjectMobileView(),
      desktopView: ProjectDesktopView(),
    );
  }
}

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText: ProjectView.title,
      children: [
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final item in kProjectItems)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProjectItemBody(item: item),
                  // onTap: () => launch(),
                ),
              )
          ],
        ),
        SizedBox(height: 30),
      ],
    );
  }
}

class ProjectMobileView extends StatelessWidget {
  static const title = 'Projects';
  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      titleText: ProjectView.title,
      children: [for (final item in kProjectItems) ProjectItemBody(item: item)],
    );
  }
}
