import 'package:mobx/mobx.dart'; // Importando o MobX para usar suas funcionalidades reativas

// Este arquivo gerará o código automaticamente para o MobX, portanto, precisa do `part` para indicar onde o código gerado vai.
part 'counter.g.dart'; // Arquivo gerado automaticamente pelo build_runner

// A classe Counter herda de _Counter e usa a anotação _$Counter para gerar o código reativo
class Counter = _Counter with _$Counter;

// A classe _Counter é a implementação da store
// A store é onde você define o estado observável e as ações que podem modificar esse estado.
abstract class _Counter with Store {
  // A variável `count` é declarada como um campo observável, o que significa que quando seu valor mudar,
  // qualquer parte da UI que o observe será automaticamente atualizada.
  @observable
  int count = 0; // Definindo a variável como observável

  // A função increment é uma ação que modifica o estado.
  // Quando essa ação é chamada, ela altera o valor de `count` e o MobX propaga essa mudança
  // para todas as partes da UI que estão observando o estado.
  @action
  void increment() {
    count++; // Incrementa o valor de count
  }

  // Getter computado multipliedCount que retorna count multiplicado por 10.
  //Toda vez que count mudar, o MobX recalculará automaticamente o valor de multipliedCount
  @computed
  int get multipliedCount => count * 10; 
}
