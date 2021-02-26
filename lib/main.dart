import 'package:MyShop/providers/auth.dart';
import 'package:MyShop/providers/cart.dart';
import 'package:MyShop/providers/orders.dart';
import 'package:MyShop/providers/products.dart';
import 'package:MyShop/screens/auth_screen.dart';
import 'package:MyShop/screens/edit_product_screen.dart';
import 'package:MyShop/screens/orders_screen.dart';
import 'package:MyShop/screens/product_detail_screen.dart';
import 'package:MyShop/screens/products_overview_screen.dart';
import 'package:MyShop/screens/cart_screen.dart';
import 'package:MyShop/screens/user_products_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.orange,
        ),
        // home: AuthScreen(),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}
