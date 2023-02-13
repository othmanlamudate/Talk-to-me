import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talktome/locale/locale_controller.dart';
import 'package:talktome/locale/translation.dart';
import 'package:talktome/pages/home_page.dart';
import 'package:get/get.dart';
import 'konstants.dart';

// import 'package:shared_preferences/shared_preferences.dart';
SharedPreferences? sharepref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharepref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.grey,
        primaryColor: myColor,
        
      ),
      // darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.dark,
      home: const HomePage(),
      
      translations: Translation(),
      locale: controller.initialLang,
      fallbackLocale: const Locale("en"),
      debugShowCheckedModeBanner: false,
    );
  }
}
