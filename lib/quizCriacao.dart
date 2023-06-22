
import 'package:flutter/material.dart';
import 'package:quiz/main.dart';

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
        primaryColor: Colors.blueGrey
      ),
      home: CriarQuizTela(),
    );
  }
}


class CriarQuizTela extends StatelessWidget {

  final TextEditingController _txtPergunta = TextEditingController();
  final TextEditingController _txtResposta1 = TextEditingController();
  final TextEditingController _txtResposta2 = TextEditingController();
  final TextEditingController _txtResposta3 = TextEditingController();
  final TextEditingController _txtResposta4 = TextEditingController();
  final TextEditingController _txtResposta5 = TextEditingController();
  final TextEditingController _txtRespostaCorreta = TextEditingController();

  String pergunta = '';
  String resposta1 = '';
  String resposta2 = '';
  String resposta3 = '';
  String resposta4 = '';
  String resposta5 = '';
  String respostaCerta = '';

  void enviar() {
    pergunta = _txtPergunta.text;
    resposta1 = _txtResposta1.text;
    resposta2 = _txtResposta2.text;
    resposta3 = _txtResposta3.text;
    resposta4 = _txtResposta4.text;
    resposta5 = _txtResposta5.text;
    respostaCerta = _txtRespostaCorreta.text;

    _txtPergunta.clear();
    _txtResposta1.clear();
    _txtResposta2.clear();
    _txtResposta3.clear();
    _txtResposta4.clear();
    _txtResposta5.clear();
    _txtRespostaCorreta.clear();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 0, 0, 75),
                Colors.blueGrey,
              ],
            ),
          ),
        ),
        title: const Text('Crie seu Quizz'),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 0, 0, 75),
        child: ListView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                'Crie seu quiz',
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
                Color.fromARGB(255, 41, 41, 41),
                Color.fromARGB(255, 0, 0, 0),
                ],
              ),
            ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                Container(
                  child: TextFormField(
                    controller: _txtPergunta,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      height: 1.5,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Digite a pergunta: ',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 255)
                        )
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: _txtResposta1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      height: 1.5,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Digite a 1 resposta:', 
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 255)
                        )
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),         
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: _txtResposta2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      height: 1.5,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Digite a 2 resposta: ', 
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 255)
                        )
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: _txtResposta3,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      height: 1.5,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Digite a 3 resposta: ', 
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 255)
                        )
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: _txtResposta4,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      height: 1.5,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Digite a 4 resposta: ', 
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 255)
                        )
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: _txtResposta5,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      height: 1.5,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Digite a 5 resposta: ', 
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 255)
                        )
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: _txtRespostaCorreta,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      height: 1.5,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Digite o número da resposta correta: ', 
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 255)
                        )
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
    
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      enviar();
                    }, 
                    child: const Text(
                      'Enviar',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}