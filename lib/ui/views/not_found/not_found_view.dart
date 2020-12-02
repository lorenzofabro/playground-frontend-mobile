import 'package:flutter/material.dart';
import 'package:playground/ui/shared/widgets/common_appbar.dart';

class NotFoundView extends StatelessWidget {
  final String name;
  NotFoundView({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      body: Center(
        child: Text("No route defined for $name"),
      ),
    );
  }
}
