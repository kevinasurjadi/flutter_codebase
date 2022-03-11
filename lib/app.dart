import 'package:flutter/material.dart';
import 'package:flutter_codebase/core/constants/screen_size_constant.dart';
import 'package:flutter_codebase/features/home/presentation/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_codebase/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_codebase/generated/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenSizeConstant.fromPlatform,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: Builder(builder: (context) {
          return HomePage(title: S.of(context).appbarText);
        }),
      ),
    );
  }
}
