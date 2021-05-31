import 'package:flutter/material.dart';
import 'package:login_social/models/user_model.dart';

class InfoUserPage extends StatefulWidget {
  const InfoUserPage({Key key,this.user}) : super(key: key);

  final UserModel user;

  @override
  _InfoUserPageState createState() => _InfoUserPageState();
}

class _InfoUserPageState extends State<InfoUserPage> {
  @override
  Widget build(BuildContext context) {
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
              NetworkImage(widget.user.urlImage ?? ''),
              backgroundColor: Colors.transparent,),
            Text(widget.user.name ?? ''),
            Text(widget.user.age ?? ''),
            ElevatedButton(
              onPressed: () {

              },
              child: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
