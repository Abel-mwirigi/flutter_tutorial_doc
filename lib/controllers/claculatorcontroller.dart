import 'package:get/get.dart';

class CalculatorController extends GetxController{
  var sum = 0.0.obs;
  var a = 0.0.obs;
  var b = 0.0.obs;

  updateSum(double newSum){
    sum.value = newSum;
  }

  updateVAlue(a, b){
    a.value = a;
    b.value = b;
  }

}