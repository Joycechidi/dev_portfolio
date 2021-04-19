// import 'package:dev_portfolio/blog/blog_cards.dart';
// import 'package:dev_portfolio/components/desktop_view_builder.dart';
// import 'package:dev_portfolio/components/mobile_desktop_view_builder.dart';
// import 'package:dev_portfolio/components/mobile_view_builder.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:http/http.dart' as http;

// class BlogView extends StatelessWidget {
//   const BlogView({
//     Key key,
//   }) : super(key: key);
//   static const title = 'Blog';
//   @override
//   Widget build(BuildContext context) {
//     return FutureProvider(
//       create: (_) => getArticles(),
//       // child: Column(
//       // children: [
//       //   SectionTitle(
//       //       title: "Tech Blogs ",
//       //       subTitle: "Relevant technical blog posts I've written ...",
//       //       color: Color(0xFF00B1FF),
//       //     ),
//       // ],
//       child: MobileDesktopViewBuilder(
//         mobileView: BlogMobileView(),
//         desktopView: BlogDesktopView(),
//       ),
//     );
//   }
// }

// class BlogDesktopView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final articles = context.watch<List<RssItem>>();
//     if (articles == null) return CircularProgressIndicator();
//     return DesktopViewBuilder(
//       titleText: BlogView.title,
//       children: [
//         Row(
//           children: [
//             // for (final article in articles)
//             Expanded(child: BlogCard())
//           ],
//         ),
//         SizedBox(height: 100),
//       ],
//     );
//   }
// }

// // class BlogMobileView extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     final articles = context.watch<List<RssItem>>();
// //     if (articles == null) return CircularProgressIndicator();
// //     return MobileViewBuilder(
// //       titleText: BlogView.title,
// //       children: [
// //         // for (final article in articles)
// //         BlogCard(
// //           // article: article,
// //           isMobile: true,
// //         )
// //       ],
// //     );
// //   }
// // }

// // Future<List<RssItem>> getArticles() async {
// //   final url =
// //       'https://cors-anywhere.herokuapp.com/https://medium.com/feed/@muhamad_haris';

// //   final response = await http.get(url);
// //   final parsedResponse = RssFeed.parse(response.body);
// //   final haveFlutterTag = (RssItem article) {
// //     return article.categories.any((category) => category.value == 'flutter');
// //   };
// //   final flutterArticles =
// //       parsedResponse.items.where(haveFlutterTag).take(2).toList();

// //   return flutterArticles;
// // }

// // // Future<List<RssItem>> getArticles() async {
// // //   final url =
// // //       'https://cors-anywhere.herokuapp.com/https://medium.com/feed/@jcchidiadi';

// // //   final response = await http.get(url);
// // //   final parsedResponse = RssFeed.parse(response.body);
// // //   final havePythonTag = (RssItem article) {
// // //     return article.categories.any((category) => category.value == 'python');
// // //   };
// // //   final pythonArticles =
// // //       parsedResponse.items.where(havePythonTag).take(2).toList();

// // //   return pythonArticles;
// // // }

// // // class Blog {
// // //   final String topic, blogs, blogPic;
// // //   final int id;
// // //   final Color color;

// // //   Blog({this.topic, this.blogs, this.blogPic, this.id, this.color});
// // // }

// // // //List writings
// // // List<Blog> blogs = [
// // //   Blog(
// // //     id: 1,
// // //     topic: "Spark",
// // //     blogs:
// // //         "Predicting Customer Churn Using PySpark on IBM Cloud\nAre you a business owner or manager in-charge of customer acquisition and retention? Do customers cancelling their subscriptions or leaving your business keep you up at night..?",
// // //     blogPic: "assets/images/writing2.png",
// // //     color: Color(0xFFDBA8C6),
// // //   ),
// // //   Blog(
// // //     id: 2,
// // //     topic: "Data Analysis",
// // //     blogs: "Canadian Analysis of the Kaggle Data Science/ML Survey 2019",
// // //     blogPic: "assets/images/writing3.jpeg",
// // //     color: Color(0xFFD1D0C8),
// // //   ),
// // //   Blog(
// // //     id: 3,
// // //     topic: "Programming in Python",
// // //     blogs:
// // //         "Easiest Way To Learn To Code in Python\nLearning to program in Python has become a skill many people currently desire because the need to have programming as one of the skills in your portfolio has never been more important than now.",
// // //     blogPic: "assets/images/writing1.png",
// // //     color: Color(0xFFEFBB4A),
// // //   ),
// // // ];
