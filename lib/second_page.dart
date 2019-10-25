import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import './app_state.dart';
import './first_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
    _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    
    var userInfo = appState.getUserInfo();
    if(userInfo != null) {
    print('appState=${userInfo.id}');
    }

   String page1 = appState.getAppData('page1');
   print('화면데이터1=$page1');

    return Scaffold(
      appBar: AppBar(
        title: Text('두번 페이지'),
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
            child: Text('첫 페이지'),
            onPressed: () {
              appState.setAppData('page2', '{두 페이지 1}');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );            
            },
        ),            
        Text(
        appState.getAppData('page1'),
        style: TextStyle(
          fontSize: 24.0,
          ),
        ),

        ],
      ),
    );
  }
}