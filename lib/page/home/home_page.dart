import 'package:flutter/material.dart';
import 'package:login_social/base/basic_bloc.dart';
import 'package:login_social/page/home/home_bloc.dart';
import 'package:login_social/page/info_user/info_user_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<HomeBloc>(context);

    bloc.userStream.listen((value) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => InfoUserPage(user: value)));
    }).onError((error){
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              print('Click Button Login Google');
              bloc.loginGoogle();
            }, child: Text('Login with Google'),),
            ElevatedButton(onPressed: (){
              print('Click Button Login FB');
              bloc.loginFacebook();
            }, child: Text('Login with Facebook'),),
          ],
        ),
      ),
    );
  }
}
