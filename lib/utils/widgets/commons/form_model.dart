/// FormModel
class FormModel {
  /// FormModel Constructor
  FormModel({this.key, this.value, this.others, this.misc});

  /// FormModel Key
  dynamic key;

  /// FormModel Value
  dynamic value;

  /// FormModel Others
  dynamic others;

  /// FormModel Misc
  dynamic misc;

  @override
  String toString() {
    return 'FormModel{key: $key, value: $value, others: $others, misc: $misc}';
  }
}
