import 'package:login_social/base/basic_bloc.dart';
import 'package:login_social/models/banner_model.dart';
import 'package:login_social/models/user_model.dart';
import 'package:login_social/remote/repository/repo.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BaseBloc{
  final _userController = BehaviorSubject<UserModel>();
  final _bannerController = BehaviorSubject<List<BannerData>>();

  Stream<UserModel> get userStream => _userController.stream;
  Stream<List<BannerData>> get bannerStream => _bannerController.stream;

  @override
  void dispose() {
    _userController.close();
    _bannerController.close();
  }

  Future loginFacebook() async {
    new Repository().loginFacebook().then((value) {
      _userController.sink.add(value);
    }).catchError((error) {
      _userController.sink.addError(error);
    });
  }

  Future loginGoogle() async{
    new Repository().loginGoogle().then((value) {
      _userController.sink.add(value);
    }).catchError((error) {
      _userController.sink.addError(error);
    });
  }

  Future getBanner() async {
    new Repository().getBanner().then((value) {
      _bannerController.sink.add(value.data);
    }).catchError((error) {
      _bannerController.addError(error);
    });
  }
}