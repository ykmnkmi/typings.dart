@_i1.JS()
library typings.typescript.interop.web_assembly; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:js/js.dart' as _i1;
import 'dart:core' as _i2;
import 'lib.dom.webassembly.d.dart' as _i3;
import 'lib.es5.d.dart' as _i4;
import 'dart:js_util' as _i5;
import 'dart:typed_data' as _i6;
import '/d/core.dart' as _i7;
import 'lib.dom.d.dart' as _i8;

@_i1.JS('WebAssembly')
external _i2.Object _self;

enum ImportExportKindOptions {
  function(r'function'),
  global(r'global'),
  memory(r'memory'),
  table(r'table');

  const ImportExportKindOptions(this.value);

  final _i2.String value;
}

enum TableKindOptions {
  anyfunc(r'anyfunc'),
  externref(r'externref');

  const TableKindOptions(this.value);

  final _i2.String value;
}

typedef ImportExportKind = _i3.ImportExportKindOptions;
typedef TableKind = _i3.TableKindOptions;
typedef ExportValue = _i2.Object;
typedef Exports = _i4.Record<_i2.String, _i3.ExportValue>;
typedef ImportValue = _i2.Object;
typedef Imports = _i4.Record<_i2.String, _i3.ModuleImports>;
typedef ModuleImports = _i4.Record<_i2.String, _i3.ImportValue>;
typedef ValueType = _i3.ValueTypeMapKeys;

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class CompileError implements _i4.Error {
  external factory CompileError._({
    _i2.dynamic name,
    _i2.dynamic message,
    _i2.dynamic stack,
    _i2.dynamic cause,
  });

  factory CompileError({
    _i2.String? name,
    _i2.String? message,
    _i2.String? stack,
    _i2.Object? cause,
  }) =>
      CompileError._(
        name: name,
        message: message,
        stack: stack,
        cause: cause,
      );
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Global)
@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class Global<T extends _i3.ValueType> {
  external factory Global._({
    _i2.dynamic value,
    _i2.dynamic valueOf,
  });

  factory Global({
    _i2.dynamic value,
    _i2.dynamic Function()? valueOf,
  }) =>
      Global._(
        value: value,
        valueOf: valueOf == null ? null : _i5.allowInterop(valueOf),
      );
}

extension Global$Typings<T extends _i3.ValueType> on Global<T> {
  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Global/value)
  _i2.dynamic get value => _i5.getProperty(
        this,
        'value',
      );
  set value(_i2.dynamic value) {
    _i5.setProperty(
      this,
      'value',
      value,
    );
  }

  set valueOf(_i2.dynamic Function() value) {
    _i5.setProperty(
      this,
      'valueOf',
      _i5.allowInterop(value),
    );
  }

  _i2.dynamic Function() get valueOf => _i5.getProperty(
        this,
        'valueOf',
      );
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Instance)
@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class Instance {
  external factory Instance._({_i2.dynamic exports});

  factory Instance({_i3.Exports? exports}) => Instance._(exports: exports);
}

extension Instance$Typings on Instance {
  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Instance/exports)
  _i3.Exports get exports => _i5.getProperty(
        this,
        'exports',
      );
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class LinkError implements _i4.Error {
  external factory LinkError._({
    _i2.dynamic name,
    _i2.dynamic message,
    _i2.dynamic stack,
    _i2.dynamic cause,
  });

  factory LinkError({
    _i2.String? name,
    _i2.String? message,
    _i2.String? stack,
    _i2.Object? cause,
  }) =>
      LinkError._(
        name: name,
        message: message,
        stack: stack,
        cause: cause,
      );
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory)
@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class Memory {
  external factory Memory._({
    _i2.dynamic buffer,
    _i2.dynamic grow,
  });

  factory Memory({
    _i6.ByteBuffer? buffer,
    _i2.num Function(_i2.num)? grow,
  }) =>
      Memory._(
        buffer: buffer,
        grow: grow == null ? null : _i5.allowInterop(grow),
      );
}

extension Memory$Typings on Memory {
  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory/buffer)
  _i6.ByteBuffer get buffer => _i5.getProperty(
        this,
        'buffer',
      );
  set grow(_i2.num Function(_i2.num) value) {
    _i5.setProperty(
      this,
      'grow',
      _i5.allowInterop(value),
    );
  }

  _i2.num Function(_i2.num) get grow => _i5.getProperty(
        this,
        'grow',
      );
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Module)
@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class Module {
  external factory Module._();

  factory Module() => Module._();
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class RuntimeError implements _i4.Error {
  external factory RuntimeError._({
    _i2.dynamic name,
    _i2.dynamic message,
    _i2.dynamic stack,
    _i2.dynamic cause,
  });

  factory RuntimeError({
    _i2.String? name,
    _i2.String? message,
    _i2.String? stack,
    _i2.Object? cause,
  }) =>
      RuntimeError._(
        name: name,
        message: message,
        stack: stack,
        cause: cause,
      );
}

/// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Table)
@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class Table {
  external factory Table._({
    _i2.dynamic length,
    _i2.dynamic get,
    _i2.dynamic grow,
    _i2.dynamic set,
  });

  factory Table({
    _i2.num? length,
    _i2.dynamic Function(_i2.num)? get,
    _i2.num Function(
      _i2.num, [
      _i2.dynamic,
    ])? grow,
    void Function(
      _i2.num, [
      _i2.dynamic,
    ])? set,
  }) =>
      Table._(
        length: length,
        get: get == null ? null : _i5.allowInterop(get),
        grow: grow == null ? null : _i5.allowInterop(grow),
        set: set == null ? null : _i5.allowInterop(set),
      );
}

extension Table$Typings on Table {
  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Table/length)
  _i2.num get length => _i5.getProperty(
        this,
        'length',
      );
  set get(_i2.dynamic Function(_i2.num) value) {
    _i5.setProperty(
      this,
      'get',
      _i5.allowInterop(value),
    );
  }

  _i2.dynamic Function(_i2.num) get get => _i5.getProperty(
        this,
        'get',
      );
  set grow(
      _i2.num Function(
        _i2.num, [
        _i2.dynamic,
      ]) value) {
    _i5.setProperty(
      this,
      'grow',
      _i5.allowInterop(value),
    );
  }

  _i2.num Function(
    _i2.num, [
    _i2.dynamic,
  ]) get grow => _i5.getProperty(
        this,
        'grow',
      );
  set set(
      void Function(
        _i2.num, [
        _i2.dynamic,
      ]) value) {
    _i5.setProperty(
      this,
      'set',
      _i5.allowInterop(value),
    );
  }

  void Function(
    _i2.num, [
    _i2.dynamic,
  ]) get set => _i5.getProperty(
        this,
        'set',
      );
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class GlobalDescriptor<T extends _i3.ValueType> {
  external factory GlobalDescriptor._({
    _i2.dynamic mutable,
    _i2.dynamic value,
  });

  factory GlobalDescriptor({
    _i2.bool? mutable,
    _i3.ValueType? value,
  }) =>
      GlobalDescriptor._(
        mutable: mutable,
        value: value,
      );
}

extension GlobalDescriptor$Typings<T extends _i3.ValueType>
    on GlobalDescriptor<T> {
  _i2.bool? get mutable => _i5.getProperty(
        this,
        'mutable',
      );
  set mutable(_i2.bool? value) {
    _i5.setProperty(
      this,
      'mutable',
      value ?? _i7.undefined,
    );
  }

  T get value => _i5.getProperty(
        this,
        'value',
      );
  set value(T value) {
    _i5.setProperty(
      this,
      'value',
      value,
    );
  }
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class MemoryDescriptor {
  external factory MemoryDescriptor._({
    _i2.dynamic initial,
    _i2.dynamic maximum,
    _i2.dynamic shared,
  });

  factory MemoryDescriptor({
    _i2.num? initial,
    _i2.num? maximum,
    _i2.bool? shared,
  }) =>
      MemoryDescriptor._(
        initial: initial,
        maximum: maximum,
        shared: shared,
      );
}

extension MemoryDescriptor$Typings on MemoryDescriptor {
  _i2.num get initial => _i5.getProperty(
        this,
        'initial',
      );
  set initial(_i2.num value) {
    _i5.setProperty(
      this,
      'initial',
      value,
    );
  }

  _i2.num? get maximum => _i5.getProperty(
        this,
        'maximum',
      );
  set maximum(_i2.num? value) {
    _i5.setProperty(
      this,
      'maximum',
      value ?? _i7.undefined,
    );
  }

  _i2.bool? get shared => _i5.getProperty(
        this,
        'shared',
      );
  set shared(_i2.bool? value) {
    _i5.setProperty(
      this,
      'shared',
      value ?? _i7.undefined,
    );
  }
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class ModuleExportDescriptor {
  external factory ModuleExportDescriptor._({
    _i2.dynamic kind,
    _i2.dynamic name,
  });

  factory ModuleExportDescriptor({
    _i3.ImportExportKind? kind,
    _i2.String? name,
  }) =>
      ModuleExportDescriptor._(
        kind: kind?.name ?? _i7.undefined,
        name: name,
      );
}

extension ModuleExportDescriptor$Typings on ModuleExportDescriptor {
  _i3.ImportExportKind get kind =>
      _i3.ImportExportKindOptions.values.byName(_i5.getProperty(
        this,
        'kind',
      ));
  set kind(_i3.ImportExportKind value) {
    _i5.setProperty(
      this,
      'kind',
      value.name,
    );
  }

  _i2.String get name => _i5.getProperty(
        this,
        'name',
      );
  set name(_i2.String value) {
    _i5.setProperty(
      this,
      'name',
      value,
    );
  }
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class ModuleImportDescriptor {
  external factory ModuleImportDescriptor._({
    _i2.dynamic kind,
    _i2.dynamic module,
    _i2.dynamic name,
  });

  factory ModuleImportDescriptor({
    _i3.ImportExportKind? kind,
    _i2.String? module,
    _i2.String? name,
  }) =>
      ModuleImportDescriptor._(
        kind: kind?.name ?? _i7.undefined,
        module: module,
        name: name,
      );
}

extension ModuleImportDescriptor$Typings on ModuleImportDescriptor {
  _i3.ImportExportKind get kind =>
      _i3.ImportExportKindOptions.values.byName(_i5.getProperty(
        this,
        'kind',
      ));
  set kind(_i3.ImportExportKind value) {
    _i5.setProperty(
      this,
      'kind',
      value.name,
    );
  }

  _i2.String get module => _i5.getProperty(
        this,
        'module',
      );
  set module(_i2.String value) {
    _i5.setProperty(
      this,
      'module',
      value,
    );
  }

  _i2.String get name => _i5.getProperty(
        this,
        'name',
      );
  set name(_i2.String value) {
    _i5.setProperty(
      this,
      'name',
      value,
    );
  }
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class TableDescriptor {
  external factory TableDescriptor._({
    _i2.dynamic element,
    _i2.dynamic initial,
    _i2.dynamic maximum,
  });

  factory TableDescriptor({
    _i3.TableKind? element,
    _i2.num? initial,
    _i2.num? maximum,
  }) =>
      TableDescriptor._(
        element: element?.name ?? _i7.undefined,
        initial: initial,
        maximum: maximum,
      );
}

extension TableDescriptor$Typings on TableDescriptor {
  _i3.TableKind get element =>
      _i3.TableKindOptions.values.byName(_i5.getProperty(
        this,
        'element',
      ));
  set element(_i3.TableKind value) {
    _i5.setProperty(
      this,
      'element',
      value.name,
    );
  }

  _i2.num get initial => _i5.getProperty(
        this,
        'initial',
      );
  set initial(_i2.num value) {
    _i5.setProperty(
      this,
      'initial',
      value,
    );
  }

  _i2.num? get maximum => _i5.getProperty(
        this,
        'maximum',
      );
  set maximum(_i2.num? value) {
    _i5.setProperty(
      this,
      'maximum',
      value ?? _i7.undefined,
    );
  }
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class ValueTypeMap {
  external factory ValueTypeMap._({
    _i2.dynamic anyfunc,
    _i2.dynamic externref,
    _i2.dynamic f32,
    _i2.dynamic f64,
    _i2.dynamic i32,
    _i2.dynamic i64,
    _i2.dynamic v128,
  });

  factory ValueTypeMap({
    _i2.Function? anyfunc,
    _i2.dynamic externref,
    _i2.num? f32,
    _i2.num? f64,
    _i2.num? i32,
    _i2.int? i64,
    _i2.Never? v128,
  }) =>
      ValueTypeMap._(
        anyfunc: anyfunc,
        externref: externref,
        f32: f32,
        f64: f64,
        i32: i32,
        i64: i64,
        v128: v128,
      );
}

enum ValueTypeMapKeys {
  anyfunc(r'anyfunc'),
  externref(r'externref'),
  f32(r'f32'),
  f64(r'f64'),
  i32(r'i32'),
  i64(r'i64'),
  v128(r'v128');

  const ValueTypeMapKeys(this.value);

  final _i2.String value;
}

extension ValueTypeMap$Typings on ValueTypeMap {
  _i2.Function get anyfunc => _i5.getProperty(
        this,
        'anyfunc',
      );
  set anyfunc(_i2.Function value) {
    _i5.setProperty(
      this,
      'anyfunc',
      value,
    );
  }

  _i2.dynamic get externref => _i5.getProperty(
        this,
        'externref',
      );
  set externref(_i2.dynamic value) {
    _i5.setProperty(
      this,
      'externref',
      value,
    );
  }

  _i2.num get f32 => _i5.getProperty(
        this,
        'f32',
      );
  set f32(_i2.num value) {
    _i5.setProperty(
      this,
      'f32',
      value,
    );
  }

  _i2.num get f64 => _i5.getProperty(
        this,
        'f64',
      );
  set f64(_i2.num value) {
    _i5.setProperty(
      this,
      'f64',
      value,
    );
  }

  _i2.num get i32 => _i5.getProperty(
        this,
        'i32',
      );
  set i32(_i2.num value) {
    _i5.setProperty(
      this,
      'i32',
      value,
    );
  }

  _i2.int get i64 => _i5.getProperty(
        this,
        'i64',
      );
  set i64(_i2.int value) {
    _i5.setProperty(
      this,
      'i64',
      value,
    );
  }

  _i2.Never get v128 => _i5.getProperty(
        this,
        'v128',
      );
  set v128(_i2.Never value) {
    _i5.setProperty(
      this,
      'v128',
      value,
    );
  }
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class WebAssemblyInstantiatedSource {
  external factory WebAssemblyInstantiatedSource._({
    _i2.dynamic instance,
    _i2.dynamic module,
  });

  factory WebAssemblyInstantiatedSource({
    _i3.Instance? instance,
    _i3.Module? module,
  }) =>
      WebAssemblyInstantiatedSource._(
        instance: instance ?? _i7.undefined,
        module: module ?? _i7.undefined,
      );
}

extension WebAssemblyInstantiatedSource$Typings
    on WebAssemblyInstantiatedSource {
  _i3.Instance get instance => _i5.getProperty(
        this,
        'instance',
      );
  set instance(_i3.Instance value) {
    _i5.setProperty(
      this,
      'instance',
      value,
    );
  }

  _i3.Module get module => _i5.getProperty(
        this,
        'module',
      );
  set module(_i3.Module value) {
    _i5.setProperty(
      this,
      'module',
      value,
    );
  }
}

@_i1.JS('WebAssembly')
@_i1.staticInterop
class $ModuleWebAssembly {}

extension $ModuleWebAssembly$Typings on $ModuleWebAssembly {
  _i3.CompileError get compileError => _i5.getProperty(
        this,
        'CompileError',
      );

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Global)
  _i3.Global<_i3.ValueType> get global => _i5.getProperty(
        this,
        'Global',
      );

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Instance)
  _i3.Instance get instance => _i5.getProperty(
        this,
        'Instance',
      );
  _i3.LinkError get linkError => _i5.getProperty(
        this,
        'LinkError',
      );

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory)
  _i3.Memory get memory => _i5.getProperty(
        this,
        'Memory',
      );

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Module)
  _i3.Module get module => _i5.getProperty(
        this,
        'Module',
      );
  _i3.RuntimeError get runtimeError => _i5.getProperty(
        this,
        'RuntimeError',
      );

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Table)
  _i3.Table get table => _i5.getProperty(
        this,
        'Table',
      );

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/compile)
  _i2.Future<_i3.Module> compile(_i8.BufferSource bytes) =>
      _i5.promiseToFuture(_i5.callMethod(
        this,
        'compile',
        [bytes],
      ));

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/compileStreaming)
  _i2.Future<_i3.Module> compileStreaming(_i2.Object source) =>
      _i5.promiseToFuture(_i5.callMethod(
        this,
        'compileStreaming',
        [source],
      ));

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiate)
  _i2.Future<_i3.WebAssemblyInstantiatedSource> _instantiate$1(
    _i8.BufferSource bytes, [
    _i3.Imports? importObject,
  ]) =>
      _i5.promiseToFuture(_i5.callMethod(
        this,
        'instantiate',
        [
          bytes,
          importObject ?? _i7.undefined ?? _i7.undefined,
        ],
      ));

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiate)
  _i2.Future<_i3.Instance> _instantiate$2(
    _i3.Module moduleObject, [
    _i3.Imports? importObject,
  ]) =>
      _i5.promiseToFuture(_i5.callMethod(
        this,
        'instantiate',
        [
          moduleObject,
          importObject ?? _i7.undefined ?? _i7.undefined,
        ],
      ));

  /// Overload accessor: $1, $2
  ({
    /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiate)
    _i2.Future<_i3.WebAssemblyInstantiatedSource> Function(
      _i8.BufferSource bytes, [
      _i3.Imports? importObject,
    ]) $1,

    /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiate)
    _i2.Future<_i3.Instance> Function(
      _i3.Module moduleObject, [
      _i3.Imports? importObject,
    ]) $2,
  }) get instantiate => (
        $1: _instantiate$1,
        $2: _instantiate$2,
      );

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/instantiateStreaming)
  _i2.Future<_i3.WebAssemblyInstantiatedSource> instantiateStreaming(
    _i2.Object source, [
    _i3.Imports? importObject,
  ]) =>
      _i5.promiseToFuture(_i5.callMethod(
        this,
        'instantiateStreaming',
        [
          source,
          importObject ?? _i7.undefined ?? _i7.undefined,
        ],
      ));

  /// [MDN Reference](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/validate)
  _i2.bool validate(_i8.BufferSource bytes) => _i5.callMethod(
        this,
        'validate',
        [bytes],
      );
}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class _IterableLike$<T> {}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
abstract class _GlobalThis {}
