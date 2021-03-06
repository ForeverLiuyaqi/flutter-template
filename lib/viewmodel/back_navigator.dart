import 'package:flutter/material.dart';
import 'package:flutter_template/navigator/main_navigator.dart';

// ignore: one_member_abstracts
abstract class BackNavigator {
  void goBack<T>({T result});
}

mixin BackNavigatorMixin<T extends StatefulWidget> on State<T> implements BackNavigator {
  @override
  void goBack<T>({T result}) => MainNavigatorWidget.of(context).goBack<T>(result: result);
}
