import 'package:flutter/material.dart';

class UserInfor extends StatefulWidget {
  const UserInfor({Key key}) : super(key: key);

  @override
  _UserInforState createState() => _UserInforState();
}

class _UserInforState extends State<UserInfor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 32, top: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: ClipOval(
                child: Image.network('https://sieupet.com/sites/default/files/pictures/images/gia-cho-shiba-inu-02.jpg',
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Shiba',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontFamily: "Roboto",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Mobile Application Developer',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
