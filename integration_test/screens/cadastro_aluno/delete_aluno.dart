import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

class Delete {
  Delete();

  Future<void> deleteAlunos(PatrolIntegrationTester $) async {
    await $(#delete_key).tap();
    await $(#delete_ok).tap();
  }

  Future<void> checkButton(PatrolIntegrationTester $) async {
    await $(#addStudent).waitUntilVisible();
    expect($(#addStudent).visible, equals(true));
  }
}
