import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './router.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: Routes.screen1,
      getPages: appRoutes(),
      // home: MyApp(),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HelloWorldWidget(),
//     );
//   }
// }

// class HelloWorldWidget extends StatelessWidget {
//   const HelloWorldWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         children: [
//           TextFormField(
//             decoration: const InputDecoration(
//               hintText: 'Enter your name',
//             ),
//             validator: (v) {
//               if (v!.trim().isEmpty) {
//                 return 'Please enter something';
//               }
//               return null;
//             },
//           )
//         ],
//       ),
//     );
//   }
// }

// class HelloWorldWidget extends StatelessWidget {
//   const HelloWorldWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const Text('helloWorld', style: TextStyle(fontSize: 20, color: Colors.red),);
//   }
// }
