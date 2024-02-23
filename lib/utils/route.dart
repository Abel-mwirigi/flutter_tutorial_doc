import 'package:flutter_application_2/views/calculator.dart';
import 'package:flutter_application_2/views/home.dart';
import 'package:flutter_application_2/views/login.dart';
import 'package:flutter_application_2/views/registration.dart';
import 'package:get/get.dart';

//Transition myTransition
class Routes{
  static var routes = [
    GetPage(name: "/registration", page: () => Registration()),
    GetPage(name: "/", page: ()=> Login()),
    GetPage(name: "/home", page: () => Home()),
    GetPage(name: "/calculator", page: () => Calculator()),
  ];
}