import 'package:cesla/main.dart' as app;
import 'package:cesla/src/app_injections.dart';
import 'package:cesla/src/app_widget.dart';
import 'package:cesla/src/modules/auth/presenter/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import '../screens/login/login.dart';

void main() {
  patrolTest('Sign UP', (PatrolIntegrationTester $) async {
    app.main();
    await $.pumpWidgetAndSettle(const AppWidget());

    await Login().informUserAndPassword($, 'jo@root.me', '12345');
    await Login().tapButtonSignUp($);
    await Login().checkButton($, 'Adicionar aluno');
  });
}
