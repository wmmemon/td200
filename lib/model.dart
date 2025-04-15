class Post {
  String? name;
  String? realname;
  String? team;
  String? firstappearance;
  String? createdby;
  String? publisher;
  String? imageurl;
  String? bio;

  Post(
      {this.name,
        this.realname,
        this.team,
        this.firstappearance,
        this.createdby,
        this.publisher,
        this.imageurl,
        this.bio});

  factory Post.fromJson(Map<String, dynamic> json) {
      return Post(
          name : json['name'],
          realname : json['realname'],
          team : json['team'],
          firstappearance : json['firstappearance'],
          createdby : json['createdby'],
          publisher : json['publisher'],
          imageurl : json['imageurl'],
          bio : json['bio']
          );

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['realname'] = this.realname;
    data['team'] = this.team;
    data['firstappearance'] = this.firstappearance;
    data['createdby'] = this.createdby;
    data['publisher'] = this.publisher;
    data['imageurl'] = this.imageurl;
    data['bio'] = this.bio;
    return data;
  }
}