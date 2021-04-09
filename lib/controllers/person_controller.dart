import 'package:flutter_mvc_sample/models/person_model.dart';
import 'package:mobx/mobx.dart';
part 'person_controller.g.dart';

class PersonController = _PersonController with _$PersonController;

abstract class _PersonController with Store {
  @observable
  PersonModel _personModel = PersonModel();

  @computed
  PersonModel get person => this._personModel;

  @action
  void setPerson(PersonModel _person) => this._personModel = _person;
}
