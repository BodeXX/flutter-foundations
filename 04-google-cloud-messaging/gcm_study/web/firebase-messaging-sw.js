// Importa os scripts do Firebase compatíveis com Service Workers
importScripts("https://www.gstatic.com/firebasejs/9.23.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.23.0/firebase-messaging-compat.js");

// Inicializa o Firebase no Service Worker com os seus dados reais
firebase.initializeApp({
  apiKey: "AIzaSyCcBHidFzDgO5Fv6UhVFZz_p7Yleqz2NLY",
  authDomain: "gcm-study-bode.firebaseapp.com",
  projectId: "gcm-study-bode",
  storageBucket: "gcm-study-bode.firebasestorage.app",
  messagingSenderId: "178880749588",
  appId: "1:178880749588:web:c3c43375d0fffd3b964701",
  measurementId: "G-71QCDGQ5KE"
});

// Recupera a instância do Messaging
const messaging = firebase.messaging();

// Opcional: Lógica para tratar notificações em segundo plano (Background)
messaging.onBackgroundMessage((payload) => {
  console.log('[firebase-messaging-sw.js] Mensagem recebida em segundo plano: ', payload);

  const notificationTitle = payload.notification.title;
  const notificationOptions = {
    body: payload.notification.body,
    icon: '/firebase-logo.png' // Certifique-se de ter um ícone se quiser usá-lo
  };

  self.registration.showNotification(notificationTitle, notificationOptions);
});
