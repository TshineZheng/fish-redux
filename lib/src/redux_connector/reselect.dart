import 'mutable.dart';

bool _listEquals<E>(List<E> list1, List<E> list2) {
  if (identical(list1, list2)) {
    return true;
  }
  if (list1 == null || list2 == null) {
    return false;
  }
  final int length = list1.length;
  if (length != list2.length) {
    return false;
  }
  for (int i = 0; i < length; i++) {
    if (list1[i] != list2[i]) {
      return false;
    }
  }
  return true;
}

abstract class _BasicReselect<T, P> extends MutableConn<T, P> {
  List<dynamic> _subsCache;
  P _pCache;

  List<dynamic> getSubs(T state);

  P reduceSubs(List<dynamic> list);

  @override
  P get(T state) {
    final List<dynamic> subs = getSubs(state);
    if (!_listEquals<dynamic>(subs, _subsCache)) {
      _subsCache = subs;
      return _pCache = reduceSubs(_subsCache);
    }
    return _pCache;
  }
}

abstract class Reselect1<T, P, K0> extends _BasicReselect<T, P> {
  K0 getSub0(T state);
  P cumputed(K0 state);

  @override
  List<dynamic> getSubs(T state) => <dynamic>[getSub0(state)];

  @override
  P reduceSubs(List<dynamic> list) => Function.apply(cumputed, list);
}

abstract class Reselect2<T, P, K0, K1> extends _BasicReselect<T, P> {
  K0 getSub0(T state);
  K1 getSub1(T state);
  P cumputed(K0 sub0, K1 sub1);

  @override
  List<dynamic> getSubs(T state) => <dynamic>[getSub0(state), getSub1(state)];

  @override
  P reduceSubs(List<dynamic> list) => Function.apply(cumputed, list);
}

abstract class Reselect3<T, P, K0, K1, K2> extends _BasicReselect<T, P> {
  K0 getSub0(T state);
  K1 getSub1(T state);
  K2 getSub2(T state);
  P cumputed(K0 sub0, K1 sub1, K2 sub2);

  @override
  List<dynamic> getSubs(T state) => <dynamic>[
        getSub0(state),
        getSub1(state),
        getSub2(state),
      ];

  @override
  P reduceSubs(List<dynamic> list) => Function.apply(cumputed, list);
}

abstract class Reselect4<T, P, K0, K1, K2, K3> extends _BasicReselect<T, P> {
  K0 getSub0(T state);
  K1 getSub1(T state);
  K2 getSub2(T state);
  K3 getSub3(T state);
  P cumputed(K0 sub0, K1 sub1, K2 sub2, K3 sub3);

  @override
  List<dynamic> getSubs(T state) => <dynamic>[
        getSub0(state),
        getSub1(state),
        getSub2(state),
        getSub3(state),
      ];

  @override
  P reduceSubs(List<dynamic> list) => Function.apply(cumputed, list);
}

abstract class Reselect5<T, P, K0, K1, K2, K3, K4>
    extends _BasicReselect<T, P> {
  K0 getSub0(T state);
  K1 getSub1(T state);
  K2 getSub2(T state);
  K3 getSub3(T state);
  K4 getSub4(T state);
  P cumputed(K0 sub0, K1 sub1, K2 sub2, K3 sub3, K4 sub4);

  @override
  List<dynamic> getSubs(T state) => <dynamic>[
        getSub0(state),
        getSub1(state),
        getSub2(state),
        getSub3(state),
        getSub4(state),
      ];

  @override
  P reduceSubs(List<dynamic> list) => Function.apply(cumputed, list);
}

abstract class Reselect6<T, P, K0, K1, K2, K3, K4, K5>
    extends _BasicReselect<T, P> {
  K0 getSub0(T state);
  K1 getSub1(T state);
  K2 getSub2(T state);
  K3 getSub3(T state);
  K4 getSub4(T state);
  K5 getSub5(T state);
  P cumputed(K0 sub0, K1 sub1, K2 sub2, K3 sub3, K4 sub4, K5 sub5);

  @override
  List<dynamic> getSubs(T state) => <dynamic>[
        getSub0(state),
        getSub1(state),
        getSub2(state),
        getSub3(state),
        getSub4(state),
        getSub5(state),
      ];

  @override
  P reduceSubs(List<dynamic> list) => Function.apply(cumputed, list);
}

abstract class Reselect<T, P> extends _BasicReselect<T, P> {
  P cumputed(List<dynamic> list);

  @override
  P reduceSubs(List<dynamic> list) => Function.apply(cumputed, list);
}
