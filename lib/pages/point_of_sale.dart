import 'package:flutter/material.dart';
import 'package:spar_pos/admin_drawer.dart';

import '../helpers/constants.dart';

class POSScreen extends StatefulWidget {
  const POSScreen({super.key});

  @override
  State<POSScreen> createState() => _POSScreenState();
}

class _POSScreenState extends State<POSScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Card(
                elevation: 5.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Customer Number",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(Constants.primaryBlack()),
                                fontSize: 18
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(Constants.primaryBlack())),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                "98765252",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(Constants.primaryBlack())
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Customer Name",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(Constants.primaryBlack()),
                                fontSize: 18
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(Constants.primaryBlack())),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                "Tabu",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(Constants.primaryBlack())
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "TRANSACTION NO.",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(Constants.primaryBlack()),
                                fontSize: 14
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text(
                                "98765252",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(Constants.primaryBlack())
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Text(
                          "1,216.6",
                          style: TextStyle(
                            fontSize: 35,
                            color: Color(Constants.primaryGreen()),
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              ) ,
            )
          ],
        ),
      ),
      drawer: AdminDrawer(),
    );
  }
}
