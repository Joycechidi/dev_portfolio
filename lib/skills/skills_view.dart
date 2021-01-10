import 'package:dev_portfolio/components/desktop_view_builder.dart';
import 'package:dev_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:dev_portfolio/components/mobile_view_builder.dart';
import 'package:dev_portfolio/skills/outline_skills_container.dart';
import 'package:flutter/material.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({
    Key key,
  }) : super(key: key);
  static const title = 'Skills';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MobileDesktopViewBuilder(
      mobileView: SkillsMobileView(),
      desktopView: SkillsDesktopView(),
      showMobile: width < 789,
    );
  }
}

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText: SkillsView.title,
      children: [
        // Divider(thickness: 3),
        SizedBox(height: 20),
        for (var rowIndex = 0; rowIndex < skills.length / 4; rowIndex++) ...[
          Row(
            children: [
              for (var index = 0; index < skills.length / 4; index++)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: index != 0 ? 8.0 : 0),
                    child: OutlineSkillsContainer(
                      index: index,
                      rowIndex: rowIndex,
                    ),
                  ),
                ),
            ],
          ),
        ],
        SizedBox(height: 70),
      ],
    );
  }
}

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      titleText: 'Skills',
      children: [
        // Divider(thickness: 3),
        SizedBox(height: 50),
        for (var index = 0; index < skills.length; index++) ...[
          OutlineSkillsContainer(
            index: index,
            isMobile: true,
          ),
        ],
        SizedBox(height: 10),
      ],
    );
  }
}

final skills = [
  'Python',
  'PyTorch',
  'TensorFlow',
  'SQL',
  'Spark',
  'Docker',
  'Jenkins',
  'AWS SageMaker',
  'Watson Studio',
  'Java',
  'Flutter',
  'Dart',
  'Firebase',
  'Javascript',
  'HTML/CSS',
  'Jupyter Notebook',
];
