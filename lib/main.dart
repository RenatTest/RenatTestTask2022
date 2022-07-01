import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:renat_test_task/provider/google_sign_in.dart';
import 'package:renat_test_task/provider/locale_provider.dart';

import 'provider/theme_provider.dart';
import 'ui/pages/home_page/home_page.dart';
import 'ui/pages/login_page/login_page.dart';
import 'ui/pages/profile_edit/profile_edit.dart';
import 'ui/pages/start_page/start_page.dart';
import 'ui/pages/profile/profile.dart';
import 'ui/pages/about/about.dart';
import 'ui/pages/guidlines/guidlines.dart';
import 'ui/pages/web_view_page/web_view_page.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocaleProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      builder: (context, _) {
        final provider = Provider.of<LocaleProvider>(context);
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          locale: provider.locale,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          themeMode: themeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (BuildContext context) => StartPage(),
            '/login_page': (BuildContext context) => LoginPage(),
            '/home_page': (BuildContext context) => HomePage(),
            '/profile': (BuildContext context) => Profile(),
            '/profile_edit': (BuildContext context) => ProfileEdit(),
            '/about': (BuildContext context) => About(),
            '/guidlines': (BuildContext context) => Guidlines(),
            '/web_view_page': (BuildContext context) => WebViewPage(),
          },
        );
      },
    );
  }
}
