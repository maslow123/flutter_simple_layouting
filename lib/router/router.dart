
import 'package:auto_route/auto_route.dart';
import 'package:udemy_course/presentation/dashboard/dashboard.dart';
import 'package:udemy_course/presentation/home/home.dart';
import 'package:udemy_course/presentation/item_detail_page/item_detail_page.dart';
import 'package:udemy_course/presentation/menu_list_page/menu_list_page.dart';
import 'package:udemy_course/presentation/profile/profile_page.dart';

// flutter packages pub run build_runner watch --delete-conflicting-outputs
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route', 
  routes: <AutoRoute>[
    MaterialRoute(page: Dashboard),
    MaterialRoute(page: Home),
    MaterialRoute(page: MenuListPage),
    MaterialRoute(page: ItemDetailPage),
    MaterialRoute(page: ProfilePage, initial: true),
  ],
)
class $AppRoutes {}