import 'package:apna_ai_app/Screens/home/home_screen.dart';
import 'package:apna_ai_app/model/const.dart';
import 'package:apna_ai_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'Screens/home/controller/chat_controller.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY);
  // Register the ChatController with GetX
  Get.put(ChatController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: WAppTheme.lightTheme,
          darkTheme: WAppTheme.darkTheme,
          home: HomeScreen()),
    );
  }
}
