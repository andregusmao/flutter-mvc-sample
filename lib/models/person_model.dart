class PersonModel {
  String _firstname = '';
  String _lastname = '';

  String get firstname => this._firstname;
  String get lastname => this._lastname;
  String get completedName => '${this._firstname} ${this._lastname}';

  set firstname(String _firstname) => this._firstname = _firstname;
  set lastname(String _lastname) => this._lastname = _lastname;
}
