import 'package:flutter/material.dart';
import 'package:typography/app/app.dart';
import 'package:typography/injectable/injections.dart';
import 'package:typography/shared/storage.dart';

void main() async {
  await AppStorage.init();
  configureDependencies();
  runApp(App());
}
