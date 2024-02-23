import 'package:flutter/material.dart';
import 'package:flutter_application_2/configs/constants.dart';
import 'package:flutter_application_2/controllers/claculatorcontroller.dart';
import 'package:flutter_application_2/views/customtext.dart';
import 'package:flutter_application_2/views/customtextField.dart';
import 'package:get/get.dart';

class Calculator extends StatelessWidget {
  Calculator({Key? key}) : super(key: key);

  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  CalculatorController calculatorController = Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            CustomTextField(
              Controller: num1controller,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              Controller: num2controller,
            ),
            const SizedBox(
              height: 20,
            ),
            //CustomButton(label: "sum", onPressed: () {}),
            ElevatedButton(
                onPressed: () {
                  double a = double.parse(num1controller.text);
                  double b = double.parse(num2controller.text);
                  double s = a + b;
                  calculatorController.updateSum(s);
                  calculatorController.updateVAlue(a, b);
                },
                child: const Text("calculate here")),
            const SizedBox(
              height: 20,
            ),
            Obx(() => CustomText(
                label:
                    "sum is of ${calculatorController.a} and ${calculatorController.b} is: ${calculatorController.sum}")),
          ],
        ),
      );
  }
}
