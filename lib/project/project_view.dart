import 'package:dev_portfolio/project/project_item_body.dart';
import 'package:dev_portfolio/project/project_mobile_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:dev_portfolio/constants.dart';

class ProjectItem {
  final String image;
  final String title;
  final String description;
  final List<String> technologies;

  ProjectItem({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.technologies,
  });
}

final kProjectItems = [
  ProjectItem(
    image: 'images/bmi_calc.png',
    title: "BMI Calculator",
    description:
        "BMI Calculator is a tool made to help you calculate your body mass index is. This index helps you know if your weight is normal, obese or overweight.",
    technologies: ['Flutter ', 'Dart '],
  ),
  ProjectItem(
    image: 'images/know_canada.png',
    title: "Know_Canada",
    description:
        "Know Canada is a quiz app that helps people to prepare for Canadian Citizenship Test and for Canadians to have fun testing how much they know about Canada based on Discover Canada content.",
    technologies: ['Flutter ', 'Dart '],
  ),
  // ProjectItem(
  //   image: 'images/recom_sys.png',
  //   title: "Recommendation System for IBM Watson users.",
  //   description:
  //       "This project focuses on creating a recommendation system for users of IBM Watson. Data science and AI articles/posts are recommended to users based on user-user collaborative filtering,rank-based recommendation and matrix factorization.",
  //   technologies: ['Python ', 'Numpy ', 'Pandas ', 'Matplolib '],
  // ),
  ProjectItem(
    image: 'images/churn_rate.png',
    title: "Predicting Customer Churn using Pyspark on IBM Cloud",
    description:
        "Spark was used in this predict the customer churn rate for a music app similar to Spotify.",
    technologies: [
      'Pyspark ',
      'SQL ',
    ],
  ),
  ProjectItem(
    image: 'images/recom_sys.png',
    title: "Recommendation System for IBM Watson Users",
    description:
        "This project focuses on creating article recommendation system for users of IBM Watson based on user-user collaborative filtering,rank-based recommendation and matrix factorization.",
    technologies: [
      'Python ',
      'Pandas ',
    ],
  ),
  ProjectItem(
    image: 'images/sage_maker.png',
    title: "Deploying Sentiment Analysis Web App on AWS Sagemaker",
    description:
        "In this project, I used AWS SageMaker to Deploy an LSTM-based Sentiment Analysis of movie review",
    technologies: [
      'PyTorch ',
      'AWS ',
      'S3 ',
    ],
  ),
];

class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return ProjectMobileView();
        return ProjectDesktopView();
      },
    );
  }
}

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:kScreenPadding,
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      // height: 864,
      width: kInitWidth,
      color: Colors.teal[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headline2),
          SizedBox(height: 20),
          SizedBox(height: 20),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final item in kProjectItems)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ProjectItemBody(item: item),
                  ),
                )
            ],
          ),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}
