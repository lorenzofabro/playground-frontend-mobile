import 'package:flutter/material.dart';
import 'package:playground/ui/shared/utils/ui_helpers.dart';
import 'package:playground/ui/shared/widgets/header_title.dart';
import 'package:playground/ui/shared/widgets/subheader_title.dart';
import 'package:provider/provider.dart';
import 'package:playground/core/models/user.dart';
import 'package:playground/ui/shared/widgets/common_appbar.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context);
    return Scaffold(
      appBar: CommonAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTitle(
            title: "${user.getFullName()} 👋",
          ),
          SubheaderTitle(
            title: "This is your profile!",
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
