import 'package:flutter/material.dart';
import 'package:playground/ui/shared/utils/ui_helpers.dart';

class CardLink extends StatelessWidget {
  const CardLink({
    Key key,
    this.pngIcon,
    this.text,
    this.route,
  }) : super(key: key);

  final String pngIcon;
  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => Navigator.pushNamed(context, route),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      color: Color(0xFFE8F0F9),
      child: Row(
        children: [
          Image.asset(pngIcon, height: 40),
          SizedBox(width: 20),
          Text(text),
        ],
      ),
    );
  }
}

class CardLinkRow extends StatelessWidget {
  const CardLinkRow({
    Key key,
    this.pngIcon1,
    this.pngIcon2,
    this.text1,
    this.text2,
    this.route1,
    this.route2,
  }) : super(key: key);

  final String pngIcon1;
  final String pngIcon2;
  final String text1;
  final String text2;
  final String route1;
  final String route2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: UIHelper.defaultVerticalPadding,
        left: UIHelper.defaultHorizontalPadding,
        right: UIHelper.defaultHorizontalPadding,
      ),
      child: Row(
        children: [
          Expanded(
            child: CardLink(
              pngIcon: pngIcon1,
              text: text1,
              route: route1,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: CardLink(
              pngIcon: pngIcon2,
              text: text2,
              route: route2,
            ),
          ),
        ],
      ),
    );
  }
}
