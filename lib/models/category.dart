// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';

class Catrgory {
  final String text;
  final String iocn;
  Catrgory({
    required this.text,
    required this.iocn,
  });
}

List<Catrgory> categoryItem = [
  Catrgory(iocn: 'assets/icons/dress.svg', text: 'Dress'),
  Catrgory(iocn: 'assets/icons/shirt.svg', text: 'shirt'),
  Catrgory(iocn: 'assets/icons/Tshirt.svg', text: 'Tshirt'),
  Catrgory(iocn: 'assets/icons/pants.svg', text: 'pants'),
];
