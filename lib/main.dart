import 'package:flutter/cupertino.dart';
import 'appData.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}