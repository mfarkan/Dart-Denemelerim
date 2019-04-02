
class boolDart {
  bool isEmpty = false;
  bool isNumber = false;
  bool isNotEmpty = false;
  boolDart() {
    int counter = 1;
    String accessNote = 'This is America';

    this.isEmpty = accessNote.isEmpty;
    this.isNotEmpty = accessNote.isNotEmpty;
    this.isNumber = counter.isNaN;
  }
}
