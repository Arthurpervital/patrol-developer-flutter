import 'package:patrol/patrol.dart';
import 'package:cesla/main.dart' as app;
import 'package:cesla/src/app_widget.dart';
import '../screens/cadastro_aluno/delete_aluno.dart';
import '../screens/login/login.dart';

void main() {
  patrolTest('cadastro de aluno sucesso', (PatrolIntegrationTester $) async {
    app.main();
    await $.pumpWidgetAndSettle(const AppWidget());

    //login
    //await Login().informUserAndPassword($, 'arthur@root.me', '12345');
    //await Login().tapButtonLogin($);
    //delete
    await Delete().deleteAlunos($);
    await Delete().checkButton($);
  });
}
