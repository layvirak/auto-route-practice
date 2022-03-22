// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import 'buttom_bar_page.dart' as _i1;
import 'home_page.dart' as _i5;
import 'order_page.dart' as _i3;
import 'product_detail.dart' as _i6;
import 'profile_page.dart' as _i4;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    ButtomBarRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ButtomBarPage());
    },
    Home.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Order.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.OrderPage());
    },
    Profile.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfilePage());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    ProductDetail.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailArgs>(
          orElse: () =>
              ProductDetailArgs(productId: pathParams.optInt('productId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ProductDetail(key: args.key, productId: args.productId));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(ButtomBarRoute.name, path: '/', children: [
          _i2.RouteConfig('#redirect',
              path: '',
              parent: ButtomBarRoute.name,
              redirectTo: 'home',
              fullMatch: true),
          _i2.RouteConfig(Home.name,
              path: 'home',
              parent: ButtomBarRoute.name,
              children: [
                _i2.RouteConfig(HomeRoute.name, path: '', parent: Home.name),
                _i2.RouteConfig(ProductDetail.name,
                    path: ':productId', parent: Home.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: Home.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i2.RouteConfig(Order.name,
              path: 'order', parent: ButtomBarRoute.name),
          _i2.RouteConfig(Profile.name,
              path: 'profile', parent: ButtomBarRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.ButtomBarPage]
class ButtomBarRoute extends _i2.PageRouteInfo<void> {
  const ButtomBarRoute({List<_i2.PageRouteInfo>? children})
      : super(ButtomBarRoute.name, path: '/', initialChildren: children);

  static const String name = 'ButtomBarRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class Home extends _i2.PageRouteInfo<void> {
  const Home({List<_i2.PageRouteInfo>? children})
      : super(Home.name, path: 'home', initialChildren: children);

  static const String name = 'Home';
}

/// generated route for
/// [_i3.OrderPage]
class Order extends _i2.PageRouteInfo<void> {
  const Order() : super(Order.name, path: 'order');

  static const String name = 'Order';
}

/// generated route for
/// [_i4.ProfilePage]
class Profile extends _i2.PageRouteInfo<void> {
  const Profile() : super(Profile.name, path: 'profile');

  static const String name = 'Profile';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.ProductDetail]
class ProductDetail extends _i2.PageRouteInfo<ProductDetailArgs> {
  ProductDetail({_i7.Key? key, int? productId})
      : super(ProductDetail.name,
            path: ':productId',
            args: ProductDetailArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'ProductDetail';
}

class ProductDetailArgs {
  const ProductDetailArgs({this.key, this.productId});

  final _i7.Key? key;

  final int? productId;

  @override
  String toString() {
    return 'ProductDetailArgs{key: $key, productId: $productId}';
  }
}
