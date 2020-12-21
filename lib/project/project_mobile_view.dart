import 'package:dev_portfolio/project/project_item_body.dart';
import 'package:dev_portfolio/project/project_view.dart';
import 'package:flutter/material.dart';
import 'package:dev_portfolio/constants.dart';

class ProjectMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: kInitWidth,
      color: Colors.teal[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 3.0),
          SizedBox(
            height: 40,
          ),
          Text('Projects', style: Theme.of(context).textTheme.headline2),
          SizedBox(
            height: 40,
          ),
          for (final item in kProjectItems) ProjectItemBody(item: item),
        ],
      ),
    );
  }
}
