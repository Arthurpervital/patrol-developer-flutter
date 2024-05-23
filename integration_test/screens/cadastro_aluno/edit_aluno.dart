import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

class Edit {
  Edit();

  Future<void> editButton(PatrolIntegrationTester $) async {
    await $(#edit_key).tap();
  }

  Future<void> editSalveAluno(PatrolIntegrationTester $) async {
    await $(#buttonAddOrEdi).tap();
    await $(#clickOk).tap();
    await $(#addStudent).waitUntilVisible();
    expect($(#addStudent).visible, equals(true));
  }
}
