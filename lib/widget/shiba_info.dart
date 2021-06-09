import 'package:flutter/material.dart';

class ShibaInfor extends StatefulWidget {
  const ShibaInfor({Key key}) : super(key: key);

  @override
  _ShibaInforState createState() => _ShibaInforState();
}

class _ShibaInforState extends State<ShibaInfor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Stack(
        children: [
          Container(
            padding:
            EdgeInsets.only(left: 15, right: 32, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 50,
                    width: 50,
                    child: ClipOval(
                      child: Image.network(
                        'https://sieupet.com/sites/default/files/pictures/images/gia-cho-shiba-inu-02.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
                SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Shiba',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Mobile Application Developer',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
