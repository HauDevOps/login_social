import 'package:login_social/base/basic_bloc.dart';
import 'package:login_social/models/user_model.dart';
import 'package:login_social/remote/repository/repo.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BaseBloc{
  final _userController = BehaviorSubject<UserModel>();

  Stream<UserModel> get userStream => _userController.stream;

  @override
  void dispose() {
    _userController.close();
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
}