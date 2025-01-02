import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pruduct_management_app/local_json/view_model/data_view.dart';
import 'package:pruduct_management_app/model/hive_product_model.dart';
import 'package:pruduct_management_app/view/login_screen.dart';
import 'package:pruduct_management_app/view/product_screen.dart';
import 'package:pruduct_management_app/view_model/services/auth_services.dart';
import 'package:timezone/data/latest_all.dart' as tz;

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()!
      .requestNotificationsPermission();
  tz.initializeTimeZones();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'AIzaSyB1X4qKRZS-0yKiMyilv7mio_n-l__95hA',
    appId: '1:697955919706:android:189debf77bdd14b1d93563',
    messagingSenderId: '697955919706',
    projectId: 'pruduct-management-app',
    storageBucket: 'pruduct-management-app.firebasestorage.app',
  ));
  Get.put(AuthService());
  await Hive.initFlutter();
  Hive.registerAdapter(HiveProductModelAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  User? user = FirebaseAuth.instance.currentUser;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DataView());//user != null ? HomeScreen() : LoginScreen());
  }
}
