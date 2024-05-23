import 'package:cesla/main.dart' as app;
import 'package:cesla/src/app_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import '../screens/login/login.dart';

void main() {
  patrolTest('Login Sucess', (PatrolIntegrationTester $) async {
    app.main();
    await $.pumpWidget(const AppWidget());

    await Login().informUserAndPassword($, 'arthur@root.com.br', '12345');
    await Login().tapButtonLogin($);
    await Login().checkTextPage($, 'Alunos');
  });
}
