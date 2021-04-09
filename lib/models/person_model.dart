class PersonModel {
  // Private attributes

  final String firstname;
  final String lastname;

  // Constructor

  PersonModel({this.firstname = '', this.lastname = ''});

  // Getters

  // String get firstname => this._firstname;
  // String get lastname => this._lastname;
  String get completedName => '${this.firstname} ${this.lastname}';

  // Setters

  // set firstname(String _firstname) => this._firstname = _firstname;
  // set lastname(String _lastname) => this._lastname = _lastname;

  // Methods

  void send(String message) => print('This message is $message');
}
