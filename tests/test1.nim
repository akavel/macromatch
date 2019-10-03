import unittest
import macros

import macromatch

static:
  test "simple ident":
    let
      t1 = ident("foobar")
    check t1 =~ Ident(_)
    check t1 =~ Ident("foobar")
    check t1 !~ Empty(_)
    check t1 !~ StmtList(_)

