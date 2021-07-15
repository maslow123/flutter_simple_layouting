// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../presentation/dashboard/dashboard.dart' as _i3;
import '../presentation/home/home.dart' as _i4;
import '../presentation/item_detail_page/item_detail_page.dart' as _i6;
import '../presentation/menu_list_page/menu_list_page.dart' as _i5;
import '../presentation/profile/profile_page.dart' as _i7;

class AppRoutes extends _i1.RootStackRouter {
  AppRoutes([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Dashboard.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<DashboardArgs>(orElse: () => const DashboardArgs());
          return _i3.Dashboard(title: args.title, buttonText: args.buttonText);
        }),
    Home.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.Home();
        }),
    MenuListRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.MenuListPage();
        }),
    ItemDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ItemDetailRouteArgs>();
          return _i6.ItemDetailPage(key: args.key, image: args.image);
        }),
    ProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.ProfilePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(Dashboard.name, path: '/Dashboard'),
        _i1.RouteConfig(Home.name, path: '/Home'),
        _i1.RouteConfig(MenuListRoute.name, path: '/menu-list-page'),
        _i1.RouteConfig(ItemDetailRoute.name, path: '/item-detail-page'),
        _i1.RouteConfig(ProfileRoute.name, path: '/')
      ];
}

class Dashboard extends _i1.PageRouteInfo<DashboardArgs> {
  Dashboard({String? title, String? buttonText})
      : super(name,
            path: '/Dashboard',
            args: DashboardArgs(title: title, buttonText: buttonText));

  static const String name = 'Dashboard';
}

class DashboardArgs {
  const DashboardArgs({this.title, this.buttonText});

  final String? title;

  final String? buttonText;
}

class Home extends _i1.PageRouteInfo {
  const Home() : super(name, path: '/Home');

  static const String name = 'Home';
}

class MenuListRoute extends _i1.PageRouteInfo {
  const MenuListRoute() : super(name, path: '/menu-list-page');

  static const String name = 'MenuListRoute';
}

class ItemDetailRoute extends _i1.PageRouteInfo<ItemDetailRouteArgs> {
  ItemDetailRoute({_i2.Key? key, required String? image})
      : super(name,
            path: '/item-detail-page',
            args: ItemDetailRouteArgs(key: key, image: image));

  static const String name = 'ItemDetailRoute';
}

class ItemDetailRouteArgs {
  const ItemDetailRouteArgs({this.key, required this.image});

  final _i2.Key? key;

  final String? image;
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '/');

  static const String name = 'ProfileRoute';
}
