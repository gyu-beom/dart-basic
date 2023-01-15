# Dart - Basic

## [var] vs [dynamic]

1. var : 정적 타입
2. dynamic : 동적 타입

- Flutter에서는 type을 지정해서 쓰임.

- var를 동적으로 사용하는 방법. (많이 쓰이는 방법은 아님.)

```dart
void main() {
    var name;
    print(name); // null

    name = 'devops-gyubeom'
    print(name); // devops-gyubeom

    name = 1
    print(name) // 1
}
```

---

## List

- type을 지정해서 선언하는 것이 좋음.

1. Growable List : 리스트의 사이즈가 자유롭게 늘어나거나 줄어들 수 있는 리스트.

```dart
void main() {
    List growableList1 = [];
    List<String> growableList2 = [];
}
```

2. Fixed Length List : 선언할 때 길이가 정해져서 추가적으로 길이를 늘이거나 줄일 수 없는 리스트.

- 이미 길이를 정해놓은 상태이기 때문에 인덱스의 값을 제거하거나 추가할 수 없음.

```dart
void main() {
    List<String> fixedList = List.filled(3, "hello");
}
```

---

## Map

- type을 지정해서 선언하는 것이 좋음.

```dart
void main() {
    Map<String, int> person = {
        'kim': 20,
        'lee': 10,
    };
}
```

---

## [Final] vs [Const]

- 값 불변이라는 개념은 같음.
- final을 많이 사용함.
- const의 경우 위젯에 붙이긴 하나 필수는 아님.

1. Final : 런타임 단계에서 값이 지정되어도 상관 없음.

2. Const : 컴파일 단계에서 값이 지정되어 있어야 함.

---

## Operator

1. ??= : Null Saftey로 인해서 data type에 ?를 붙여줘야 동작함.

```dart
void main() {
    int? number;
    number ??= 20;
    print(number);
}
```

2. /= : 나눗셈 연산은 결과값을 double로 저장히기 때문에 변수를 int로 선언한 경우 해당 연산자는 사용하지 못함.

3. is, is! : data type 비교.

```dart
void main() {
    int number = 1;
    print(number is int); // true
    print(number is! String); // true
}
```

---

## If, Switch

- 조건은 if가 더 많이 사용할 수 있고, switch는 한 가지의 조건만 사용할 수 있음.

- 속도는 switch가 더 빠름.

---

## For, While, Do While

1. For : 2가지의 방식이 있음.

- in의 방식 경우 간결하지만 index를 정확하게 산출하기 어려움.

```dart
// 1. basic
void main() {
    List<int> numbers = [
        1,
        2,
        3,
        4,
        5,
    ];

    int total = 0;

    for (int i = 0; i < numbers.length; i++) {
        total += numbers[i];
    }

    print(total);
}
```

```dart
// 2. in
void main() {
    List<int> numbers = [
        1,
        2,
        3,
        4,
        5,
    ];

    int total = 0;

    for (int number in numbers) {
        total += number;
    }

    print(total);
}
```

2. [while] vs [do while]

- while : 조건문부터 따짐.

- do while : 무조건 1번은 실행하고 조건문을 따짐.

---

## Enum

- 한정된 옵션을 굉장히 효율적으로 사용할 수 있음.
- 오타가 발생할 확률도 줄어드는 효과.

```dart
enum LastName {
    Kim,
    Lee,
    Park,
}

void main() {
    LastName lastName = LastName.Kim;

    if (lastName == LastName.Kim) {
        print('Your last name is kim');
    } else if (lastName == LastName.Lee) {
        print('Your last name is lee');
    } else {
        print('Your last name is park');
    }
}
```

---

## Function

1. optional parameter

- [data_type? parameter_name]
- [data_type parameter_name = parameter_value]

- parameter는 값이 있어도 되고 없어도 됨.

```dart
// 다음 예제와 같이 ??= 식을 사용해서 표현 가능.
int addList(List testList, int a, [int? b]) {
    print('b : $b'); // b : null
    b ??= 3;
    ...
}
```

```dart
// 다음 예제와 같이 미리 값을 선언하여 표현 가능.
int addList(List testList, int a, [int b = 3]) {
    print('b : $b'); // b : 3
    ...
}
```

2. named parameter : {data_type? parameter_value}

- parameter 위치와 상관 없이 직접 parameter 이름 지정을 통해 선언 및 호출 가능.

```dart
int addList({List? testList, int? a}) {
    testList ??= [1, 2, 3, 4, 5];
    a ??= 3;
    ...
}

void main() {
    List testList = [1, 1, 2, 3, 5, 8];
    addList(testList: testList, a: 1);
}
```

---

## Typedef

- 함수와 굉장히 밀접한 관계가 있음.
- 함수를 미리 시그니처화 해서 여러가지 함수를 유용하게 다룰 수 있음.

- body 부분에 아무것도 적지 않음. (기재하는 란이 없음.)
