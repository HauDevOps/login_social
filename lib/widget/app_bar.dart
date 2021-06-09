
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      child: AppBar(
        leadingWidth: 100,
        leading: Image.asset(
          'assets/imagelogo/BIDV_Logo.png',
          fit: BoxFit.contain,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 50, bottom: 50),
          child: TextField(
            controller: searchController,
            style: TextStyle(
              fontSize: 13,
              height: 0.2,
            ),
            autofocus: false,
            decoration: InputDecoration(
              labelText: "Search",
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(),
              ),
            ),
          ),
        ),
        actions: [
          Icon(Icons.record_voice_over),
          SizedBox(
            width: 12,
          )
        ],
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/imagelogo/backgroud.jpg',
            fit: BoxFit.cover,
          ),
          title: Container(
            height: 60,
            width: 100,
            child: TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Đăng nhập bằng'),
                  content: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    child: Column(
                      children: [
                        ElevatedButton(onPressed: (){
                        }, child: Text('Login with Google')),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: (){}, child: Text('Login with Facebook')),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              ),
              child: Text('Đăng nhập'),
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}

