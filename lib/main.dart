import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/app.dart';
import 'package:movieapp/pages/splash.dart';

void main() {
  runApp(
    SplashPage(
      onInitializationComplete: () => runApp(
        const ProviderScope(
          child: MyApp(),
        ),
      ),
    ),
  );
}
