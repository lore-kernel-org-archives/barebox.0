Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNAd-0001lk-Um
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 12:10:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Sep 2019 14:10:17 +0200
Message-Id: <20190923121018.31574-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190923121018.31574-1-a.fatoum@pengutronix.de>
References: <20190923121018.31574-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/6] scripts/dtc: Update to upstream version v1.5.1
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This adds the following commits from upstream dtc:

60e0db3d65a1 Ignore phandle properties in /aliases
95ce19c14064 README: update for Python 3
5345db19f615 livetree: simplify condition in get_node_by_path
b8d6eca78210 libfdt: Allow #size-cells of 0
184f51099471 Makefile: Add EXTRA_CFLAGS variable
812b1956a076 libfdt: Tweak data handling to satisfy Coverity
5c715a44776a fdtoverlay: Ignore symbols in overlays which don't apply to the target tree
b99353474850 fdtoverlay: Allow adding labels to __overlay__ nodes in overlays
d6de81b81b68 pylibfdt: Add support for fdt_get_alias()
1c17714dbb3a pylibfdt: Correct the FdtSw example
ad57e4574a37 tests: Add a failed test case for 'fdtoverlay' with long target path
bbe3b36f542b fdtoverlay: Rework output allocation
6c2e61f08396 fdtoverlay: Improve error messages
297f5abb362e fdtoverlay: Check for truncated overlay blobs
702c1b6c0e73 README.license: Update to reflect SPDX tag usage
4097bbffcf1d dtc: Add GPLv2 SPDX tags to files missing license text
94f87cd5b7c5 libfdt: Add dual GPL/BSD SPDX tags to files missing license text
c4ffc05574b1 tests: Replace license boilerplate with SPDX tags
a5ac29baacd2 pylibfdt: Replace dual GPLv2/BSD license boilerplate with SPDX tags
7fb0f4db2eb7 libfdt: Replace GPL/BSD boilerplate/reference with SPDX tags
acfe84f2c47e dtc: Replace GPLv2 boilerplate/reference with SPDX tags
87963ee20693 livetree: add missing type markers in generated overlay properties
825146d13dc0 Fix typos in various documentation and source files
25bb080c18d1 Update the GPL2 text to the latest revision
243176c4ce84 Fix bogus error on rebuild
ce01b21098a4 libfdt: Add FDT_CREATE_FLAG_NO_NAME_DEDUP flag that trades size for speed
fbb62754ce45 libfdt: Introduce fdt_create_with_flags()
228a44cce857 libfdt: Ensure fdt_add_property frees allocated name string on failure
8f695676227b Avoid assertion in check_interrupts_property()
5c3513f68921 Link tools and tests against libfdt shared library
00f9febf9c16 tests: Rename tests.sh to testutils.sh
c5d45188f923 Clean up LDLIBS handling
6ef8fcd05b74 Rebuild libfdt shared object if versioning linker script changes
26ee65a16c38 Use Python3 by default
cca6546244cb libfdt: Make fdt_get_max_phandle() an inline
730875016a6a libfdt: Add phandle generation helper
7dfb61ba96b1 libfdt: Use fdt_find_max_phandle()
2bc5b66d7f6c libfdt: Add new maximum phandle lookup function
7fcf8208b8a9 libfdt: add fdt_append_addrrange()
ae795b2db7a4 checks: Do not omit nodes with labels if symbol generation is requested
eac2ad495b29 Update version.lds again
f67b47135523 Revert "libfdt: Add phandle generation helper"
54ea41c22415 libfdt: Add phandle generation helper
4762ad051ee0 checks: Fix spelling in check_graph_endpoint

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/dtc/Makefile.dtc             |   1 +
 scripts/dtc/checks.c                 |  36 +++--
 scripts/dtc/data.c                   |  17 +--
 scripts/dtc/dtc-lexer.l              |  17 +--
 scripts/dtc/dtc-parser.y             |  17 +--
 scripts/dtc/dtc.c                    |  17 +--
 scripts/dtc/dtc.h                    |  20 +--
 scripts/dtc/fdtget.c                 |  16 +--
 scripts/dtc/flattree.c               |  19 +--
 scripts/dtc/fstree.c                 |  17 +--
 scripts/dtc/libfdt/Makefile.libfdt   |   3 +
 scripts/dtc/libfdt/fdt.c             |  56 ++------
 scripts/dtc/libfdt/fdt.h             |  47 +------
 scripts/dtc/libfdt/fdt_addresses.c   | 102 +++++++-------
 scripts/dtc/libfdt/fdt_empty_tree.c  |  47 +------
 scripts/dtc/libfdt/fdt_overlay.c     |  85 ++++--------
 scripts/dtc/libfdt/fdt_ro.c          | 108 ++++++---------
 scripts/dtc/libfdt/fdt_rw.c          |  69 +++-------
 scripts/dtc/libfdt/fdt_strerror.c    |  47 +------
 scripts/dtc/libfdt/fdt_sw.c          | 125 +++++++++--------
 scripts/dtc/libfdt/fdt_wip.c         |  47 +------
 scripts/dtc/libfdt/libfdt.h          | 199 ++++++++++++++++++++-------
 scripts/dtc/libfdt/libfdt_env.h      |  48 +------
 scripts/dtc/libfdt/libfdt_internal.h |  57 +-------
 scripts/dtc/livetree.c               |  40 ++----
 scripts/dtc/srcpos.c                 |  16 +--
 scripts/dtc/srcpos.h                 |  16 +--
 scripts/dtc/treesource.c             |  17 +--
 scripts/dtc/util.c                   |  16 +--
 scripts/dtc/util.h                   |  20 +--
 scripts/dtc/yamltree.c               |  16 +--
 31 files changed, 435 insertions(+), 923 deletions(-)

diff --git a/scripts/dtc/Makefile.dtc b/scripts/dtc/Makefile.dtc
index d4375630a7f7..9c467b096f03 100644
--- a/scripts/dtc/Makefile.dtc
+++ b/scripts/dtc/Makefile.dtc
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
 # Makefile.dtc
 #
 # This is not a complete Makefile of itself.  Instead, it is designed to
diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
index c0ed45e1c3bc..756f0fa9203f 100644
--- a/scripts/dtc/checks.c
+++ b/scripts/dtc/checks.c
@@ -1,21 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2007.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include "dtc.h"
@@ -660,6 +645,8 @@ ERROR(path_references, fixup_path_references, NULL, &duplicate_node_names);
 static void fixup_omit_unused_nodes(struct check *c, struct dt_info *dti,
 				    struct node *node)
 {
+	if (generate_symbols && node->labels)
+		return;
 	if (node->omit_if_unused && !node->is_referenced)
 		delete_node(node);
 }
@@ -704,6 +691,11 @@ static void check_alias_paths(struct check *c, struct dt_info *dti,
 		return;
 
 	for_each_property(node, prop) {
+		if (streq(prop->name, "phandle")
+		    || streq(prop->name, "linux,phandle")) {
+			continue;
+		}
+
 		if (!prop->val.val || !get_node_by_path(dti->dt, prop->val.val)) {
 			FAIL_PROP(c, dti, node, prop, "aliases property is not a valid node (%s)",
 				  prop->val.val);
@@ -1578,10 +1570,14 @@ static void check_interrupts_property(struct check *c,
 		prop = get_property(parent, "interrupt-parent");
 		if (prop) {
 			phandle = propval_cell(prop);
-			/* Give up if this is an overlay with external references */
-			if ((phandle == 0 || phandle == -1) &&
-			    (dti->dtsflags & DTSF_PLUGIN))
+			if ((phandle == 0) || (phandle == -1)) {
+				/* Give up if this is an overlay with
+				 * external references */
+				if (dti->dtsflags & DTSF_PLUGIN)
 					return;
+				FAIL_PROP(c, dti, parent, prop, "Invalid phandle");
+				continue;
+			}
 
 			irq_node = get_node_by_phandle(root, phandle);
 			if (!irq_node) {
@@ -1750,7 +1746,7 @@ static void check_graph_endpoint(struct check *c, struct dt_info *dti,
 		return;
 
 	if (!strprefixeq(node->name, node->basenamelen, "endpoint"))
-		FAIL(c, dti, node, "graph endpont node name should be 'endpoint'");
+		FAIL(c, dti, node, "graph endpoint node name should be 'endpoint'");
 
 	check_graph_reg(c, dti, node);
 
diff --git a/scripts/dtc/data.c b/scripts/dtc/data.c
index 4a204145cc7b..0a43b6de3264 100644
--- a/scripts/dtc/data.c
+++ b/scripts/dtc/data.c
@@ -1,21 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include "dtc.h"
diff --git a/scripts/dtc/dtc-lexer.l b/scripts/dtc/dtc-lexer.l
index 06c040902444..5c6c3fd557d7 100644
--- a/scripts/dtc/dtc-lexer.l
+++ b/scripts/dtc/dtc-lexer.l
@@ -1,21 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 %option noyywrap nounput noinput never-interactive
diff --git a/scripts/dtc/dtc-parser.y b/scripts/dtc/dtc-parser.y
index 2ec981e86111..2ed4dc1f07fd 100644
--- a/scripts/dtc/dtc-parser.y
+++ b/scripts/dtc/dtc-parser.y
@@ -1,21 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 %{
 #include <stdio.h>
diff --git a/scripts/dtc/dtc.c b/scripts/dtc/dtc.c
index 695e1f789fc7..bdb3f5945699 100644
--- a/scripts/dtc/dtc.c
+++ b/scripts/dtc/dtc.c
@@ -1,21 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include <sys/stat.h>
diff --git a/scripts/dtc/dtc.h b/scripts/dtc/dtc.h
index 789e0b1bc057..6e74ecea55a3 100644
--- a/scripts/dtc/dtc.h
+++ b/scripts/dtc/dtc.h
@@ -1,24 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #ifndef DTC_H
 #define DTC_H
 
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include <stdio.h>
@@ -231,7 +216,8 @@ void add_child(struct node *parent, struct node *child);
 void delete_node_by_name(struct node *parent, char *name);
 void delete_node(struct node *node);
 void append_to_property(struct node *node,
-			char *name, const void *data, int len);
+			char *name, const void *data, int len,
+			enum markertype type);
 
 const char *get_unitname(struct node *node);
 struct property *get_property(struct node *node, const char *propname);
diff --git a/scripts/dtc/fdtget.c b/scripts/dtc/fdtget.c
index a79c3b2aa1b8..777582e2d45f 100644
--- a/scripts/dtc/fdtget.c
+++ b/scripts/dtc/fdtget.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (c) 2011 The Chromium OS Authors. All rights reserved.
  *
@@ -6,21 +7,6 @@
  * Based on code written by:
  *   Pantelis Antoniou <pantelis.antoniou@gmail.com> and
  *   Matthew McClintock <msm@freescale.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
  */
 
 #include <assert.h>
diff --git a/scripts/dtc/flattree.c b/scripts/dtc/flattree.c
index acf04c30669f..bd6977eedcb8 100644
--- a/scripts/dtc/flattree.c
+++ b/scripts/dtc/flattree.c
@@ -1,21 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include "dtc.h"
@@ -525,7 +510,7 @@ void dt_to_asm(FILE *f, struct dt_info *dti, int version)
 	fprintf(f, "/* Memory reserve map from source file */\n");
 
 	/*
-	 * Use .long on high and low halfs of u64s to avoid .quad
+	 * Use .long on high and low halves of u64s to avoid .quad
 	 * as it appears .quad isn't available in some assemblers.
 	 */
 	for (re = dti->reservelist; re; re = re->next) {
diff --git a/scripts/dtc/fstree.c b/scripts/dtc/fstree.c
index 1e7eeba47ff6..9871689b4afb 100644
--- a/scripts/dtc/fstree.c
+++ b/scripts/dtc/fstree.c
@@ -1,21 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include "dtc.h"
diff --git a/scripts/dtc/libfdt/Makefile.libfdt b/scripts/dtc/libfdt/Makefile.libfdt
index 3af3656df801..e54639738c8e 100644
--- a/scripts/dtc/libfdt/Makefile.libfdt
+++ b/scripts/dtc/libfdt/Makefile.libfdt
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 # Makefile.libfdt
 #
 # This is not a complete Makefile of itself.  Instead, it is designed to
@@ -9,7 +10,9 @@ LIBFDT_VERSION = version.lds
 LIBFDT_SRCS = fdt.c fdt_ro.c fdt_wip.c fdt_sw.c fdt_rw.c fdt_strerror.c fdt_empty_tree.c \
 	fdt_addresses.c fdt_overlay.c
 LIBFDT_OBJS = $(LIBFDT_SRCS:%.c=%.o)
+LIBFDT_LIB = libfdt-$(DTC_VERSION).$(SHAREDLIB_EXT)
 
 libfdt_clean:
 	@$(VECHO) CLEAN "(libfdt)"
 	rm -f $(STD_CLEANFILES:%=$(LIBFDT_dir)/%)
+	rm -f $(LIBFDT_dir)/$(LIBFDT_soname)
diff --git a/scripts/dtc/libfdt/fdt.c b/scripts/dtc/libfdt/fdt.c
index ae03b1112961..d6ce7c052dc8 100644
--- a/scripts/dtc/libfdt/fdt.c
+++ b/scripts/dtc/libfdt/fdt.c
@@ -1,52 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include "libfdt_env.h"
 
@@ -60,8 +15,10 @@
  * that the given buffer contains what appears to be a flattened
  * device tree with sane information in its header.
  */
-int fdt_ro_probe_(const void *fdt)
+int32_t fdt_ro_probe_(const void *fdt)
 {
+	uint32_t totalsize = fdt_totalsize(fdt);
+
 	if (fdt_magic(fdt) == FDT_MAGIC) {
 		/* Complete tree */
 		if (fdt_version(fdt) < FDT_FIRST_SUPPORTED_VERSION)
@@ -76,7 +33,10 @@ int fdt_ro_probe_(const void *fdt)
 		return -FDT_ERR_BADMAGIC;
 	}
 
-	return 0;
+	if (totalsize < INT32_MAX)
+		return totalsize;
+	else
+		return -FDT_ERR_TRUNCATED;
 }
 
 static int check_off_(uint32_t hdrsize, uint32_t totalsize, uint32_t off)
diff --git a/scripts/dtc/libfdt/fdt.h b/scripts/dtc/libfdt/fdt.h
index 74961f9026d1..f2e68807f277 100644
--- a/scripts/dtc/libfdt/fdt.h
+++ b/scripts/dtc/libfdt/fdt.h
@@ -1,55 +1,10 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause) */
 #ifndef FDT_H
 #define FDT_H
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
  * Copyright 2012 Kim Phillips, Freescale Semiconductor.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #ifndef __ASSEMBLY__
diff --git a/scripts/dtc/libfdt/fdt_addresses.c b/scripts/dtc/libfdt/fdt_addresses.c
index f13a87dfa068..9a82cd0ba2f9 100644
--- a/scripts/dtc/libfdt/fdt_addresses.c
+++ b/scripts/dtc/libfdt/fdt_addresses.c
@@ -1,53 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2014 David Gibson <david@gibson.dropbear.id.au>
  * Copyright (C) 2018 embedded brains GmbH
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include "libfdt_env.h"
 
@@ -59,7 +14,7 @@
 static int fdt_cells(const void *fdt, int nodeoffset, const char *name)
 {
 	const fdt32_t *c;
-	int val;
+	uint32_t val;
 	int len;
 
 	c = fdt_getprop(fdt, nodeoffset, name, &len);
@@ -70,10 +25,10 @@ static int fdt_cells(const void *fdt, int nodeoffset, const char *name)
 		return -FDT_ERR_BADNCELLS;
 
 	val = fdt32_to_cpu(*c);
-	if ((val <= 0) || (val > FDT_MAX_NCELLS))
+	if (val > FDT_MAX_NCELLS)
 		return -FDT_ERR_BADNCELLS;
 
-	return val;
+	return (int)val;
 }
 
 int fdt_address_cells(const void *fdt, int nodeoffset)
@@ -81,6 +36,8 @@ int fdt_address_cells(const void *fdt, int nodeoffset)
 	int val;
 
 	val = fdt_cells(fdt, nodeoffset, "#address-cells");
+	if (val == 0)
+		return -FDT_ERR_BADNCELLS;
 	if (val == -FDT_ERR_NOTFOUND)
 		return 2;
 	return val;
@@ -95,3 +52,50 @@ int fdt_size_cells(const void *fdt, int nodeoffset)
 		return 1;
 	return val;
 }
+
+/* This function assumes that [address|size]_cells is 1 or 2 */
+int fdt_appendprop_addrrange(void *fdt, int parent, int nodeoffset,
+			     const char *name, uint64_t addr, uint64_t size)
+{
+	int addr_cells, size_cells, ret;
+	uint8_t data[sizeof(fdt64_t) * 2], *prop;
+
+	ret = fdt_address_cells(fdt, parent);
+	if (ret < 0)
+		return ret;
+	addr_cells = ret;
+
+	ret = fdt_size_cells(fdt, parent);
+	if (ret < 0)
+		return ret;
+	size_cells = ret;
+
+	/* check validity of address */
+	prop = data;
+	if (addr_cells == 1) {
+		if ((addr > UINT32_MAX) || ((UINT32_MAX + 1 - addr) < size))
+			return -FDT_ERR_BADVALUE;
+
+		fdt32_st(prop, (uint32_t)addr);
+	} else if (addr_cells == 2) {
+		fdt64_st(prop, addr);
+	} else {
+		return -FDT_ERR_BADNCELLS;
+	}
+
+	/* check validity of size */
+	prop += addr_cells * sizeof(fdt32_t);
+	if (size_cells == 1) {
+		if (size > UINT32_MAX)
+			return -FDT_ERR_BADVALUE;
+
+		fdt32_st(prop, (uint32_t)size);
+	} else if (size_cells == 2) {
+		fdt64_st(prop, size);
+	} else {
+		return -FDT_ERR_BADNCELLS;
+	}
+
+	return fdt_appendprop(fdt, nodeoffset, name, data,
+			      (addr_cells + size_cells) * sizeof(fdt32_t));
+}
diff --git a/scripts/dtc/libfdt/fdt_empty_tree.c b/scripts/dtc/libfdt/fdt_empty_tree.c
index f2ae9b77c285..49d54d44b8e7 100644
--- a/scripts/dtc/libfdt/fdt_empty_tree.c
+++ b/scripts/dtc/libfdt/fdt_empty_tree.c
@@ -1,52 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2012 David Gibson, IBM Corporation.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include "libfdt_env.h"
 
diff --git a/scripts/dtc/libfdt/fdt_overlay.c b/scripts/dtc/libfdt/fdt_overlay.c
index 5fdab6c6371d..be7187336615 100644
--- a/scripts/dtc/libfdt/fdt_overlay.c
+++ b/scripts/dtc/libfdt/fdt_overlay.c
@@ -1,53 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2016 Free Electrons
  * Copyright (C) 2016 NextThing Co.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include "libfdt_env.h"
 
@@ -93,11 +48,11 @@ static uint32_t overlay_get_target_phandle(const void *fdto, int fragment)
  * @pathp: pointer which receives the path of the target (or NULL)
  *
  * overlay_get_target() retrieves the target offset in the base
- * device tree of a fragment, no matter how the actual targetting is
+ * device tree of a fragment, no matter how the actual targeting is
  * done (through a phandle or a path)
  *
  * returns:
- *      the targetted node offset in the base device tree
+ *      the targeted node offset in the base device tree
  *      Negative error code on error
  */
 static int overlay_get_target(const void *fdt, const void *fdto,
@@ -778,26 +733,36 @@ static int overlay_symbol_update(void *fdt, void *fdto)
 		/* keep end marker to avoid strlen() */
 		e = path + path_len;
 
-		/* format: /<fragment-name>/__overlay__/<relative-subnode-path> */
-
 		if (*path != '/')
 			return -FDT_ERR_BADVALUE;
 
 		/* get fragment name first */
 		s = strchr(path + 1, '/');
-		if (!s)
-			return -FDT_ERR_BADOVERLAY;
+		if (!s) {
+			/* Symbol refers to something that won't end
+			 * up in the target tree */
+			continue;
+		}
 
 		frag_name = path + 1;
 		frag_name_len = s - path - 1;
 
 		/* verify format; safe since "s" lies in \0 terminated prop */
 		len = sizeof("/__overlay__/") - 1;
-		if ((e - s) < len || memcmp(s, "/__overlay__/", len))
-			return -FDT_ERR_BADOVERLAY;
-
-		rel_path = s + len;
-		rel_path_len = e - rel_path;
+		if ((e - s) > len && (memcmp(s, "/__overlay__/", len) == 0)) {
+			/* /<fragment-name>/__overlay__/<relative-subnode-path> */
+			rel_path = s + len;
+			rel_path_len = e - rel_path;
+		} else if ((e - s) == len
+			   && (memcmp(s, "/__overlay__", len - 1) == 0)) {
+			/* /<fragment-name>/__overlay__ */
+			rel_path = "";
+			rel_path_len = 0;
+		} else {
+			/* Symbol refers to something that won't end
+			 * up in the target tree */
+			continue;
+		}
 
 		/* find the fragment index in which the symbol lies */
 		ret = fdt_subnode_offset_namelen(fdto, 0, frag_name,
@@ -863,12 +828,16 @@ static int overlay_symbol_update(void *fdt, void *fdto)
 
 int fdt_overlay_apply(void *fdt, void *fdto)
 {
-	uint32_t delta = fdt_get_max_phandle(fdt);
+	uint32_t delta;
 	int ret;
 
 	FDT_RO_PROBE(fdt);
 	FDT_RO_PROBE(fdto);
 
+	ret = fdt_find_max_phandle(fdt, &delta);
+	if (ret)
+		goto err;
+
 	ret = overlay_adjust_local_phandles(fdto, delta);
 	if (ret)
 		goto err;
diff --git a/scripts/dtc/libfdt/fdt_ro.c b/scripts/dtc/libfdt/fdt_ro.c
index eafc14282892..a5c2797cde65 100644
--- a/scripts/dtc/libfdt/fdt_ro.c
+++ b/scripts/dtc/libfdt/fdt_ro.c
@@ -1,52 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include "libfdt_env.h"
 
@@ -78,19 +33,20 @@ static int fdt_nodename_eq_(const void *fdt, int offset,
 
 const char *fdt_get_string(const void *fdt, int stroffset, int *lenp)
 {
+	int32_t totalsize = fdt_ro_probe_(fdt);
 	uint32_t absoffset = stroffset + fdt_off_dt_strings(fdt);
 	size_t len;
 	int err;
 	const char *s, *n;
 
-	err = fdt_ro_probe_(fdt);
-	if (err != 0)
+	err = totalsize;
+	if (totalsize < 0)
 		goto fail;
 
 	err = -FDT_ERR_BADOFFSET;
-	if (absoffset >= fdt_totalsize(fdt))
+	if (absoffset >= totalsize)
 		goto fail;
-	len = fdt_totalsize(fdt) - absoffset;
+	len = totalsize - absoffset;
 
 	if (fdt_magic(fdt) == FDT_MAGIC) {
 		if (stroffset < 0)
@@ -144,29 +100,49 @@ static int fdt_string_eq_(const void *fdt, int stroffset,
 	return p && (slen == len) && (memcmp(p, s, len) == 0);
 }
 
-uint32_t fdt_get_max_phandle(const void *fdt)
+int fdt_find_max_phandle(const void *fdt, uint32_t *phandle)
 {
-	uint32_t max_phandle = 0;
-	int offset;
+	uint32_t max = 0;
+	int offset = -1;
 
-	for (offset = fdt_next_node(fdt, -1, NULL);;
-	     offset = fdt_next_node(fdt, offset, NULL)) {
-		uint32_t phandle;
+	while (true) {
+		uint32_t value;
 
-		if (offset == -FDT_ERR_NOTFOUND)
-			return max_phandle;
+		offset = fdt_next_node(fdt, offset, NULL);
+		if (offset < 0) {
+			if (offset == -FDT_ERR_NOTFOUND)
+				break;
 
-		if (offset < 0)
-			return (uint32_t)-1;
+			return offset;
+		}
 
-		phandle = fdt_get_phandle(fdt, offset);
-		if (phandle == (uint32_t)-1)
-			continue;
+		value = fdt_get_phandle(fdt, offset);
 
-		if (phandle > max_phandle)
-			max_phandle = phandle;
+		if (value > max)
+			max = value;
 	}
 
+	if (phandle)
+		*phandle = max;
+
+	return 0;
+}
+
+int fdt_generate_phandle(const void *fdt, uint32_t *phandle)
+{
+	uint32_t max;
+	int err;
+
+	err = fdt_find_max_phandle(fdt, &max);
+	if (err < 0)
+		return err;
+
+	if (max == FDT_MAX_PHANDLE)
+		return -FDT_ERR_NOPHANDLES;
+
+	if (phandle)
+		*phandle = max + 1;
+
 	return 0;
 }
 
@@ -313,7 +289,7 @@ const char *fdt_get_name(const void *fdt, int nodeoffset, int *len)
 	const char *nameptr;
 	int err;
 
-	if (((err = fdt_ro_probe_(fdt)) != 0)
+	if (((err = fdt_ro_probe_(fdt)) < 0)
 	    || ((err = fdt_check_node_offset_(fdt, nodeoffset)) < 0))
 			goto fail;
 
diff --git a/scripts/dtc/libfdt/fdt_rw.c b/scripts/dtc/libfdt/fdt_rw.c
index 2e49855d7cf8..8795947c00dd 100644
--- a/scripts/dtc/libfdt/fdt_rw.c
+++ b/scripts/dtc/libfdt/fdt_rw.c
@@ -1,52 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include "libfdt_env.h"
 
@@ -136,6 +91,14 @@ static int fdt_splice_struct_(void *fdt, void *p,
 	return 0;
 }
 
+/* Must only be used to roll back in case of error */
+static void fdt_del_last_string_(void *fdt, const char *s)
+{
+	int newlen = strlen(s) + 1;
+
+	fdt_set_size_dt_strings(fdt, fdt_size_dt_strings(fdt) - newlen);
+}
+
 static int fdt_splice_string_(void *fdt, int newlen)
 {
 	void *p = (char *)fdt
@@ -149,7 +112,7 @@ static int fdt_splice_string_(void *fdt, int newlen)
 	return 0;
 }
 
-static int fdt_find_add_string_(void *fdt, const char *s)
+static int fdt_find_add_string_(void *fdt, const char *s, int *allocated)
 {
 	char *strtab = (char *)fdt + fdt_off_dt_strings(fdt);
 	const char *p;
@@ -157,6 +120,8 @@ static int fdt_find_add_string_(void *fdt, const char *s)
 	int len = strlen(s) + 1;
 	int err;
 
+	*allocated = 0;
+
 	p = fdt_find_string_(strtab, fdt_size_dt_strings(fdt), s);
 	if (p)
 		/* found it */
@@ -167,6 +132,8 @@ static int fdt_find_add_string_(void *fdt, const char *s)
 	if (err)
 		return err;
 
+	*allocated = 1;
+
 	memcpy(new, s, len);
 	return (new - strtab);
 }
@@ -225,11 +192,12 @@ static int fdt_add_property_(void *fdt, int nodeoffset, const char *name,
 	int nextoffset;
 	int namestroff;
 	int err;
+	int allocated;
 
 	if ((nextoffset = fdt_check_node_offset_(fdt, nodeoffset)) < 0)
 		return nextoffset;
 
-	namestroff = fdt_find_add_string_(fdt, name);
+	namestroff = fdt_find_add_string_(fdt, name, &allocated);
 	if (namestroff < 0)
 		return namestroff;
 
@@ -237,8 +205,11 @@ static int fdt_add_property_(void *fdt, int nodeoffset, const char *name,
 	proplen = sizeof(**prop) + FDT_TAGALIGN(len);
 
 	err = fdt_splice_struct_(fdt, *prop, 0, proplen);
-	if (err)
+	if (err) {
+		if (allocated)
+			fdt_del_last_string_(fdt, name);
 		return err;
+	}
 
 	(*prop)->tag = cpu_to_fdt32(FDT_PROP);
 	(*prop)->nameoff = cpu_to_fdt32(namestroff);
diff --git a/scripts/dtc/libfdt/fdt_strerror.c b/scripts/dtc/libfdt/fdt_strerror.c
index 9677a1887e57..768db66eada5 100644
--- a/scripts/dtc/libfdt/fdt_strerror.c
+++ b/scripts/dtc/libfdt/fdt_strerror.c
@@ -1,51 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include "libfdt_env.h"
@@ -82,6 +38,7 @@ static struct fdt_errtabent fdt_errtable[] = {
 	FDT_ERRTABENT(FDT_ERR_BADVALUE),
 	FDT_ERRTABENT(FDT_ERR_BADOVERLAY),
 	FDT_ERRTABENT(FDT_ERR_NOPHANDLES),
+	FDT_ERRTABENT(FDT_ERR_BADFLAGS),
 };
 #define FDT_ERRTABSIZE	(sizeof(fdt_errtable) / sizeof(fdt_errtable[0]))
 
diff --git a/scripts/dtc/libfdt/fdt_sw.c b/scripts/dtc/libfdt/fdt_sw.c
index 9fa4a94d83c3..76bea22f734f 100644
--- a/scripts/dtc/libfdt/fdt_sw.c
+++ b/scripts/dtc/libfdt/fdt_sw.c
@@ -1,52 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include "libfdt_env.h"
 
@@ -121,6 +76,12 @@ static int fdt_sw_probe_struct_(void *fdt)
 			return err; \
 	}
 
+static inline uint32_t sw_flags(void *fdt)
+{
+	/* assert: (fdt_magic(fdt) == FDT_SW_MAGIC) */
+	return fdt_last_comp_version(fdt);
+}
+
 /* 'complete' state:	Enter this state after fdt_finish()
  *
  * Allowed functions: none
@@ -141,7 +102,7 @@ static void *fdt_grab_space_(void *fdt, size_t len)
 	return fdt_offset_ptr_w_(fdt, offset);
 }
 
-int fdt_create(void *buf, int bufsize)
+int fdt_create_with_flags(void *buf, int bufsize, uint32_t flags)
 {
 	const size_t hdrsize = FDT_ALIGN(sizeof(struct fdt_header),
 					 sizeof(struct fdt_reserve_entry));
@@ -150,11 +111,22 @@ int fdt_create(void *buf, int bufsize)
 	if (bufsize < hdrsize)
 		return -FDT_ERR_NOSPACE;
 
+	if (flags & ~FDT_CREATE_FLAGS_ALL)
+		return -FDT_ERR_BADFLAGS;
+
 	memset(buf, 0, bufsize);
 
+	/*
+	 * magic and last_comp_version keep intermediate state during the fdt
+	 * creation process, which is replaced with the proper FDT format by
+	 * fdt_finish().
+	 *
+	 * flags should be accessed with sw_flags().
+	 */
 	fdt_set_magic(fdt, FDT_SW_MAGIC);
 	fdt_set_version(fdt, FDT_LAST_SUPPORTED_VERSION);
-	fdt_set_last_comp_version(fdt, FDT_FIRST_SUPPORTED_VERSION);
+	fdt_set_last_comp_version(fdt, flags);
+
 	fdt_set_totalsize(fdt,  bufsize);
 
 	fdt_set_off_mem_rsvmap(fdt, hdrsize);
@@ -164,6 +136,11 @@ int fdt_create(void *buf, int bufsize)
 	return 0;
 }
 
+int fdt_create(void *buf, int bufsize)
+{
+	return fdt_create_with_flags(buf, bufsize, 0);
+}
+
 int fdt_resize(void *fdt, void *buf, int bufsize)
 {
 	size_t headsize, tailsize;
@@ -262,19 +239,13 @@ int fdt_end_node(void *fdt)
 	return 0;
 }
 
-static int fdt_find_add_string_(void *fdt, const char *s)
+static int fdt_add_string_(void *fdt, const char *s)
 {
 	char *strtab = (char *)fdt + fdt_totalsize(fdt);
-	const char *p;
 	int strtabsize = fdt_size_dt_strings(fdt);
 	int len = strlen(s) + 1;
 	int struct_top, offset;
 
-	p = fdt_find_string_(strtab - strtabsize, strtabsize, s);
-	if (p)
-		return p - strtab;
-
-	/* Add it */
 	offset = -strtabsize - len;
 	struct_top = fdt_off_dt_struct(fdt) + fdt_size_dt_struct(fdt);
 	if (fdt_totalsize(fdt) + offset < struct_top)
@@ -285,20 +256,56 @@ static int fdt_find_add_string_(void *fdt, const char *s)
 	return offset;
 }
 
+/* Must only be used to roll back in case of error */
+static void fdt_del_last_string_(void *fdt, const char *s)
+{
+	int strtabsize = fdt_size_dt_strings(fdt);
+	int len = strlen(s) + 1;
+
+	fdt_set_size_dt_strings(fdt, strtabsize - len);
+}
+
+static int fdt_find_add_string_(void *fdt, const char *s, int *allocated)
+{
+	char *strtab = (char *)fdt + fdt_totalsize(fdt);
+	int strtabsize = fdt_size_dt_strings(fdt);
+	const char *p;
+
+	*allocated = 0;
+
+	p = fdt_find_string_(strtab - strtabsize, strtabsize, s);
+	if (p)
+		return p - strtab;
+
+	*allocated = 1;
+
+	return fdt_add_string_(fdt, s);
+}
+
 int fdt_property_placeholder(void *fdt, const char *name, int len, void **valp)
 {
 	struct fdt_property *prop;
 	int nameoff;
+	int allocated;
 
 	FDT_SW_PROBE_STRUCT(fdt);
 
-	nameoff = fdt_find_add_string_(fdt, name);
+	/* String de-duplication can be slow, _NO_NAME_DEDUP skips it */
+	if (sw_flags(fdt) & FDT_CREATE_FLAG_NO_NAME_DEDUP) {
+		allocated = 1;
+		nameoff = fdt_add_string_(fdt, name);
+	} else {
+		nameoff = fdt_find_add_string_(fdt, name, &allocated);
+	}
 	if (nameoff == 0)
 		return -FDT_ERR_NOSPACE;
 
 	prop = fdt_grab_space_(fdt, sizeof(*prop) + FDT_TAGALIGN(len));
-	if (! prop)
+	if (! prop) {
+		if (allocated)
+			fdt_del_last_string_(fdt, name);
 		return -FDT_ERR_NOSPACE;
+	}
 
 	prop->tag = cpu_to_fdt32(FDT_PROP);
 	prop->nameoff = cpu_to_fdt32(nameoff);
@@ -360,6 +367,10 @@ int fdt_finish(void *fdt)
 
 	/* Finally, adjust the header */
 	fdt_set_totalsize(fdt, newstroffset + fdt_size_dt_strings(fdt));
+
+	/* And fix up fields that were keeping intermediate state. */
+	fdt_set_last_comp_version(fdt, FDT_FIRST_SUPPORTED_VERSION);
 	fdt_set_magic(fdt, FDT_MAGIC);
+
 	return 0;
 }
diff --git a/scripts/dtc/libfdt/fdt_wip.c b/scripts/dtc/libfdt/fdt_wip.c
index 534c1cbbb2f3..f64139e0b3dc 100644
--- a/scripts/dtc/libfdt/fdt_wip.c
+++ b/scripts/dtc/libfdt/fdt_wip.c
@@ -1,52 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include "libfdt_env.h"
 
diff --git a/scripts/dtc/libfdt/libfdt.h b/scripts/dtc/libfdt/libfdt.h
index 15eb0fd3c6bb..7b5ffd13a887 100644
--- a/scripts/dtc/libfdt/libfdt.h
+++ b/scripts/dtc/libfdt/libfdt.h
@@ -1,54 +1,9 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause) */
 #ifndef LIBFDT_H
 #define LIBFDT_H
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #include "libfdt_env.h"
@@ -138,7 +93,15 @@
 	/* FDT_ERR_NOPHANDLES: The device tree doesn't have any
 	 * phandle available anymore without causing an overflow */
 
-#define FDT_ERR_MAX		17
+#define FDT_ERR_BADFLAGS	18
+	/* FDT_ERR_BADFLAGS: The function was passed a flags field that
+	 * contains invalid flags or an invalid combination of flags. */
+
+#define FDT_ERR_MAX		18
+
+/* constants */
+#define FDT_MAX_PHANDLE 0xfffffffe
+	/* Valid values for phandles range from 1 to 2^32-2. */
 
 /**********************************************************************/
 /* Low-level functions (you probably don't need these)                */
@@ -171,6 +134,16 @@ static inline uint32_t fdt32_ld(const fdt32_t *p)
 		| bp[3];
 }
 
+static inline void fdt32_st(void *property, uint32_t value)
+{
+	uint8_t *bp = property;
+
+	bp[0] = value >> 24;
+	bp[1] = (value >> 16) & 0xff;
+	bp[2] = (value >> 8) & 0xff;
+	bp[3] = value & 0xff;
+}
+
 static inline uint64_t fdt64_ld(const fdt64_t *p)
 {
 	const uint8_t *bp = (const uint8_t *)p;
@@ -185,6 +158,20 @@ static inline uint64_t fdt64_ld(const fdt64_t *p)
 		| bp[7];
 }
 
+static inline void fdt64_st(void *property, uint64_t value)
+{
+	uint8_t *bp = property;
+
+	bp[0] = value >> 56;
+	bp[1] = (value >> 48) & 0xff;
+	bp[2] = (value >> 40) & 0xff;
+	bp[3] = (value >> 32) & 0xff;
+	bp[4] = (value >> 24) & 0xff;
+	bp[5] = (value >> 16) & 0xff;
+	bp[6] = (value >> 8) & 0xff;
+	bp[7] = value & 0xff;
+}
+
 /**********************************************************************/
 /* Traversal functions                                                */
 /**********************************************************************/
@@ -361,6 +348,20 @@ const char *fdt_get_string(const void *fdt, int stroffset, int *lenp);
  */
 const char *fdt_string(const void *fdt, int stroffset);
 
+/**
+ * fdt_find_max_phandle - find and return the highest phandle in a tree
+ * @fdt: pointer to the device tree blob
+ * @phandle: return location for the highest phandle value found in the tree
+ *
+ * fdt_find_max_phandle() finds the highest phandle value in the given device
+ * tree. The value returned in @phandle is only valid if the function returns
+ * success.
+ *
+ * returns:
+ *     0 on success or a negative error code on failure
+ */
+int fdt_find_max_phandle(const void *fdt, uint32_t *phandle);
+
 /**
  * fdt_get_max_phandle - retrieves the highest phandle in a tree
  * @fdt: pointer to the device tree blob
@@ -369,12 +370,39 @@ const char *fdt_string(const void *fdt, int stroffset);
  * device tree. This will ignore badly formatted phandles, or phandles
  * with a value of 0 or -1.
  *
+ * This function is deprecated in favour of fdt_find_max_phandle().
+ *
  * returns:
  *      the highest phandle on success
  *      0, if no phandle was found in the device tree
  *      -1, if an error occurred
  */
-uint32_t fdt_get_max_phandle(const void *fdt);
+static inline uint32_t fdt_get_max_phandle(const void *fdt)
+{
+	uint32_t phandle;
+	int err;
+
+	err = fdt_find_max_phandle(fdt, &phandle);
+	if (err < 0)
+		return (uint32_t)-1;
+
+	return phandle;
+}
+
+/**
+ * fdt_generate_phandle - return a new, unused phandle for a device tree blob
+ * @fdt: pointer to the device tree blob
+ * @phandle: return location for the new phandle
+ *
+ * Walks the device tree blob and looks for the highest phandle value. On
+ * success, the new, unused phandle value (one higher than the previously
+ * highest phandle value in the device tree blob) will be returned in the
+ * @phandle parameter.
+ *
+ * Returns:
+ *   0 on success or a negative error-code on failure
+ */
+int fdt_generate_phandle(const void *fdt, uint32_t *phandle);
 
 /**
  * fdt_num_mem_rsv - retrieve the number of memory reserve map entries
@@ -1360,7 +1388,45 @@ int fdt_nop_node(void *fdt, int nodeoffset);
 /* Sequential write functions                                         */
 /**********************************************************************/
 
+/* fdt_create_with_flags flags */
+#define FDT_CREATE_FLAG_NO_NAME_DEDUP 0x1
+	/* FDT_CREATE_FLAG_NO_NAME_DEDUP: Do not try to de-duplicate property
+	 * names in the fdt. This can result in faster creation times, but
+	 * a larger fdt. */
+
+#define FDT_CREATE_FLAGS_ALL	(FDT_CREATE_FLAG_NO_NAME_DEDUP)
+
+/**
+ * fdt_create_with_flags - begin creation of a new fdt
+ * @fdt: pointer to memory allocated where fdt will be created
+ * @bufsize: size of the memory space at fdt
+ * @flags: a valid combination of FDT_CREATE_FLAG_ flags, or 0.
+ *
+ * fdt_create_with_flags() begins the process of creating a new fdt with
+ * the sequential write interface.
+ *
+ * fdt creation process must end with fdt_finished() to produce a valid fdt.
+ *
+ * returns:
+ *	0, on success
+ *	-FDT_ERR_NOSPACE, bufsize is insufficient for a minimal fdt
+ *	-FDT_ERR_BADFLAGS, flags is not valid
+ */
+int fdt_create_with_flags(void *buf, int bufsize, uint32_t flags);
+
+/**
+ * fdt_create - begin creation of a new fdt
+ * @fdt: pointer to memory allocated where fdt will be created
+ * @bufsize: size of the memory space at fdt
+ *
+ * fdt_create() is equivalent to fdt_create_with_flags() with flags=0.
+ *
+ * returns:
+ *	0, on success
+ *	-FDT_ERR_NOSPACE, bufsize is insufficient for a minimal fdt
+ */
 int fdt_create(void *buf, int bufsize);
+
 int fdt_resize(void *fdt, void *buf, int bufsize);
 int fdt_add_reservemap_entry(void *fdt, uint64_t addr, uint64_t size);
 int fdt_finish_reservemap(void *fdt);
@@ -1831,6 +1897,43 @@ static inline int fdt_appendprop_cell(void *fdt, int nodeoffset,
 #define fdt_appendprop_string(fdt, nodeoffset, name, str) \
 	fdt_appendprop((fdt), (nodeoffset), (name), (str), strlen(str)+1)
 
+/**
+ * fdt_appendprop_addrrange - append a address range property
+ * @fdt: pointer to the device tree blob
+ * @parent: offset of the parent node
+ * @nodeoffset: offset of the node to add a property at
+ * @name: name of property
+ * @addr: start address of a given range
+ * @size: size of a given range
+ *
+ * fdt_appendprop_addrrange() appends an address range value (start
+ * address and size) to the value of the named property in the given
+ * node, or creates a new property with that value if it does not
+ * already exist.
+ * If "name" is not specified, a default "reg" is used.
+ * Cell sizes are determined by parent's #address-cells and #size-cells.
+ *
+ * This function may insert data into the blob, and will therefore
+ * change the offsets of some existing nodes.
+ *
+ * returns:
+ *	0, on success
+ *	-FDT_ERR_BADLAYOUT,
+ *	-FDT_ERR_BADMAGIC,
+ *	-FDT_ERR_BADNCELLS, if the node has a badly formatted or invalid
+ *		#address-cells property
+ *	-FDT_ERR_BADOFFSET, nodeoffset did not point to FDT_BEGIN_NODE tag
+ *	-FDT_ERR_BADSTATE,
+ *	-FDT_ERR_BADSTRUCTURE,
+ *	-FDT_ERR_BADVERSION,
+ *	-FDT_ERR_BADVALUE, addr or size doesn't fit to respective cells size
+ *	-FDT_ERR_NOSPACE, there is insufficient free space in the blob to
+ *		contain a new property
+ *	-FDT_ERR_TRUNCATED, standard meanings
+ */
+int fdt_appendprop_addrrange(void *fdt, int parent, int nodeoffset,
+			     const char *name, uint64_t addr, uint64_t size);
+
 /**
  * fdt_delprop - delete a property
  * @fdt: pointer to the device tree blob
diff --git a/scripts/dtc/libfdt/libfdt_env.h b/scripts/dtc/libfdt/libfdt_env.h
index eb2053845c9c..73b6d40450ac 100644
--- a/scripts/dtc/libfdt/libfdt_env.h
+++ b/scripts/dtc/libfdt/libfdt_env.h
@@ -1,57 +1,13 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause) */
 #ifndef LIBFDT_ENV_H
 #define LIBFDT_ENV_H
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
  * Copyright 2012 Kim Phillips, Freescale Semiconductor.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
+#include <stdbool.h>
 #include <stddef.h>
 #include <stdint.h>
 #include <stdlib.h>
diff --git a/scripts/dtc/libfdt/libfdt_internal.h b/scripts/dtc/libfdt/libfdt_internal.h
index 4109f890ae60..741eeb31502b 100644
--- a/scripts/dtc/libfdt/libfdt_internal.h
+++ b/scripts/dtc/libfdt/libfdt_internal.h
@@ -1,54 +1,9 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause) */
 #ifndef LIBFDT_INTERNAL_H
 #define LIBFDT_INTERNAL_H
 /*
  * libfdt - Flat Device Tree manipulation
  * Copyright (C) 2006 David Gibson, IBM Corporation.
- *
- * libfdt is dual licensed: you can use it either under the terms of
- * the GPL, or the BSD license, at your option.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- *     You should have received a copy of the GNU General Public
- *     License along with this library; if not, write to the Free
- *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
- *     MA 02110-1301 USA
- *
- * Alternatively,
- *
- *  b) Redistribution and use in source and binary forms, with or
- *     without modification, are permitted provided that the following
- *     conditions are met:
- *
- *     1. Redistributions of source code must retain the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer.
- *     2. Redistributions in binary form must reproduce the above
- *        copyright notice, this list of conditions and the following
- *        disclaimer in the documentation and/or other materials
- *        provided with the distribution.
- *
- *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
- *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
- *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
- *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
- *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
- *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
- *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
- *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
- *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
- *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
- *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 #include <fdt.h>
 
@@ -56,11 +11,11 @@
 #define FDT_TAGALIGN(x)		(FDT_ALIGN((x), FDT_TAGSIZE))
 
 int fdt_ro_probe_(const void *fdt);
-#define FDT_RO_PROBE(fdt)			\
-	{ \
-		int err_; \
-		if ((err_ = fdt_ro_probe_(fdt)) != 0)	\
-			return err_; \
+#define FDT_RO_PROBE(fdt)					\
+	{							\
+		int totalsize_;					\
+		if ((totalsize_ = fdt_ro_probe_(fdt)) < 0)	\
+			return totalsize_;			\
 	}
 
 int fdt_check_node_offset_(const void *fdt, int offset);
diff --git a/scripts/dtc/livetree.c b/scripts/dtc/livetree.c
index 7a2e6446a17b..032df5878ccc 100644
--- a/scripts/dtc/livetree.c
+++ b/scripts/dtc/livetree.c
@@ -1,21 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include "dtc.h"
@@ -249,6 +234,7 @@ struct node * add_orphan_node(struct node *dt, struct node *new_node, char *ref)
 	char *name;
 
 	if (ref[0] == '/') {
+		d = data_add_marker(d, TYPE_STRING, ref);
 		d = data_append_data(d, ref, strlen(ref) + 1);
 
 		p = build_property("target-path", d, NULL);
@@ -350,17 +336,20 @@ void delete_node(struct node *node)
 }
 
 void append_to_property(struct node *node,
-				    char *name, const void *data, int len)
+			char *name, const void *data, int len,
+			enum markertype type)
 {
 	struct data d;
 	struct property *p;
 
 	p = get_property(node, name);
 	if (p) {
-		d = data_append_data(p->val, data, len);
+		d = data_add_marker(p->val, type, name);
+		d = data_append_data(d, data, len);
 		p->val = d;
 	} else {
-		d = data_append_data(empty_data, data, len);
+		d = data_add_marker(empty_data, type, name);
+		d = data_append_data(d, data, len);
 		p = build_property(name, d, NULL);
 		add_property(node, p);
 	}
@@ -537,8 +526,7 @@ struct node *get_node_by_path(struct node *tree, const char *path)
 	p = strchr(path, '/');
 
 	for_each_child(tree, child) {
-		if (p && (strlen(child->name) == p-path) &&
-		    strprefixeq(path, p - path, child->name))
+		if (p && strprefixeq(path, p - path, child->name))
 			return get_node_by_path(child, p+1);
 		else if (!p && streq(path, child->name))
 			return child;
@@ -858,8 +846,8 @@ static void generate_label_tree_internal(struct dt_info *dti,
 
 			/* insert it */
 			p = build_property(l->label,
-				data_copy_mem(node->fullpath,
-						strlen(node->fullpath) + 1),
+				data_copy_escape_string(node->fullpath,
+						strlen(node->fullpath)),
 				NULL);
 			add_property(an, p);
 		}
@@ -910,7 +898,7 @@ static void add_fixup_entry(struct dt_info *dti, struct node *fn,
 
 	xasprintf(&entry, "%s:%s:%u",
 			node->fullpath, prop->name, m->offset);
-	append_to_property(fn, m->ref, entry, strlen(entry) + 1);
+	append_to_property(fn, m->ref, entry, strlen(entry) + 1, TYPE_STRING);
 
 	free(entry);
 }
@@ -970,7 +958,7 @@ static void add_local_fixup_entry(struct dt_info *dti,
 	char **compp;
 	int i, depth;
 
-	/* walk back retreiving depth */
+	/* walk back retrieving depth */
 	depth = 0;
 	for (wn = node; wn; wn = wn->parent)
 		depth++;
@@ -993,7 +981,7 @@ static void add_local_fixup_entry(struct dt_info *dti,
 	free(compp);
 
 	value_32 = cpu_to_fdt32(m->offset);
-	append_to_property(wn, prop->name, &value_32, sizeof(value_32));
+	append_to_property(wn, prop->name, &value_32, sizeof(value_32), TYPE_UINT32);
 }
 
 static void generate_local_fixups_tree_internal(struct dt_info *dti,
diff --git a/scripts/dtc/srcpos.c b/scripts/dtc/srcpos.c
index 41f83700ee91..f5205fb9c1ff 100644
--- a/scripts/dtc/srcpos.c
+++ b/scripts/dtc/srcpos.c
@@ -1,20 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2007 Jon Loeliger, Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #define _GNU_SOURCE
diff --git a/scripts/dtc/srcpos.h b/scripts/dtc/srcpos.h
index 6326a952c40e..4318d7ad34d9 100644
--- a/scripts/dtc/srcpos.h
+++ b/scripts/dtc/srcpos.h
@@ -1,20 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright 2007 Jon Loeliger, Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #ifndef SRCPOS_H
diff --git a/scripts/dtc/treesource.c b/scripts/dtc/treesource.c
index 1af36628b75f..c9d980c8abfc 100644
--- a/scripts/dtc/treesource.c
+++ b/scripts/dtc/treesource.c
@@ -1,21 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include "dtc.h"
diff --git a/scripts/dtc/util.c b/scripts/dtc/util.c
index 9c6fb5f286ae..48af961dcc8c 100644
--- a/scripts/dtc/util.c
+++ b/scripts/dtc/util.c
@@ -1,24 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2011 The Chromium Authors, All Rights Reserved.
  * Copyright 2008 Jon Loeliger, Freescale Semiconductor, Inc.
  *
  * util_is_printable_string contributed by
  *	Pantelis Antoniou <pantelis.antoniou AT gmail.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include <ctype.h>
diff --git a/scripts/dtc/util.h b/scripts/dtc/util.h
index 7658781a6200..ca5cb52928e3 100644
--- a/scripts/dtc/util.h
+++ b/scripts/dtc/util.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #ifndef UTIL_H
 #define UTIL_H
 
@@ -8,21 +9,6 @@
 /*
  * Copyright 2011 The Chromium Authors, All Rights Reserved.
  * Copyright 2008 Jon Loeliger, Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #ifdef __GNUC__
@@ -122,7 +108,7 @@ int utilfdt_read_err(const char *filename, char **buffp, size_t *len);
  * stderr.
  *
  * @param filename	The filename to write, or - for stdout
- * @param blob		Poiner to buffer containing fdt
+ * @param blob		Pointer to buffer containing fdt
  * @return 0 if ok, -1 on error
  */
 int utilfdt_write(const char *filename, const void *blob);
@@ -133,7 +119,7 @@ int utilfdt_write(const char *filename, const void *blob);
  * an error message for the user.
  *
  * @param filename	The filename to write, or - for stdout
- * @param blob		Poiner to buffer containing fdt
+ * @param blob		Pointer to buffer containing fdt
  * @return 0 if ok, else an errno value representing the error
  */
 int utilfdt_write_err(const char *filename, const void *blob);
diff --git a/scripts/dtc/yamltree.c b/scripts/dtc/yamltree.c
index a00285a5a9ec..5b6ea8ea862f 100644
--- a/scripts/dtc/yamltree.c
+++ b/scripts/dtc/yamltree.c
@@ -1,22 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * (C) Copyright Linaro, Ltd. 2018
  * (C) Copyright Arm Holdings.  2017
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- *  General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
- *                                                                   USA
  */
 
 #include <stdlib.h>
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
