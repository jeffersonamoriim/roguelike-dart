
import 'dart:math';
import 'package:roguelike/mundo.dart';
import 'package:roguelike/personagem.dart';
import 'package:roguelike/ponto_2d.dart';
import 'package:roguelike/jogador.dart';


// Classe Criatura é derivada (filha) da classe Personagem
class Carneiro extends Personagem{
  // Constantes
  static final int FICAR_PARADO = 0;
  static final int MOVER_BAIXO = 1;
  static final int MOVER_CIMA = 2;
  static final int MOVER_DIREITA = 3;
  static final int MOVER_ESQUERDA = 4;
  static final int QUANTIDADE_MOVIMENTOS = 5;
  
  static final String SIMBOLO_CRIATURA_CARNEIRO = "C";
  


  // Variável privada para criar números aleatório
  Random _aleatorio;
  Jogador jogador;

  // Construtor padrão + Construtor do pai (super)
  Carneiro(Ponto2D posicao, String simbolo) : super(posicao, simbolo) {
    
    // Random(SEED)
    // SEED = NULL indica que vai pegar o tempo atual
    _aleatorio = Random(null);
  }


  // Implementação do método abstrato atualizar
  // @mundo: mundo em que o personagem esta no momento
   void atualizar(Mundo mundo) {
    // criar um número aleatório entre 0 e 100,
    // logo em seguida, calcula o resto da divisão por 5,
    // ou seja, só podemos ter os seguintes valores: 0, 1, 2, 3 e 4

    //SE ESTIVER PERTO PLAYER CORRE DELE

    var direcao = _aleatorio.nextInt(1000) % QUANTIDADE_MOVIMENTOS;

   
    // desloca a criatura conforme o valor aleatório gerado
    if (direcao == FICAR_PARADO) {
      mover(mundo, 0, 0);
    } else if (direcao == MOVER_BAIXO) {
      mover(mundo, 0, 1);
    } else if (direcao == MOVER_CIMA) {
      mover(mundo, 0, -1);
    } else if (direcao == MOVER_DIREITA) {
      mover(mundo, 1, 0);
    } else if (direcao == MOVER_ESQUERDA) mover(mundo, -1, 0);
  }



   void fugir(Mundo mundo){  //IAN

      //var randonPosition = _aleatorio.nextInt(100) % 2;

      mover(mundo, 2, 2);

      //print("DEU CERTO");
   

  }
}



