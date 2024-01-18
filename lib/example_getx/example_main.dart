// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../example_getx/example_controller.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Home(),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   final controller = Get.put(Controller());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("counter")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Obx(
//               () => Text('clicks: ${controller.count}'),
//             ),
//             ElevatedButton(
//               child: const Text('Next Route'),
//               onPressed: () {
//                 Get.to(Second());
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           controller.increment();
//         },
//       ),
//     );
//   }
// }

// class Second extends StatelessWidget {
//   final Controller ctrl = Get.find();
//   @override
//   Widget build(context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Text("${ctrl.count}"),
//       ),
//     );
//   }
// }
