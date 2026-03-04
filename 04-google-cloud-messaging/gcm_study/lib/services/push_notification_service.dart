import 'package:firebase_messaging/firebase_messaging.dart';

// 1. Handler de Background: Precisa ser uma função global e estática.
// Esta função é executada em um Isolate separado quando o app está fechado.
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print(" Notificação em Background: ${message.messageId}");
}

class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  Future<void> initialize() async {
    // 2. Pedir permissão ao usuário
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print(' Usuário permitiu as notificações!');

      // 3. Capturar o Token GCM
      String? token = await _fcm.getToken();
      print("========= SEU TOKEN GCM =========");
      print(token);
      print("=================================");

      // 4. Configurar Listeners
      _configureListeners();
    } else {
      print(' Usuário recusou as notificações.');
    }
  }

  void _configureListeners() {
    // Ouvir mensagens com o app aberto (Foreground)
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("🔔 Recebi em Foreground: ${message.notification?.title}");
      print("Corpo da mensagem: ${message.notification?.body}");
    });

    // Registrar o handler de background
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }
}
