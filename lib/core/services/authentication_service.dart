import 'dart:async';

import 'package:playground/core/models/user.dart';
import 'package:playground/locator.dart';
import 'package:playground/core/services/api.dart';

class AuthenticationService {
  Api _api = locator<Api>();

  StreamController<User> userController = StreamController<User>();

  Future<bool> login(int userId) async {
    // Get the user profile for id
    var fetchedUser = await _api.getUser(userId);

    // Check if success
    var hasUser = fetchedUser != null;

    if (hasUser) {
      userController.add(fetchedUser);
    }

    return hasUser;
  }
}
