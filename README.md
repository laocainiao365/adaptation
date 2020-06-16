# adaptation
flutter不同分辨率适配

使用要求：dart-SDK-version >= 2.6.0

使用方法：
在需要使用的地方引入
```dart
import './screendpt.dart';

//在需要使用的组件初始化，并且可以传入设计稿的标准，默认是750
Widget build(BuildContext context) {
  LcnScreen.init(750);
  return Container(
      width: 200.rpx,
      height: 200.rpx,
      color: Colors.red,
  );
}
```
- 物理宽度设计稿，使用rpx
- 像素宽度设计稿，使用px
```dart
//物理宽度
Container(
  width: 200.rpx,
  height: 200.rpx
);

//像素宽度
Container(
  width: 200.px,
  height: 200.px
);
```
