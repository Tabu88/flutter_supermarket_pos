import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:spar_pos/pages/dashboard.dart';
import 'package:spar_pos/pages/sign_in.dart';
import 'helpers/routes_enums.dart';

class Routes {
  static Map<RoutesEnum, String> webRoutes = {
    RoutesEnum.dashboard: "/dashboard",
    RoutesEnum.items: "/items",
    RoutesEnum.customers: "/customers",
    RoutesEnum.suppliers: "/suppliers",
    RoutesEnum.reports: "/reports",
    RoutesEnum.receivings: "/receivings",
    RoutesEnum.sales: "/sales",
    RoutesEnum.employees: "/employees",
    RoutesEnum.logOut: "/logOut",
    RoutesEnum.category: "/category",
    RoutesEnum.pointOfSale: "/point-of-sale",
    RoutesEnum.messages: "/messages",
    RoutesEnum.taxes: "/taxes",
    RoutesEnum.expenses: "/expenses",
    RoutesEnum.signIn: "/signIn",
  };

  static String getValueForRoute(RoutesEnum route)
  {
    return webRoutes[route] ?? "/NotFoundPage";
  }
}

final getPages = [
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.dashboard),
    page: () => const Dashboard(),
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.signIn),
    page: () => const SignInScreen(),
  )
/*  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.items),
    page: () => ItemsScreen(),
  ),*/
 /* GetPage(
    name: Routes.getValueForRoute(RoutesEnum.suppliers),
    page: () => ,
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.reports),
    page: () => ,
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.receivings),
    page: () => ,
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.sales),
    page: () => ,
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.employees),
    page: () => ,
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.messages),
    page: () => ,
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.taxes),
    page: () => ,
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.expenses),
    page: () => ,
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.logOut),
    page: () => ,
  ),
  GetPage(
    name: Routes.getValueForRoute(RoutesEnum.signIn),
    page: () => ,
  ),*/
];