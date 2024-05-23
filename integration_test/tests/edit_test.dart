import 'package:patrol/patrol.dart';
import 'package:cesla/main.dart' as app;
import 'package:cesla/src/app_widget.dart';
import '../screens/cadastro_aluno/cadastro_aluno.dart';
import '../screens/cadastro_aluno/edit_aluno.dart';
import '../screens/login/login.dart';

void main() {
  patrolTest('Editar aluno sucesso', (PatrolIntegrationTester $) async {
    app.main();
    await $.pumpWidgetAndSettle(const AppWidget());

    //login
    await Login().informUserAndPassword($, 'arthur@root.me', '12345');
    await Login().tapButtonLogin($);
    //Edit
    await Edit().editButton($);
    await Cadastro().informDados($, 'Fernanda', '08/05/2024', '36748890306', '12345', 'fer@root.com');
    await Edit().editSalveAluno($);
  });
}
