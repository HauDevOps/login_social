import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_social/bloc/basic_bloc.dart';
import 'package:login_social/models/facebook_model.dart';
import 'package:login_social/page/page_information_bloc.dart';
import 'package:login_social/remote/api/api.dart';
import 'package:provider/provider.dart';

class PageInformation extends StatefulWidget {
  const PageInformation({Key key, this.user, this.facebookLogin})
      : super(key: key);

  final User user;
  final FacebookModel facebookLogin;

  @override
  _PageInformationState createState() => _PageInformationState();
}

class _PageInformationState extends State<PageInformation> {
  PageInformationBloc bloc;
  final user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = BlocProvider.of<PageInformationBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Facebook Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _loginFacebook(bloc),
            _loginGoogle(bloc),
          ],
        ),
      ),
    );
  }

  Widget _loginFacebook(PageInformationBloc bloc) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage:
          NetworkImage(widget.facebookLogin.picture.data.url),
          backgroundColor: Colors.transparent,
        ),
        Text(widget.facebookLogin.firstName + widget.facebookLogin.lastName ?? ''),
      ],
    );
  }
  Widget _loginGoogle(PageInformationBloc bloc){
    return Scaffold(
      appBar: AppBar(title: Text('Google Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage:
              NetworkImage(user.photoURL ?? ''),
              backgroundColor: Colors.transparent,),
            Text(user.displayName ?? ''),
            Text(user.email ?? ''),
            ElevatedButton(
              onPressed: () {
                final provider =
                Provider.of<Api>(context, listen: false);
                provider.logoutGoogle();
              },
              child: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
