import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gcm_study/firebase_options.dart';
import 'package:gcm_study/services/push_notification_service.dart';

void main() async {
  // 1. Garante a integração com o motor nativo do Flutter antes de qualquer plugin
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Inicializa o Firebase com as configurações geradas pelo FlutterFire CLI
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // 3. Inicializa o serviço de notificações (Pedir permissão, pegar Token e configurar Listeners)
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.notifications_active,
                size: 50,
                color: Colors.deepPurple,
              ),
              SizedBox(height: 20),
              Text(
                'Firebase & GCM Configurados!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Aguardando mensagens...',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
