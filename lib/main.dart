import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Flutter',
      theme: ThemeData(
        // Este é o tema da sua aplicação.
        //
        // EXPERIMENTE: Tente executar sua aplicação com "flutter run". Você verá
        // que a barra de ferramentas está roxa. Em seguida, sem fechar o app,
        // tente alterar o seedColor no colorScheme abaixo para Colors.green
        // e então acione o "hot reload" (salve as alterações ou pressione o
        // botão "hot reload" na sua IDE, ou pressione "r" se iniciou pelo
        // terminal).
        //
        // Observe que o contador não voltou a zero; o estado da aplicação
        // não é perdido durante o reload. Para reiniciar o estado, use o
        // hot restart.
        //
        // Isso também vale para código, não apenas valores: a maioria das
        // mudanças de código pode ser testada com apenas um hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 20, 166, 101)),
      ),
      home: const MyHomePage(title: 'Meu App Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Este widget é a página inicial da sua aplicação. É stateful, ou seja,
  // possui um objeto State (definido abaixo) que contém campos que afetam
  // como ele é exibido.
  //
  // Esta classe é a configuração do State. Ela guarda os valores (neste
  // caso o title) fornecidos pelo pai (neste caso o App) e usados pelo
  // método build do State. Campos em uma subclasse de Widget são
  // sempre marcados como "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Esta chamada a setState informa ao framework Flutter que algo mudou
      // neste State, o que faz com que o método build seja executado novamente
      // abaixo para que a interface reflita os valores atualizados. Se nós
      // alterássemos _counter sem chamar setState(), então o método build não
      // seria chamado novamente, e nada pareceria acontecer.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método é executado novamente toda vez que setState é chamado, por exemplo
    // como feito pelo método _incrementCounter acima.
    //
    // O framework Flutter foi otimizado para tornar a reexecução dos métodos build
    // rápida, então você pode reconstruir qualquer coisa que precise ser atualizada
    // em vez de alterar individualmente instâncias de widgets.
    return Scaffold(
      appBar: AppBar(
        // EXPERIMENTE: Tente mudar a cor aqui para uma cor específica
        // (por exemplo Colors.amber) e acione o hot reload para ver o AppBar
        // mudar de cor enquanto as outras cores permanecem iguais.
        backgroundColor: Color.fromARGB(255, 206, 19, 19),
        // Aqui pegamos o valor do objeto MyHomePage que foi criado pelo método
        // App.build, e o usamos para definir o título do appbar.
        title: Text(widget.title),
      ),
      body: Center(
        // Center é um widget de layout. Ele recebe um único filho e o posiciona
        // no centro do pai.
        child: Column(
          // Column também é um widget de layout. Ele recebe uma lista de filhos e
          // os organiza verticalmente. Por padrão, ele se ajusta aos filhos na
          // direção horizontal e tenta ser tão alto quanto seu pai.
          //
          // Column possui várias propriedades para controlar como ele se dimensiona
          // e como posiciona seus filhos. Aqui usamos mainAxisAlignment para
          // centralizar os filhos verticalmente; o eixo principal aqui é o eixo
          // vertical porque Columns são verticais (o eixo cruzado seria horizontal).
          //
          // EXPERIMENTE: Ative a "pintura de depuração" (escolha a ação "Toggle Debug Paint"
          // na IDE, ou pressione "p" no console) para ver a malha de cada widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Você pressionou o botão (+) N\' vezes:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add_box_rounded),
      ), // Esta vírgula final melhora a formatação automática dos métodos build.
    );
  }
}
