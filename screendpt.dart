import 'dart:ui';

class LcnScreen{
  static double screenWidth;//物理宽度
  static double screenHeight;//物理高度
  static double width;//像素宽
  static double height; //像素高度
  static double dpr; //像素比
  static double rpt; //物理像素一份的宽度
  static double pt;//像素一份的宽度


  static void init({double w = 750}){
    screenWidth = window.physicalSize.width;
    screenHeight = window.physicalSize.height;

    dpr = window.devicePixelRatio;

    width = screenWidth / dpr;
    height = screenHeight / dpr;

    rpt = width / w;
    pt = width / w * 2;
  }

  //适用于物理宽度
  static double rpx(double size) {
    return rpt * size;
  }

  //适用于像素宽度
  static double px(double size){
    return pt * size;
  }
}

class LcnDouble extension double{
  double get rpx => LcnScreen.rpx(this);
  double get px => LcnScreen.px(this);
}

class LcnInt extension int{
  int get rpx => LcnScreen.rpx(this);
  int get px => LcnScreen.px(this);
}
