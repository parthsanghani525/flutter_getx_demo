// To parse this JSON data, do
//
//     final imdbModel = imdbModelFromJson(jsonString);

import 'dart:convert';

class ImdbModel {
  ImdbModel({
    this.d,
    this.q,
    this.v,
  });

  List<D> d;
  String q;
  int v;

  factory ImdbModel.fromRawJson(String str) => ImdbModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImdbModel.fromJson(Map<String, dynamic> json) => ImdbModel(
    d: json["d"] == null ? null : List<D>.from(json["d"].map((x) => D.fromJson(x))),
    q: json["q"] == null ? null : json["q"],
    v: json["v"] == null ? null : json["v"],
  );

  Map<String, dynamic> toJson() => {
    "d": d == null ? null : List<dynamic>.from(d.map((x) => x.toJson())),
    "q": q == null ? null : q,
    "v": v == null ? null : v,
  };
}

class D {
  D({
    this.i,
    this.id,
    this.l,
    this.q,
    this.rank,
    this.s,
    this.v,
    this.vt,
    this.y,
    this.yr,
  });

  I i;
  String id;
  String l;
  String q;
  int rank;
  String s;
  List<V> v;
  int vt;
  int y;
  String yr;

  factory D.fromRawJson(String str) => D.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory D.fromJson(Map<String, dynamic> json) => D(
    i: json["i"] == null ? null : I.fromJson(json["i"]),
    id: json["id"] == null ? null : json["id"],
    l: json["l"] == null ? null : json["l"],
    q: json["q"] == null ? null : json["q"],
    rank: json["rank"] == null ? null : json["rank"],
    s: json["s"] == null ? null : json["s"],
    v: json["v"] == null ? null : List<V>.from(json["v"].map((x) => V.fromJson(x))),
    vt: json["vt"] == null ? null : json["vt"],
    y: json["y"] == null ? null : json["y"],
    yr: json["yr"] == null ? null : json["yr"],
  );

  Map<String, dynamic> toJson() => {
    "i": i == null ? null : i.toJson(),
    "id": id == null ? null : id,
    "l": l == null ? null : l,
    "q": q == null ? null : q,
    "rank": rank == null ? null : rank,
    "s": s == null ? null : s,
    "v": v == null ? null : List<dynamic>.from(v.map((x) => x.toJson())),
    "vt": vt == null ? null : vt,
    "y": y == null ? null : y,
    "yr": yr == null ? null : yr,
  };
}

class I {
  I({
    this.height,
    this.imageUrl,
    this.width,
  });

  int height;
  String imageUrl;
  int width;

  factory I.fromRawJson(String str) => I.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory I.fromJson(Map<String, dynamic> json) => I(
    height: json["height"] == null ? null : json["height"],
    imageUrl: json["imageUrl"] == null ? null : json["imageUrl"],
    width: json["width"] == null ? null : json["width"],
  );

  Map<String, dynamic> toJson() => {
    "height": height == null ? null : height,
    "imageUrl": imageUrl == null ? null : imageUrl,
    "width": width == null ? null : width,
  };
}

class V {
  V({
    this.i,
    this.id,
    this.l,
    this.s,
  });

  I i;
  String id;
  String l;
  String s;

  factory V.fromRawJson(String str) => V.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory V.fromJson(Map<String, dynamic> json) => V(
    i: json["i"] == null ? null : I.fromJson(json["i"]),
    id: json["id"] == null ? null : json["id"],
    l: json["l"] == null ? null : json["l"],
    s: json["s"] == null ? null : json["s"],
  );

  Map<String, dynamic> toJson() => {
    "i": i == null ? null : i.toJson(),
    "id": id == null ? null : id,
    "l": l == null ? null : l,
    "s": s == null ? null : s,
  };
}
