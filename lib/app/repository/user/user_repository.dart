import 'package:dw_fwc_album/app/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getMe();
}
