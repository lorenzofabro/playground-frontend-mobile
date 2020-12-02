import 'package:flutter/material.dart';
import 'package:playground/ui/shared/utils/text_styles.dart';
import 'package:playground/ui/shared/utils/ui_helpers.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: UIHelper.defaultHorizontalPadding,
            top: 5,
          ),
          child: Text(
            title,
            style: headerStyle,
          ),
        ),
      ],
    );
  }
}
