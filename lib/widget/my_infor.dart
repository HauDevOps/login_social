import 'package:flutter/material.dart';

class MyInfor extends StatefulWidget {
  const MyInfor({Key key}) : super(key: key);

  @override
  _MyInforState createState() => _MyInforState();
}

class _MyInforState extends State<MyInfor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: ClipOval(
                child: Image.asset('assets/imagelogo/logo.jpg', fit: BoxFit.cover,),
              )),
          SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Chào buổi sáng',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontFamily: "Roboto",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Tuyến Trần',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

