import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  // 1. Criamos uma instância privada do Firebase Messaging
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  Future<void> initialize() async {
    // 2. Pedir permissão ao usuário (Obrigatório para Web e iOS)
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('✅ Usuário permitiu as notificações!');

      // 3. Capturar o Token único deste "aparelho" (ou navegador)
      String? token = await _fcm.getToken();

      print("========= SEU TOKEN GCM =========");
      print(token);
      print("=================================");

      // TODO: No futuro, enviar este token para o seu servidor backend
    } else {
      print(
        '❌ Usuário recusou as notificações ou a permissão ainda é provisória.',
      );
    }
  }
}
