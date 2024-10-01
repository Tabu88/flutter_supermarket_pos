
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spar_pos/controller/log_in_controller.dart';
import '../helpers/routes_enums.dart';
import '../routes.dart';
import '../widgets/form_label_widget.dart';
import '../helpers/constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _logInController= Get.put(LogInController());

  List<String> roles = [
    "Admin",
    "Cashier",

  ];

  _continue() async{
    if (_formKey.currentState!.validate()){
      Get.toNamed(
        Routes.getValueForRoute(RoutesEnum.dashboard),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Color(Constants.primaryWhite()),
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                      color: Color(Constants.primaryGreen()),
                      width: 1.0
                  )
              ),
              child:  Center(child: Image.asset("assets/images/img.png", width: 120,height: 80,)) ,
            ),
          ),
          const SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                        hintText: "select role",
                        hintStyle: TextStyle(color: Color(Constants.primaryWhite())),
                        filled: true,
                        fillColor: Colors.grey.shade400,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              color: Color(Constants.primaryGreen())
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(
                            color: Colors.red.shade400,

                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(
                            color: Color(Constants.primaryGreen()),
                            width: 1,
                          ),
                        ),
                      ),
                      items: roles.map((String role) {
                        return DropdownMenuItem<String>(
                            value: role,
                            child: Text(
                              role,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(Constants.primaryBlack())
                              ),
                            ));
                      }).toList(),
                      onChanged: (v) {
                        _logInController.userRole.value = v!;
                      }),
                  const SizedBox(height: 20,),
                  FormLabelText(title: "Username"),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      hintText: 'Enter Full Name',
                      hintStyle: TextStyle(
                          color:
                          Color(Constants.primaryBlack())),
                      fillColor:
                      Colors.grey.shade400,
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(8.0)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                            color:
                            Color(Constants.primaryWhite())),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                              color: Color(
                                  Constants.primaryGreen()))),
                      errorBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(8.0),
                          borderSide:const
                          BorderSide(color: Colors.red)),

                    ),
                    onChanged: (v) {
                      _logInController.userName.value = v;
                    },
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return 'Enter your name';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 20,),
                  FormLabelText(title: "Password"),
                  TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      hintText: 'Enter password',
                      hintStyle: TextStyle(
                          color:
                          Color(Constants.primaryBlack())),
                      fillColor:
                      Colors.grey.shade400,
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(8.0)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                            color:
                            Color(Constants.primaryWhite())),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                              color: Color(
                                  Constants.primaryGreen()))),
                      errorBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(8.0),
                          borderSide:const
                          BorderSide(color: Colors.red)),

                    ),
                    onChanged: (v) {
                      _logInController.userPassword.value = v;
                    },
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return 'Enter your password';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 32,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(250,70),
                          backgroundColor:
                          Color(Constants.primaryGreen())),
                      onPressed: _continue,
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(Constants.primaryWhite())
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}

