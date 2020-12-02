import 'package:flutter/material.dart';
import 'package:playground/core/enums/viewstate.dart';
import 'package:playground/core/models/user.dart';
import 'package:playground/core/viewmodels/users_model.dart';
import 'package:playground/ui/shared/utils/ui_helpers.dart';
import 'package:playground/ui/shared/widgets/common_appbar.dart';
import 'package:playground/ui/shared/widgets/header_title.dart';
import 'package:playground/ui/shared/widgets/subheader_title.dart';
import 'package:playground/ui/views/base_view.dart';
import 'package:playground/ui/views/users/widgets/user_list_item.dart';

class UsersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<UsersModel>(
      onModelReady: (model) => model.getUsers(),
      builder: (context, model, child) => Scaffold(
        appBar: CommonAppBar(),
        body: model.state == ViewState.Busy
            ? Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderTitle(
                    title: "Users 👨👩",
                  ),
                  SubheaderTitle(
                    title: "Here are all of them",
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Expanded(
                    child: getUsersUI(model.users),
                  ),
                ],
              ),
      ),
    );
  }

  Widget getUsersUI(List<User> users) => ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => UserListItem(
          user: users[index],
          onTap: () {
            Navigator.pushNamed(context, "/user", arguments: users[index]);
          },
        ),
      );
}
