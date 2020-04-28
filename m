Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKoE-0001aY-Kv
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:37:40 +0000
Received: from geraet.fritz.box (i53875677.versanet.de [83.135.86.119])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 669B0FF813
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 07:37:35 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 28 Apr 2020 09:37:21 +0200
Message-Id: <20200428073730.34579-2-ahmad@a3f.at>
In-Reply-To: <20200428073730.34579-1-ahmad@a3f.at>
References: <20200428073730.34579-1-ahmad@a3f.at>
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
Subject: [PATCH 02/11] scripts: kconfig-lint.py: extend for undefined symbol
 detection
To: barebox@lists.infradead.org

Extend the script by some code from the official list_undefined.py example[1]
to further detect symbols we are using, but haven't defined anywhere.

[1]: https://github.com/ulfalizer/Kconfiglib/blob/35a60b7/examples/list_undefined.py

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 scripts/kconfig-lint.py | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/scripts/kconfig-lint.py b/scripts/kconfig-lint.py
index 308c82dfd8de..a154e9cccacc 100755
--- a/scripts/kconfig-lint.py
+++ b/scripts/kconfig-lint.py
@@ -1,7 +1,7 @@
 #!/usr/bin/env python3
 
 # Copyright (c) 2019 Nordic Semiconductor ASA
-# SPDX-License-Identifier: Apache-2.0
+# SPDX-License-Identifier: Apache-2.0 AND ISC
 
 """
 Linter for the Zephyr Kconfig files. Pass --help to see
@@ -35,6 +35,7 @@ def main():
         # Run all checks if no checks were specified
         checks = (check_always_n,
                   check_unused,
+                  check_undefined,
                   check_pointless_menuconfigs,
                   check_missing_config_prefix)
 
@@ -78,6 +79,13 @@ Heuristic:
 
 C preprocessor magic can trip up this check.""")
 
+    parser.add_argument(
+        "-U", "--check-undefined",
+        action="append_const", dest="checks", const=check_undefined,
+        help="""\
+List symbols that are used in a Kconfig file but are undefined
+""")
+
     parser.add_argument(
         "-m", "--check-pointless-menuconfigs",
         action="append_const", dest="checks", const=check_pointless_menuconfigs,
@@ -121,6 +129,21 @@ def check_unused():
            sym.name not in referenced:
             print(name_and_locs(sym))
 
+def check_undefined():
+    print_header("Symbols that are used, but undefined")
+    for name, sym in kconf.syms.items():
+        if not sym.nodes:
+            # Undefined symbol. We skip some of the uninteresting ones.
+
+            # Due to how Kconfig works, integer literals show up as symbols
+            # (from e.g. 'default 1'). Skip those.
+            try:
+                int(name, 0)
+                continue
+            except ValueError:
+                # Interesting undefined symbol
+                print(name)
+
 
 def check_pointless_menuconfigs():
     print_header("menuconfig symbols with empty menus")
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
