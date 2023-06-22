import 'package:flutter/material.dart';
import 'package:quiz/quizCriacao.dart';

class ListaValores {
  List<String> valores = [];
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizz',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                'Quizz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              ),
            ),
            ListTile(
              title: Text(
                'Temas',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizHome(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsetsDirectional.all(40),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 41, 41, 41),
                Color.fromARGB(255, 0, 0, 0),
              ],
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'images/cerebrin.png',
                  height: 200,
                  width: 200,
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(vertical: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizHome(),
                      ),
                    );
                  },
                  child: Text(
                    'Testar Conhecimento',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(vertical: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CriarQuizTela(),
                      ),
                    );
                  },
                  child: Text(
                    'Criar Quizz',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class QuizHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 41, 41, 41),
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimalQuiz(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Color.fromARGB(20, 34, 139, 34),
                    Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 34, 139, 34),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                child:Container(
                  height: 100,
                  child: Column(
                    children: [
                      Text(
                        'Animais',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Icon(
                        Icons.pets,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimeQuiz(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 191, 0, 255),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 191, 0, 255),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Animes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.catching_pokemon,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            
            /*
            GestureDetector(

              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 178, 223, 238),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 178, 223, 238),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Ciências',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.science,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 255, 69, 0),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 69, 0),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Esportes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.sports_soccer,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 255, 215, 0),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 215, 0),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Filmes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.local_movies,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 0, 119, 190),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 119, 190),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Geografia',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.south_america,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            */
            
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeraisQuiz(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 128, 128, 128),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 128, 128, 128),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Gerais',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.bar_chart_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            
            /*
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 139, 69, 19),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 139, 69, 19),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'História',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.hourglass_empty_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 244, 67, 54),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 244, 67, 54),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Inglês',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.sports_football,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 33, 150, 243),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 33, 150, 243),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Matemática',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.calculate,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 76, 175, 80),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 76, 175, 80),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Português',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.abc,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            */

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProgramacaoQuiz(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(20, 0, 255, 255),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 255, 255),
                    width: 3.0,
                  ),
                ),
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          'Programação',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.code,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Animais

class AnimalQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animal Quiz',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnimalQuizScreen(),
    );
  }
}

class AnimalQuizScreen extends StatefulWidget {
  @override
  _AnimalQuizScreenState createState() => _AnimalQuizScreenState();
}

class _AnimalQuizScreenState extends State<AnimalQuizScreen> {
  int currentQuestionIndex = 0;
  int totalScore = 0;

  List<Map<String, dynamic>> animaisQuests = [
    {
      'question': 'Qual é o maior animal terrestre?',
      'options': [
        'Elefante',
        'Girafa',
        'Rinoceronte',
        'Hipopótamo',
        'Leão',
      ],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é o maior réptil do mundo?',
      'options': [
        'Cobra píton',
        'Jacaré',
        'Iguana',
        'Tartaruga marinha',
        'Dragão de Komodo',
      ],
      'RespCorreta': 4,
    },
    {
      'question': 'Qual é o animal que possui o maior cérebro em relação ao seu tamanho corporal?',
      'options': [
        'Elefante',
        'Golfinho',
        'Chimpanzé',
        'Humano',
        'Cachalote',
      ],
      'RespCorreta': 4,
    },
    {
      'question': 'Qual é o animal que tem a maior envergadura de asas?',
      'options': [
        'Águia',
        'Morcego',
        'Condor',
        'Albatroz',
        'Coruja',
      ],
      'RespCorreta': 3,
    },
    {
      'question': 'Qual é o animal que possui a maior diversidade de espécies?',
      'options': [
        'Inseto',
        'Ave',
        'Anfíbio',
        'Mamífero',
        'Peixe',
      ],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é o animal que possui o maior número de dentes?',
      'options': [
        'Tubarão',
        'Golfinho',
        'Caracol',
        'Ouriço-do-mar',
        'Lesma',
      ],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é o animal conhecido por ser o mais venenoso do mundo?',
      'options': [
        'Serpente-marinha',
        'Vespa-mandarina',
        'Sapo-dourado',
        'Aranha-armadeira',
        'Escorpião-imperador',
      ],
      'RespCorreta': 1,
    },
    {
      'question': 'Qual é o animal que produz o som mais alto?',
      'options': [
        'Grilo',
        'Elefante',
        'Leão',
        'Baleia',
        'Cigarra',
      ],
      'RespCorreta': 3,
    },
    {
      'question': 'Qual é o maior felino do mundo?',
      'options': [
        'Tigre',
        'Leão',
        'Leopardo',
        'Puma',
        'Gato doméstico',
      ],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual desses animais não é mamífero?',
      'options': [
        'Equidnas',
        'Ornitorrinco',
        'Morcegos',
        'Orca',
        'Tubarão-baleia',
      ],
      'RespCorreta': 0,
    },
  ];

  void checkAnswer(int selectedIndex) {
    int respCorretaIndex = animaisQuests[currentQuestionIndex]['RespCorreta'];

    setState(() {
      if (selectedIndex == respCorretaIndex) {
        totalScore += 1;
      }

      if (currentQuestionIndex < animaisQuests.length - 1) {
        currentQuestionIndex += 1;
      } else {
        showResultPopup();
      }
    });
  }

  void showResultPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pontuação Final'),
          content: Text('Você acertou $totalScore de ${animaisQuests.length} perguntas.'),
          actions: [
            TextButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/');
                resetQuiz();
              },
            ),
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
                resetQuiz();
              },
            ),
          ],
        );
      },
    );
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal Quiz'),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 34, 139, 34),
        child: ListView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                'Animais',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              ),
            ),
            ListTile(
              title: Text(
                'Anime Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimeQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Conhecimentos Gerais Quiz',
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeraisQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Programação Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProgramacaoQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Sair',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
                
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 34, 139, 34),
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pergunta ${currentQuestionIndex + 1}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              animaisQuests[currentQuestionIndex]['question'],
              style: TextStyle(
                fontSize: 16.0, color: 
                Colors.white
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(animaisQuests[currentQuestionIndex]['options'].length, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 6.0),
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    child: Text(
                      animaisQuests[currentQuestionIndex]['options'][index],
                      style: TextStyle(fontSize: 16.0),
                    ),
                    onPressed: () {
                      checkAnswer(index);
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

// Animes

class AnimeQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anime Quiz',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AnimeQuizScreen(),
    );
  }
}

class AnimeQuizScreen extends StatefulWidget {
  @override
  _AnimeQuizScreenState createState() => _AnimeQuizScreenState();
}

class _AnimeQuizScreenState extends State<AnimeQuizScreen> {
  int currentQuestionIndex = 0;
  int totalScore = 0;

  List<Map<String, dynamic>> animesQuests = [
    {
      'question': 'Qual é o nome do melhor amigo do Naruto?',
      'options': [
        'Rock Lee',
        'Sasuke',
        'Gaara',
        'Shikamaru',
        'Konohamaru',
      ],
      'RespCorreta': 3,
    },
    {
      'question': 'Qual desses não é um anime Isekai?',
      'options': [
        'Sword Art Online',
        'Konosuba',
        'Overlord',
        'Inuyasha',
        'Pokémon',
      ],
      'RespCorreta': 4,
    },
    {
      'question': 'Qual é o nome do anime que se passa em uma cidade futurística onde pessoas ganham habilidades especiais conhecidas como "Quirks"?',
      'options': [
        'My Hero Academia',
        'Naruto',
        'One Punch Man',
        'Hunter x Hunter',
        'Attack on Titan',
      ],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é o nome do anime que segue a história de um estudante que viaja no tempo e tenta evitar uma série de eventos catastróficos?',
      'options': [
        'Steins;Gate',
        'Neon Genesis Evangelion',
        'Attack on Titan',
        'Death Note',
        'Code Geass',
      ],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é o nome do protagonista do anime "Cowboy Bebop"?',
      'options': [
        'Spike Spiegel',
        'Vash the Stampede',
        'Monkey D. Luffy',
        'Light Yagami',
        'Edward Elric',
      ],
      'RespCorreta': 0,
    },
    {
      'question': 'Em "Fullmetal Alchemist: Brotherhood", qual é o nome do alquimista conhecido como "Fullmetal"?',
      'options': [
        'Edward Elric',
        'Roy Mustang',
        'Alphonse Elric',
        'Riza Hawkeye',
        'Winry Rockbell',
      ],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é o nome do anime em que os personagens lutam usando armaduras conhecidas como "Gundams"?',
      'options': [
        'Cowboy Bebop',
        "JoJo's Bizarre Adventure",
        'Gundam Wing',
        'One Piece',
        'Dragon Ball Z',
      ],
      'RespCorreta': 2,
    },
    {
      'question': 'Qual personagem de Naruto não domina os 5 elementos?',
      'options': [
        'Sasuke',
        'Kakuzu',
        'Naruto',
        'Kakashi',
        'Jiraiya',
      ],
      'RespCorreta': 4,
    },
    {
      'question': 'Qual desses pokémons não é do tipo água?',
      'options': [
        'Psyduck',
        'Mantine',
        'Gyarados',
        'Octillery',
        'Latios',
      ],
      'RespCorreta': 4,
    },
    {
      'question': 'Qual o único membro da akatsuki que o Naruto nunca viu?',
      'options': [
        'Konan',
        'Zetsu',
        'Hidan',
        'Deidara',
        'Nagato',
      ],
      'RespCorreta': 2,
    },
  ];

  void checkAnswer(int selectedIndex) {
    int respCorretaIndex = animesQuests[currentQuestionIndex]['RespCorreta'];

    setState(() {
      if (selectedIndex == respCorretaIndex) {
        totalScore += 1;
      }

      if (currentQuestionIndex < animesQuests.length - 1) {
        currentQuestionIndex += 1;
      } else {
        showResultPopup();
      }
    });
  }

  void showResultPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pontuação Final'),
          content: Text('Você acertou $totalScore de ${animesQuests.length} perguntas.'),
          actions: [
            TextButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.pushNamed(context, '/');
                resetQuiz();
              },
            ),
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
                resetQuiz();
              },
            ),
          ],
        );
      },
    );
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anime Quiz'),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 191, 0, 255),
        child: ListView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                'Animais',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              ),
            ),
            ListTile(
              title: Text(
                'Animal Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimalQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Conhecimentos Gerais Quiz',
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeraisQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Programação Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProgramacaoQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Sair',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
                
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 191, 0, 255),
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pergunta ${currentQuestionIndex + 1}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              animesQuests[currentQuestionIndex]['question'],
              style: TextStyle(
                fontSize: 16.0, color: 
                Colors.white
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(animesQuests[currentQuestionIndex]['options'].length, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 6.0),
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    child: Text(
                      animesQuests[currentQuestionIndex]['options'][index],
                      style: TextStyle(fontSize: 16.0),
                    ),
                    onPressed: () {
                      checkAnswer(index);
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

// Conhecimentos Gerais

class GeraisQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conhecimentos Gerais Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: GeraisQuizScreen(),
    );
  }
}

class GeraisQuizScreen extends StatefulWidget {
  @override
  _GeraisQuizScreenState createState() => _GeraisQuizScreenState();
}

class _GeraisQuizScreenState extends State<GeraisQuizScreen> {
  int currentQuestionIndex = 0;
  int totalScore = 0;

  List<Map<String, dynamic>> geraisQuests = [
    {
      'question': 'Qual é o maior oceano do mundo?',
      'options': ['Oceano Atlântico', 'Oceano Índico', 'Oceano Pacífico', 'Oceano Ártico', 'Oceano Antártico'],
      'RespCorreta': 2,
    },
    {
      'question': 'Qual é o país com a maior população do mundo?',
      'options': ['Índia', 'Estados Unidos', 'China', 'Brasil', 'Rússia'],
      'RespCorreta': 2,
    },
    {
      'question': 'Qual é o elemento químico com o símbolo "Fe"?',
      'options': ['Ferro', 'Flúor', 'Fósforo', 'Fúlvio', 'Félio'],
      'RespCorreta': 0,
    },
    {
      'question': 'Quem pintou a Mona Lisa?',
      'options': ['Michelangelo', 'Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh', 'Salvador Dalí'],
      'RespCorreta': 2,
    },
    {
      'question': 'Qual é a capital da Austrália?',
      'options': ['Sydney', 'Melbourne', 'Canberra', 'Brisbane', 'Adelaide'],
      'RespCorreta': 2,
    },
    {
      'question': 'Quem foi o primeiro homem a pisar na Lua?',
      'options': ['Neil Armstrong', 'Buzz Aldrin', 'Alan Shepard', 'Yuri Gagarin', 'John Glenn'],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é o maior planeta do sistema solar?',
      'options': ['Terra', 'Júpiter', 'Saturno', 'Vênus', 'Urano'],
      'RespCorreta': 1,
    },
    {
      'question': 'Qual é o maior mamífero terrestre?',
      'options': ['Elefante africano', 'Rinoceronte branco', 'Hipopótamo', 'Girafa', 'Leão'],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é a moeda oficial do Japão?',
      'options': ['Yen', 'Dólar', 'Euro', 'Real', 'Rupia'],
      'RespCorreta': 0,
    },
    {
      'question': 'Quem escreveu o livro "Dom Quixote"?',
      'options': ['Miguel de Cervantes', 'William Shakespeare', 'Charles Dickens', 'Fyodor Dostoevsky', 'Jane Austen'],
      'RespCorreta': 0,
    },
  ];
  
  
  void checkAnswer(int selectedIndex) {
    int respCorretaIndex = geraisQuests[currentQuestionIndex]['RespCorreta'];

    setState(() {
      if (selectedIndex == respCorretaIndex) {
        totalScore += 1;
      }

      if (currentQuestionIndex < geraisQuests.length - 1) {
        currentQuestionIndex += 1;
      } else {
        showResultPopup();
      }
    });
  }

  void showResultPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pontuação Final'),
          content: Text('Você acertou $totalScore de ${geraisQuests.length} perguntas.'),
          actions: [
            TextButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/');
                resetQuiz();
              },
            ),
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
                resetQuiz();
              },
            ),
          ],
        );
      },
    );
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conhecimentos Gerais Quiz'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                'Conhecimentos Gerais',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              ),
            ),
            ListTile(
              title: Text(
                'Animal Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimalQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Anime Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimeQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Programação Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProgramacaoQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Sair',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
                
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blueGrey,
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pergunta ${currentQuestionIndex + 1}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              geraisQuests[currentQuestionIndex]['question'],
              style: TextStyle(
                fontSize: 16.0, color: 
                Colors.white
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(geraisQuests[currentQuestionIndex]['options'].length, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 6.0),
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    child: Text(
                      geraisQuests[currentQuestionIndex]['options'][index],
                      style: TextStyle(fontSize: 16.0),
                    ),
                    onPressed: () {
                      checkAnswer(index);
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}


// Programacao

class ProgramacaoQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Programacao Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProgramacaoQuizScreen(),
    );
  }
}

class ProgramacaoQuizScreen extends StatefulWidget {
  @override
  _ProgramacaoQuizScreenState createState() => _ProgramacaoQuizScreenState();
}

class _ProgramacaoQuizScreenState extends State<ProgramacaoQuizScreen> {
  int currentQuestionIndex = 0;
  int totalScore = 0;

  List<Map<String, dynamic>> programacoesQuests = [
    {
      'question': 'Qual é a linguagem de programação mais popular?',
      'options': ['Java', 'Python', 'C++', 'JavaScript', 'C#'],
      'RespCorreta': 1,
    },
    {
      'question': 'Qual é o símbolo utilizado para representar a atribuição em muitas linguagens de programação?',
      'options': ['=', '==', '++', '--', '+='],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é o resultado da expressão 3 + 4 * 2?',
      'options': ['7', '10', '11', '14', '9'],
      'RespCorreta': 3,
    },
    {
      'question': 'O que significa a sigla HTML?',
      'options': ['HyperText Markup Language', 'Home Tool Markup Language', 'Hyperlinks and Text Markup Language', 'Hyper Transfer Markup Language', 'Highly Typed Markup Language'],
      'RespCorreta': 0,
    },
    {
      'question': 'Qual é o tipo de dado utilizado para representar números inteiros em muitas linguagens de programação?',
      'options': ['String', 'Float', 'Boolean', 'Integer', 'Double'],
      'RespCorreta': 3,
    },
    {
      'question': 'Qual é o método utilizado para imprimir uma mensagem no console em muitas linguagens de programação?',
      'options': ['print()', 'log()', 'console.log()', 'printf()', 'writeLine()'],
      'RespCorreta': 0,
    },
    {
      'question': 'O que é um loop "for"?',
      'options': ['Um tipo de dado', 'Uma função', 'Uma estrutura de controle', 'Uma biblioteca', 'Um operador'],
      'RespCorreta': 2,
    },
    {
      'question': 'Qual é o operador utilizado para concatenar strings?',
      'options': ['+', '-', '*', '/', '&'],
      'RespCorreta': 0,
    },
    {
      'question': 'O que significa a sigla CSS?',
      'options': ['Computer Style Sheets', 'Cascading Style Sheets', 'Coded Style Sheets', 'Creative Style Sheets', 'Cascaded Style Sheets'],
      'RespCorreta': 1,
    },
    {
      'question': 'Qual é o termo utilizado para definir uma coleção de elementos em muitas linguagens de programação?',
      'options': ['Array', 'List', 'Set', 'Tuple', 'Dictionary'],
      'RespCorreta': 0,
    },
  ];

  
  void checkAnswer(int selectedIndex) {
    int respCorretaIndex = programacoesQuests[currentQuestionIndex]['RespCorreta'];

    setState(() {
      if (selectedIndex == respCorretaIndex) {
        totalScore += 1;
      }

      if (currentQuestionIndex < programacoesQuests.length - 1) {
        currentQuestionIndex += 1;
      } else {
        showResultPopup();
      }
    });
  }

  void showResultPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pontuação Final'),
          content: Text('Você acertou $totalScore de ${programacoesQuests.length} perguntas.'),
          actions: [
            TextButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/');
                resetQuiz();
              },
            ),
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
                resetQuiz();
              },
            ),
          ],
        );
      },
    );
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programação Quiz'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                'Programação',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              ),
            ),
            ListTile(
              title: Text(
                'Animal Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimalQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Anime Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimeQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Conhecimentos Gerais Quiz',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeraisQuiz(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Sair',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
                
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(202, 33, 149, 243),
              Color.fromARGB(255, 0, 0, 0),
            ],
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pergunta ${currentQuestionIndex + 1}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              programacoesQuests[currentQuestionIndex]['question'],
              style: TextStyle(
                fontSize: 16.0, color: 
                Colors.white
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              children: List.generate(programacoesQuests[currentQuestionIndex]['options'].length, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 6.0),
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    child: Text(
                      programacoesQuests[currentQuestionIndex]['options'][index],
                      style: TextStyle(fontSize: 16.0),
                    ),
                    onPressed: () {
                      checkAnswer(index);
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
