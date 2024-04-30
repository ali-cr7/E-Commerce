import 'package:e_commerce/core/app/connectivity_conroller.dart';
import 'package:e_commerce/core/app/env.variables.dart';
import 'package:e_commerce/core/common/screens/no_network_screem.dart';
import 'package:e_commerce/core/routes/app_routes.dart';
import 'package:e_commerce/core/style/fonts/font_family_helper.dart';
import 'package:e_commerce/core/style/fonts/font_widget_helper.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ECommerce extends StatelessWidget {
  const ECommerce({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.depugMode,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            builder: (context, widget) {
              return Scaffold(
                body: Builder(
                  builder: (context) {
                    ConnectivityController.instance.init();
                    return widget!;
                  },
                ),
              );
            },
            home: Scaffold(
              appBar: AppBar(title: const Text('E-commerce')),
              body: Center(
                child: Column(
                  children: [
                    // Old
                      Text(
                        'Old Font',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'وليد محمود',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      // New

                      Text(
                        'Old Font',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontFamilyHelper.poppinsEnglish,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ),

                      Text(
                        'وليد محمود',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontFamilyHelper.cairoArabic,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ),
               onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.testOne,
          );
          
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.depugMode,
            title: 'No Network Screen',
            home: const NoNetWorkScreen(),
          );
        }
      },
    );
  }
}
