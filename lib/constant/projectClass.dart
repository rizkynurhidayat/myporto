class Project {
  String title;
  String description;
  String fotos;
  String sourceCodeLink;
  String figmaLink;
  Map<String, dynamic> authors;

  Project(
      {required this.title,
      required this.fotos,
      required this.description,
      required this.sourceCodeLink,
      required this.figmaLink,
      required this.authors
      
      });
}
