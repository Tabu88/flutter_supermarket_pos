
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spar_pos/controller/log_in_controller.dart';
import 'package:spar_pos/widgets/text_field_widget.dart';
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
      backgroundColor: Colors.white54,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5.0,
              child: Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Color(Constants.primaryGreen())
                    )
                ),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Color(Constants.primaryGreen()),
                                width: 1.0
                            )
                        ),
                        child:  Center(child: Image.asset("assets/images/img.png", width: 120,height: 80,)),
                      ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropdownButtonFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                                  hintText: "  Select role",
                                  hintStyle:  TextStyle(
                                      color: Color(Constants.primaryBlack()),

                                  ),
                                  filled: true,
                                  fillColor: Colors.grey.shade300,
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
                            const SizedBox(height: 10,),
                            FormLabelText(title: "  Username"),
                            TextFieldWidget(
                                hint: "Username",
                                onChanged: (v) {
                                  _logInController.userName.value = v;
                                },
                                validatorName: "name"),
                            const SizedBox(height: 10,),
                            FormLabelText(title: "  Password"),
                            TextFieldWidget(
                                hint: "Password",
                                onChanged: (v) {
                                  _logInController.userPassword.value = v;
                                },
                                validatorName: "password"),
                            const SizedBox(height: 12,),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(double.infinity,50),
                              backgroundColor:
                              Color(Constants.primaryGreen())),
                          onPressed: _continue,
                          child: const Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

