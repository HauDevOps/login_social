import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_social/page/page_information.dart';
import 'package:http/http.dart' as http;

class LogInLogOut {
  static GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  static final FacebookLogin facebookLogin = FacebookLogin();

  static Future<void> loginGoogle(BuildContext context) async {
    await _googleSignIn.signIn().then((userData) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => PageInformation(googleSignInAccount: userData)));
    }).catchError((e) {
      print(e);
    });
  }

  static Future<void> logoutGoogle(BuildContext context) async {
    await _googleSignIn.signOut().then((value) {
      Navigator.pop(context);
    }).catchError((e) {});
  }

  static Future loginFacebook(BuildContext context) async {
    final FacebookLoginResult result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=first_name,last_name,picture&access_token=${accessToken.token}');
        final profile = jsonDecode(graphResponse.body);
        print(profile);

        print('''
         Logged in!
         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => PageInformation(facebookLogin: profile,)));

        break;
      case FacebookLoginStatus.cancelledByUser:
        print('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        print('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }
  }

  static Future<Null> logOutFacebook() async {
    await facebookLogin.logOut();
  }

}
