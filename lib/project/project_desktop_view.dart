import 'package:dev_portfolio/project/project_item_body.dart';
import 'package:dev_portfolio/project/project_view.dart';
import 'package:flutter/material.dart';
import 'package:dev_portfolio/constants.dart';

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 864,
      width: kInitWidth,
      color: Colors.teal[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headline2),
          SizedBox(
            height: 20,
          ),
          Row(
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
        ],
      ),
    );
  }
}
