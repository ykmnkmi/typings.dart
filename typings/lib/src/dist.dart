import 'dart:async';
import 'dart:js_util' as jsu;
import '../d/core.dart' as js;

class TypingsDist {
  static final Map<String, FutureOr<bool>> _scriptFetched = {};

  static js.HTMLScriptElement script(String buffer) =>
      js.document.createElement.$1(js.HTMLElementTagNameMap.script)
        ..async = true
        ..type = 'text/javascript'
        ..text = buffer;

  static bool hasContext(String contextCheck) {
    final item = jsu.getProperty(js.window, contextCheck);
    final ret = item != null && item.toString() != 'null';

    print('HasContext $contextCheck: $ret. Item: $item');

    return ret;
  }

  static FutureOr<bool> useScript(String name, String buffer,
      {String? contextCheck}) async {
    contextCheck ??= name;
    assert(buffer.isNotEmpty == true);

    if (hasContext(contextCheck)) return true;

    final ret = _scriptFetched[name];

    if (ret == null) {
      final c = Completer<bool>();
      var sanity = 0;

      _scriptFetched[name] = c.future;

      assert(() {
        // fix importing error when in DDC
        jsu.setProperty(jsu.getProperty(js.window, 'define'), 'amd', false);
        //jsw.define?.amd = false;
        return true;
      }());

      final scr = script(buffer);

      js.document.body.appendChild(scr);

      if (hasContext(contextCheck)) return true;

      Timer.periodic(Duration(milliseconds: 10), (t) {
        if (hasContext(contextCheck!)) {
          t.cancel();
          c.complete(true);
        } else {
          assert(sanity < 100, 'Sanity check error for "$name"!');
          sanity++;
        }
      });

      return c.future;
    } else if (ret == true) {
      return true;
    }

    return ret;
  }
}
