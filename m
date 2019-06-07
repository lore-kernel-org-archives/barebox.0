Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8y8-00063d-Fz
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 07:07:22 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri,  7 Jun 2019 09:07:00 +0200
Message-Id: <20190607070658.10919-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20190607070658.10919-1-r.czerwinski@pengutronix.de>
References: <20190607070658.10919-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 3/3] add gdb helper scripts to load barebox symbols
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add a gdb script with two helper functions which use the new
pbl_barebox_break symbol to calculate the current barebox load address
on the device and loads a barebox ELF file to this address.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 Documentation/user/debugging.rst   | 21 +++++++++++
 Documentation/user/user-manual.rst |  1 +
 scripts/gdb/helper.py              | 60 ++++++++++++++++++++++++++++++
 3 files changed, 82 insertions(+)
 create mode 100644 Documentation/user/debugging.rst
 create mode 100644 scripts/gdb/helper.py

diff --git a/Documentation/user/debugging.rst b/Documentation/user/debugging.rst
new file mode 100644
index 0000000000..15cb439043
--- /dev/null
+++ b/Documentation/user/debugging.rst
@@ -0,0 +1,21 @@
+Debugging with OpenOCD
+======================
+
+Barebox can be configured to break on prebootloader and main barebox entry. This
+breakpoint can not be resumed and will stop the board to allow the user to
+attach a JTAG debugger with OpenOCD. Additionally, barebox provides helper
+scripts to load the symbols from the ELF binaries.
+The python scripts require `pyelftools`.
+To load the scripts into your gdb session, run the following command in the
+barebox directory:
+
+.. code-block:: none
+
+    (gdb) source scripts/gdb/helper.py
+
+This makes two new commands available in gdb, `bb-load-symbols` and
+`bb-skip-break`. `bb-load-symbols` can load either the main `barebox` file or
+one of the .pbl files in the image directories. The board needs to be stopped in
+either the prebootloader or main barebox breakpoint, and gdb needs to be
+connected to OpenOCD. To continue booting the board, `bb-skip-break` jumps over
+the breakpoint and continues the barebox execution.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 516b760b1b..f04981c3f0 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -33,6 +33,7 @@ Contents:
    system-reset
    state
    random
+   debugging
 
 * :ref:`search`
 * :ref:`genindex`
diff --git a/scripts/gdb/helper.py b/scripts/gdb/helper.py
new file mode 100644
index 0000000000..4041789890
--- /dev/null
+++ b/scripts/gdb/helper.py
@@ -0,0 +1,60 @@
+#!/usr/bin/env python
+
+import gdb
+
+try:
+    from elftools.elf.elffile import ELFFile
+    from elftools.common.exceptions import ELFError
+except ImportError:
+    gdb.write("The barebox helper requires pyelftools\n", gdb.STDERR)
+    exit(1)
+
+
+class BBSymbols(gdb.Command):
+
+    def __init__(self):
+        super(BBSymbols, self).__init__("bb-load-symbols", gdb.COMMAND_FILES,
+                                        gdb.COMPLETE_FILENAME)
+
+    def invoke(self, argument, from_tty):
+        path = argument
+        f = open(path, 'rb')
+
+        try:
+            elf = ELFFile(f)
+        except ELFError:
+            gdb.write("Selected file is not an ELF file\n", gdb.STDERR)
+            return
+
+        section = elf.get_section_by_name(".symtab")
+        if section is None:
+            gdb.write("Section .symtab not found\n", gdb.STDERR)
+            return
+        symbol = section.get_symbol_by_name("pbl_barebox_break")
+        if not symbol:
+            gdb.write("Symbol pbl_barebox_break in section {} in file {} not found\n"
+                      .format(section.name, self.path), gdb.STDERR)
+            return
+        symbol = symbol[0]
+        pc = gdb.parse_and_eval("$pc")
+        symbol_address = int(symbol.entry.st_value)
+        address = int(pc) - symbol_address + 1
+        gdb.execute("symbol-file")
+        gdb.execute("add-symbol-file {} {}".format(path, address))
+
+
+BBSymbols()
+
+
+class BBSkip(gdb.Command):
+
+    def __init__(self):
+        super(BBSkip, self).__init__("bb-skip-break", gdb.COMMAND_BREAKPOINTS)
+
+    def invoke(self, arg, from_tty):
+        pc = gdb.parse_and_eval("$pc")
+        nop_address = int(pc) + 2
+        gdb.execute("jump *{}".format(nop_address))
+
+
+BBSkip()
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
