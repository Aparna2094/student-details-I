import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:stnt_getx/database/student_model.dart';
import 'package:stnt_getx/screens/home.dart';


Future<void> main() async{

  
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

   Hive.openBox<StudentModel>('student_db');

  if(!Hive.isAdapterRegistered(StudentModelAdapter().typeId)){
    Hive.registerAdapter(StudentModelAdapter());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          // centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black54),
      
          elevation: 0
        ), colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(background: Colors.white)
      ),
      home: const HomePage(),
    );
  }
}