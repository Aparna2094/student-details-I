import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:stnt_getx/database/crud_operations.dart';
import 'package:stnt_getx/screens/add.dart';
import 'package:stnt_getx/screens/list.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String studentCountText = '';

  @override
  void initState() {
   controller.getStudents();
    super.initState();
  }

  final controller = Get.put(DbFunctions());

  @override
  Widget build(BuildContext context) {

        return  Scaffold(
          backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 120,
          centerTitle: true,
          title: Image.network('https://brototype.com/careers/images/logo/logo-black.png',height: 80,),
        ),
    
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
    
               const Text(
  '"student details"',
  style: TextStyle(
    fontSize: 25,
    color: Colors.lightBlue,
    fontWeight: FontWeight.w700,
    letterSpacing: 2,
    // You can add more style attributes here if needed
  ),
),
                const SizedBox(height: 30,),
                //option 1
                InkWell(overlayColor:  MaterialStatePropertyAll(Colors.lightBlue.withOpacity(0.2)),
                  onTap: () => Get.to(AddPage(isEdit: false)),
                  child: Card(
                    elevation: 15,
                    surfaceTintColor: Colors.amber,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.white,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network('https://cdn3d.iconscout.com/3d/premium/thumb/add-user-5788187-4833297.png',
                          colorBlendMode: BlendMode.srcOut,
                      filterQuality: FilterQuality.high,),
                         const Text(
  "Register student",
  style: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    letterSpacing: 2,
    // You can add more style attributes here if needed
  ),
),
                      ]),
                    ),
                  ),
                ),
        
                const SizedBox(height: 40,),
        
                //option 2
                InkWell(overlayColor:  MaterialStatePropertyAll(Colors.lightBlue.withOpacity(0.2)),
                 onTap:()=> Get.to(const StudentList()),
                  child: Card(
                    elevation: 15,
                    shadowColor: Colors.lightBlue,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.white,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
  "Student details",
  style: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    letterSpacing: 2,
    // You can add more style attributes here if needed
  ),
),
                          Image.network('https://cdn3d.iconscout.com/3d/premium/thumb/text-paragraph-9896560-8027176.png?f=webp',
                          colorBlendMode: BlendMode.srcOut,
                           filterQuality: FilterQuality.high,),
                      ]),
                    ),
                  ),
                )
    
    
             
              ],
            ),
          ),
        ),
      );
  }
}