import 'package:dw_fwc_album/app/mvp/fwc_presenter.dart';
import 'package:dw_fwc_album/app/pages/home/view/home_view.dart';

abstract class HomePresenter extends FwcPresenter<HomeView> {
  Future<void> getUserData();
  Future<void> logout();
}
