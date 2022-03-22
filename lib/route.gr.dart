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
import 'package:flutter/material.dart' as _i10;

import 'buttom_bar_page.dart' as _i1;
import 'home_page.dart' as _i4;
import 'order_page.dart' as _i3;
import 'product_detail.dart' as _i5;
import 'product_infromation.dart' as _i6;
import 'product_review.dart' as _i7;
import 'profile_page.dart' as _i8;
import 'setting_page.dart' as _i9;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
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
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    ProductDetail.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailArgs>(
          orElse: () =>
              ProductDetailArgs(productId: pathParams.optInt('productId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ProductDetail(key: args.key, productId: args.productId));
    },
    ProductInformation.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProductInformation());
    },
    ProductReview.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProductReview());
    },
    ProfileRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfilePage());
    },
    SettingPage.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SettingPage());
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
                    path: ':productId',
                    parent: Home.name,
                    children: [
                      _i2.RouteConfig('#redirect',
                          path: '',
                          parent: ProductDetail.name,
                          redirectTo: 'product-info',
                          fullMatch: true),
                      _i2.RouteConfig(ProductInformation.name,
                          path: 'product-info', parent: ProductDetail.name),
                      _i2.RouteConfig(ProductReview.name,
                          path: 'product-review', parent: ProductDetail.name)
                    ]),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: Home.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i2.RouteConfig(Order.name,
              path: 'order', parent: ButtomBarRoute.name),
          _i2.RouteConfig(Profile.name,
              path: 'profile',
              parent: ButtomBarRoute.name,
              children: [
                _i2.RouteConfig(ProfileRoute.name,
                    path: '', parent: Profile.name),
                _i2.RouteConfig(SettingPage.name,
                    path: 'setting_page', parent: Profile.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: Profile.name,
                    redirectTo: '',
                    fullMatch: true)
              ])
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
/// [_i2.EmptyRouterPage]
class Profile extends _i2.PageRouteInfo<void> {
  const Profile({List<_i2.PageRouteInfo>? children})
      : super(Profile.name, path: 'profile', initialChildren: children);

  static const String name = 'Profile';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.ProductDetail]
class ProductDetail extends _i2.PageRouteInfo<ProductDetailArgs> {
  ProductDetail(
      {_i10.Key? key, int? productId, List<_i2.PageRouteInfo>? children})
      : super(ProductDetail.name,
            path: ':productId',
            args: ProductDetailArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId},
            initialChildren: children);

  static const String name = 'ProductDetail';
}

class ProductDetailArgs {
  const ProductDetailArgs({this.key, this.productId});

  final _i10.Key? key;

  final int? productId;

  @override
  String toString() {
    return 'ProductDetailArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i6.ProductInformation]
class ProductInformation extends _i2.PageRouteInfo<void> {
  const ProductInformation()
      : super(ProductInformation.name, path: 'product-info');

  static const String name = 'ProductInformation';
}

/// generated route for
/// [_i7.ProductReview]
class ProductReview extends _i2.PageRouteInfo<void> {
  const ProductReview() : super(ProductReview.name, path: 'product-review');

  static const String name = 'ProductReview';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i9.SettingPage]
class SettingPage extends _i2.PageRouteInfo<void> {
  const SettingPage() : super(SettingPage.name, path: 'setting_page');

  static const String name = 'SettingPage';
}
