import 'package:auto_route/auto_route.dart';
import 'hone_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HonePage, initial: true),
  ],
)
class $AppRouter {}
