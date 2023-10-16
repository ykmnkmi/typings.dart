@_i1.JS()
library typings.core.interop; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:js/js.dart' as _i1;
import 'dart:core' as _i2;
import 'lib.es2015.iterable.d.dart' as _i3;
import 'dart:js_util' as _i4;
import '/d/core.dart' as _i5;
import 'lib.es2015.collection.d.dart' as _i6;
import 'lib.es5.intl.d.dart' as _i7;
import 'lib.es2015.reflect.reflect.d.dart' as _i8;
import 'lib.dom.css.d.dart' as _i9;
import 'lib.dom.webassembly.d.dart' as _i10;

@_i1.JS('self')
external _i2.Object _self;

@_i1.JS()
@_i1.staticInterop
class Map<K, V>
    implements
        _IterableLike$<
            _i3.IterableIterator<
                (
                  K,
                  V,
                )>> {
  factory Map.$1() => _i4.callConstructor(
        _declaredMap,
        [],
      );

  factory Map.$2() => _i4.callConstructor(
        _declaredMap,
        [],
      );

  factory Map.$3(
          [_i2.List<
                  (
                    K,
                    V,
                  )>?
              entries]) =>
      _i4.callConstructor(
        _declaredMap,
        [
          entries
                  ?.map((i) => [
                        i.$1,
                        i.$2,
                      ])
                  .toList() ??
              _i5.undefined
        ],
      );

  factory Map.$4(
          [_i3.Iterable<
                  (
                    K,
                    V,
                  )>?
              iterable]) =>
      _i4.callConstructor(
        _declaredMap,
        [iterable ?? _i5.undefined],
      );
}

_i2.Object get _declaredMap => _i4.getProperty(
      _self,
      'Map',
    );

extension Map$Typings<K, V> on Map<K, V> {
  _i2.num get size => _i4.getProperty(
        this,
        'size',
      );
  void clear() {
    _i4.callMethod(
      this,
      'clear',
      [],
    );
  }

  /// @returns true if an element in the Map existed and has been removed, or false if the element does not exist.
  _i2.bool delete(K key) => _i4.callMethod(
        this,
        'delete',
        [key],
      );

  /// Executes a provided function once per each key/value pair in the Map, in insertion order.
  void forEach(
    void Function(
      V,
      K,
      _i6.Map<K, V>,
    ) callbackfn, [
    _i2.dynamic thisArg,
  ]) {
    _i4.callMethod(
      this,
      'forEach',
      [
        _i4.allowInterop(callbackfn),
        thisArg ?? _i5.undefined,
      ],
    );
  }

  /// Returns a specified element from the Map object. If the value that is associated to the provided key is an object, then you will get a reference to that object and any change made to that object will effectively modify it inside the Map.
  ///  @returns Returns the element associated with the specified key. If no element is associated with the specified key, undefined is returned.
  V? get(K key) => _i4.callMethod(
        this,
        'get',
        [key],
      );

  /// @returns boolean indicating whether an element with the specified key exists or not.
  _i2.bool has(K key) => _i4.callMethod(
        this,
        'has',
        [key],
      );

  /// Adds a new element with a specified key and value to the Map. If an element with the same key already exists, the element will be updated.
  _i6.Map<_i2.dynamic, _i2.dynamic> set(
    K key,
    V value,
  ) =>
      _i4.callMethod(
        this,
        'set',
        [
          key,
          value,
        ],
      );

  /// Returns an iterable of key, value pairs for every entry in the map.
  _i3.IterableIterator<
      (
        K,
        V,
      )> entries() => _i4.callMethod(
        this,
        'entries',
        [],
      );

  /// Returns an iterable of keys in the map
  _i3.IterableIterator<K> keys() => _i4.callMethod(
        this,
        'keys',
        [],
      );

  /// Returns an iterable of values in the map
  _i3.IterableIterator<V> values() => _i4.callMethod(
        this,
        'values',
        [],
      );
}

@_i1.JS()
@_i1.staticInterop
class MapConstructor {}

@_i1.JS()
@_i1.staticInterop
class ReadonlyMap<K, V>
    implements
        _IterableLike$<
            _i3.IterableIterator<
                (
                  K,
                  V,
                )>> {}

extension ReadonlyMap$Typings<K, V> on ReadonlyMap<K, V> {
  _i2.num get size => _i4.getProperty(
        this,
        'size',
      );
  void forEach(
    void Function(
      V,
      K,
      _i6.ReadonlyMap<K, V>,
    ) callbackfn, [
    _i2.dynamic thisArg,
  ]) {
    _i4.callMethod(
      this,
      'forEach',
      [
        _i4.allowInterop(callbackfn),
        thisArg ?? _i5.undefined,
      ],
    );
  }

  V? get(K key) => _i4.callMethod(
        this,
        'get',
        [key],
      );
  _i2.bool has(K key) => _i4.callMethod(
        this,
        'has',
        [key],
      );

  /// Returns an iterable of key, value pairs for every entry in the map.
  _i3.IterableIterator<
      (
        K,
        V,
      )> entries() => _i4.callMethod(
        this,
        'entries',
        [],
      );

  /// Returns an iterable of keys in the map
  _i3.IterableIterator<K> keys() => _i4.callMethod(
        this,
        'keys',
        [],
      );

  /// Returns an iterable of values in the map
  _i3.IterableIterator<V> values() => _i4.callMethod(
        this,
        'values',
        [],
      );
}

@_i1.JS()
@_i1.staticInterop
class WeakMap<K extends _i2.Object, V> {
  factory WeakMap.$1() => _i4.callConstructor(
        _declaredWeakMap,
        [],
      );

  factory WeakMap.$2(
          [_i2.List<
                  (
                    K,
                    V,
                  )>?
              entries]) =>
      _i4.callConstructor(
        _declaredWeakMap,
        [
          entries
                  ?.map((i) => [
                        i.$1,
                        i.$2,
                      ])
                  .toList() ??
              _i5.undefined
        ],
      );

  factory WeakMap.$3(
          _i3.Iterable<
                  (
                    K,
                    V,
                  )>
              iterable) =>
      _i4.callConstructor(
        _declaredWeakMap,
        [iterable],
      );
}

_i2.Object get _declaredWeakMap => _i4.getProperty(
      _self,
      'WeakMap',
    );

extension WeakMap$Typings<K extends _i2.Object, V> on WeakMap<K, V> {
  /// Removes the specified element from the WeakMap.
  ///  @returns true if the element was successfully removed, or false if it was not present.
  _i2.bool delete(K key) => _i4.callMethod(
        this,
        'delete',
        [key],
      );

  /// @returns a specified element.
  V? get(K key) => _i4.callMethod(
        this,
        'get',
        [key],
      );

  /// @returns a boolean indicating whether an element with the specified key exists or not.
  _i2.bool has(K key) => _i4.callMethod(
        this,
        'has',
        [key],
      );

  /// Adds a new element with a specified key and value.
  ///  @param key Must be an object.
  _i6.WeakMap<_i2.Object, _i2.dynamic> set(
    K key,
    V value,
  ) =>
      _i4.callMethod(
        this,
        'set',
        [
          key,
          value,
        ],
      );
}

@_i1.JS()
@_i1.staticInterop
class WeakMapConstructor {}

@_i1.JS()
@_i1.staticInterop
class Set<T> implements _IterableLike$<_i3.IterableIterator<T>> {
  factory Set.$1() => _i4.callConstructor(
        _declaredSet,
        [],
      );

  factory Set.$2([_i2.List<T>? values]) => _i4.callConstructor(
        _declaredSet,
        [values ?? _i5.undefined],
      );

  factory Set.$3([_i3.Iterable<T>? iterable]) => _i4.callConstructor(
        _declaredSet,
        [iterable ?? _i5.undefined],
      );
}

_i2.Object get _declaredSet => _i4.getProperty(
      _self,
      'Set',
    );

extension Set$Typings<T> on Set<T> {
  _i2.num get size => _i4.getProperty(
        this,
        'size',
      );

  /// Appends a new element with a specified value to the end of the Set.
  _i6.Set<_i2.dynamic> add(T value) => _i4.callMethod(
        this,
        'add',
        [value],
      );
  void clear() {
    _i4.callMethod(
      this,
      'clear',
      [],
    );
  }

  /// Removes a specified value from the Set.
  ///  @returns Returns true if an element in the Set existed and has been removed, or false if the element does not exist.
  _i2.bool delete(T value) => _i4.callMethod(
        this,
        'delete',
        [value],
      );

  /// Executes a provided function once per each value in the Set object, in insertion order.
  void forEach(
    void Function(
      T,
      T,
      _i6.Set<T>,
    ) callbackfn, [
    _i2.dynamic thisArg,
  ]) {
    _i4.callMethod(
      this,
      'forEach',
      [
        _i4.allowInterop(callbackfn),
        thisArg ?? _i5.undefined,
      ],
    );
  }

  /// @returns a boolean indicating whether an element with the specified value exists in the Set or not.
  _i2.bool has(T value) => _i4.callMethod(
        this,
        'has',
        [value],
      );

  /// Returns an iterable of [v,v] pairs for every value `v` in the set.
  _i3.IterableIterator<
      (
        T,
        T,
      )> entries() => _i4.callMethod(
        this,
        'entries',
        [],
      );

  /// Despite its name, returns an iterable of the values in the set.
  _i3.IterableIterator<T> keys() => _i4.callMethod(
        this,
        'keys',
        [],
      );

  /// Returns an iterable of values in the set.
  _i3.IterableIterator<T> values() => _i4.callMethod(
        this,
        'values',
        [],
      );
}

@_i1.JS()
@_i1.staticInterop
class SetConstructor {}

@_i1.JS()
@_i1.staticInterop
class ReadonlySet<T> implements _IterableLike$<_i3.IterableIterator<T>> {}

extension ReadonlySet$Typings<T> on ReadonlySet<T> {
  _i2.num get size => _i4.getProperty(
        this,
        'size',
      );
  void forEach(
    void Function(
      T,
      T,
      _i6.ReadonlySet<T>,
    ) callbackfn, [
    _i2.dynamic thisArg,
  ]) {
    _i4.callMethod(
      this,
      'forEach',
      [
        _i4.allowInterop(callbackfn),
        thisArg ?? _i5.undefined,
      ],
    );
  }

  _i2.bool has(T value) => _i4.callMethod(
        this,
        'has',
        [value],
      );

  /// Returns an iterable of [v,v] pairs for every value `v` in the set.
  _i3.IterableIterator<
      (
        T,
        T,
      )> entries() => _i4.callMethod(
        this,
        'entries',
        [],
      );

  /// Despite its name, returns an iterable of the values in the set.
  _i3.IterableIterator<T> keys() => _i4.callMethod(
        this,
        'keys',
        [],
      );

  /// Returns an iterable of values in the set.
  _i3.IterableIterator<T> values() => _i4.callMethod(
        this,
        'values',
        [],
      );
}

@_i1.JS()
@_i1.staticInterop
class WeakSet<T extends _i2.Object> {
  factory WeakSet.$1() => _i4.callConstructor(
        _declaredWeakSet,
        [],
      );

  factory WeakSet.$2([_i2.List<T>? values]) => _i4.callConstructor(
        _declaredWeakSet,
        [values ?? _i5.undefined],
      );

  factory WeakSet.$3(_i3.Iterable<T> iterable) => _i4.callConstructor(
        _declaredWeakSet,
        [iterable],
      );
}

_i2.Object get _declaredWeakSet => _i4.getProperty(
      _self,
      'WeakSet',
    );

extension WeakSet$Typings<T extends _i2.Object> on WeakSet<T> {
  /// Appends a new object to the end of the WeakSet.
  _i6.WeakSet<_i2.Object> add(T value) => _i4.callMethod(
        this,
        'add',
        [value],
      );

  /// Removes the specified element from the WeakSet.
  ///  @returns Returns true if the element existed and has been removed, or false if the element does not exist.
  _i2.bool delete(T value) => _i4.callMethod(
        this,
        'delete',
        [value],
      );

  /// @returns a boolean indicating whether an object exists in the WeakSet or not.
  _i2.bool has(T value) => _i4.callMethod(
        this,
        'has',
        [value],
      );
}

@_i1.JS()
@_i1.staticInterop
class WeakSetConstructor {}

_i6.MapConstructor get map => _i4.getProperty(
      _self,
      'Map',
    );
_i6.WeakMapConstructor get weakMap => _i4.getProperty(
      _self,
      'WeakMap',
    );
_i6.SetConstructor get set => _i4.getProperty(
      _self,
      'Set',
    );
_i6.WeakSetConstructor get weakSet => _i4.getProperty(
      _self,
      'WeakSet',
    );
_i7.$ModuleIntl get intl => _i4.getProperty(
      _self,
      'Intl',
    );
_i8.$ModuleReflect get reflect => _i4.getProperty(
      _self,
      'Reflect',
    );
_i9.$ModuleCss get css => _i4.getProperty(
      _self,
      'CSS',
    );
_i10.$ModuleWebAssembly get webAssembly => _i4.getProperty(
      _self,
      'WebAssembly',
    );

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class _IterableLike$<T> {}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
abstract class _GlobalThis {}
