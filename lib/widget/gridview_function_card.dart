import 'package:flutter/material.dart';

class GridViewFunctionCard extends StatefulWidget {
  const GridViewFunctionCard({Key key}) : super(key: key);

  @override
  _GridViewFunctionCardState createState() => _GridViewFunctionCardState();
}

class _GridViewFunctionCardState extends State<GridViewFunctionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 420,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.account_balance_wallet, size: 50, color: Colors.white,),
                SizedBox(height: 5,),
                Text("Tài Khoản", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[800],
              boxShadow: [
                BoxShadow(color: Colors.blue[800], spreadRadius: 3),
              ],
            ),
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.credit_card_outlined, size: 50, color: Colors.white,),
                SizedBox(height: 5,),
                Text("Dịch vụ thẻ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[800],
              boxShadow: [
                BoxShadow(color: Colors.blue[800], spreadRadius: 3),
              ],
            ),
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.compare_arrows_outlined, size: 50, color: Colors.white,),
                SizedBox(height: 5,),
                Text("Chuyển tiền", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.teal[400],
              boxShadow: [
                BoxShadow(color: Colors.teal[400], spreadRadius: 3),
              ],
            ),
            height: 40,
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.qr_code, size: 50, color: Colors.white,),
                SizedBox(height: 5,),
                Text("QR Pay", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.teal[400],
              boxShadow: [
                BoxShadow(color: Colors.teal[400], spreadRadius: 3),
              ],
            ),
            height: 40,
          ),
        ],
      ),
    );
  }
}
