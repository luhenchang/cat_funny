import 'dart:ui';
import 'package:catfunny/base/mvvm/base.dart';
import 'package:catfunny/base/mvvm/common.dart';
import 'package:catfunny/home/page/home_bootombar.dart';
import 'package:catfunny/home/vm/home_page_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io' show Platform;

class RecommendedPage extends StatelessWidget with BaseView<HomePageVM> {
  @override
  ViewConfig<HomePageVM> initConfig(BuildContext context) {
    return ViewConfig(vm: HomePageVM(), load: false);
  }

  @override
  Widget vmBuild(
      BuildContext context, HomePageVM vm, Widget child, Widget state) {
    return Material(
      color: Color.fromRGBO(250, 107, 37, 1),
      child: SafeArea(
        child: Scaffold(
          appBar: HomeAppBar(),
          body: state ??
              Container(
                color: Colors.red,
                height: ScreenUtil.screenHeight,
                width: ScreenUtil.screenWidth,
              ),
        ),
      ),
    );
  }
}

//RecommendedPage
Widget HomeAppBar() {
  return PreferredSize(
    child: Container(
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(47)),
      height: ScreenUtil().setHeight(130),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "assets/home/map_top_head.png",
            width: ScreenUtil().setWidth(67),
            height: ScreenUtil().setWidth(67),
            fit: BoxFit.fill,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(38)),
                  child: Image.asset(
                    "assets/home/map_top_serch.png",
                    color: Colors.grey,
                    width: ScreenUtil().setWidth(41),
                    height: ScreenUtil().setWidth(41),
                    fit: BoxFit.fill,
                  ),
                ),
                Text("搜索悬赏",style:TextStyle(color:Colors.grey),),
              ],
            ),
            margin: EdgeInsets.only(
                left: ScreenUtil().setWidth(56),
                right: ScreenUtil().setWidth(49)),
            alignment: Alignment.centerLeft,
            width: ScreenUtil().setWidth(738),
            height: ScreenUtil().setHeight(91),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  ScreenUtil().setWidth(100),
                ),
              ),
            ),
          ),
          Image.asset(
            "assets/home/map_top_mg.png",
            width: ScreenUtil().setWidth(67),
            height: ScreenUtil().setWidth(67),
            fit: BoxFit.fill,
          ),
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(250, 107, 37, 1),
            Color.fromRGBO(248, 59, 47, 1)
          ])),
    ),
    preferredSize: Size(
      ScreenUtil.screenWidth,
      ScreenUtil().setHeight(217),
    ),
  );
}
