import 'package:cesla/main.dart' as app;
import 'package:cesla/src/app_widget.dart';
import 'package:patrol/patrol.dart';
import '../screens/login/login.dart';

void main() {
  patrolTest('Login falided password', (PatrolIntegrationTester $) async {
    app.main();
    await $.pumpWidget(const AppWidget());

    await Login().informUserAndPassword($, 'arthur@root.me', 'cesla12345678');
    await Login().tapButtonLogin($);
    await Login().checkSnackBarError($);
  });

  patrolTest('Login falided email', (PatrolIntegrationTester $) async {
    app.main();
    await $.pumpWidget(const AppWidget());

    await Login().informUserAndPassword($, 'arthurroot.me', 'cesla12345678');
    await Login().tapButtonLogin($);
    await Login().checkSnackBarError($);
  });
}
