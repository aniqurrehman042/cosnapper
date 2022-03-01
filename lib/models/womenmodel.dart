class Tag {
  int id;
  String image;
  bool liked;

  Tag(this.id, this.image,this.liked);

  factory Tag.fromJson(dynamic json) {
    return Tag(
        json['id'] as int,
        json['image'] as String,
        json['liked'] as bool);
  }

  @override
  String toString() {
    return '{ ${this.id} , ${this.image}, ${this.liked} }';
  }
}