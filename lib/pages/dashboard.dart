import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spar_pos/admin_drawer.dart';
import 'package:spar_pos/controller/log_in_controller.dart';
import 'package:spar_pos/widgets/dashboard_cards_widget.dart';
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

  List<String> quantifiers = [
    "Daily",
    "Weekly",
    "Monthly",
    "Yearly",
  ];

  List<double> weeklySummary1 = [
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    89.9,
    98.10

  ];
  List<double> weeklySummary2 = [
    49.40,
    72.50,
    20.42,
    10.50,
    90.20,
    40.9,
    58.10

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
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "WELCOME ADMIN!",
              style: TextStyle(
                color: Color(Constants.primaryBlack()),
                fontWeight: FontWeight.w600,
                fontSize: 32
              ),
            ),
            Text(
              "Dashboard",
              style:TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(Constants.primaryBlack()),
                fontSize: 32
              ),
            )
          ],
        ),
        actions: [
          Expanded(
            flex: 3,
            child: SizedBox(),
          ),
         SizedBox(
           width: 200,
           child:  ListTile(
             leading: CircleAvatar(
               radius: 15,
               backgroundColor: Color(Constants.primaryGreen()),
               child: Icon(Icons.person),
             ),
             title: Text(
               "Tabu",
               style: TextStyle(
                   color: Color(Constants.primaryBlack()),
                   fontWeight: FontWeight.bold,
                   fontSize: 12
               ),
             ),
             subtitle: Text(
               "Admin",
               style: TextStyle(
                   fontSize: 12,
                   fontWeight: FontWeight.w600,
                   color: Color(Constants.primaryGreen())
               ),
             ),
           ),
         )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.insert_chart_outlined_outlined, size: 50 ,color: Color(Constants.primaryGreen()),),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Total sales",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(Constants.primaryBlack())
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "1,902.25",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(Constants.primaryBlack())
                            ),
                          ),
                        )
                      ],
                    ),),
                    Expanded(
                      flex: 2,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.add_shopping_cart, size: 50 ,color: Color(Constants.primaryGreen()),),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Total items",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(Constants.primaryBlack())
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "1,902.25",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(Constants.primaryBlack())
                            ),
                          ),
                        )
                      ],
                    ),),
                    Expanded(
                      flex: 2,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.cancel_presentation_outlined, size: 50 ,color: Colors.red,),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Critical stocks",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(Constants.primaryBlack())
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "1,902.25",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(Constants.primaryBlack())
                            ),
                          ),
                        )
                      ],
                    ),),
                    Expanded(
                      flex: 2,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.shopping_bag_outlined, size: 50 ,color: Color(Constants.primaryGreen()),),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Item sold",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(Constants.primaryBlack())
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "18",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(Constants.primaryBlack())
                            ),
                          ),
                        )
                      ],
                    ),)
                  ],
                ),
              )
            ),
            const SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DashboardCardsWidget(
                        title: "Total sales",
                      quatifiers: quantifiers,
                      weeklySummary: weeklySummary1 ,
                      subtitle: "Sold stocks",
                      subtitle2 : "Days of the week",
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: DashboardCardsWidget(
                        title: "Sales by category",
                      quatifiers: quantifiers,
                      weeklySummary: weeklySummary1 ,
                      subtitle: "Sold stocks",
                      subtitle2 : "Days of the week",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const AdminDrawer(),

    );
  }
}

