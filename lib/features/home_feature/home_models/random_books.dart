/// author : {"first_name":"Emily","last_name":"Bronte"}
/// _id : "652bb854ae3079c307c4e649"
/// book_id : 9
/// title : "The Complete Poems of Emily Bronte"
/// pages : 80
/// genres : ["Poetry","Classics","Victorian","Fiction","English Literature"]
/// rating : 4.17
/// plot : "The Complete Poems Of Emily Bronte is a collection of all the poems written by the famous English novelist and poet, Emily Bronte. Published in 1908, this book features a comprehensive collection of her poetic works, including both published and unpublished poems. Emily Bronte is known for her powerful and evocative writing style, and her poetry is no exception. Her works explore themes of nature, love, death, and the human experience, and are marked by their emotional intensity and vivid imagery. The poems included in this collection offer a glimpse into the mind of one of the greatest literary figures of the 19th century, and showcase the breadth and depth of her poetic talent. As a result, The Complete Poems Of Emily Bronte is a must-read for anyone interested in English literature, poetry, or the works of Emily Bronte."
/// reviews : {"name":"Lucy","body":"If I could rate this one billion stars, I would. These poems are incredibly precious to me - they've been with me throughout the bad times and the good, ever-present in my life.There's not a lot I wouldn't do to somehow turn back time and rescue the rest of the Gondal work."}
/// cover : "https://cdn2.penguin.com.au/covers/400/9780141966762.jpg"
/// url : "https://www.amazon.in/Complete-Poems-Penguin-Classics/dp/0140423524/ref=sr_1_1?crid=1ESDY0GQ6NQAF&keywords=The+Complete+Poems+Emily+Bront%C3%AB&qid=1697358155&sprefix=the+complete+poems+emily+bront%C3%AB%2Caps%2C198&sr=8-1"

class RandomBooks {
  RandomBooks({
      this.author, 
      this.id, 
      this.bookId, 
      this.title, 
      this.pages, 
      this.genres, 
      this.rating, 
      this.plot, 
      this.reviews, 
      this.cover, 
      this.url,});

  RandomBooks.fromJson(dynamic json) {
    author = json['author'] != null ? Author.fromJson(json['author']) : null;
    id = json['_id'];
    bookId = json['book_id'];
    title = json['title'];
    pages = json['pages'];
    genres = json['genres'] != null ? json['genres'].cast<String>() : [];
    rating = json['rating'];
    plot = json['plot'];
    reviews = json['reviews'] != null ? Reviews.fromJson(json['reviews']) : null;
    cover = json['cover'];
    url = json['url'];
  }
  Author? author;
  String? id;
  num? bookId;
  String? title;
  num? pages;
  List<String>? genres;
  num? rating;
  String? plot;
  Reviews? reviews;
  String? cover;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (author != null) {
      map['author'] = author?.toJson();
    }
    map['_id'] = id;
    map['book_id'] = bookId;
    map['title'] = title;
    map['pages'] = pages;
    map['genres'] = genres;
    map['rating'] = rating;
    map['plot'] = plot;
    if (reviews != null) {
      map['reviews'] = reviews?.toJson();
    }
    map['cover'] = cover;
    map['url'] = url;
    return map;
  }

}

/// name : "Lucy"
/// body : "If I could rate this one billion stars, I would. These poems are incredibly precious to me - they've been with me throughout the bad times and the good, ever-present in my life.There's not a lot I wouldn't do to somehow turn back time and rescue the rest of the Gondal work."

class Reviews {
  Reviews({
      this.name, 
      this.body,});

  Reviews.fromJson(dynamic json) {
    name = json['name'];
    body = json['body'];
  }
  String? name;
  String? body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['body'] = body;
    return map;
  }

}

/// first_name : "Emily"
/// last_name : "Bronte"

class Author {
  Author({
      this.firstName, 
      this.lastName,});

  Author.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
  }
  String? firstName;
  String? lastName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    return map;
  }

}