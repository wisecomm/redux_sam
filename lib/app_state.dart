import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  // 사용자 정보 저장
  dynamic _userInfo;

  dynamic getUserInfo() {
    return _userInfo;
  }
  void setUserInfo(dynamic userInfo) {
    _userInfo = userInfo;
  }

  // 화면 데이터 저장
  var _appData = new Map();

  String getAppData(String key) {
    return _appData[key];
  }
  void setAppData(String key, String value) {
    _appData[key] = value;
  }

}
