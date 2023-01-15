void main() {
  // List Basic
  List familyList = [];

  print(familyList);

  familyList.add('Dad');
  familyList.add('Mom');
  familyList.add('Sis');

  print('--------------------');
  print(familyList);

  print('--------------------');
  print(familyList[0]);
  print(familyList[1]);
  print(familyList[2]);

  print('--------------------');
  familyList.removeAt(2);
  print(familyList);

  print('--------------------');
  familyList[1] = 'Me';
  print(familyList);

  print('====================');
  // List Type
  List<String> typeList = [];

  typeList.add('Cup');

  print(typeList);

  print('====================');
  // Fixed Length List
  List<String> fixList = List.filled(3, "hi");
  print(fixList);

  fixList[0] = 'Dad';
  fixList[1] = 'Mom';
  fixList[2] = 'Sis';

  print(fixList);

  print('====================');
  List alreadyValueList1 = [
    'Dad',
    'Mom',
    'Sis',
  ];

  print(alreadyValueList1);

  List alreadyValueList2 = new List.from([
    'Dad',
    'Mom',
    'Sis',
  ]);

  print(alreadyValueList2);

  print(alreadyValueList1.length);
  print(alreadyValueList2.length);
}
