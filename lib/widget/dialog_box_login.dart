import 'package:flutter/material.dart';

class Dialog extends StatefulWidget {
  const Dialog({Key key}) : super(key: key);

  @override
  _DialogState createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Đăng nhập bằng'),
          content: Column(
            children: [
              ElevatedButton(onPressed: (){}, child: Text('FB')),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text('FB')),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
      child: const Text('Đăng nhập'),
    );
  }
}
