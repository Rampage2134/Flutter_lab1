void main() {
  String name = "Артем";
  String? name2 = null;

  var count = 0;
  var title = "Учить Rust";

  final id = 1;

  const appName = "TodoApp";

  print(
    "$name, $name2, $count, $title, $id, $appName",
  );

  List<String> tags = ["Институт", "Дом"];
  Map<String, dynamic> data = {
    "key": "value",
    "num": 13,
  };
  Set<int> ids = {1, 2, 3};

  dynamic anything = 42;
  anything = "now a string";

  String greet(String name) => "Hello, $name!";

  void printToDo({
    required String title,
    bool done = false,
  }) {
    print("${done ? "+" : "-"} $title");
  }

  printToDo(title: "Купить молоко");
  printToDo(title: "Проверить", done: true);

  String repeat(String s, [int times = 2]) =>
      s * times;
}

class ToDo {
  final int id;
  String title;
  bool isDone;

  ToDo({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  ToDo.empty() : id = 0, title = "", isDone = false;

  @override
  String toString() => "${isDone ? "+" : "-"} [$id] $title";
}
