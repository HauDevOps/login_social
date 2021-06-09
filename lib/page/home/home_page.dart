import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_social/base/basic_bloc.dart';
import 'package:login_social/models/user_model.dart';
import 'package:login_social/page/home/home_bloc.dart';
import 'package:login_social/page/info_user/info_user_page.dart';
import 'package:login_social/widget/banner_widget.dart';
import 'package:login_social/widget/bottombar.dart';
import 'package:login_social/widget/gridview_another_service.dart';
import 'package:login_social/widget/gridview_card_service.dart';
import 'package:login_social/widget/gridview_function_card.dart';
import 'package:login_social/widget/gridview_setting.dart';
import 'package:login_social/widget/gridview_utilities.dart';
import 'package:login_social/widget/list_view.dart';
import 'package:login_social/widget/user_infor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key, @required this.user}) : super(key: key);
  final UserModel user;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  HomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<HomeBloc>(context);
    bloc.userStream;

    // bloc.userStream.listen((value) {
    //   Navigator.push(context, MaterialPageRoute(builder: (_) => InfoUserPage(user: value)));
    // }).onError((error){
    //   print(error);
    // });
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    bloc.userStream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.tealAccent,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail, color: Colors.tealAccent),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.tealAccent),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.tealAccent),
            label: '',
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/imagelogo/backgroud.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 570,
              child: AppBar(
                title: Text('Search'),
                centerTitle: true,
                leadingWidth: 100,
                leading: Image.asset(
                  'assets/imagelogo/BIDV_Logo.png',
                  fit: BoxFit.contain,
                ),
                actions: [
                  Icon(Icons.record_voice_over),
                  SizedBox(
                    width: 12,
                  ),
                ],
                flexibleSpace: Column(
                  children: [
                    Padding(
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
                                          'https://sieupet.com/sites/default/files/pictures/images/gia-cho-shiba-inu-02.jpg' ?? widget.user.urlImage,
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
                                           'Shiba' ?? widget.user.name,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Mobile Application Developer' ?? widget.user.email,
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
                    ),
                    SizedBox(height: 300,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        children: [
                          Container(
                            height: 60,
                            width: 150,
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
                                        ElevatedButton(
                                            onPressed: () {
                                              print('Login Google');
                                              bloc.loginGoogle();
                                            },
                                            child: Text('Login with Google')),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              print('Login FB');
                                              bloc.loginFacebook();
                                            },
                                            child: Text('Login with Facebook')),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('Cancel'),
                                    ),
                                  ],
                                ),
                              ),
                              child: Text(
                                'Đăng nhập',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 10,),
            ListViewPage(),
            SizedBox(height: 10,),
            GridViewFunctionCard(),
            SizedBox(height: 10,),
            GridViewCardService(),
            SizedBox(height: 10,),
            GridviewAnotherService(),
            SizedBox(height: 10,),
            BannerWidget(),
            SizedBox(height: 10,),
            GridviewUtilities(),
            SizedBox(height: 10,),
            GridviewSetting(),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
