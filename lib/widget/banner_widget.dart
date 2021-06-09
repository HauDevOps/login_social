
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_social/base/basic_bloc.dart';
import 'package:login_social/models/banner_model.dart';
import 'package:login_social/page/home/home_bloc.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key key}) : super(key: key);

  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {

  HomeBloc bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = BlocProvider.of<HomeBloc>(context);
    bloc.getBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: StreamBuilder(
        stream: bloc.bannerStream,
        builder:
            (BuildContext context, AsyncSnapshot<List<BannerData>> snapShot) {
          if (!snapShot.hasData) {
            return Center(
              child: Text('Data not found'),
            );
          }
          return CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 1)),
            items: snapShot.data.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: AspectRatio(
                              aspectRatio: 3.1,
                              child: Image.network(
                                i.imageUrl,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          // Positioned(
                          //   bottom: 5,
                          //   left: 0,
                          //   right: 0,
                          //   child: Container(
                          //     height: 20,
                          //     color: Colors.black.withOpacity(0.5),
                          //     child: Row(
                          //       children: [
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
