//floatingActionButton: FloatingActionButtonDemo(index: currentPage),
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'home_bootombar.dart';
//region顶部AppBar
//RecommendedPage
Widget HomeAppBar() {
  return PreferredSize(
    child: Container(
      padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(40), left: ScreenUtil().setWidth(47)),
      height: ScreenUtil().setHeight(217),
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
            margin: EdgeInsets.only(
                left: ScreenUtil().setWidth(56),
                right: ScreenUtil().setWidth(49)),
            alignment: Alignment.centerLeft,
            width: ScreenUtil().setWidth(738),
            height: ScreenUtil().setHeight(108),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.all(Radius.circular(ScreenUtil().setWidth(100))),
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
//endregion
//region 底部导航栏
Widget homeBootom(onTap,valueNotifier){
  return  KKBottomAppBar(
    actviveColor: Color.fromRGBO(250, 107, 37, 1),
    onTabSeleted: onTap,
    color: Color.fromRGBO(138, 138, 138, 1.0),
    selectedIndex: valueNotifier.value,
    items: [
      BottomAppBarItemModal(
          image: Image.asset(
            "assets/home/home_sbootom_one.png",
            fit: BoxFit.fill,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(62),
            color: Color.fromRGBO(250, 107, 37, 1),
          ),
          unImage: Image.asset(
            "assets/home/home_bootom_one.png",
            fit: BoxFit.fill,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(62),
          ),
          text: "首页"),
      BottomAppBarItemModal(
          image: Image.asset(
            "assets/home/home_sbootom_two.png",
            width: ScreenUtil().setWidth(60),
            fit: BoxFit.fill,
            height: ScreenUtil().setHeight(62),
            color: Color.fromRGBO(250, 107, 37, 1),
          ),
          unImage: Image.asset(
            "assets/home/home_bootom_two.png",
            fit: BoxFit.fill,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(62),
          ),
          text: "悬赏"),
      BottomAppBarItemModal(
          image: Image.asset(
            "assets/home/home_sbootom_three.png",
            fit: BoxFit.fill,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(62),
            color: Color.fromRGBO(250, 107, 37, 1),
          ),
          unImage: Image.asset(
            "assets/home/home_bootom_three.png",
            fit: BoxFit.fill,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(62),
          ),
          text: "推广"),
      BottomAppBarItemModal(
          image: Image.asset(
            "assets/home/home_sbootom_four.png",
            fit: BoxFit.fill,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(62),
            color: Color.fromRGBO(250, 107, 37, 1),
          ),
          unImage: Image.asset(
            "assets/home/home_bootom_four.png",
            fit: BoxFit.fill,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(62),
          ),
          text: "猫宠"),
      BottomAppBarItemModal(
          image: Image.asset(
            "assets/home/home_sbootom_five.png",
            fit: BoxFit.fill,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(62),
            color: Color.fromRGBO(250, 107, 37, 1),
          ),
          unImage: Image.asset(
            "assets/home/home_bootom_five.png",
            fit: BoxFit.fill,
            width: ScreenUtil().setWidth(60),
            height: ScreenUtil().setHeight(62),
          ),
          text: "我的")
    ],
  );
}
//endregion
