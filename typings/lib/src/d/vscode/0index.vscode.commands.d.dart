@_i1.JS()
library typings.vscode.interop.vscode_commands; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:js/js.dart' as _i1;
import 'dart:core' as _i2;
import '0index.vscode.d.dart' as _i3;
import 'dart:js_util' as _i4;
import '/d/core.dart' as _i5;

@_i1.JS('vscode.commands')
external _i2.Object _self;

/* Source: globalThis */
@_i1.JS('vscode.commands')
@_i1.staticInterop
class $ModuleCommands {}

extension $ModuleCommands$Typings on $ModuleCommands {
  /// Registers a command that can be invoked via a keyboard shortcut,
  /// a menu item, an action, or directly.
  ///
  /// Registering a command with an existing command identifier twice
  /// will cause an error.
  _i3.Disposable registerCommand(
    _i2.String command,
    _i2.dynamic Function([_i2.Iterable<_i2.dynamic>?]) callback, [
    _i2.dynamic thisArg,
  ]) =>
      _i4.callMethod(
        this,
        'registerCommand',
        [
          command,
          _i4.allowInterop(([
            a0,
            a1,
            a2,
            a3,
            a4,
            a5,
            a6,
            a7,
            a8,
            a9,
          ]) =>
              callback([
                a0,
                a1,
                a2,
                a3,
                a4,
                a5,
                a6,
                a7,
                a8,
                a9,
              ])),
          thisArg,
        ],
      );

  /// Registers a text editor command that can be invoked via a keyboard shortcut,
  /// a menu item, an action, or directly.
  ///
  /// Text editor commands are different from ordinary {@link commands.registerCommandcommands} as
  /// they only execute when there is an active editor when the command is called. Also, the
  /// command handler of an editor command has access to the active editor and to an
  /// {@link TextEditorEditedit}-builder. Note that the edit-builder is only valid while the
  /// callback executes.
  _i3.Disposable registerTextEditorCommand(
    _i2.String command,
    void Function(
      _i3.TextEditor,
      _i3.TextEditorEdit, [
      _i2.Iterable<_i2.dynamic>?,
    ]) callback, [
    _i2.dynamic thisArg,
  ]) =>
      _i4.callMethod(
        this,
        'registerTextEditorCommand',
        [
          command,
          _i4.allowInterop((
            _i3.TextEditor v0,
            _i3.TextEditorEdit v1, [
            a0,
            a1,
            a2,
            a3,
            a4,
            a5,
            a6,
            a7,
            a8,
            a9,
          ]) =>
              callback(
                v0,
                v1,
                [
                  a0,
                  a1,
                  a2,
                  a3,
                  a4,
                  a5,
                  a6,
                  a7,
                  a8,
                  a9,
                ],
              )),
          thisArg,
        ],
      );

  /// Executes the command denoted by the given command identifier.
  ///
  /// * *Note 1:* When executing an editor command not all types are allowed to
  /// be passed as arguments. Allowed are the primitive types `string`, `boolean`,
  /// `number`, `undefined`, and `null`, as well as {@linkcode Position}, {@linkcode Range}, {@linkcode Uri} and {@linkcode Location}.
  /// * *Note 2:* There are no restrictions when executing commands that have been contributed
  /// by extensions.
  _i2.Future<_i2.dynamic> executeCommand<T>(
    _i2.String command, [
    _i2.Iterable<_i2.dynamic>? rest,
  ]) =>
      _i4.promiseToFuture(_i4.callMethod(
        this,
        'executeCommand',
        [
          command,
          ...?rest,
        ],
      ));

  /// Retrieve the list of all available commands. Commands starting with an underscore are
  /// treated as internal commands.
  _i2.Future<_i2.dynamic> getCommands([_i2.bool? filterInternal]) =>
      _i4.promiseToFuture(_i4.callMethod(
        this,
        'getCommands',
        [filterInternal ?? _i5.undefined],
      ));
}

/* Source:  */
@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
class _IterableLike$<T> {}

@_i1.JS()
@_i1.staticInterop
@_i1.anonymous
abstract class _GlobalThis {}
