import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

class Cadastro {
  Cadastro();

  Future<void> informDados(
    PatrolIntegrationTester $,
    String nameAlu,
    String date,
    String document,
    String registerAc,
    String email,
  ) async {
    await $(#name_key).enterText(nameAlu);
    await $(#data_key).enterText(date);
    await $(#cpf_key).enterText(document);
    await $(#registroAcd_key).enterText(registerAc);
    await $(#email_key).enterText(email);
  }

  Future<void> tapButtonAddAluno(PatrolIntegrationTester $) async {
    await $(#buttonAddAluno).tap();
  }

  Future<void> tapButtonAddOrEdit(PatrolIntegrationTester $) async {
    await $(#buttonAddOrEdi).tap();
  }

  Future<void> checkAddSucess(PatrolIntegrationTester $) async {
    await $(#clickOk).tap();
    await $(#buttonAddAluno).waitUntilVisible();
    expect($(#buttonAddAluno).visible, equals(true));
  }

  Future<void> camposObrigatorios(PatrolIntegrationTester $) async {
    await $(#obrigatorio_key).waitUntilVisible();
    expect($(#obrigatorio_key).visible, equals(true));
  }
}
