import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
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
                child: Image.network('https://kenh14cdn.com/thumb_w/600/2017/cute-dog-shiba-inu-ryuji-japan-28-1492164409903-118-0-555-700-crop-1492165379228.jpg',
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
