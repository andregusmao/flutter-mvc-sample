import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mvc_sample/controllers/person_controller.dart';
import 'package:flutter_mvc_sample/models/person_model.dart';

class PersonView extends StatelessWidget {
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();

  PersonController _personController = PersonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Flutter MVC Sample'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: TextField(
              controller: this._firstnameController,
              decoration: InputDecoration(
                labelText: 'nome',
              ),
              style: TextStyle(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: TextField(
              controller: this._lastnameController,
              decoration: InputDecoration(
                labelText: 'sobrenome',
              ),
              style: TextStyle(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Container(
              width: double.maxFinite,
              height: 64,
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Observer(builder: (_) {
                    return Text(
                      _personController.person.completedName,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: SizedBox(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                child: Text('Salvar'),
                onPressed: () {
                  PersonModel _personModel = PersonModel();
                  _personModel.firstname = _firstnameController.text;
                  _personModel.lastname = _lastnameController.text;
                  _personController.setPerson(_personModel);
                  _personController.setMessage('Processo concluído');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
