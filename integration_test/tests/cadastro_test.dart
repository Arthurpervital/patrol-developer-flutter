import 'package:cesla/main.dart' as app;
import 'package:cesla/src/app_widget.dart';
import 'package:patrol/patrol.dart';
//import 'package:patrol_finders/patrol_finders.dart';

import '../screens/cadastro_aluno/cadastro_aluno.dart';
import '../screens/login/login.dart';

void main() {
  patrolTest('cadastro de aluno sucesso', (PatrolIntegrationTester $) async {
    app.main();
    await $.pumpWidgetAndSettle(const AppWidget());

    //login
    await Login().informUserAndPassword($, 'arthur@root.me', '12345');
    await Login().tapButtonLogin($);
    //cadastro
    await Cadastro().tapButtonAddAluno($);
    await Cadastro().informDados($, 'Cleber', '09/05/2024', '36748890306', '12345', 'joao@roooot.com');
    await Cadastro().tapButtonAddOrEdit($);
    await Cadastro().checkAddSucess($);
  });
}
