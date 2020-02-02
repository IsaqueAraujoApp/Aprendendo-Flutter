import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map _gifData;
  //Construtor que recebe dados da home_page. Na verdade, recebe o endereço da imagem
  GifPage(this._gifData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              //Foram para compartilhar o link do gif
              Share.share(_gifData["images"]["fixed_height"]["url"]);
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        //Faz "download" da imagem e mostra no widget
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
