import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spar_pos/admin_drawer.dart';
import 'package:spar_pos/pages/dashboard.dart';
import 'package:spar_pos/widgets/primary_button_widget.dart';

import '../helpers/constants.dart';
import '../widgets/secondary_button_widget.dart';

class POSScreen extends StatefulWidget {
  const POSScreen({super.key});

  @override
  State<POSScreen> createState() => _POSScreenState();
}

class _POSScreenState extends State<POSScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        //backgroundColor: Color(Constants.primaryGreen()),
        title: Row(
          children:[
            IconButton(
              icon: Icon(Icons.arrow_circle_left_outlined,
              size: 40,
              color: Color(Constants.primaryBlack()),),
              onPressed: () {
                Get.to(const Dashboard());
              },
            ),
            Text(
                "Point Of Sale",
                style: TextStyle(
                    color: Color(Constants.primaryBlack()),
                    fontWeight: FontWeight.bold,
                    fontSize: 32,

                ),
              ),
        ]
        ),
        actions: [
          Card(
            elevation: 4.0,
            color: Color(Constants.primaryWhite()),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: SizedBox(
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(Constants.primaryGreen()),
                        child: const Icon(Icons.person),
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Tabu",
                            style: TextStyle(
                                color: Color(Constants.primaryBlack()),
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                            ),
                          ),
                          Text(
                            "Admin",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(Constants.primaryGreen())
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Card(
                  elevation: 5.0,
                  child: Container(
                    height: height * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(Constants.primaryWhite())
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Customer Number",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(Constants.primaryBlack()),
                                  fontSize: 17
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
                                    fontSize: 17,
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
                                  fontSize: 16
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
                                    fontSize: 16,
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
                                    fontSize: 16,
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
                              fontSize: 38,
                              color: Color(Constants.primaryGreen()),
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                ) ,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0),
                child: SizedBox(
                  height: height * 0.6,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 5.0,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: width * 0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(Constants.primaryWhite())
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30),
                                child: SizedBox(
                                  width: 1000,
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Product code",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                      const SizedBox(width: 5,),
                                      SizedBox(
                                        width: 100,
                                        height: 40,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Color(Constants.primaryGrey())),
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10,),
                                      Text(
                                        "Quantity",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                      const SizedBox(width: 5,),
                                      SizedBox(
                                        width: 100,
                                        height: 40,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Color(Constants.primaryGrey())),
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10,),
                                      Text(
                                        "Unit Price",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                      const SizedBox(width: 5,),
                                      SizedBox(
                                        width: 100,
                                        height: 40,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Color(Constants.primaryGrey())),
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30),
                                child: SizedBox(
                                  width: 1000,
                                  height: 50,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Description",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                      const SizedBox(width: 5,),
                                      SizedBox(
                                        width: 200,
                                        height: 40,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Color(Constants.primaryGrey())),
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "Sub Total",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                      const SizedBox(width: 5,),
                                      SizedBox(
                                        width: 120,
                                        height: 40,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Color(Constants.primaryGrey())),
                                                  borderRadius: BorderRadius.circular(10)
                                              )
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 30,),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(),
                                child: Column(
                                  children: [
                                    Table(
                                      //columnWidths: ,
                                      children: [
                                        TableRow(
                                          decoration: BoxDecoration(
                                            color: Color(Constants.primaryGreen())
                                          ),
                                          children: [
                                            Text(
                                              "#",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color(Constants.primaryWhite())
                                              ),
                                            ),
                                            Text(
                                              "Description",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color(Constants.primaryWhite())
                                              ),
                                            ),
                                            Text(
                                              "Unit Price",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color(Constants.primaryWhite())
                                              ),
                                            ),
                                            Text(
                                              "Qty",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color(Constants.primaryWhite())
                                              ),
                                            ),
                                            Text(
                                              "Discount",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color(Constants.primaryWhite())
                                              ),
                                            ),
                                            Text(
                                              "Sub Total",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color(Constants.primaryWhite())
                                              ),
                                            ),
                                          ]
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5.0,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: width * 0.26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(Constants.primaryWhite())
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "TOTAL",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                      Text(
                                        "1216.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                    ],
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "DISCOUNT",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                      Text(
                                        "9.80",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                    ],
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "VAT",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                      Text(
                                        "146.35",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                    ],
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "VATABLE",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                      Text(
                                        "1216.6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Color(Constants.primaryBlack())
                                        ),
                                      ),
                                    ],
                                  ),
                              ),
                              Divider(
                                color: Color(Constants.primaryGreen()),
                                thickness: 1.0,
                              ),
                              PrimaryButtonWidget(
                                  label: "NEW TRANSACTION",
                                  onPressed: () {}
                              ),
                              const SizedBox(height: 10,),
                              PrimaryButtonWidget(
                                  label: "BARCODE SCAN",
                                  onPressed: () {}
                              ),
                              const SizedBox(height: 10,),
                              PrimaryButtonWidget(
                                  label: "PAYMENT",
                                  onPressed: () {}
                              ),
                              const SizedBox(height: 10,),
                              SecondaryButtonWidget(
                                  label: "CLEAR CART",
                                  onPressed: () {}
                              ),
                              const SizedBox(height: 30,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Card(
                  elevation: 5.0,
                  child: Container(
                    height: height * 0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(Constants.primaryWhite())
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, ),
                          child: Row(
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(Constants.primaryBlack()),
                                    fontSize: 15
                                ),
                              ),
                              Text(
                                ": Dennis Tabu",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(Constants.primaryBlack()),
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, ),
                          child: Row(
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(Constants.primaryBlack()),
                                    fontSize: 15
                                ),
                              ),
                              Text(
                                ": Dennis Tabu",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(Constants.primaryBlack()),
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, ),
                          child: Text(
                            "${DateTime.now()}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(Constants.primaryBlack()),
                                fontSize: 15
                            ),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, ),
                          child: Text(
                            "${DateTime.now()}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(Constants.primaryBlack()),
                                fontSize: 15
                            ),
                          )
                        ),

                      ],
                    ),
                  ),
                ) ,
              ),
            ],
          ),
      ),
      drawer: AdminDrawer(),
    );
  }
}
