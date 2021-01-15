import 'package:dev_portfolio/experience/experience_container.dart';
import 'package:dev_portfolio/utils/hover_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webfeed/domain/rss_item.dart';
import 'package:webfeed/webfeed.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    Key key,
    this.isMobile,
    this.article,
  }) : super(key: key);

  final bool isMobile;
  final RssItem article;

  String convertDate(String dateText) {
    final date = DateFormat('MMM dd yyyy HH:mm:ss zzz').parse(dateText);
    return DateFormat('MMMM d yyyy').format(date);
  }

// void main() {
//   final date = 'Mon, 11 Aug 2014 12:53 pm PDT';
//   DateFormat format = new DateFormat("EEE, dd MMM yyyy hh:mm a zzz");
//   date = date.replaceFirst(' pm', ' PM').replaceFirst(' am', ' AM');
//   print(date);
//   print(format.parse(date));
// }
  String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return htmlText.replaceAll(exp, '');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      // mouseCursor: MaterialStateMouseCursor.clickable,
      onTap: () => launch(article.link),
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.purpleAccent,
              color: Color(0xFF180723),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: isMobile ?? false ? 20 : 40,
              ),
              child: Text(
                article.title,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   convertDate(article.pubDate), //check to add date later
                  //   style: textStyle(isGrey: true),
                  // ),
                  SizedBox(height: 15),
                  Text(
                    removeAllHtmlTags(article.content.value),
                    style: textStyle(),
                    maxLines: 3,
                  ),
                ],
              ),
            )
          ],
        ),
      ).moveUpOnHover,
    );
  }
}
