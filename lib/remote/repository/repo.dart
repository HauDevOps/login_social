
import 'package:login_social/models/facebook_model.dart';
import 'package:login_social/remote/api/api.dart';

class Repository{
  Future<FacebookModel> loginFacebook() async{
    return await Api().loginFacebook();
  }
}