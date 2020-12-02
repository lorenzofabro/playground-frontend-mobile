import 'package:playground/core/enums/viewstate.dart';
import 'package:playground/core/models/user.dart';
import 'package:playground/core/services/api.dart';
import 'package:playground/core/viewmodels/base_model.dart';
import 'package:playground/locator.dart';

class UsersModel extends BaseModel {
  Api _api = locator<Api>();

  List<User> users;

  Future getUsers() async {
    setState(ViewState.Busy);
    users = await _api.getUsers();
    setState(ViewState.Idle);
  }
}
