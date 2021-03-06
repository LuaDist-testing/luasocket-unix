-- This file was automatically generated for the LuaDist project.

package = "luasocket-unix"
version = "2.0.2-2"
-- LuaDist source
source = {
  tag = "2.0.2-2",
  url = "git://github.com/LuaDist-testing/luasocket-unix.git"
}
-- Original source
-- source = {
--    url = "http://luaforge.net/frs/download.php/2664/luasocket-2.0.2.tar.gz",
--    md5 = "41445b138deb7bcfe97bff957503da8e"
-- }
description = {
   summary = "Unix Domain Sockets for the Lua language",
   detailed = [[
      socket.unix is a LuaSocket module that implements support for Unix Domain Sockets.
   ]],
   license = "MIT/X11",
}
supported_platforms = {
   "unix"
}
build = {
   type = "builtin",
   modules = {
      ['socket.unix'] = {
         defines = {
            "LUASOCKET_DEBUG"
         },
         sources = {
            "src/buffer.c", "src/auxiliar.c", "src/options.c", "src/timeout.c", "src/io.c", "src/usocket.c", "src/unix.c"
         }
      }
   },
   platforms = {
      macosx = {
         modules = {
            ['socket.unix'] = {
               defines = {
                  "LUASOCKET_DEBUG", "UNIX_HAS_SUN_LEN"
               }
            }
         }
      }
   }
}