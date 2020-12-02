import 'package:flutter/material.dart';
import 'package:playground/core/models/user.dart';
import 'package:playground/ui/shared/utils/ui_helpers.dart';
import 'package:playground/ui/shared/widgets/common_appbar.dart';
import 'package:playground/ui/shared/widgets/header_title.dart';
import 'package:playground/ui/shared/widgets/subheader_title.dart';

class UserView extends StatelessWidget {
  final User user;
  UserView({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTitle(
            title: "${user.getFullName()}",
          ),
          SubheaderTitle(
            title: "ID: ${user.id}",
          ),
          UIHelper.verticalSpaceSmall(),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: UIHelper.defaultHorizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("First name: ${user.firstName}"),
                Text("Last name: ${user.lastName}"),
                Text("Age: ${user.age}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
