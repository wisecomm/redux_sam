# redux_sam

A new Flutter project.

## Getting Started

# 공유 메모리 사용하여 데이터 공유
 - 사용자 정보, 화면 데이터 공유


## 참조 사이트 
- https://medium.com/flutter-community/flutter-statemanagement-with-provider-ee251bbc5ac1

// 카트 데이터 시 참조
- https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple

// 읽어 보기 ㅎㅎㅎ
https://flutter.dev/docs/development/data-and-backend/state-mgmt/options

// Redux 사용하지 않음 
//- https://medium.com/flutter-community/understanding-global-state-in-flutter-using-redux-2017b7646574

## 설명
# 참조
  provider: ^2.0.1

# main.dart
void main() => runApp(
  // 이부분을 뒤로 보내면 에러 발생함 
  ChangeNotifierProvider<AppState>(
    builder: (context) => AppState(),
    child: MyApp(),
  ),
);

# 유저 정보 사용
  UserInfo userInfo = new UserInfo();
  userInfo.id = 'testid';
  userInfo.password = 'pass1234';
  appState.setUserInfo(userInfo);

  final appState = Provider.of<AppState>(context);
  
  var userInfo = appState.getUserInfo();
  if(userInfo != null) {
  print('appState=${userInfo.id}');
  }

# 화면 데이터 
  appState.setAppData('page1', '{두 페이지 1}');

  String page1 = appState.getAppData('page1');


