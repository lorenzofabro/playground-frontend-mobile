import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:playground/ui/shared/widgets/card_link.dart';
import 'package:playground/ui/shared/widgets/header_title.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderTitle(title: "Playground 🎲"),
              CardLinkRow(
                pngIcon1: "assets/icons_png/hand.png",
                text1: "Users",
                route1: "/users",
                pngIcon2: "assets/icons_png/graphic.png",
                text2: "Profile",
                route2: "/profile",
              ),
              CardLinkRow(
                pngIcon1: "assets/icons_png/ui.png",
                text1: "Test",
                route1: "/test",
                pngIcon2: "assets/icons_png/email.png",
                text2: "Test",
                route2: "/test",
              ),
              CardLinkRow(
                pngIcon1: "assets/icons_png/desktop.png",
                text1: "Test",
                route1: "/test",
                pngIcon2: "assets/icons_png/interaction_design.png",
                text2: "Test",
                route2: "/test",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
