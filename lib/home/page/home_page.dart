import 'package:catfunny/base/mvvm/base.dart';
import 'package:catfunny/base/mvvm/common.dart';
import 'package:catfunny/home/vm/home_page_vm.dart';
import 'package:catfunny/recommend/recomment_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_view_widget.dart';

//首页
class HomePageView extends StatelessWidget with BaseView<HomePageVM> {
  final ValueNotifier<int> valueNotifier = ValueNotifier<int>(0);
  List<Widget> widgets = <Widget>[];
  HomePageVM mVm;

  @override
  ViewConfig<HomePageVM> initConfig(BuildContext context) {
    widgets.add(RecommendedPage());
    widgets.add(Center(child: Text("第二个页面"))); //绘本页面
    widgets.add(
      Container(
        color: Colors.red,
      ),
    );
    widgets.add(Center(child: Text("第二个页面"))); //绘本页面
    widgets.add(Container(
      color: Colors.red,
    ));
    return ViewConfig.noRoot(vm: HomePageVM(), load: false);
  }

  @override
  Widget vmBuild(
      BuildContext context, HomePageVM vm, Widget child, Widget state) {
    mVm = vm;
    return state ??
        new AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Scaffold(
            body: ValueListenableBuilder(
              builder: (BuildContext context, value, Widget child) {
                return IndexedStack(
                    index: valueNotifier.value, children: widgets);
              },
              valueListenable: valueNotifier,
            ),
            bottomNavigationBar: homeBootom(onTap, valueNotifier),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          ),
        );
  }

  void onTap(int index) {
    valueNotifier.value = index;
  }
}
