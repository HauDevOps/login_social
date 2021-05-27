
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_social/login_logout.dart';

class PageInformation extends StatefulWidget {
  const PageInformation({Key key, this.googleSignInAccount, this.facebookLogin}) : super(key: key);

  final GoogleSignInAccount googleSignInAccount;
  final dynamic facebookLogin;

  @override
  _PageInformationState createState() => _PageInformationState();
}

class _PageInformationState extends State<PageInformation> {

  String name, image, email, title;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.googleSignInAccount == null){
      title = 'Facebook Page';
      image = widget.facebookLogin['picture']['data']['url'];
      name = widget.facebookLogin['first_name'] + ' ' + widget.facebookLogin['last_name'];
    }else{
      title = 'Google Page';
      image = widget.googleSignInAccount.photoUrl;
      name = widget.googleSignInAccount.displayName;
      email = widget.googleSignInAccount.email;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 40,
                backgroundImage:
                NetworkImage(image ?? ''),
                backgroundColor: Colors.transparent,),
            Text(name ?? ''),
            Text(email ?? ''),
          ],
        ),
      ),
    );
  }

}
