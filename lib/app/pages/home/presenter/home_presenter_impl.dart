// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dw_fwc_album/app/pages/home/presenter/home_presenter.dart';
import 'package:dw_fwc_album/app/pages/home/view/home_view.dart';
import 'package:dw_fwc_album/app/repository/user/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePresenterImpl implements HomePresenter {
  UserRepository userRepository;
  late HomeView _view;
  HomePresenterImpl({
    required this.userRepository,
  });

  @override
  Future<void> getUserData() async {
    try {
      _view.showLoader();
      final user = await userRepository.getMe();
      _view.updateUser(user);
    } catch (e) {
      _view.error('Erro ao buscar dados do usuario');
    }
  }

  @override
  Future<void> logout() async {
    _view.showLoader();
    final sp = await SharedPreferences.getInstance();
    sp.clear();
    _view.logoutSuccess();
  }

  @override
  set view(HomeView view) => _view = view;
}
