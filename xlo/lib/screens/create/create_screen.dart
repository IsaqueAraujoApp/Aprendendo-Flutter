import 'package:flutter/material.dart';
import 'package:xlo/common/custom_drawer/custom_drawer.dart';
import 'package:xlo/screens/create/widgets/images_field.dart';

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Inseir Anúncio"),
      ),
      drawer: CustomDrawer(),
      body: Form(key: _formkey, child: ListView(
        children: <Widget>[
          ImagesField(),
        ],
      ),),
    );
  }
}
