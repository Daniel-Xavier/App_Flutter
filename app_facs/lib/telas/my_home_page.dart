import 'package:flutter/material.dart';
import 'package:app_facs/models/profile.dart';
import 'package:app_facs/telas/main_page.dart';
import 'package:app_facs/utilities/network_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title = 'Home'}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controlador = TextEditingController();

  Feeling dados_feeling = new Feeling();

  // Função que bunsca a informacao na API
  Future fetchInfo() async {
    var requisicao = NetworkHelper(url: 'http://127.0.0.1:8000/feeling');
    dados_feeling = Feeling.fromJson(await requisicao.getData());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBar(
              backgroundColor: Color.fromARGB(255, 36, 4, 151),
              title: Text(
                "APP Facs",
                style: TextStyle(
                  color: Color.fromARGB(255, 201, 197, 197),
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
                width: 200,
                height: 200,
                child: Image.network(
                    "https://pic.onlinewebfonts.com/svg/img_573677.png")),
            SizedBox(
              height: 30.0,
            ),

            SizedBox(
              height: 45,
            ),
            //Botao que manda a battletag para a url da API e passa para a tela overwatch_page
            RaisedButton(
              color: Color.fromRGBO(38, 150, 255, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.black),
              ),
              child: Text(
                '     Iniciar     ',
                style: TextStyle(fontSize: 24),
              ),
              textColor: Color.fromARGB(255, 0, 0, 0),
              onPressed: () async {
                await fetchInfo();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainPage(
                            dadosFeeling: dados_feeling,
                          )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
