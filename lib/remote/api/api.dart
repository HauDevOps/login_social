import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:login_social/models/facebook_model.dart';
import 'package:http/http.dart' as http;
import 'package:login_social/page/page_information_page.dart';

class Api {
  static final FacebookLogin facebookLogin = FacebookLogin();

  Future<FacebookModel> loginFacebook() async {
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

    return facebookModel;
  }
}
