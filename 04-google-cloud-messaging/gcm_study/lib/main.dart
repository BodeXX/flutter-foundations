import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gcm_study/firebase_options.dart';
import 'package:gcm_study/services/push_notification_service.dart';

void main() async {
  // 1. Garante a comunicação com o sistema nativo antes do Firebase
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await PushNotificationService().initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GCM Study',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const Scaffold(
        body: Center(child: Text('Firebase Inicializado com Sucesso!')),
      ),
    );
  }
}
