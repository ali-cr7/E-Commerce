import 'package:e_commerce/core/app/env.variables.dart';
import 'package:flutter/material.dart';

class ECommerce extends StatelessWidget {
  const ECommerce({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariable.instance.depugMode,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('E-commerce')),
      ),
    );
  }
}
