import 'package:dev_portfolio/components/desktop_view_builder.dart';
import 'package:dev_portfolio/components/mobile_desktop_view_builder.dart';
import 'package:dev_portfolio/experience/experience_container.dart';
import 'package:dev_portfolio/skills/skills_view.dart';
import 'package:flutter/material.dart';

class ExperenceView extends StatelessWidget {
  static const title = "Experience";
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      desktopView: ExperienceDesktopView(),
      mobileView: ExperienceMobileView(),
    );
  }
}

class ExperienceDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = ColorAssets.all;
    final firstExperience = experiences.first;
    return DesktopViewBuilder(
      titleText: ExperenceView.title,
      children: [
        SizedBox(height: 20),
        Row(
          children: [
            for (var index = 0; index < experiences.length / 2; index++)
              Expanded(
                  child: ExperienceContainer(
                      experience: experiences.elementAt(index))),
          ],
        ),
      ],
    );
  }
}

class ExperienceMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
