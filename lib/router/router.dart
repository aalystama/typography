import 'package:auto_route/auto_route.dart';
import 'package:typography/app/home/home_page.dart';
import 'package:typography/app/orders/view/add_order_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      initial: true,
    ),
    AutoRoute(
      path: '/new',
      page: AddOrderPage,
    ),
  ],
)
class $AppRouter {}
