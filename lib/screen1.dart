import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rivipod2/controllers/Screen1Controller.dart';

class Screen1 extends GetView<Screen1Controller> {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen one'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: controller.loginFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                ),
                validator: (v) {
                  if (v!.trim().isEmpty) {
                    return 'Please enter';
                  }
                  return null;
                },
                onChanged: (String value) {
                  controller.name = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your phone',
                ),
                validator: (v) {
                  if (v!.trim().isEmpty) {
                    return 'Please enter';
                  }
                  return null;
                },
                onChanged: (String value) {
                  controller.phone = value;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      controller.addItem();
                    },
                    child: const Text('+ Add Item'),
                  ),
                ],
              ),
              Obx(() => Text(
                '${controller.aList}'
              )),
              Obx(
                () => Column(
                  children: controller.aList.asMap().entries.map((entry) {
                    return _listItem(controller, entry.key, entry.value);
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => controller.handleSubmit(),
                    child: const Text('Submit'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _listItem(Screen1Controller controller, int key, String value) {
  var c = TextEditingController();
  c.text = value;
  return Row(
    children: [
      Expanded(
        child: TextFormField(
          controller: c,
          decoration: const InputDecoration(hintText: 'Enter something'),
          onChanged: (String v) {
            controller.aList[key] = v;
          },
        ),
      ),
      const SizedBox(
        width: 16.0,
      ),
      _addRemoveButton(false, key, controller),
    ],
  );
}

Widget _addRemoveButton(bool add, int index, Screen1Controller controller) {
  return InkWell(
    onTap: () {
      controller.removeItemByIndex(index);
      // if (add) {
      //   controller.aList.add('');
      // } else {
      //   // controller.aList.removeAt(index);
      //   controller.removeItemByIndex(index);
      // }
      // controller.aList.refresh();
    },
    child: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Icon(
        Icons.remove,
        color: Colors.white,
      ),
    ),
  );
}
// List<TextFormField> _list(Screen1Controller controller) {
//   return controller.aList.asMap().entries.map((entry) {
//     return TextFormField(
//       decoration:  const InputDecoration(
//           hintText: 'Enter something'
//       ),
//       onChanged: (String v) {
//         controller.aList[entry.key] = entry.value;
//       },
//     );
//   }).toList();
// }
