
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_social/login_logout.dart';

class PageInformation extends StatefulWidget {
  const PageInformation({Key key, @required this.googleSignInAccount, @required this.facebookLogin}) : super(key: key);

  final GoogleSignInAccount googleSignInAccount;
  final FacebookLogin facebookLogin;

  @override
  _PageInformationState createState() => _PageInformationState();
}

class _PageInformationState extends State<PageInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Google Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            googleInformation(),
            // facebookInformation(),
          ],
        ),
      ),
    );
  }

  Widget googleInformation(){
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage:
          NetworkImage(widget.googleSignInAccount.photoUrl ?? ''),
          backgroundColor: Colors.transparent,
        ),
        Text(widget.googleSignInAccount.displayName ?? ''),
        Text(widget.googleSignInAccount.email ?? ''),
        ElevatedButton(
            onPressed: () {
              LogInLogOut.logoutGoogle(context);
            },
            child: Text("Logout"))
      ],
    );
  }

  Widget facebookInformation(){
    return Column(
      children: [

      ],
    );
  }
}
