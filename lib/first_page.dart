import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import './app_state.dart';
import './second_page.dart';
import './user_info.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
    _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
  final appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('첫 페이지'),
      ),
      body: GridView.count (
        crossAxisCount: 3,
        children: <Widget>[
          
        RaisedButton(
          child: Text('백 화면'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),            
          RaisedButton(
            child: Text('두번 페이지'),
            onPressed: () {
              appState.setAppData('page1', '{첫 페이지 1}');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );            
            },
        ),            
        RaisedButton(
          child: Text('유저 정보 저장'),
          onPressed: () {
            UserInfo userInfo = new UserInfo();
            userInfo.id = 'testid';
            userInfo.password = 'pass1234';
            appState.setUserInfo(userInfo);
          },
        ),            
        Text(
        appState.getAppData('page2') ?? 'null',
        style: TextStyle(
          fontSize: 24.0,
          ),
        ),
        ],
      ),
    );
  }
}