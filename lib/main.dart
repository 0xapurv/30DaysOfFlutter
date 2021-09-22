import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/theme_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/custom_themes.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';
import 'widgets/themes.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeManager>(
        create: (_) => ThemeManager(),
      ),
    ],
    child: VxState(store: MyStore(), child: MyApp())));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (_, manager, __) {
          return MaterialApp(

            theme: manager.themeData,
            // darkTheme: MyTheme.darkTheme(context),
            debugShowCheckedModeBanner: false,
            initialRoute: MyRoutes.loginRoute,
            routes: {
              "/": (context) => LoginPage(),
              MyRoutes.homeRoute: (context) => HomePage(),
              MyRoutes.loginRoute: (context) => LoginPage(),
              MyRoutes.cartRoute: (context) => CartPage(),
              MyRoutes.themeRoute: (context) => RootPage(),
            },
          );
        },
      ),
    );
  }
}
