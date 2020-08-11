import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base/mvvm/base.dart';
import 'home/map_page_model.dart';
import 'home/page/home_page.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // 百度地图sdk初始化鉴权
  runApp(new MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Builder(
        builder: (context) {
          initMVVM(
            [
              HomePageModel(),
            ],
            controllerBuild: () => EasyRefreshController(),
            resetRefreshState: (c) =>
                (c as EasyRefreshController)?.resetRefreshState(),
            finishRefresh: (c, {bool success, bool noMore}) =>
                (c as EasyRefreshController)
                    ?.finishRefresh(success: success, noMore: noMore),
            resetLoadState: (c) =>
                (c as EasyRefreshController)?.resetLoadState(),
            finishLoad: (c, {bool success, bool noMore}) =>
                (c as EasyRefreshController)
                    ?.finishLoad(success: success, noMore: noMore),
          );
          //360;
          //1209;
          ScreenUtil.init(context, width: 1080, height: 2220);
          return HomePageView();
        },
      ),
    );
  }
}
