



class PageBloc {
   String id;
   String title;
   List components;

  PageBloc({ this.id, this.title, this.components});

  factory PageBloc.fromJson(Map<String, dynamic> json) {
    return PageBloc(
      id: json['name'],
      title: json['fields']['title'],
      components: json['fields']['components']['arrayValue']['values'],
    );
  }
}