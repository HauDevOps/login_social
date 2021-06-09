import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
      BoxConstraints(minHeight: 50),
      width: MediaQuery.of(context).size.width,
      height: 150,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 17),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/1.png',
                          width: 100,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Rút tiền QR \n tại ATM',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/2.png',
                          width: 100,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Nạp tiền \n điện thoại',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/3.jpg',
                          width: 95,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Chuyển tiền \n nội bộ BIDV',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/4.png',
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Gửi tiết kiệm \n online',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/5.jpg',
                          width: 95,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Chuyển tiền \n ngoài BIDV',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/6.png',
                          width: 95,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Tùy chỉnh',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
