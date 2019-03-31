
/// Jenkins hash function, optimized for small integers.
///
/// Borrowed from the dart sdk: sdk/lib/math/jenkins_smi_hash.dart.
int _hash(Iterable<int> values) {
  int hash = 0;

  /// combine
  for (int value in values) {
    hash = 0x1fffffff & (hash + value);
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    hash = hash ^ (hash >> 6);
  }

  /// finish
  hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
  hash = hash ^ (hash >> 11);
  return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
}


/// Represents a 1-tuple
/// todo 变量final会好些？构造参数可选的考虑是？
class Tuple1<T0> {
  T0 i0;

  Tuple1([this.i0]);

  @override
  String toString() => '[$i0]';

  @override
  bool operator ==(Object other) => other is Tuple1 && other.i0 == i0;

  @override
  int get hashCode => _hash(<int>[i0.hashCode]);
}

/// Represents a 2-tuple or pair.
class Tuple2<T0, T1> {
  /// First item of the tuple
  T0 i0;

  /// Second item of the tuple
  T1 i1;

  /// Create a new tuple value with the specified items.
  Tuple2([this.i0, this.i1]);

  @override
  String toString() => '[$i0, $i1]';

  @override
  bool operator ==(Object other) =>
      other is Tuple2 && other.i0 == i0 && other.i1 == i1;

  @override
  int get hashCode => _hash(<int>[i0.hashCode, i1.hashCode]);
}

/// Represents a 3-tuple or pair.
class Tuple3<T0, T1, T2> {
  T0 i0;
  T1 i1;
  T2 i2;

  Tuple3([this.i0, this.i1, this.i2]);

  @override
  String toString() => '[$i0, $i1, $i2]';

  @override
  bool operator ==(Object other) =>
      other is Tuple3 && other.i0 == i0 && other.i1 == i1 && other.i2 == i2;

  @override
  int get hashCode => _hash(<int>[i0.hashCode, i1.hashCode, i2.hashCode]);
}

/// Represents a 4-tuple or pair.
class Tuple4<T0, T1, T2, T3> {
  T0 i0;
  T1 i1;
  T2 i2;
  T3 i3;

  Tuple4([this.i0, this.i1, this.i2, this.i3]);

  @override
  String toString() => '[$i0, $i1, $i2, $i3]';

  @override
  bool operator ==(Object other) =>
      other is Tuple4 &&
      other.i0 == i0 &&
      other.i1 == i1 &&
      other.i2 == i2 &&
      other.i3 == i3;

  @override
  int get hashCode =>
      _hash(<int>[i0.hashCode, i1.hashCode, i2.hashCode, i3.hashCode]);
}

/// Represents a 5-tuple or pair.
class Tuple5<T0, T1, T2, T3, T4> {
  T0 i0;
  T1 i1;
  T2 i2;
  T3 i3;
  T4 i4;

  Tuple5([this.i0, this.i1, this.i2, this.i3, this.i4]);

  @override
  String toString() => '[$i0, $i1, $i2, $i3, $i4]';

  @override
  bool operator ==(Object other) =>
      other is Tuple5 &&
      other.i0 == i0 &&
      other.i1 == i1 &&
      other.i2 == i2 &&
      other.i3 == i3 &&
      other.i4 == i4;

  @override
  int get hashCode => _hash(
      <int>[i0.hashCode, i1.hashCode, i2.hashCode, i3.hashCode, i4.hashCode]);
}

/// Represents a 6-tuple or pair.
class Tuple6<T0, T1, T2, T3, T4, T5> {
  T0 i0;
  T1 i1;
  T2 i2;
  T3 i3;
  T4 i4;
  T5 i5;

  Tuple6([this.i0, this.i1, this.i2, this.i3, this.i4, this.i5]);

  @override
  String toString() => '[$i0, $i1, $i2, $i3, $i4, $i5]';

  @override
  bool operator ==(Object other) =>
      other is Tuple6 &&
      other.i0 == i0 &&
      other.i1 == i1 &&
      other.i2 == i2 &&
      other.i3 == i3 &&
      other.i4 == i4 &&
      other.i5 == i5;

  @override
  int get hashCode => _hash(<int>[
        i0.hashCode,
        i1.hashCode,
        i2.hashCode,
        i3.hashCode,
        i4.hashCode,
        i5.hashCode
      ]);
}
