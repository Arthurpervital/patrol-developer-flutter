import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

class Login {
  Login();

  Future<void> informUserAndPassword(PatrolIntegrationTester $, String usernamekey, String passwordkey) async {
    await $(#inputUsername).enterText(usernamekey);
    await $(#inputPassword).enterText(passwordkey);
  }

  Future<void> tapButtonLogin(PatrolIntegrationTester $) async {
    await $(#buttonLogin).tap();
  }

  Future<void> tapButtonSignUp(PatrolIntegrationTester $) async {
    await $(#buttonSingUp).tap();
  }

  Future<void> checkTextPage(PatrolIntegrationTester $, String checkText) async {
    await $(#alunos_key).waitUntilVisible();
    expect($(#alunos_key).text, checkText);
  }

  Future<void> checkButton(PatrolIntegrationTester $, String checkText) async {
    await $(#addStudent).waitUntilVisible();
    expect($(#addStudent).text, checkText);
  }

  Future<void> checkSnackBarError(PatrolIntegrationTester $) async {
    await $(#snackBarError).waitUntilVisible();
    expect($(#snackBarError).visible, equals(true));
  }
}
