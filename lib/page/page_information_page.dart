import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_social/bloc/basic_bloc.dart';
import 'package:login_social/models/facebook_model.dart';
import 'package:login_social/page/page_information_bloc.dart';

class PageInformation extends StatefulWidget {
  const PageInformation({Key key, this.googleSignInAccount, this.facebookLogin})
      : super(key: key);

  final GoogleSignInAccount googleSignInAccount;
  final FacebookModel facebookLogin;

  @override
  _PageInformationState createState() => _PageInformationState();
}

class _PageInformationState extends State<PageInformation> {
  PageInformationBloc bloc;

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
}
