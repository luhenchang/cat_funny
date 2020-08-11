import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomAppBarItemModal {
  final IconData iconData;
  final Image image;
  final String text;
  final Image unImage;

  BottomAppBarItemModal({this.iconData, this.text, this.image, this.unImage});
}

class BottomAppBarItem extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color color;
  final ValueChanged<int> onTabSeleted;
  final int index;
  final bool selected;
  final Image image;
  final Image unImage;

  BottomAppBarItem(this.iconData, this.text, this.color, this.onTabSeleted,
      this.index, this.selected, this.image, this.unImage);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTabSeleted(index),
        child: selected
            ? Center(
                child: Container(
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      image,
                      Padding(
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(3),
                            top: ScreenUtil().setHeight(17)),
                        child: Text(
                          text,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color:Color.fromRGBO(250, 107, 37, 1),
                              fontSize: ScreenUtil().setSp(36)),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      new Radius.circular(ScreenUtil().setHeight(13)),
                    ),
                  ),
                ),
              )
            : Container(
                color: Color.fromARGB(0, 0, 0, 0), //可点击范围
                // margin: EdgeInsets.only(top: ScreenUtil().L(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    iconData == null
                        ? unImage
                        : Icon(
                            iconData,
                            color: color,
                            size: ScreenUtil().setWidth(53),
                          ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(3),
                          top: ScreenUtil().setHeight(17)),
                      child: Text(
                        text,
                        style: TextStyle(
                            color: color, fontSize: ScreenUtil().setSp(36)),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

class KKBottomAppBar extends StatefulWidget {
  final List<BottomAppBarItemModal> items;
  final ValueChanged<int> onTabSeleted;
  final Color actviveColor;
  final Color color;
  final int selectedIndex;
  final Image image;
  final Image unImage;

  KKBottomAppBar(
      {this.items,
      this.onTabSeleted,
      this.actviveColor,
      this.color,
      this.selectedIndex = 0,
      this.image,
      this.unImage})
      : super();

  @override
  BottomAppBarState createState() => BottomAppBarState();
}

class BottomAppBarState extends State<KKBottomAppBar> {
  int currentIndex;

  @override
  void initState() {
    currentIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int l = widget.items.length;
    // print(this.currentIndex);
    double bottom = ScreenUtil.bottomBarHeight; //IPhone 底部
    List<BottomAppBarItem> listWidgets = List.generate(l, (index) {
      BottomAppBarItemModal i = widget.items[index];
      return BottomAppBarItem(
          i.iconData,
          i.text,
          index == currentIndex ? widget.actviveColor : widget.color,
          onItemTap,
          index,
          index == currentIndex,
          i.image,
          i.unImage);
    });
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          height: ScreenUtil().setHeight(181),
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: bottom),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: listWidgets,
          ),
        ),
      ],
    );
  }

  onItemTap(int i) {
    setState(() => this.currentIndex = i);
    widget.onTabSeleted(i);
  }
}
