// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PersonController on _PersonController, Store {
  Computed<PersonModel>? _$personComputed;

  @override
  PersonModel get person =>
      (_$personComputed ??= Computed<PersonModel>(() => super.person,
              name: '_PersonController.person'))
          .value;

  final _$_personModelAtom = Atom(name: '_PersonController._personModel');

  @override
  PersonModel get _personModel {
    _$_personModelAtom.reportRead();
    return super._personModel;
  }

  @override
  set _personModel(PersonModel value) {
    _$_personModelAtom.reportWrite(value, super._personModel, () {
      super._personModel = value;
    });
  }

  final _$_PersonControllerActionController =
      ActionController(name: '_PersonController');

  @override
  void setPerson(PersonModel _person) {
    final _$actionInfo = _$_PersonControllerActionController.startAction(
        name: '_PersonController.setPerson');
    try {
      return super.setPerson(_person);
    } finally {
      _$_PersonControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMessage(String _message) {
    final _$actionInfo = _$_PersonControllerActionController.startAction(
        name: '_PersonController.setMessage');
    try {
      return super.setMessage(_message);
    } finally {
      _$_PersonControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
person: ${person}
    ''';
  }
}
