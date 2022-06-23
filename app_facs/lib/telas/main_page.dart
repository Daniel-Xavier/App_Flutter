import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app_facs/models/profile.dart';
import 'package:app_facs/telas/details_page.dart';
import 'package:app_facs/telas/model_page.dart';
import 'package:app_facs/utilities/network_helper.dart';

class MainPage extends StatefulWidget {
  final Feeling dadosFeeling;
  final Feeling_details dadosDetails;
  final Models dadosModel;

  const MainPage({
    Key key,
    @required this.dadosFeeling,
    @required this.dadosDetails,
    @required this.dadosModel,
  }) : super(key: key);
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController controlador;

  Feeling_details dados_details = new Feeling_details();
  Models dados_model = new Models();

  // Função que bunsca a informacao na API
  Future fetchModels() async {
    var requisicaoModels = NetworkHelper(url: 'http://127.0.0.1:8000/models');
    dados_model = Models.fromJson(await requisicaoModels.getData());
  }

  // Função que bunsca a informacao na API
  Future fetchDetails() async {
    var requisicaoDetails =
        NetworkHelper(url: 'http://127.0.0.1:8000/feeling/details');
    dados_details = Feeling_details.fromJson(await requisicaoDetails.getData());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        AppBar(
          title: Text(
            " Resultados ",
          ),
          backgroundColor: Color.fromARGB(255, 36, 4, 151),
        ),
        SizedBox(
            width: 200,
            height: 200,
            child: Image.asset(
                "/home/daniel/github/App_flutter/app_facs/images/smile.png")),
        Container(
          child:
              Text("Expressão: " + ((widget.dadosFeeling.feeling)).toString()),
        ),
        SizedBox(
          height: 15,
        ),
        RaisedButton(
          color: Color.fromRGBO(38, 150, 255, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.black),
          ),
          child: Text(
            '     Detalhes    ',
            style: TextStyle(fontSize: 24),
          ),
          textColor: Color.fromARGB(255, 0, 0, 0),
          onPressed: () async {
            await fetchDetails();
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsPage(
                        dadosDetails: dados_details,
                      )),
            );
          },
        ),
        SizedBox(
          height: 15,
        ),
        RaisedButton(
          color: Color.fromRGBO(38, 150, 255, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.black),
          ),
          child: Text(
            '     Modelos    ',
            style: TextStyle(fontSize: 24),
          ),
          textColor: Color.fromARGB(255, 0, 0, 0),
          onPressed: () async {
            await fetchModels();
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ModelPage(
                        dadosModel: dados_model,
                      )),
            );
          },
        ),
      ],
    )));
  }
}
