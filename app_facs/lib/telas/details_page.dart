import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app_facs/models/profile.dart';
import 'package:app_facs/telas/details_page.dart';
import 'package:app_facs/telas/model_page.dart';
import 'package:app_facs/utilities/network_helper.dart';

class DetailsPage extends StatefulWidget {
  final Feeling dadosFeeling;
  final Feeling_details dadosDetails;

  const DetailsPage(
      {Key key, @required this.dadosFeeling, @required this.dadosDetails})
      : super(key: key);
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  TextEditingController controlador;

  //  Future fetchDetails() async {
  //   var requisicaoDetails =
  //       NetworkHelper(url: 'http://127.0.0.1:8000/feeling/details');
  //   dados_models = Feeling_details.fromJson(await requisicaoDetails.getData());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            " Detalhes ",
          ),
          backgroundColor: Color.fromARGB(255, 36, 4, 151),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Container(
              child: Text(
                  "Sentimento: " + ((widget.dadosDetails.feeling)).toString()),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text("Aciton Units: " +
                  ((widget.dadosDetails.action_units)).toString()),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                  "Modelo: " + ((widget.dadosDetails.model_used)).toString()),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                  "accuracy: " + ((widget.dadosDetails.accuracy)).toString()),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text("avg_predict_time: " +
                  ((widget.dadosDetails.avg_predict_time)).toString()),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
