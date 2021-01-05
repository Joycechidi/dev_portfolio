import 'package:dev_portfolio/constants.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press, Future<bool> Function() onPressed,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding * 0.5,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Color(0xFF54C5CC),
      onPressed: press,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(imageSrc, height: 60),
          SizedBox(width: kDefaultPadding *0.5),
          Text(text),
        ],
      ),
    );
  }
}
