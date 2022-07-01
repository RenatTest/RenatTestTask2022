import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:renat_test_task/ui/pages/login_page/login_page.dart';

import 'widgets/profile_and_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return ProfileAndList();
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error...'),
              );
            } else {
              return LoginPage();
            }
          },
        ),
      ),
    );
  }
}
