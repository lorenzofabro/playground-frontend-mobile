import 'dart:math';

import 'package:flutter/material.dart';
import 'package:playground/core/models/user.dart';
import 'package:playground/ui/shared/utils/ui_helpers.dart';

class UserListItem extends StatelessWidget {
  final User user;
  final Function onTap;
  const UserListItem({this.user, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: UIHelper.defaultHorizontalPadding,
          vertical: UIHelper.defaultVerticalPadding / 2,
        ),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.accents[Random().nextInt(Colors.accents.length)],
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 3.0,
                offset: Offset(0.0, 2.0),
                color: Color.fromARGB(80, 0, 0, 0))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              user.getFullName(),
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
            ),
            Text("ID: ${user.id.toString()}")
          ],
        ),
      ),
    );
  }
}
