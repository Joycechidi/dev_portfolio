import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:dev_portfolio/components/elevate_on_hover.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:google_fonts/google_fonts.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    Key key,
    this.isMobile,
  }) : super(key: key);

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   static const title = 'Blog',

          //   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          Text(
            'I love sifting and shuffling data to build Secure and Private Data tools for AI/Machine Learning projects for people and businesses.',
            maxLines: 3,
            style: TextStyle(color: Colors.grey, fontSize: 22),
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 250,
              width: 1500,
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        "https://medium.com/@jcchidiadi/federated-learning-with-raspberry-pi-project-equipment-setup-38c2f88cb677"
                      ]);
                    },
                    child: Container(
                      width: 450.0,
                      height: 200.0,
                      padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white.withOpacity(0.5),
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10.0,
                              spreadRadius: 5,
                              offset: Offset(
                                5.0, // Move to right 10  horizontally
                                5.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Federated Learning With Raspberry PI | Project Equipment Setup',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "I will give a brief overview of what Federated Learning means, the purpose of this project and walk you down through the equipment setup for federated learning on a Raspberry pi.",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        "https://medium.com/@jcchidiadi/easiest-way-to-learn-to-code-in-python-255c6cadfafd"
                      ]);
                    },
                    child: Container(
                      width: 450.0,
                      height: 200.0,
                      padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white.withOpacity(0.5),
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10.0,
                              spreadRadius: 5,
                              offset: Offset(
                                5.0, // Move to right 10  horizontally
                                5.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Easiest Way To Learn To Code in Python',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Learning to program in Python has become a skill many people currently desire because the need to have programming as one of the skills in your portfolio has never been more important than now.",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        "https://medium.com/@jcchidiadi/predicting-customer-churn-using-pyspark-on-ibm-cloud-ec2d2c3e2320"
                      ]);
                    },
                    child: Container(
                      width: 450.0,
                      height: 200.0,
                      padding: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white.withOpacity(0.5),
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10.0,
                              spreadRadius: 5,
                              offset: Offset(
                                5.0, // Move to right 10  horizontally
                                5.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Predicting Customer Churn Using PySpark on IBM Cloud',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Are you a business owner or manager in-charge of customer acquisition and retention? Do customers cancelling their subscriptions or leaving your business keep you up at night? This blog is for you.",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
