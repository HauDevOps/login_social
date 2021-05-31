import 'package:flutter/material.dart';
import 'package:login_social/bloc/basic_bloc.dart';
import 'package:login_social/models/facebook_model.dart';
import 'package:login_social/page/page_information_page.dart';
import 'package:login_social/remote/repository/repo.dart';
import 'package:rxdart/rxdart.dart';

class PageInformationBloc extends BaseBloc{

  final _facebookController = BehaviorSubject<FacebookModel>();

  Stream<FacebookModel> get facebookStream => _facebookController.stream;

  @override
  void dispose() {
    // TODO: implement dispose
    _facebookController.close();
  }

  Future loginFacebook() async {
    new Repository().loginFacebook().then((value) {
      _facebookController.sink.add(value);
    }).catchError((error) {
      _facebookController.sink.addError(error);
    });
  }

}