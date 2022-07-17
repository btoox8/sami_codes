import 'package:flutter/foundation.dart';
// place carry data from {list,DB,JSON,API,..}

// we make odinary class
class Item {
  // prperties, with empty values
  final String sound;
  final String? image; // optional use [?] after datatype
  final String jpName;
  final String enName;
  // constructor
  // we add to its start [required, @required == optional]
  const Item(
      {required this.sound,
      @required
          this.image, // when make it not required we can use it with phrase which didn't have image
      required this.jpName,
      required this.enName});
}
