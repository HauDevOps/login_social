import 'package:flutter/material.dart';
import 'package:login_social/page/page_information_bloc.dart';
import 'package:login_social/page/page_information_page.dart';

import 'bloc/basic_bloc.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        child: MyHomePage(),
        bloc: PageInformationBloc(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageInformationBloc bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = BlocProvider.of<PageInformationBloc>(context);

    bloc.facebookStream.listen((value) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => PageInformation(facebookLogin: value)));
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





