import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/login_view.dart';
import 'package:flutter_application_1/views/register_view.dart';
import 'package:flutter_application_1/views/verify_email_view.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Check if Firebase has already been initialized
  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        name: 'BenjiApp',
        options: DefaultFirebaseOptions.currentPlatform,
      );
    }
  } catch (e) {
    print('Firebase initialization error: $e');
  }

  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/login/': (BuildContext context) => const LoginView(),
        '/register/': (BuildContext context) => const RegisterView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.value(true),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final user = FirebaseAuth.instance.currentUser;
          if (user != null) {
            if (user.emailVerified) {
              return const NotesView();
            } else {
              return const VerifyEmailView();
            }
          } else {
            return const LoginView();
          }
        } else {
          // Show a loading indicator while Firebase is initializing
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
// class _AccountConfirmationState extends State<AccountConfirmation> {

//     late Timer _timer;

//     @override
//     void initState() {
//       super.initState();

//       _timer = Timer.periodic(const Duration(seconds: 5), (timer) async {
//       await FirebaseAuth.instance.currentUser?.reload();
//       final user = FirebaseAuth.instance.currentUser;
//         if (user?.emailVerified ?? false) {
//           timer.cancel();
//           Navigator.pop(context, true);
//         }
//       });
//     }

//     @override
//     void dispose() {
//       super.dispose();
//       _timer.cancel();
//     }

//     @override
//     Widget build(BuildContext context) {
//       return const Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//       );
//     }

// }
class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main UI'),
        ),
    );
  }
}
