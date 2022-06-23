import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app_facs/models/profile.dart';
import 'package:app_facs/telas/details_page.dart';
import 'package:app_facs/utilities/network_helper.dart';

class ModelPage extends StatefulWidget {
  final Models dadosModel;

  const ModelPage({
    Key key,
    @required this.dadosModel,
  }) : super(key: key);
  _ModelPageState createState() => _ModelPageState();
}

class _ModelPageState extends State<ModelPage> {
  TextEditingController controlador;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            " Modelos ",
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
              ((widget.dadosModel.models[0]).toString()),
            )),
            SizedBox(
              height: 15,
            ),
            Container(
                child: Text(
              ((widget.dadosModel.models[1]).toString()),
            )),
            SizedBox(
              height: 15,
            ),
            Container(
                child: Text(
              ((widget.dadosModel.models[2]).toString()),
            )),
            SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
