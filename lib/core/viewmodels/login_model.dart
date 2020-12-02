import 'package:playground/core/enums/viewstate.dart';
import 'package:playground/core/viewmodels/base_model.dart';
import 'package:playground/locator.dart';
import 'package:playground/core/services/authentication_service.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  String errorMessage;

  Future<bool> login(String userIdText) async {
    setState(ViewState.Busy);

    var userId = int.tryParse(userIdText);

    if (userId == null) {
      errorMessage = "Value entered is not a number";
      setState(ViewState.Idle);
      return false;
    }

    var success = await _authenticationService.login(userId);
    if (!success) {
      errorMessage = "User not found";
    }
    setState(ViewState.Idle);
    return success;
  }
}
