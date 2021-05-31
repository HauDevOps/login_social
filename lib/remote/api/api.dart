import 'dart:convert';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_social/models/facebook_model.dart';
import 'package:http/http.dart' as http;
import 'package:login_social/models/user_model.dart';

class Api{
  static final FacebookLogin facebookLogin = FacebookLogin();

  Future<UserModel> loginFacebook() async {
    final FacebookLoginResult result = await facebookLogin.logIn(['email']);
    FacebookModel facebookModel;

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        final graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=first_name,last_name,picture&access_token=${accessToken.token}');
        final profile = jsonDecode(graphResponse.body);
        print('Data nè: $profile');

        print('''
         Logged in!
         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');

        facebookModel = FacebookModel.fromJson(profile);
        break;
      case FacebookLoginStatus.cancelledByUser:
        return new Future.error('Login cancelled by the user.');
      case FacebookLoginStatus.error:
        return new Future.error(result.errorMessage);
    }

    return UserModel(name: '${facebookModel.firstName + facebookModel.lastName}', urlImage: facebookModel.picture.data.url);
  }

  Future<UserModel> loginGoogle() async{
    GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

    GoogleSignInAccount googleSignInAccount;

    await _googleSignIn.signIn().then((userData) {
      googleSignInAccount = userData;
    }).catchError((e) {
      print(e);
      new Future.error(e.toString());
    });

    return UserModel(name: googleSignInAccount.displayName, urlImage: googleSignInAccount.photoUrl);
  }

}
