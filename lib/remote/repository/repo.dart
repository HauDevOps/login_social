
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_social/models/banner_model.dart';
import 'package:login_social/models/facebook_model.dart';
import 'package:login_social/models/user_model.dart';
import 'package:login_social/remote/api/api.dart';

class Repository{
  Future<UserModel> loginFacebook() async{
    return await Api().loginFacebook();
  }
  Future<UserModel> loginGoogle() async {
    return await Api().loginGoogle();
  }

  Future<BannerEntity> getBanner() async {
    return await Api().getBanner();
  }
}