import 'package:flutter/material.dart';

class GridviewUtilities extends StatefulWidget {
  const GridviewUtilities({Key key}) : super(key: key);

  @override
  _GridviewUtilitiesState createState() => _GridviewUtilitiesState();
}

class _GridviewUtilitiesState extends State<GridviewUtilities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
      BoxConstraints(minHeight: 50),
      width: MediaQuery.of(context).size.width,
      height: 280,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tiện ích', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                primary: false,
                padding: EdgeInsets.all(5),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.add_shopping_cart, size: 40, color: Colors.teal[400],),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Tiết kiệm \n Online',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.attach_money, size: 40,color: Colors.teal[400],),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Tiền vay',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.qr_code, size: 40,color: Colors.teal[400],),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Rút tiền \n QR tai ATM',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.payment, size: 40,color: Colors.teal[400],),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Thanh toán \n định kỳ',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.phone_iphone_outlined, size: 40,color: Colors.teal[400],),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Nạp tiền \n điện thoại',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.payments_sharp, size: 40,color: Colors.teal[400],),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Thanh toán',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
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
