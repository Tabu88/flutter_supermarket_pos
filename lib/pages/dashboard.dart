import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spar_pos/controller/log_in_controller.dart';
import '../helpers/routes_enums.dart';
import '../routes.dart';
import '../widgets/form_label_widget.dart';
import '../helpers/constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
              child: Image.asset("") ,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color(Constants.primaryGreen()),
                  width: 1.0
                )
              ),
            ),
          ),
          const SizedBox(height: 32,),

        ],
      ),

    );
  }
}

