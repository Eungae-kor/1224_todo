class Todo {
  final String title;
  final String? description;
  final bool isFavorite;
  final bool isDone;

  Todo({
    required this.title,
    this.description,
    required this.isFavorite,
    this.isDone = false,
  });

  Todo copyWith({bool? isDone}) {
    return Todo(
      title: title,
      description: description,
      isFavorite: isFavorite,
      isDone: isDone ?? this.isDone,
    );
  }
}
