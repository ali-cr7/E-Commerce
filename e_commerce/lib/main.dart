import 'dart:io';

import 'package:e_commerce/core/app/env.variables.dart';
import 'package:e_commerce/e_commerce.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  await EnvVariable.instance.init(envType: EnvTypeEnum.prod);

  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: 'AIzaSyBABDd6uuYSQCmJW8jSMR4DGEwmmizpdow',
          appId: '1:383833302617:android:96a65b6949a15483133348',
          messagingSenderId: '383833302617',
          projectId: 'e-commerce-715c0',
        ))
      : await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const ECommerce());
  });


}
