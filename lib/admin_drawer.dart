import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spar_pos/routes.dart';
import 'package:spar_pos/widgets/drawer_tile.dart';

import 'helpers/constants.dart';
import 'helpers/routes_enums.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Drawer(
      backgroundColor: Color(Constants.primaryGreen()),
      width: width * 0.3,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              duration: const Duration(seconds: 3),
              curve: Curves.fastOutSlowIn,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/img.png", width: double.infinity ,height: 80,fit: BoxFit.fitWidth,),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard_outlined, color: Color(Constants.primaryWhite())),
              title: Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(Constants.primaryWhite()),
                  fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.dashboard));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Color(Constants.primaryWhite())),
              title: Text(
                "Products",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.items));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.category_outlined , color: Color(Constants.primaryWhite())),
              title: Text(
                "Category",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.category));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.insert_chart_outlined_outlined, color: Color(Constants.primaryWhite())),
              title: Text(
                "Reports",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.reports));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.lock_clock, color: Color(Constants.primaryWhite())),
              title: Text(
                "Suppliers",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.suppliers));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.lock_clock, color: Color(Constants.primaryWhite())),
              title: Text(
                "Receivings",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.receivings));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.attach_money_outlined, color: Color(Constants.primaryWhite())),
              title: Text(
                "Sales",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.sales));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.point_of_sale_outlined, color: Color(Constants.primaryWhite())),
              title: Text(
                "Point of Sales",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.pointOfSale));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.person_pin_sharp, color: Color(Constants.primaryWhite())),
              title: Text(
                "Employees",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.employees));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.mail_outline_outlined, color: Color(Constants.primaryWhite())),
              title: Text(
                "Messages",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.messages));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading:  Icon(Icons.monetization_on_outlined, color: Color(Constants.primaryWhite())),
              title: Text(
                "Taxes",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.taxes));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading:  Icon(Icons.money_off_csred_outlined, color: Color(Constants.primaryWhite())),
              title: Text(
                "Expenses",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.expenses));
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading:  Icon(Icons.power_settings_new, color: Color(Constants.primaryWhite()),),
              title: Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(Constants.primaryWhite()),
                    fontWeight: FontWeight.w300
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.getValueForRoute(RoutesEnum.logOut));
              },
            ),
          ],
        ),
      ),
    );
  }
}
