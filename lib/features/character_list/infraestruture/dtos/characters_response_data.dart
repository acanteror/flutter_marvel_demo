import 'package:flutter/foundation.dart';
import 'package:flutter_marvel_demo/features/character_list/domain/models/character.dart';

class CharacterResponseData {
  final int offset;
  final int limit;
  final int total;
  final int count;
  final List<Character> results;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const CharacterResponseData({
    @required this.offset,
    @required this.limit,
    @required this.total,
    @required this.count,
    @required this.results,
  });

  CharacterResponseData copyWith({
    int offset,
    int limit,
    int total,
    int count,
    List<Character> results,
  }) {
    if ((offset == null || identical(offset, this.offset)) &&
        (limit == null || identical(limit, this.limit)) &&
        (total == null || identical(total, this.total)) &&
        (count == null || identical(count, this.count)) &&
        (results == null || identical(results, this.results))) {
      return this;
    }

    return CharacterResponseData(
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
      total: total ?? this.total,
      count: count ?? this.count,
      results: results ?? this.results,
    );
  }

  @override
  String toString() {
    return 'CharacterDataResponse{offset: $offset, limit: $limit, total: $total, count: $count, results: $results}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharacterResponseData &&
          runtimeType == other.runtimeType &&
          offset == other.offset &&
          limit == other.limit &&
          total == other.total &&
          count == other.count &&
          listEquals(other.results, results));

  @override
  int get hashCode => offset.hashCode ^ limit.hashCode ^ total.hashCode ^ count.hashCode ^ results.hashCode;

  factory CharacterResponseData.fromMap(Map<String, dynamic> map) {
    return CharacterResponseData(
      offset: map['offset'] as int,
      limit: map['limit'] as int,
      total: map['total'] as int,
      count: map['count'] as int,
      results: (map['results'] as List)
          ?.map((e) => e == null ? null : Character.fromMap(e as Map<String, dynamic>))
          ?.toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'offset': this.offset,
      'limit': this.limit,
      'total': this.total,
      'count': this.count,
      'results': this.results,
    };
  }

//</editor-fold>

}
