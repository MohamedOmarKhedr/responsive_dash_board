import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/responsive_dash_board_screen/responsive_dash_board_screen.dart';
import 'presentation/styles/size_config.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) {
      return const MyApp();
    }
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ResponsiveDashBoard();
  }
}



