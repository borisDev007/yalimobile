import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yali/core/constants/my_strings.dart';
import 'package:yali/core/themes/app_themes.dart';
import 'package:yali/data/repositories/repository.dart';
import 'package:yali/data/repositories/tags_repo.dart';
import 'package:yali/presentation/router/router_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => Repository(
      tagsRepo: TagsRepo(),
    ),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRoute = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: MyStrings.appName,
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          routerConfig: _appRoute.config(),
          //home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }
    );
  }
}


