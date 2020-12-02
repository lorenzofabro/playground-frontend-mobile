import 'package:flutter/material.dart';
import 'package:playground/core/models/user.dart';
import 'package:playground/ui/views/home/home_view.dart';
import 'package:playground/ui/views/login/login_view.dart';
import 'package:playground/ui/views/not_found/not_found_view.dart';
import 'package:playground/ui/views/profile/profile_view.dart';
import 'package:playground/ui/views/users/user_view.dart';
import 'package:playground/ui/views/users/users_view.dart';

class PlaygroundRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomeView());
      case "/login":
        return MaterialPageRoute(builder: (_) => LoginView());
      case "/user":
        var user = settings.arguments as User;
        return MaterialPageRoute(builder: (_) => UserView(user: user));
      case "/users":
        return MaterialPageRoute(builder: (_) => UsersView());
      case "/profile":
        return MaterialPageRoute(builder: (_) => ProfileView());
      default:
        return MaterialPageRoute(
            builder: (_) => NotFoundView(name: settings.name));
    }
  }
}
