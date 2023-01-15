# NomadCoders

## 0. JIT, AOT

- JIT (Just-In-Time) : 즉각적으로 변경된 것을 확인할 수 있음. (개발 중에 사용.)
- AOT (Ahead-Of-Time) : 컴파일을 먼저 하고, 그 결과를 OS에 맞게 바이너리에 배포. (배포에 사용.)

---

## 1. Variables

- var : 함수, 메서드 내부에 지역 변수를 선언하는 경우.
- type : class에서 변수, property를 선언하는 경우.
- dynamic : 여러 타입을 가질 수 있는 타입. (위험 방지를 위해 정말 필요할 때만 사용.)
- null safety : null 값을 참조할 수 없도록 함.
  - nullable로 만들고 싶으면 data type에 ?를 붙이면 됨.
- final : run-time에 알고 있어도 되는 값. (javascript, typescript의 const와 비슷.)
- late : 변수의 값을 나중에 할당해도 됨. (단, 할당하기 전까지 접근 불가.)
- const : compile-time에 알고 있어야 하는 값. (javascript, typescript의 const와 다름.)

---

## 2. Data Types

- 모든 data type은 object, class로 이루어져 있음. (특히, int, double 등은 num의 자식임.)
- number 는 int, double 둘 다 받음. (깔끔한 정수를 받고 싶으면 int 로 정확하게 명시해주는 것이 좋음.)
- VScode 혹은 DartPad를 사용하면 list 생성 시, 맨 끝을 ,로 끝내주면 보기 편한 formating이 지원됨.
- collection if, collection for : list 자체 내에서 if, for문 사용 가능.
- string interpolation : string에서 변수를 사용하고 싶다면 \$붙이기, 계산을 하고 싶다면 \${}으로 감싸기.
- map의 key는 복잡하게 설정 가능.
- set은 모든 value가 unique해야 함. (list와의 차이점.)

---

## 3. Functions

- 한 줄 함수이면 => 를 이용해서 간결하게 표현할 수 있음. (return, {} 생략해야함.)
- parameter 의 2가지 종류.
  - 1. positional parameter.
  - 2. named parameter.
- positional parameter : parameter 의 순서가 중요.
- named parameter 의 표시 방법 2가지.
  - 1. `data_type? parameter`
  - 2. `required data_type parameter`
- optional positional parameter : `[data_type? parameter = 'default_value']`
- ?? (qq, question, question) : `[left] ?? [right]` left 가 null 이면 right 를 return 함.
- ??= (qq equals, qq assignment)
- typedef 은 좀 더 간단한 데이터의 alias 를 만들 때 사용.

---

## 4. Classes

- class 를 생성할 때, type 을 꼭 명시해주어야 함.
- class 의 property 를 수정하지 못하게 하려면 `final` 을 붙여주면 됨.
- dart 의 class 에서는 `this` 사용하지 않는 것이 권고 사항임.
- constructor method 의 이름은 반드시 class 의 이름과 동일해야 함.
- `late` 는 class 의 constructor method 에서 유용함.
- class 의 property 를 final 과 같은 키워드를 사용하고 constructor method 를 사용하고 싶으면 this 키워드를 positional argument 로 사용.
- named constructor parameter 에서 에러를 없애려면 `required this.property` 이러한 방식으로 기재하면 됨.
- named constructor 의 경우, `:` 을 이용하여 class 의 모든 property 들을 초기화 해주어야 함. (parameter 는 required 를 해줘야 에러 발생 X.)
- cascade operator : `..property`, `..method` 를 사용하면 그대로 출력.
- enum : 개발자의 실수를 줄여주는데 큰 역할을 함. (flutter 에서 class, enum 을 많이 사용하게 될 것임.)
- abstract class : 다른 클래스들이 직접 구현해야 하는 메소드들을 모아 놓은 일종의 청사진. (객체를 생성할 수 없음.)
- abstract class : 상속 받는 모든 클래스가 가지고 있어야 하는 메소드를 정의하고 있음. (상속 받는 클래스에서는 메소드를 상세 정의해주어야 함.)
- inheritance : `: super()` 를 통해서 부모 클래스로부터 상속을 받을 수 있음.
  - extends : 확장한 클래스는 부모 클래스가 되며, 자식 클래스는 부모 클래스를 super를 통해서 접근하고, 그 순간 부모 클래스의 인스턴스가 됨.
- mixin : constructor 가 없는 class 를 의미함. (inheritance : extends, mixin : with)
  - with : mixin 내부의 property 와 method 들을 가져오는 것 뿐임. (훔쳐오는 것이라고 보면 됨.)

---
