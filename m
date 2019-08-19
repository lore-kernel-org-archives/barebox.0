Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhsI-0002aX-KQ
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 13:39:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Aug 2019 15:38:41 +0200
Message-Id: <20190819133847.17015-3-s.hauer@pengutronix.de>
In-Reply-To: <20190819133847.17015-1-s.hauer@pengutronix.de>
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] scripts/dtc: Update to upstream version v1.5.0
To: Barebox List <barebox@lists.infradead.org>

This adds the following commits from upstream:

d37f6b2 Bump version to v1.5.0
a4b1a30 pylibfdt:tests: Extend the way how to find a Python module
625dd8a pylibfdt: Change how passing tests are recognized
3646316 pylibfdt: Test fdt.setprop take bytes on Python 3, add error handling
cb0f454 pylibfdt: check_err accepts only integer as a first argument.
4b68c6b pylibfdt: Proper handling of bytes/unicode strings and octal literals
78e113e Use PRIxPTR for printing uintptr_t values
ea7a8f6 libfdt: Fix FDT_ERR_NOTFOUND typos in documentation
5aafd7c libfdt: Fix fdt_getprop_by_offset() parameter name in documentation
7cbc550 checks: Add unit address check if node is enabled
f267e67 checks: Fix crash with multiple source annotations
3616b9a checks: Use source position information for check failures
2bdbd07 checks: Make each message output atomic
a1eff70 util: Add xa{v}sprintf_append functions
82a52ce libfdt: Add a test for fdt_getprop_by_offset()
607b858 PEP8 / Flake8 cleanups for setup.py
f9c0a42 Remove broken objdir / srcdir support
5182b5e pylibfdt: Use common PREFIX variable
d45bf1f Refine make tests_clean target
99284c4 Refine pylibfdt_clean target
a4629cf Refine libfdt_clean target
08380fc tests: Use modern octal literals for Python
8113c00 pylibfdt: Allow switch to Python 3 via environment variable PYTHON
11738cf libfdt: Don't use memcpy to handle unaligned reads on ARM
86a288a checks: Restructure check_msg to decrease indentation
5667e7e annotations: add the annotation functionality
8e20ccf annotations: add positions
ca930e2 tests: Don't lose errors from make checkm
43366bb tests: Property count valgrind errors in wrapped tests
5062516 srcpos: Remove srcpos_empty
a3143fa Revert "annotations: add positions"
403cc79 checks: Update SPI bus check for 'spi-slave'
baa1d2c annotations: add positions
ff2ad38 Merge remote-tracking branch 'origin/pr/18'
aa7254d libfdt: return correct value if #size-cells property is not present
49903ae use ptrdiff_t modifier for printing pointer differences
da2b691 treesource: Fix dts output for phandles in middle of a sequence of ints
8f8b77a tests: Wrap check_align() calls with base_run_test()
522d81d Fix dts output with a REF_PATH marker
e45198c Added test cases for target references
0fcffda Merge nodes with local target label references
1e4a092 pylibfdt: Don't have setup.py depend on where it's invoked from
ca399b1 pylibfdt: Eliminate run_setup make function
98972f1 pylibfdt: Improved version extraction
7ba2be6 pylibfdt: Don't silence setup.py when V=1
7691f9d pylibfdt: Make SETUP make variable
855b996 pylibfdt: Simpler CFLAGS handling
47cafbe pylibfdt: Link extension module with libfdt rather than rebuilding
dd695d6 pylibfdt: Correctly set build output directory
5932752 pylibfdt: We don't need include files from the base directory
e84742a checks: fix simple-bus compatible matching
8c59a97 Fix missing labels when emitting dts format
d448f9a Revert dts output formatting changes of spaces around brackets
c86da84 Add support for YAML encoded output
361b5e7 Make type_marker_length helper public
bfbfab0 pylibfdt: Add a means to add and delete notes
9005f41 pylibfdt: Allow delprop() to return errors
b94c056 Make valgrind optional
fd06c54 tests: Better testing of dtc -I fs mode
c3f50c9 tests: Allow dtbs_equal_unordered to ignore mem reserves
0ac9fde dtc: trivial '-I fs -O dts' test
0fd1c8c pylibfdt: fdt_get_mem_rsv returns 2 uint64_t values
04853ca pylibfdt: Don't incorrectly / unnecessarily override uint64_t typemap
9619c86 Kill bogus TYPE_BLOB marker type
ac68ff9 parser: add TYPE_STRING marker to path references
90a190e checks: add SPI bus checks
53a1bd5 checks: add I2C bus checks

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/dtc/Makefile                       |  49 +--
 scripts/dtc/Makefile.dtc                   |   4 +
 scripts/dtc/checks.c                       | 255 +++++++++++++-
 scripts/dtc/data.c                         |   2 +-
 scripts/dtc/dtc-lexer.l                    |   4 +-
 scripts/dtc/dtc-parser.y                   |  53 ++-
 scripts/dtc/dtc.c                          |  22 +-
 scripts/dtc/dtc.h                          |  18 +-
 scripts/dtc/fdtget.c                       | 383 ---------------------
 scripts/dtc/flattree.c                     |   4 +-
 scripts/dtc/fstree.c                       |   5 +-
 scripts/dtc/libfdt/Makefile.libfdt         |  15 +
 scripts/dtc/{ => libfdt}/fdt.c             |   0
 scripts/dtc/{ => libfdt}/fdt.h             |   0
 scripts/dtc/{ => libfdt}/fdt_addresses.c   |  16 +-
 scripts/dtc/{ => libfdt}/fdt_empty_tree.c  |   0
 scripts/dtc/{ => libfdt}/fdt_overlay.c     |   0
 scripts/dtc/{ => libfdt}/fdt_ro.c          |   0
 scripts/dtc/{ => libfdt}/fdt_rw.c          |   0
 scripts/dtc/{ => libfdt}/fdt_strerror.c    |   0
 scripts/dtc/{ => libfdt}/fdt_sw.c          |   0
 scripts/dtc/{ => libfdt}/fdt_wip.c         |   0
 scripts/dtc/{ => libfdt}/libfdt.h          |  30 +-
 scripts/dtc/{ => libfdt}/libfdt_env.h      |   0
 scripts/dtc/{ => libfdt}/libfdt_internal.h |   0
 scripts/dtc/livetree.c                     |  33 +-
 scripts/dtc/srcpos.c                       | 153 +++++++-
 scripts/dtc/srcpos.h                       |  14 +-
 scripts/dtc/treesource.c                   | 124 ++++---
 scripts/dtc/util.c                         |  60 ++--
 scripts/dtc/util.h                         |   2 +
 scripts/dtc/version_gen.h                  |   2 +-
 scripts/dtc/yamltree.c                     | 247 +++++++++++++
 33 files changed, 926 insertions(+), 569 deletions(-)
 delete mode 100644 scripts/dtc/fdtget.c
 create mode 100644 scripts/dtc/libfdt/Makefile.libfdt
 rename scripts/dtc/{ => libfdt}/fdt.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt.h (100%)
 rename scripts/dtc/{ => libfdt}/fdt_addresses.c (92%)
 rename scripts/dtc/{ => libfdt}/fdt_empty_tree.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_overlay.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_ro.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_rw.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_strerror.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_sw.c (100%)
 rename scripts/dtc/{ => libfdt}/fdt_wip.c (100%)
 rename scripts/dtc/{ => libfdt}/libfdt.h (99%)
 rename scripts/dtc/{ => libfdt}/libfdt_env.h (100%)
 rename scripts/dtc/{ => libfdt}/libfdt_internal.h (100%)
 create mode 100644 scripts/dtc/yamltree.c

diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index 1d63476ecc..5f227d8d39 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -1,43 +1,30 @@
+# SPDX-License-Identifier: GPL-2.0
 # scripts/dtc makefile
 
-hostprogs-y	:= dtc fdtget
+hostprogs-$(CONFIG_DTC) := dtc
 always		:= $(hostprogs-y)
 
 dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
 		   srcpos.o checks.o util.o
 dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
 
-libfdt-objs	= fdt.o fdt_ro.o fdt_strerror.o fdt_wip.o fdt_overlay.o
-libfdt-objs	+= fdt_empty_tree.o fdt_rw.o fdt_sw.o
-
-fdtget-objs    += fdtget.o $(libfdt-objs) util.o
-
 # Source files need to get at the userspace version of libfdt_env.h to compile
-
-HOSTCFLAGS_DTC := -I$(src)
-
-HOSTCFLAGS_checks.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_data.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_dtc.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_flattree.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_fstree.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_livetree.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_srcpos.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_treesource.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_util.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_fdtget.o := $(HOSTCFLAGS_DTC)
-
-HOSTCFLAGS_fdt.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_fdt_ro.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_fdt_strerror.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_fdt_wip.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_fdt_empty_tree.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_fdt_rw.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_fdt_sw.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_fdt_overlay.o := $(HOSTCFLAGS_DTC)
-
-HOSTCFLAGS_dtc-lexer.lex.o := $(HOSTCFLAGS_DTC)
-HOSTCFLAGS_dtc-parser.tab.o := $(HOSTCFLAGS_DTC)
+HOST_EXTRACFLAGS := -I$(src)/libfdt
+
+ifeq ($(wildcard /usr/include/yaml.h),)
+ifneq ($(CHECK_DTBS),)
+$(error dtc needs libyaml for DT schema validation support. \
+	Install the necessary libyaml development package.)
+endif
+HOST_EXTRACFLAGS += -DNO_YAML
+else
+dtc-objs	+= yamltree.o
+HOSTLDLIBS_dtc	:= -lyaml
+endif
+
+# Generated files need one more search path to include headers in source tree
+HOSTCFLAGS_dtc-lexer.lex.o := -I$(src)
+HOSTCFLAGS_dtc-parser.tab.o := -I$(src)
 
 # dependencies on generated files need to be listed explicitly
 $(obj)/dtc-lexer.lex.o: $(obj)/dtc-parser.tab.h
diff --git a/scripts/dtc/Makefile.dtc b/scripts/dtc/Makefile.dtc
index bece49b355..d4375630a7 100644
--- a/scripts/dtc/Makefile.dtc
+++ b/scripts/dtc/Makefile.dtc
@@ -14,5 +14,9 @@ DTC_SRCS = \
 	treesource.c \
 	util.c
 
+ifneq ($(NO_YAML),1)
+DTC_SRCS += yamltree.c
+endif
+
 DTC_GEN_SRCS = dtc-lexer.lex.c dtc-parser.tab.c
 DTC_OBJS = $(DTC_SRCS:%.c=%.o) $(DTC_GEN_SRCS:%.c=%.o)
diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
index a2cc1036c9..c0ed45e1c3 100644
--- a/scripts/dtc/checks.c
+++ b/scripts/dtc/checks.c
@@ -19,6 +19,7 @@
  */
 
 #include "dtc.h"
+#include "srcpos.h"
 
 #ifdef TRACE_CHECKS
 #define TRACE(c, ...) \
@@ -78,23 +79,56 @@ static inline void  PRINTF(5, 6) check_msg(struct check *c, struct dt_info *dti,
 					   const char *fmt, ...)
 {
 	va_list ap;
-	va_start(ap, fmt);
+	char *str = NULL;
+	struct srcpos *pos = NULL;
+	char *file_str;
+
+	if (!(c->warn && (quiet < 1)) && !(c->error && (quiet < 2)))
+		return;
+
+	if (prop && prop->srcpos)
+		pos = prop->srcpos;
+	else if (node && node->srcpos)
+		pos = node->srcpos;
+
+	if (pos) {
+		file_str = srcpos_string(pos);
+		xasprintf(&str, "%s", file_str);
+		free(file_str);
+	} else if (streq(dti->outname, "-")) {
+		xasprintf(&str, "<stdout>");
+	} else {
+		xasprintf(&str, "%s", dti->outname);
+	}
 
-	if ((c->warn && (quiet < 1))
-	    || (c->error && (quiet < 2))) {
-		fprintf(stderr, "%s: %s (%s): ",
-			strcmp(dti->outname, "-") ? dti->outname : "<stdout>",
+	xasprintf_append(&str, ": %s (%s): ",
 			(c->error) ? "ERROR" : "Warning", c->name);
-		if (node) {
-			fprintf(stderr, "%s", node->fullpath);
-			if (prop)
-				fprintf(stderr, ":%s", prop->name);
-			fputs(": ", stderr);
-		}
-		vfprintf(stderr, fmt, ap);
-		fprintf(stderr, "\n");
+
+	if (node) {
+		if (prop)
+			xasprintf_append(&str, "%s:%s: ", node->fullpath, prop->name);
+		else
+			xasprintf_append(&str, "%s: ", node->fullpath);
 	}
+
+	va_start(ap, fmt);
+	xavsprintf_append(&str, fmt, ap);
 	va_end(ap);
+
+	xasprintf_append(&str, "\n");
+
+	if (!prop && pos) {
+		pos = node->srcpos;
+		while (pos->next) {
+			pos = pos->next;
+
+			file_str = srcpos_string(pos);
+			xasprintf_append(&str, "  also defined at %s\n", file_str);
+			free(file_str);
+		}
+	}
+
+	fputs(str, stderr);
 }
 
 #define FAIL(c, dti, node, ...)						\
@@ -910,7 +944,7 @@ static bool node_is_compatible(struct node *node, const char *compat)
 
 	for (str = prop->val.val, end = str + prop->val.len; str < end;
 	     str += strnlen(str, end - str) + 1) {
-		if (strprefixeq(str, end - str, compat))
+		if (streq(str, compat))
 			return true;
 	}
 	return false;
@@ -921,7 +955,8 @@ static void check_simple_bus_bridge(struct check *c, struct dt_info *dti, struct
 	if (node_is_compatible(node, "simple-bus"))
 		node->bus = &simple_bus;
 }
-WARNING(simple_bus_bridge, check_simple_bus_bridge, NULL, &addr_size_cells);
+WARNING(simple_bus_bridge, check_simple_bus_bridge, NULL,
+	&addr_size_cells, &compatible_is_string_list);
 
 static void check_simple_bus_reg(struct check *c, struct dt_info *dti, struct node *node)
 {
@@ -962,6 +997,149 @@ static void check_simple_bus_reg(struct check *c, struct dt_info *dti, struct no
 }
 WARNING(simple_bus_reg, check_simple_bus_reg, NULL, &reg_format, &simple_bus_bridge);
 
+static const struct bus_type i2c_bus = {
+	.name = "i2c-bus",
+};
+
+static void check_i2c_bus_bridge(struct check *c, struct dt_info *dti, struct node *node)
+{
+	if (strprefixeq(node->name, node->basenamelen, "i2c-bus") ||
+	    strprefixeq(node->name, node->basenamelen, "i2c-arb")) {
+		node->bus = &i2c_bus;
+	} else if (strprefixeq(node->name, node->basenamelen, "i2c")) {
+		struct node *child;
+		for_each_child(node, child) {
+			if (strprefixeq(child->name, node->basenamelen, "i2c-bus"))
+				return;
+		}
+		node->bus = &i2c_bus;
+	} else
+		return;
+
+	if (!node->children)
+		return;
+
+	if (node_addr_cells(node) != 1)
+		FAIL(c, dti, node, "incorrect #address-cells for I2C bus");
+	if (node_size_cells(node) != 0)
+		FAIL(c, dti, node, "incorrect #size-cells for I2C bus");
+
+}
+WARNING(i2c_bus_bridge, check_i2c_bus_bridge, NULL, &addr_size_cells);
+
+static void check_i2c_bus_reg(struct check *c, struct dt_info *dti, struct node *node)
+{
+	struct property *prop;
+	const char *unitname = get_unitname(node);
+	char unit_addr[17];
+	uint32_t reg = 0;
+	int len;
+	cell_t *cells = NULL;
+
+	if (!node->parent || (node->parent->bus != &i2c_bus))
+		return;
+
+	prop = get_property(node, "reg");
+	if (prop)
+		cells = (cell_t *)prop->val.val;
+
+	if (!cells) {
+		FAIL(c, dti, node, "missing or empty reg property");
+		return;
+	}
+
+	reg = fdt32_to_cpu(*cells);
+	snprintf(unit_addr, sizeof(unit_addr), "%x", reg);
+	if (!streq(unitname, unit_addr))
+		FAIL(c, dti, node, "I2C bus unit address format error, expected \"%s\"",
+		     unit_addr);
+
+	for (len = prop->val.len; len > 0; len -= 4) {
+		reg = fdt32_to_cpu(*(cells++));
+		if (reg > 0x3ff)
+			FAIL_PROP(c, dti, node, prop, "I2C address must be less than 10-bits, got \"0x%x\"",
+				  reg);
+
+	}
+}
+WARNING(i2c_bus_reg, check_i2c_bus_reg, NULL, &reg_format, &i2c_bus_bridge);
+
+static const struct bus_type spi_bus = {
+	.name = "spi-bus",
+};
+
+static void check_spi_bus_bridge(struct check *c, struct dt_info *dti, struct node *node)
+{
+	int spi_addr_cells = 1;
+
+	if (strprefixeq(node->name, node->basenamelen, "spi")) {
+		node->bus = &spi_bus;
+	} else {
+		/* Try to detect SPI buses which don't have proper node name */
+		struct node *child;
+
+		if (node_addr_cells(node) != 1 || node_size_cells(node) != 0)
+			return;
+
+		for_each_child(node, child) {
+			struct property *prop;
+			for_each_property(child, prop) {
+				if (strprefixeq(prop->name, 4, "spi-")) {
+					node->bus = &spi_bus;
+					break;
+				}
+			}
+			if (node->bus == &spi_bus)
+				break;
+		}
+
+		if (node->bus == &spi_bus && get_property(node, "reg"))
+			FAIL(c, dti, node, "node name for SPI buses should be 'spi'");
+	}
+	if (node->bus != &spi_bus || !node->children)
+		return;
+
+	if (get_property(node, "spi-slave"))
+		spi_addr_cells = 0;
+	if (node_addr_cells(node) != spi_addr_cells)
+		FAIL(c, dti, node, "incorrect #address-cells for SPI bus");
+	if (node_size_cells(node) != 0)
+		FAIL(c, dti, node, "incorrect #size-cells for SPI bus");
+
+}
+WARNING(spi_bus_bridge, check_spi_bus_bridge, NULL, &addr_size_cells);
+
+static void check_spi_bus_reg(struct check *c, struct dt_info *dti, struct node *node)
+{
+	struct property *prop;
+	const char *unitname = get_unitname(node);
+	char unit_addr[9];
+	uint32_t reg = 0;
+	cell_t *cells = NULL;
+
+	if (!node->parent || (node->parent->bus != &spi_bus))
+		return;
+
+	if (get_property(node->parent, "spi-slave"))
+		return;
+
+	prop = get_property(node, "reg");
+	if (prop)
+		cells = (cell_t *)prop->val.val;
+
+	if (!cells) {
+		FAIL(c, dti, node, "missing or empty reg property");
+		return;
+	}
+
+	reg = fdt32_to_cpu(*cells);
+	snprintf(unit_addr, sizeof(unit_addr), "%x", reg);
+	if (!streq(unitname, unit_addr))
+		FAIL(c, dti, node, "SPI bus unit address format error, expected \"%s\"",
+		     unit_addr);
+}
+WARNING(spi_bus_reg, check_spi_bus_reg, NULL, &reg_format, &spi_bus_bridge);
+
 static void check_unit_address_format(struct check *c, struct dt_info *dti,
 				      struct node *node)
 {
@@ -1034,8 +1212,24 @@ static void check_avoid_unnecessary_addr_size(struct check *c, struct dt_info *d
 }
 WARNING(avoid_unnecessary_addr_size, check_avoid_unnecessary_addr_size, NULL, &avoid_default_addr_size);
 
-static void check_unique_unit_address(struct check *c, struct dt_info *dti,
-					      struct node *node)
+static bool node_is_disabled(struct node *node)
+{
+	struct property *prop;
+
+	prop = get_property(node, "status");
+	if (prop) {
+		char *str = prop->val.val;
+		if (streq("disabled", str))
+			return true;
+	}
+
+	return false;
+}
+
+static void check_unique_unit_address_common(struct check *c,
+						struct dt_info *dti,
+						struct node *node,
+						bool disable_check)
 {
 	struct node *childa;
 
@@ -1052,18 +1246,38 @@ static void check_unique_unit_address(struct check *c, struct dt_info *dti,
 		if (!strlen(addr_a))
 			continue;
 
+		if (disable_check && node_is_disabled(childa))
+			continue;
+
 		for_each_child(node, childb) {
 			const char *addr_b = get_unitname(childb);
 			if (childa == childb)
 				break;
 
+			if (disable_check && node_is_disabled(childb))
+				continue;
+
 			if (streq(addr_a, addr_b))
 				FAIL(c, dti, childb, "duplicate unit-address (also used in node %s)", childa->fullpath);
 		}
 	}
 }
+
+static void check_unique_unit_address(struct check *c, struct dt_info *dti,
+					      struct node *node)
+{
+	check_unique_unit_address_common(c, dti, node, false);
+}
 WARNING(unique_unit_address, check_unique_unit_address, NULL, &avoid_default_addr_size);
 
+static void check_unique_unit_address_if_enabled(struct check *c, struct dt_info *dti,
+					      struct node *node)
+{
+	check_unique_unit_address_common(c, dti, node, true);
+}
+CHECK_ENTRY(unique_unit_address_if_enabled, check_unique_unit_address_if_enabled,
+	    NULL, false, false, &avoid_default_addr_size);
+
 static void check_obsolete_chosen_interrupt_controller(struct check *c,
 						       struct dt_info *dti,
 						       struct node *node)
@@ -1582,9 +1796,16 @@ static struct check *check_table[] = {
 	&simple_bus_bridge,
 	&simple_bus_reg,
 
+	&i2c_bus_bridge,
+	&i2c_bus_reg,
+
+	&spi_bus_bridge,
+	&spi_bus_reg,
+
 	&avoid_default_addr_size,
 	&avoid_unnecessary_addr_size,
 	&unique_unit_address,
+	&unique_unit_address_if_enabled,
 	&obsolete_chosen_interrupt_controller,
 	&chosen_node_is_root, &chosen_node_bootargs, &chosen_node_stdout_path,
 
diff --git a/scripts/dtc/data.c b/scripts/dtc/data.c
index accdfaef66..4a204145cc 100644
--- a/scripts/dtc/data.c
+++ b/scripts/dtc/data.c
@@ -95,7 +95,7 @@ struct data data_copy_file(FILE *f, size_t maxlen)
 {
 	struct data d = empty_data;
 
-	d = data_add_marker(d, TYPE_BLOB, NULL);
+	d = data_add_marker(d, TYPE_NONE, NULL);
 	while (!feof(f) && (d.len < maxlen)) {
 		size_t chunksize, ret;
 
diff --git a/scripts/dtc/dtc-lexer.l b/scripts/dtc/dtc-lexer.l
index 615b7ec658..06c0409024 100644
--- a/scripts/dtc/dtc-lexer.l
+++ b/scripts/dtc/dtc-lexer.l
@@ -213,14 +213,14 @@ static void PRINTF(1, 2) lexical_error(const char *fmt, ...);
 <*>\&{LABEL}	{	/* label reference */
 			DPRINT("Ref: %s\n", yytext+1);
 			yylval.labelref = xstrdup(yytext+1);
-			return DT_REF;
+			return DT_LABEL_REF;
 		}
 
 <*>"&{/"{PATHCHAR}*\}	{	/* new-style path reference */
 			yytext[yyleng-1] = '\0';
 			DPRINT("Ref: %s\n", yytext+2);
 			yylval.labelref = xstrdup(yytext+2);
-			return DT_REF;
+			return DT_PATH_REF;
 		}
 
 <BYTESTRING>[0-9a-fA-F]{2} {
diff --git a/scripts/dtc/dtc-parser.y b/scripts/dtc/dtc-parser.y
index 815481a9bb..2ec981e861 100644
--- a/scripts/dtc/dtc-parser.y
+++ b/scripts/dtc/dtc-parser.y
@@ -70,7 +70,8 @@ extern bool treesource_error;
 %token <byte> DT_BYTE
 %token <data> DT_STRING
 %token <labelref> DT_LABEL
-%token <labelref> DT_REF
+%token <labelref> DT_LABEL_REF
+%token <labelref> DT_PATH_REF
 %token DT_INCBIN
 
 %type <data> propdata
@@ -83,6 +84,7 @@ extern bool treesource_error;
 %type <data> bytestring
 %type <prop> propdef
 %type <proplist> proplist
+%type <labelref> dt_ref
 
 %type <node> devicetree
 %type <node> nodedef
@@ -158,6 +160,8 @@ memreserve:
 		}
 	;
 
+dt_ref: DT_LABEL_REF | DT_PATH_REF;
+
 devicetree:
 	  '/' nodedef
 		{
@@ -167,7 +171,7 @@ devicetree:
 		{
 			$$ = merge_nodes($1, $3);
 		}
-	| DT_REF nodedef
+	| dt_ref nodedef
 		{
 			/*
 			 * We rely on the rule being always:
@@ -176,9 +180,12 @@ devicetree:
 			 */
 			if (!($<flags>-1 & DTSF_PLUGIN))
 				ERROR(&@2, "Label or path %s not found", $1);
-			$$ = add_orphan_node(name_node(build_node(NULL, NULL), ""), $2, $1);
+			$$ = add_orphan_node(
+					name_node(build_node(NULL, NULL, NULL),
+						  ""),
+					$2, $1);
 		}
-	| devicetree DT_LABEL DT_REF nodedef
+	| devicetree DT_LABEL dt_ref nodedef
 		{
 			struct node *target = get_node_by_ref($1, $3);
 
@@ -189,7 +196,7 @@ devicetree:
 				ERROR(&@3, "Label or path %s not found", $3);
 			$$ = $1;
 		}
-	| devicetree DT_REF nodedef
+	| devicetree DT_PATH_REF nodedef
 		{
 			/*
 			 * We rely on the rule being always:
@@ -208,7 +215,26 @@ devicetree:
 			}
 			$$ = $1;
 		}
-	| devicetree DT_DEL_NODE DT_REF ';'
+	| devicetree DT_LABEL_REF nodedef
+		{
+			struct node *target = get_node_by_ref($1, $2);
+
+			if (target) {
+				merge_nodes(target, $3);
+			} else {
+				/*
+				 * We rely on the rule being always:
+				 *   versioninfo plugindecl memreserves devicetree
+				 * so $-1 is what we want (plugindecl)
+				 */
+				if ($<flags>-1 & DTSF_PLUGIN)
+					add_orphan_node($1, $3, $2);
+				else
+					ERROR(&@2, "Label or path %s not found", $2);
+			}
+			$$ = $1;
+		}
+	| devicetree DT_DEL_NODE dt_ref ';'
 		{
 			struct node *target = get_node_by_ref($1, $3);
 
@@ -220,7 +246,7 @@ devicetree:
 
 			$$ = $1;
 		}
-	| devicetree DT_OMIT_NO_REF DT_REF ';'
+	| devicetree DT_OMIT_NO_REF dt_ref ';'
 		{
 			struct node *target = get_node_by_ref($1, $3);
 
@@ -237,7 +263,7 @@ devicetree:
 nodedef:
 	  '{' proplist subnodes '}' ';'
 		{
-			$$ = build_node($2, $3);
+			$$ = build_node($2, $3, &@$);
 		}
 	;
 
@@ -255,11 +281,11 @@ proplist:
 propdef:
 	  DT_PROPNODENAME '=' propdata ';'
 		{
-			$$ = build_property($1, $3);
+			$$ = build_property($1, $3, &@$);
 		}
 	| DT_PROPNODENAME ';'
 		{
-			$$ = build_property($1, empty_data);
+			$$ = build_property($1, empty_data, &@$);
 		}
 	| DT_DEL_PROP DT_PROPNODENAME ';'
 		{
@@ -285,8 +311,9 @@ propdata:
 		{
 			$$ = data_merge($1, $3);
 		}
-	| propdataprefix DT_REF
+	| propdataprefix dt_ref
 		{
+			$1 = data_add_marker($1, TYPE_STRING, $2);
 			$$ = data_add_marker($1, REF_PATH, $2);
 		}
 	| propdataprefix DT_INCBIN '(' DT_STRING ',' integer_prim ',' integer_prim ')'
@@ -382,7 +409,7 @@ arrayprefix:
 
 			$$.data = data_append_integer($1.data, $2, $1.bits);
 		}
-	| arrayprefix DT_REF
+	| arrayprefix dt_ref
 		{
 			uint64_t val = ~0ULL >> (64 - $1.bits);
 
@@ -539,7 +566,7 @@ subnode:
 		}
 	| DT_DEL_NODE DT_PROPNODENAME ';'
 		{
-			$$ = name_node(build_node_delete(), $2);
+			$$ = name_node(build_node_delete(&@$), $2);
 		}
 	| DT_OMIT_NO_REF subnode
 		{
diff --git a/scripts/dtc/dtc.c b/scripts/dtc/dtc.c
index c36994e6ea..695e1f789f 100644
--- a/scripts/dtc/dtc.c
+++ b/scripts/dtc/dtc.c
@@ -35,6 +35,8 @@ int phandle_format = PHANDLE_EPAPR;	/* Use linux,phandle or phandle properties *
 int generate_symbols;	/* enable symbols & fixup support */
 int generate_fixups;		/* suppress generation of fixups on symbol support */
 int auto_label_aliases;		/* auto generate labels -> aliases */
+int annotate;		/* Level of annotation: 1 for input source location
+			   >1 for full input source location. */
 
 static int is_power_of_2(int x)
 {
@@ -60,7 +62,7 @@ static void fill_fullpaths(struct node *tree, const char *prefix)
 
 /* Usage related data. */
 static const char usage_synopsis[] = "dtc [options] <input file>";
-static const char usage_short_opts[] = "qI:O:o:V:d:R:S:p:a:fb:i:H:sW:E:@Ahv";
+static const char usage_short_opts[] = "qI:O:o:V:d:R:S:p:a:fb:i:H:sW:E:@AThv";
 static struct option const usage_long_opts[] = {
 	{"quiet",            no_argument, NULL, 'q'},
 	{"in-format",         a_argument, NULL, 'I'},
@@ -81,6 +83,7 @@ static struct option const usage_long_opts[] = {
 	{"error",             a_argument, NULL, 'E'},
 	{"symbols",	     no_argument, NULL, '@'},
 	{"auto-alias",       no_argument, NULL, 'A'},
+	{"annotate",         no_argument, NULL, 'T'},
 	{"help",             no_argument, NULL, 'h'},
 	{"version",          no_argument, NULL, 'v'},
 	{NULL,               no_argument, NULL, 0x0},
@@ -95,6 +98,9 @@ static const char * const usage_opts_help[] = {
 	"\n\tOutput formats are:\n"
 	 "\t\tdts - device tree source text\n"
 	 "\t\tdtb - device tree blob\n"
+#ifndef NO_YAML
+	 "\t\tyaml - device tree encoded as YAML\n"
+#endif
 	 "\t\tasm - assembler source",
 	"\n\tBlob version to produce, defaults to "stringify(DEFAULT_FDT_VERSION)" (for dtb and asm output)",
 	"\n\tOutput dependency file",
@@ -114,6 +120,7 @@ static const char * const usage_opts_help[] = {
 	"\n\tEnable/disable errors (prefix with \"no-\")",
 	"\n\tEnable generation of symbols",
 	"\n\tEnable auto-alias of labels",
+	"\n\tAnnotate output .dts with input source file and line (-T -T for more details)",
 	"\n\tPrint this help and exit",
 	"\n\tPrint version and exit",
 	NULL,
@@ -128,6 +135,8 @@ static const char *guess_type_by_name(const char *fname, const char *fallback)
 		return fallback;
 	if (!strcasecmp(s, ".dts"))
 		return "dts";
+	if (!strcasecmp(s, ".yaml"))
+		return "yaml";
 	if (!strcasecmp(s, ".dtb"))
 		return "dtb";
 	return fallback;
@@ -259,6 +268,9 @@ int main(int argc, char *argv[])
 		case 'A':
 			auto_label_aliases = 1;
 			break;
+		case 'T':
+			annotate++;
+			break;
 
 		case 'h':
 			usage(NULL);
@@ -297,6 +309,8 @@ int main(int argc, char *argv[])
 				outform = "dts";
 		}
 	}
+	if (annotate && (!streq(inform, "dts") || !streq(outform, "dts")))
+		die("--annotate requires -I dts -O dts\n");
 	if (streq(inform, "dts"))
 		dti = dt_from_source(arg);
 	else if (streq(inform, "fs"))
@@ -350,6 +364,12 @@ int main(int argc, char *argv[])
 
 	if (streq(outform, "dts")) {
 		dt_to_source(outf, dti);
+#ifndef NO_YAML
+	} else if (streq(outform, "yaml")) {
+		if (!streq(inform, "dts"))
+			die("YAML output format requires dts input format\n");
+		dt_to_yaml(outf, dti);
+#endif
 	} else if (streq(outform, "dtb")) {
 		dt_to_blob(outf, dti, outversion);
 	} else if (streq(outform, "asm")) {
diff --git a/scripts/dtc/dtc.h b/scripts/dtc/dtc.h
index 303c2a6a73..789e0b1bc0 100644
--- a/scripts/dtc/dtc.h
+++ b/scripts/dtc/dtc.h
@@ -58,6 +58,7 @@ extern int phandle_format;	/* Use linux,phandle or phandle properties */
 extern int generate_symbols;	/* generate symbols for nodes with labels */
 extern int generate_fixups;	/* generate fixups */
 extern int auto_label_aliases;	/* auto generate labels -> aliases */
+extern int annotate;		/* annotate .dts with input source location */
 
 #define PHANDLE_LEGACY	0x1
 #define PHANDLE_EPAPR	0x2
@@ -82,7 +83,6 @@ enum markertype {
 	TYPE_UINT16,
 	TYPE_UINT32,
 	TYPE_UINT64,
-	TYPE_BLOB,
 	TYPE_STRING,
 };
 extern const char *markername(enum markertype markertype);
@@ -109,6 +109,8 @@ struct data {
 	for_each_marker(m) \
 		if ((m)->type == (t))
 
+size_t type_marker_length(struct marker *m);
+
 void data_free(struct data d);
 
 struct data data_grow_for(struct data d, int xlen);
@@ -157,6 +159,7 @@ struct property {
 	struct property *next;
 
 	struct label *labels;
+	struct srcpos *srcpos;
 };
 
 struct node {
@@ -176,6 +179,7 @@ struct node {
 
 	struct label *labels;
 	const struct bus_type *bus;
+	struct srcpos *srcpos;
 
 	bool omit_if_unused, is_referenced;
 };
@@ -204,13 +208,15 @@ struct node {
 void add_label(struct label **labels, char *label);
 void delete_labels(struct label **labels);
 
-struct property *build_property(char *name, struct data val);
+struct property *build_property(char *name, struct data val,
+				struct srcpos *srcpos);
 struct property *build_property_delete(char *name);
 struct property *chain_property(struct property *first, struct property *list);
 struct property *reverse_properties(struct property *first);
 
-struct node *build_node(struct property *proplist, struct node *children);
-struct node *build_node_delete(void);
+struct node *build_node(struct property *proplist, struct node *children,
+			struct srcpos *srcpos);
+struct node *build_node_delete(struct srcpos *srcpos);
 struct node *name_node(struct node *node, char *name);
 struct node *omit_node_if_unused(struct node *node);
 struct node *reference_node(struct node *node);
@@ -298,6 +304,10 @@ struct dt_info *dt_from_blob(const char *fname);
 void dt_to_source(FILE *f, struct dt_info *dti);
 struct dt_info *dt_from_source(const char *f);
 
+/* YAML source */
+
+void dt_to_yaml(FILE *f, struct dt_info *dti);
+
 /* FS trees */
 
 struct dt_info *dt_from_fs(const char *dirname);
diff --git a/scripts/dtc/fdtget.c b/scripts/dtc/fdtget.c
deleted file mode 100644
index a79c3b2aa1..0000000000
--- a/scripts/dtc/fdtget.c
+++ /dev/null
@@ -1,383 +0,0 @@
-/*
- * Copyright (c) 2011 The Chromium OS Authors. All rights reserved.
- *
- * Portions from U-Boot cmd_fdt.c (C) Copyright 2007
- * Gerald Van Baren, Custom IDEAS, vanbaren@cideas.com
- * Based on code written by:
- *   Pantelis Antoniou <pantelis.antoniou@gmail.com> and
- *   Matthew McClintock <msm@freescale.com>
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
- */
-
-#include <assert.h>
-#include <ctype.h>
-#include <getopt.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <string.h>
-
-#include <libfdt.h>
-
-#include "util.h"
-
-enum display_mode {
-	MODE_SHOW_VALUE,	/* show values for node properties */
-	MODE_LIST_PROPS,	/* list the properties for a node */
-	MODE_LIST_SUBNODES,	/* list the subnodes of a node */
-};
-
-/* Holds information which controls our output and options */
-struct display_info {
-	int type;		/* data type (s/i/u/x or 0 for default) */
-	int size;		/* data size (1/2/4) */
-	enum display_mode mode;	/* display mode that we are using */
-	const char *default_val; /* default value if node/property not found */
-};
-
-static void report_error(const char *where, int err)
-{
-	fprintf(stderr, "Error at '%s': %s\n", where, fdt_strerror(err));
-}
-
-/**
- * Shows a list of cells in the requested format
- *
- * @param disp		Display information / options
- * @param data		Data to display
- * @param len		Maximum length of buffer
- * @param size		Data size to use for display (e.g. 4 for 32-bit)
- * @return 0 if ok, -1 on error
- */
-static int show_cell_list(struct display_info *disp, const char *data, int len,
-			  int size)
-{
-	const uint8_t *p = (const uint8_t *)data;
-	char fmt[3];
-	int value;
-	int i;
-
-	fmt[0] = '%';
-	fmt[1] = disp->type ? disp->type : 'd';
-	fmt[2] = '\0';
-	for (i = 0; i < len; i += size, p += size) {
-		if (i)
-			printf(" ");
-		value = size == 4 ? fdt32_ld((const fdt32_t *)p) :
-			size == 2 ? (*p << 8) | p[1] : *p;
-		printf(fmt, value);
-	}
-
-	return 0;
-}
-
-/**
- * Displays data of a given length according to selected options
- *
- * If a specific data type is provided in disp, then this is used. Otherwise
- * we try to guess the data type / size from the contents.
- *
- * @param disp		Display information / options
- * @param data		Data to display
- * @param len		Maximum length of buffer
- * @return 0 if ok, -1 if data does not match format
- */
-static int show_data(struct display_info *disp, const char *data, int len)
-{
-	int size;
-	const char *s;
-	int is_string;
-
-	/* no data, don't print */
-	if (len == 0)
-		return 0;
-
-	is_string = (disp->type) == 's' ||
-		(!disp->type && util_is_printable_string(data, len));
-	if (is_string) {
-		if (data[len - 1] != '\0') {
-			fprintf(stderr, "Unterminated string\n");
-			return -1;
-		}
-		for (s = data; s - data < len; s += strlen(s) + 1) {
-			if (s != data)
-				printf(" ");
-			printf("%s", (const char *)s);
-		}
-		return 0;
-	}
-	size = disp->size;
-	if (size == -1) {
-		size = (len % 4) == 0 ? 4 : 1;
-	} else if (len % size) {
-		fprintf(stderr, "Property length must be a multiple of "
-				"selected data size\n");
-		return -1;
-	}
-
-	return show_cell_list(disp, data, len, size);
-}
-
-/**
- * List all properties in a node, one per line.
- *
- * @param blob		FDT blob
- * @param node		Node to display
- * @return 0 if ok, or FDT_ERR... if not.
- */
-static int list_properties(const void *blob, int node)
-{
-	const char *name;
-	int prop;
-
-	prop = fdt_first_property_offset(blob, node);
-	do {
-		/* Stop silently when there are no more properties */
-		if (prop < 0)
-			return prop == -FDT_ERR_NOTFOUND ? 0 : prop;
-		fdt_getprop_by_offset(blob, prop, &name, NULL);
-		if (name)
-			puts(name);
-		prop = fdt_next_property_offset(blob, prop);
-	} while (1);
-}
-
-#define MAX_LEVEL	32		/* how deeply nested we will go */
-
-/**
- * List all subnodes in a node, one per line
- *
- * @param blob		FDT blob
- * @param node		Node to display
- * @return 0 if ok, or FDT_ERR... if not.
- */
-static int list_subnodes(const void *blob, int node)
-{
-	int nextoffset;		/* next node offset from libfdt */
-	uint32_t tag;		/* current tag */
-	int level = 0;		/* keep track of nesting level */
-	const char *pathp;
-	int depth = 1;		/* the assumed depth of this node */
-
-	while (level >= 0) {
-		tag = fdt_next_tag(blob, node, &nextoffset);
-		switch (tag) {
-		case FDT_BEGIN_NODE:
-			pathp = fdt_get_name(blob, node, NULL);
-			if (level <= depth) {
-				if (pathp == NULL)
-					pathp = "/* NULL pointer error */";
-				if (*pathp == '\0')
-					pathp = "/";	/* root is nameless */
-				if (level == 1)
-					puts(pathp);
-			}
-			level++;
-			if (level >= MAX_LEVEL) {
-				printf("Nested too deep, aborting.\n");
-				return 1;
-			}
-			break;
-		case FDT_END_NODE:
-			level--;
-			if (level == 0)
-				level = -1;		/* exit the loop */
-			break;
-		case FDT_END:
-			return 1;
-		case FDT_PROP:
-			break;
-		default:
-			if (level <= depth)
-				printf("Unknown tag 0x%08X\n", tag);
-			return 1;
-		}
-		node = nextoffset;
-	}
-	return 0;
-}
-
-/**
- * Show the data for a given node (and perhaps property) according to the
- * display option provided.
- *
- * @param blob		FDT blob
- * @param disp		Display information / options
- * @param node		Node to display
- * @param property	Name of property to display, or NULL if none
- * @return 0 if ok, -ve on error
- */
-static int show_data_for_item(const void *blob, struct display_info *disp,
-		int node, const char *property)
-{
-	const void *value = NULL;
-	int len, err = 0;
-
-	switch (disp->mode) {
-	case MODE_LIST_PROPS:
-		err = list_properties(blob, node);
-		break;
-
-	case MODE_LIST_SUBNODES:
-		err = list_subnodes(blob, node);
-		break;
-
-	default:
-		assert(property);
-		value = fdt_getprop(blob, node, property, &len);
-		if (value) {
-			if (show_data(disp, value, len))
-				err = -1;
-			else
-				printf("\n");
-		} else if (disp->default_val) {
-			puts(disp->default_val);
-		} else {
-			report_error(property, len);
-			err = -1;
-		}
-		break;
-	}
-
-	return err;
-}
-
-/**
- * Run the main fdtget operation, given a filename and valid arguments
- *
- * @param disp		Display information / options
- * @param filename	Filename of blob file
- * @param arg		List of arguments to process
- * @param arg_count	Number of arguments
- * @return 0 if ok, -ve on error
- */
-static int do_fdtget(struct display_info *disp, const char *filename,
-		     char **arg, int arg_count, int args_per_step)
-{
-	char *blob;
-	const char *prop;
-	int i, node;
-
-	blob = utilfdt_read(filename, NULL);
-	if (!blob)
-		return -1;
-
-	for (i = 0; i + args_per_step <= arg_count; i += args_per_step) {
-		node = fdt_path_offset(blob, arg[i]);
-		if (node < 0) {
-			if (disp->default_val) {
-				puts(disp->default_val);
-				continue;
-			} else {
-				report_error(arg[i], node);
-				free(blob);
-				return -1;
-			}
-		}
-		prop = args_per_step == 1 ? NULL : arg[i + 1];
-
-		if (show_data_for_item(blob, disp, node, prop)) {
-			free(blob);
-			return -1;
-		}
-	}
-
-	free(blob);
-
-	return 0;
-}
-
-/* Usage related data. */
-static const char usage_synopsis[] =
-	"read values from device tree\n"
-	"	fdtget <options> <dt file> [<node> <property>]...\n"
-	"	fdtget -p <options> <dt file> [<node> ]...\n"
-	"\n"
-	"Each value is printed on a new line.\n"
-	USAGE_TYPE_MSG;
-static const char usage_short_opts[] = "t:pld:" USAGE_COMMON_SHORT_OPTS;
-static struct option const usage_long_opts[] = {
-	{"type",              a_argument, NULL, 't'},
-	{"properties",       no_argument, NULL, 'p'},
-	{"list",             no_argument, NULL, 'l'},
-	{"default",           a_argument, NULL, 'd'},
-	USAGE_COMMON_LONG_OPTS,
-};
-static const char * const usage_opts_help[] = {
-	"Type of data",
-	"List properties for each node",
-	"List subnodes for each node",
-	"Default value to display when the property is missing",
-	USAGE_COMMON_OPTS_HELP
-};
-
-int main(int argc, char *argv[])
-{
-	int opt;
-	char *filename = NULL;
-	struct display_info disp;
-	int args_per_step = 2;
-
-	/* set defaults */
-	memset(&disp, '\0', sizeof(disp));
-	disp.size = -1;
-	disp.mode = MODE_SHOW_VALUE;
-	while ((opt = util_getopt_long()) != EOF) {
-		switch (opt) {
-		case_USAGE_COMMON_FLAGS
-
-		case 't':
-			if (utilfdt_decode_type(optarg, &disp.type,
-					&disp.size))
-				usage("invalid type string");
-			break;
-
-		case 'p':
-			disp.mode = MODE_LIST_PROPS;
-			args_per_step = 1;
-			break;
-
-		case 'l':
-			disp.mode = MODE_LIST_SUBNODES;
-			args_per_step = 1;
-			break;
-
-		case 'd':
-			disp.default_val = optarg;
-			break;
-		}
-	}
-
-	if (optind < argc)
-		filename = argv[optind++];
-	if (!filename)
-		usage("missing filename");
-
-	argv += optind;
-	argc -= optind;
-
-	/* Allow no arguments, and silently succeed */
-	if (!argc)
-		return 0;
-
-	/* Check for node, property arguments */
-	if (args_per_step == 2 && (argc % 2))
-		usage("must have an even number of arguments");
-
-	if (do_fdtget(&disp, filename, argv, argc, args_per_step))
-		return 1;
-	return 0;
-}
diff --git a/scripts/dtc/flattree.c b/scripts/dtc/flattree.c
index 851ea87dbc..acf04c3066 100644
--- a/scripts/dtc/flattree.c
+++ b/scripts/dtc/flattree.c
@@ -692,7 +692,7 @@ static struct property *flat_read_property(struct inbuf *dtbuf,
 
 	val = flat_read_data(dtbuf, proplen);
 
-	return build_property(name, val);
+	return build_property(name, val, NULL);
 }
 
 
@@ -750,7 +750,7 @@ static struct node *unflatten_tree(struct inbuf *dtbuf,
 	char *flatname;
 	uint32_t val;
 
-	node = build_node(NULL, NULL);
+	node = build_node(NULL, NULL, NULL);
 
 	flatname = flat_read_string(dtbuf);
 
diff --git a/scripts/dtc/fstree.c b/scripts/dtc/fstree.c
index ae7d06c3c4..1e7eeba47f 100644
--- a/scripts/dtc/fstree.c
+++ b/scripts/dtc/fstree.c
@@ -34,7 +34,7 @@ static struct node *read_fstree(const char *dirname)
 	if (!d)
 		die("Couldn't opendir() \"%s\": %s\n", dirname, strerror(errno));
 
-	tree = build_node(NULL, NULL);
+	tree = build_node(NULL, NULL, NULL);
 
 	while ((de = readdir(d)) != NULL) {
 		char *tmpname;
@@ -60,7 +60,8 @@ static struct node *read_fstree(const char *dirname)
 			} else {
 				prop = build_property(xstrdup(de->d_name),
 						      data_copy_file(pfile,
-								     st.st_size));
+								     st.st_size),
+						      NULL);
 				add_property(tree, prop);
 				fclose(pfile);
 			}
diff --git a/scripts/dtc/libfdt/Makefile.libfdt b/scripts/dtc/libfdt/Makefile.libfdt
new file mode 100644
index 0000000000..3af3656df8
--- /dev/null
+++ b/scripts/dtc/libfdt/Makefile.libfdt
@@ -0,0 +1,15 @@
+# Makefile.libfdt
+#
+# This is not a complete Makefile of itself.  Instead, it is designed to
+# be easily embeddable into other systems of Makefiles.
+#
+LIBFDT_soname = libfdt.$(SHAREDLIB_EXT).1
+LIBFDT_INCLUDES = fdt.h libfdt.h libfdt_env.h
+LIBFDT_VERSION = version.lds
+LIBFDT_SRCS = fdt.c fdt_ro.c fdt_wip.c fdt_sw.c fdt_rw.c fdt_strerror.c fdt_empty_tree.c \
+	fdt_addresses.c fdt_overlay.c
+LIBFDT_OBJS = $(LIBFDT_SRCS:%.c=%.o)
+
+libfdt_clean:
+	@$(VECHO) CLEAN "(libfdt)"
+	rm -f $(STD_CLEANFILES:%=$(LIBFDT_dir)/%)
diff --git a/scripts/dtc/fdt.c b/scripts/dtc/libfdt/fdt.c
similarity index 100%
rename from scripts/dtc/fdt.c
rename to scripts/dtc/libfdt/fdt.c
diff --git a/scripts/dtc/fdt.h b/scripts/dtc/libfdt/fdt.h
similarity index 100%
rename from scripts/dtc/fdt.h
rename to scripts/dtc/libfdt/fdt.h
diff --git a/scripts/dtc/fdt_addresses.c b/scripts/dtc/libfdt/fdt_addresses.c
similarity index 92%
rename from scripts/dtc/fdt_addresses.c
rename to scripts/dtc/libfdt/fdt_addresses.c
index 49537b578d..f13a87dfa0 100644
--- a/scripts/dtc/fdt_addresses.c
+++ b/scripts/dtc/libfdt/fdt_addresses.c
@@ -64,7 +64,7 @@ static int fdt_cells(const void *fdt, int nodeoffset, const char *name)
 
 	c = fdt_getprop(fdt, nodeoffset, name, &len);
 	if (!c)
-		return 2;
+		return len;
 
 	if (len != sizeof(*c))
 		return -FDT_ERR_BADNCELLS;
@@ -78,10 +78,20 @@ static int fdt_cells(const void *fdt, int nodeoffset, const char *name)
 
 int fdt_address_cells(const void *fdt, int nodeoffset)
 {
-	return fdt_cells(fdt, nodeoffset, "#address-cells");
+	int val;
+
+	val = fdt_cells(fdt, nodeoffset, "#address-cells");
+	if (val == -FDT_ERR_NOTFOUND)
+		return 2;
+	return val;
 }
 
 int fdt_size_cells(const void *fdt, int nodeoffset)
 {
-	return fdt_cells(fdt, nodeoffset, "#size-cells");
+	int val;
+
+	val = fdt_cells(fdt, nodeoffset, "#size-cells");
+	if (val == -FDT_ERR_NOTFOUND)
+		return 1;
+	return val;
 }
diff --git a/scripts/dtc/fdt_empty_tree.c b/scripts/dtc/libfdt/fdt_empty_tree.c
similarity index 100%
rename from scripts/dtc/fdt_empty_tree.c
rename to scripts/dtc/libfdt/fdt_empty_tree.c
diff --git a/scripts/dtc/fdt_overlay.c b/scripts/dtc/libfdt/fdt_overlay.c
similarity index 100%
rename from scripts/dtc/fdt_overlay.c
rename to scripts/dtc/libfdt/fdt_overlay.c
diff --git a/scripts/dtc/fdt_ro.c b/scripts/dtc/libfdt/fdt_ro.c
similarity index 100%
rename from scripts/dtc/fdt_ro.c
rename to scripts/dtc/libfdt/fdt_ro.c
diff --git a/scripts/dtc/fdt_rw.c b/scripts/dtc/libfdt/fdt_rw.c
similarity index 100%
rename from scripts/dtc/fdt_rw.c
rename to scripts/dtc/libfdt/fdt_rw.c
diff --git a/scripts/dtc/fdt_strerror.c b/scripts/dtc/libfdt/fdt_strerror.c
similarity index 100%
rename from scripts/dtc/fdt_strerror.c
rename to scripts/dtc/libfdt/fdt_strerror.c
diff --git a/scripts/dtc/fdt_sw.c b/scripts/dtc/libfdt/fdt_sw.c
similarity index 100%
rename from scripts/dtc/fdt_sw.c
rename to scripts/dtc/libfdt/fdt_sw.c
diff --git a/scripts/dtc/fdt_wip.c b/scripts/dtc/libfdt/fdt_wip.c
similarity index 100%
rename from scripts/dtc/fdt_wip.c
rename to scripts/dtc/libfdt/fdt_wip.c
diff --git a/scripts/dtc/libfdt.h b/scripts/dtc/libfdt/libfdt.h
similarity index 99%
rename from scripts/dtc/libfdt.h
rename to scripts/dtc/libfdt/libfdt.h
index 2bd151dd35..15eb0fd3c6 100644
--- a/scripts/dtc/libfdt.h
+++ b/scripts/dtc/libfdt/libfdt.h
@@ -163,18 +163,26 @@ uint32_t fdt_next_tag(const void *fdt, int offset, int *nextoffset);
 
 static inline uint32_t fdt32_ld(const fdt32_t *p)
 {
-	fdt32_t v;
+	const uint8_t *bp = (const uint8_t *)p;
 
-	memcpy(&v, p, sizeof(v));
-	return fdt32_to_cpu(v);
+	return ((uint32_t)bp[0] << 24)
+		| ((uint32_t)bp[1] << 16)
+		| ((uint32_t)bp[2] << 8)
+		| bp[3];
 }
 
 static inline uint64_t fdt64_ld(const fdt64_t *p)
 {
-	fdt64_t v;
-
-	memcpy(&v, p, sizeof(v));
-	return fdt64_to_cpu(v);
+	const uint8_t *bp = (const uint8_t *)p;
+
+	return ((uint64_t)bp[0] << 56)
+		| ((uint64_t)bp[1] << 48)
+		| ((uint64_t)bp[2] << 40)
+		| ((uint64_t)bp[3] << 32)
+		| ((uint64_t)bp[4] << 24)
+		| ((uint64_t)bp[5] << 16)
+		| ((uint64_t)bp[6] << 8)
+		| bp[7];
 }
 
 /**********************************************************************/
@@ -219,7 +227,7 @@ int fdt_next_subnode(const void *fdt, int offset);
  *		...
  *	}
  *
- *	if ((node < 0) && (node != -FDT_ERR_NOT_FOUND)) {
+ *	if ((node < 0) && (node != -FDT_ERR_NOTFOUND)) {
  *		Error handling
  *	}
  *
@@ -558,7 +566,7 @@ int fdt_next_property_offset(const void *fdt, int offset);
  *		...
  *	}
  *
- *	if ((property < 0) && (property != -FDT_ERR_NOT_FOUND)) {
+ *	if ((property < 0) && (property != -FDT_ERR_NOTFOUND)) {
  *		Error handling
  *	}
  *
@@ -661,7 +669,7 @@ static inline struct fdt_property *fdt_get_property_w(void *fdt, int nodeoffset,
 /**
  * fdt_getprop_by_offset - retrieve the value of a property at a given offset
  * @fdt: pointer to the device tree blob
- * @ffset: offset of the property to read
+ * @offset: offset of the property to read
  * @namep: pointer to a string variable (will be overwritten) or NULL
  * @lenp: pointer to an integer variable (will be overwritten) or NULL
  *
@@ -1145,7 +1153,7 @@ int fdt_address_cells(const void *fdt, int nodeoffset);
  *
  * returns:
  *	0 <= n < FDT_MAX_NCELLS, on success
- *      2, if the node has no #size-cells property
+ *      1, if the node has no #size-cells property
  *      -FDT_ERR_BADNCELLS, if the node has a badly formatted or invalid
  *		#size-cells property
  *	-FDT_ERR_BADMAGIC,
diff --git a/scripts/dtc/libfdt_env.h b/scripts/dtc/libfdt/libfdt_env.h
similarity index 100%
rename from scripts/dtc/libfdt_env.h
rename to scripts/dtc/libfdt/libfdt_env.h
diff --git a/scripts/dtc/libfdt_internal.h b/scripts/dtc/libfdt/libfdt_internal.h
similarity index 100%
rename from scripts/dtc/libfdt_internal.h
rename to scripts/dtc/libfdt/libfdt_internal.h
diff --git a/scripts/dtc/livetree.c b/scripts/dtc/livetree.c
index 4ff0679e00..7a2e6446a1 100644
--- a/scripts/dtc/livetree.c
+++ b/scripts/dtc/livetree.c
@@ -19,6 +19,7 @@
  */
 
 #include "dtc.h"
+#include "srcpos.h"
 
 /*
  * Tree building functions
@@ -50,7 +51,8 @@ void delete_labels(struct label **labels)
 		label->deleted = 1;
 }
 
-struct property *build_property(char *name, struct data val)
+struct property *build_property(char *name, struct data val,
+				struct srcpos *srcpos)
 {
 	struct property *new = xmalloc(sizeof(*new));
 
@@ -58,6 +60,7 @@ struct property *build_property(char *name, struct data val)
 
 	new->name = name;
 	new->val = val;
+	new->srcpos = srcpos_copy(srcpos);
 
 	return new;
 }
@@ -97,7 +100,8 @@ struct property *reverse_properties(struct property *first)
 	return head;
 }
 
-struct node *build_node(struct property *proplist, struct node *children)
+struct node *build_node(struct property *proplist, struct node *children,
+			struct srcpos *srcpos)
 {
 	struct node *new = xmalloc(sizeof(*new));
 	struct node *child;
@@ -106,6 +110,7 @@ struct node *build_node(struct property *proplist, struct node *children)
 
 	new->proplist = reverse_properties(proplist);
 	new->children = children;
+	new->srcpos = srcpos_copy(srcpos);
 
 	for_each_child(new, child) {
 		child->parent = new;
@@ -114,13 +119,14 @@ struct node *build_node(struct property *proplist, struct node *children)
 	return new;
 }
 
-struct node *build_node_delete(void)
+struct node *build_node_delete(struct srcpos *srcpos)
 {
 	struct node *new = xmalloc(sizeof(*new));
 
 	memset(new, 0, sizeof(*new));
 
 	new->deleted = 1;
+	new->srcpos = srcpos_copy(srcpos);
 
 	return new;
 }
@@ -183,6 +189,8 @@ struct node *merge_nodes(struct node *old_node, struct node *new_node)
 
 				old_prop->val = new_prop->val;
 				old_prop->deleted = 0;
+				free(old_prop->srcpos);
+				old_prop->srcpos = new_prop->srcpos;
 				free(new_prop);
 				new_prop = NULL;
 				break;
@@ -223,6 +231,8 @@ struct node *merge_nodes(struct node *old_node, struct node *new_node)
 			add_child(old_node, new_child);
 	}
 
+	old_node->srcpos = srcpos_extend(old_node->srcpos, new_node->srcpos);
+
 	/* The new node contents are now merged into the old node.  Free
 	 * the new node. */
 	free(new_node);
@@ -241,18 +251,18 @@ struct node * add_orphan_node(struct node *dt, struct node *new_node, char *ref)
 	if (ref[0] == '/') {
 		d = data_append_data(d, ref, strlen(ref) + 1);
 
-		p = build_property("target-path", d);
+		p = build_property("target-path", d, NULL);
 	} else {
 		d = data_add_marker(d, REF_PHANDLE, ref);
 		d = data_append_integer(d, 0xffffffff, 32);
 
-		p = build_property("target", d);
+		p = build_property("target", d, NULL);
 	}
 
 	xasprintf(&name, "fragment@%u",
 			next_orphan_fragment++);
 	name_node(new_node, "__overlay__");
-	node = build_node(p, new_node);
+	node = build_node(p, new_node, NULL);
 	name_node(node, name);
 
 	add_child(dt, node);
@@ -351,7 +361,7 @@ void append_to_property(struct node *node,
 		p->val = d;
 	} else {
 		d = data_append_data(empty_data, data, len);
-		p = build_property(name, d);
+		p = build_property(name, d, NULL);
 		add_property(node, p);
 	}
 }
@@ -609,11 +619,11 @@ cell_t get_node_phandle(struct node *root, struct node *node)
 
 	if (!get_property(node, "linux,phandle")
 	    && (phandle_format & PHANDLE_LEGACY))
-		add_property(node, build_property("linux,phandle", d));
+		add_property(node, build_property("linux,phandle", d, NULL));
 
 	if (!get_property(node, "phandle")
 	    && (phandle_format & PHANDLE_EPAPR))
-		add_property(node, build_property("phandle", d));
+		add_property(node, build_property("phandle", d, NULL));
 
 	/* If the node *does* have a phandle property, we must
 	 * be dealing with a self-referencing phandle, which will be
@@ -787,7 +797,7 @@ static struct node *build_and_name_child_node(struct node *parent, char *name)
 {
 	struct node *node;
 
-	node = build_node(NULL, NULL);
+	node = build_node(NULL, NULL, NULL);
 	name_node(node, xstrdup(name));
 	add_child(parent, node);
 
@@ -849,7 +859,8 @@ static void generate_label_tree_internal(struct dt_info *dti,
 			/* insert it */
 			p = build_property(l->label,
 				data_copy_mem(node->fullpath,
-						strlen(node->fullpath) + 1));
+						strlen(node->fullpath) + 1),
+				NULL);
 			add_property(an, p);
 		}
 
diff --git a/scripts/dtc/srcpos.c b/scripts/dtc/srcpos.c
index cb6ed0e3e5..41f83700ee 100644
--- a/scripts/dtc/srcpos.c
+++ b/scripts/dtc/srcpos.c
@@ -33,6 +33,9 @@ struct search_path {
 /* This is the list of directories that we search for source files */
 static struct search_path *search_path_head, **search_path_tail;
 
+/* Detect infinite include recursion. */
+#define MAX_SRCFILE_DEPTH     (100)
+static int srcfile_depth; /* = 0 */
 
 static char *get_dirname(const char *path)
 {
@@ -51,11 +54,51 @@ static char *get_dirname(const char *path)
 
 FILE *depfile; /* = NULL */
 struct srcfile_state *current_srcfile; /* = NULL */
+static char *initial_path; /* = NULL */
+static int initial_pathlen; /* = 0 */
+static bool initial_cpp = true;
 
-/* Detect infinite include recursion. */
-#define MAX_SRCFILE_DEPTH     (100)
-static int srcfile_depth; /* = 0 */
+static void set_initial_path(char *fname)
+{
+	int i, len = strlen(fname);
 
+	xasprintf(&initial_path, "%s", fname);
+	initial_pathlen = 0;
+	for (i = 0; i != len; i++)
+		if (initial_path[i] == '/')
+			initial_pathlen++;
+}
+
+static char *shorten_to_initial_path(char *fname)
+{
+	char *p1, *p2, *prevslash1 = NULL;
+	int slashes = 0;
+
+	for (p1 = fname, p2 = initial_path; *p1 && *p2; p1++, p2++) {
+		if (*p1 != *p2)
+			break;
+		if (*p1 == '/') {
+			prevslash1 = p1;
+			slashes++;
+		}
+	}
+	p1 = prevslash1 + 1;
+	if (prevslash1) {
+		int diff = initial_pathlen - slashes, i, j;
+		int restlen = strlen(fname) - (p1 - fname);
+		char *res;
+
+		res = xmalloc((3 * diff) + restlen + 1);
+		for (i = 0, j = 0; i != diff; i++) {
+			res[j++] = '.';
+			res[j++] = '.';
+			res[j++] = '/';
+		}
+		strcpy(res + j, p1);
+		return res;
+	}
+	return NULL;
+}
 
 /**
  * Try to open a file in a given directory.
@@ -157,6 +200,9 @@ void srcfile_push(const char *fname)
 	srcfile->colno = 1;
 
 	current_srcfile = srcfile;
+
+	if (srcfile_depth == 1)
+		set_initial_path(srcfile->name);
 }
 
 bool srcfile_pop(void)
@@ -197,18 +243,6 @@ void srcfile_add_search_path(const char *dirname)
 	search_path_tail = &node->next;
 }
 
-/*
- * The empty source position.
- */
-
-struct srcpos srcpos_empty = {
-	.first_line = 0,
-	.first_column = 0,
-	.last_line = 0,
-	.last_column = 0,
-	.file = NULL,
-};
-
 void srcpos_update(struct srcpos *pos, const char *text, int len)
 {
 	int i;
@@ -234,13 +268,35 @@ struct srcpos *
 srcpos_copy(struct srcpos *pos)
 {
 	struct srcpos *pos_new;
+	struct srcfile_state *srcfile_state;
+
+	if (!pos)
+		return NULL;
 
 	pos_new = xmalloc(sizeof(struct srcpos));
+	assert(pos->next == NULL);
 	memcpy(pos_new, pos, sizeof(struct srcpos));
 
+	/* allocate without free */
+	srcfile_state = xmalloc(sizeof(struct srcfile_state));
+	memcpy(srcfile_state, pos->file, sizeof(struct srcfile_state));
+	pos_new->file = srcfile_state;
+
 	return pos_new;
 }
 
+struct srcpos *srcpos_extend(struct srcpos *pos, struct srcpos *newtail)
+{
+	struct srcpos *p;
+
+	if (!pos)
+		return newtail;
+
+	for (p = pos; p->next != NULL; p = p->next);
+	p->next = newtail;
+	return pos;
+}
+
 char *
 srcpos_string(struct srcpos *pos)
 {
@@ -266,6 +322,68 @@ srcpos_string(struct srcpos *pos)
 	return pos_str;
 }
 
+static char *
+srcpos_string_comment(struct srcpos *pos, bool first_line, int level)
+{
+	char *pos_str, *fname, *first, *rest;
+	bool fresh_fname = false;
+
+	if (!pos) {
+		if (level > 1) {
+			xasprintf(&pos_str, "<no-file>:<no-line>");
+			return pos_str;
+		} else {
+			return NULL;
+		}
+	}
+
+	if (!pos->file)
+		fname = "<no-file>";
+	else if (!pos->file->name)
+		fname = "<no-filename>";
+	else if (level > 1)
+		fname = pos->file->name;
+	else {
+		fname = shorten_to_initial_path(pos->file->name);
+		if (fname)
+			fresh_fname = true;
+		else
+			fname = pos->file->name;
+	}
+
+	if (level > 1)
+		xasprintf(&first, "%s:%d:%d-%d:%d", fname,
+			  pos->first_line, pos->first_column,
+			  pos->last_line, pos->last_column);
+	else
+		xasprintf(&first, "%s:%d", fname,
+			  first_line ? pos->first_line : pos->last_line);
+
+	if (fresh_fname)
+		free(fname);
+
+	if (pos->next != NULL) {
+		rest = srcpos_string_comment(pos->next, first_line, level);
+		xasprintf(&pos_str, "%s, %s", first, rest);
+		free(first);
+		free(rest);
+	} else {
+		pos_str = first;
+	}
+
+	return pos_str;
+}
+
+char *srcpos_string_first(struct srcpos *pos, int level)
+{
+	return srcpos_string_comment(pos, true, level);
+}
+
+char *srcpos_string_last(struct srcpos *pos, int level)
+{
+	return srcpos_string_comment(pos, false, level);
+}
+
 void srcpos_verror(struct srcpos *pos, const char *prefix,
 		   const char *fmt, va_list va)
 {
@@ -294,4 +412,9 @@ void srcpos_set_line(char *f, int l)
 {
 	current_srcfile->name = f;
 	current_srcfile->lineno = l;
+
+	if (initial_cpp) {
+		initial_cpp = false;
+		set_initial_path(f);
+	}
 }
diff --git a/scripts/dtc/srcpos.h b/scripts/dtc/srcpos.h
index 9ded12a383..6326a952c4 100644
--- a/scripts/dtc/srcpos.h
+++ b/scripts/dtc/srcpos.h
@@ -74,6 +74,7 @@ struct srcpos {
     int last_line;
     int last_column;
     struct srcfile_state *file;
+    struct srcpos *next;
 };
 
 #define YYLTYPE struct srcpos
@@ -93,19 +94,18 @@ struct srcpos {
 				YYRHSLOC(Rhs, 0).last_column;			\
 			(Current).file = YYRHSLOC (Rhs, 0).file;		\
 		}								\
+		(Current).next = NULL;						\
 	} while (0)
 
 
-/*
- * Fictional source position used for IR nodes that are
- * created without otherwise knowing a true source position.
- * For example,constant definitions from the command line.
- */
-extern struct srcpos srcpos_empty;
-
 extern void srcpos_update(struct srcpos *pos, const char *text, int len);
 extern struct srcpos *srcpos_copy(struct srcpos *pos);
+extern struct srcpos *srcpos_extend(struct srcpos *new_srcpos,
+				    struct srcpos *old_srcpos);
 extern char *srcpos_string(struct srcpos *pos);
+extern char *srcpos_string_first(struct srcpos *pos, int level);
+extern char *srcpos_string_last(struct srcpos *pos, int level);
+
 
 extern void PRINTF(3, 0) srcpos_verror(struct srcpos *pos, const char *prefix,
 					const char *fmt, va_list va);
diff --git a/scripts/dtc/treesource.c b/scripts/dtc/treesource.c
index f99544d723..1af36628b7 100644
--- a/scripts/dtc/treesource.c
+++ b/scripts/dtc/treesource.c
@@ -64,6 +64,10 @@ static bool isstring(char c)
 static void write_propval_string(FILE *f, const char *s, size_t len)
 {
 	const char *end = s + len - 1;
+
+	if (!len)
+		return;
+
 	assert(*end == '\0');
 
 	fprintf(f, "\"");
@@ -118,29 +122,36 @@ static void write_propval_int(FILE *f, const char *p, size_t len, size_t width)
 	for (; p < end; p += width) {
 		switch (width) {
 		case 1:
-			fprintf(f, " %02"PRIx8, *(const uint8_t*)p);
+			fprintf(f, "%02"PRIx8, *(const uint8_t*)p);
 			break;
 		case 2:
-			fprintf(f, " 0x%02"PRIx16, fdt16_to_cpu(*(const fdt16_t*)p));
+			fprintf(f, "0x%02"PRIx16, fdt16_to_cpu(*(const fdt16_t*)p));
 			break;
 		case 4:
-			fprintf(f, " 0x%02"PRIx32, fdt32_to_cpu(*(const fdt32_t*)p));
+			fprintf(f, "0x%02"PRIx32, fdt32_to_cpu(*(const fdt32_t*)p));
 			break;
 		case 8:
-			fprintf(f, " 0x%02"PRIx64, fdt64_to_cpu(*(const fdt64_t*)p));
+			fprintf(f, "0x%02"PRIx64, fdt64_to_cpu(*(const fdt64_t*)p));
 			break;
 		}
+		if (p + width < end)
+			fputc(' ', f);
 	}
 }
 
+static bool has_data_type_information(struct marker *m)
+{
+	return m->type >= TYPE_UINT8;
+}
+
 static struct marker *next_type_marker(struct marker *m)
 {
-	while (m && (m->type == LABEL || m->type == REF_PHANDLE || m->type == REF_PATH))
+	while (m && !has_data_type_information(m))
 		m = m->next;
 	return m;
 }
 
-static size_t type_marker_length(struct marker *m)
+size_t type_marker_length(struct marker *m)
 {
 	struct marker *next = next_type_marker(m->next);
 
@@ -157,10 +168,10 @@ static const char *delim_start[] = {
 	[TYPE_STRING] = "",
 };
 static const char *delim_end[] = {
-	[TYPE_UINT8] = " ]",
-	[TYPE_UINT16] = " >",
-	[TYPE_UINT32] = " >",
-	[TYPE_UINT64] = " >",
+	[TYPE_UINT8] = "]",
+	[TYPE_UINT16] = ">",
+	[TYPE_UINT32] = ">",
+	[TYPE_UINT64] = ">",
 	[TYPE_STRING] = "",
 };
 
@@ -203,13 +214,22 @@ static void write_propval(FILE *f, struct property *prop)
 	struct marker *m = prop->val.markers;
 	struct marker dummy_marker;
 	enum markertype emit_type = TYPE_NONE;
+	char *srcstr;
 
 	if (len == 0) {
-		fprintf(f, ";\n");
+		fprintf(f, ";");
+		if (annotate) {
+			srcstr = srcpos_string_first(prop->srcpos, annotate);
+			if (srcstr) {
+				fprintf(f, " /* %s */", srcstr);
+				free(srcstr);
+			}
+		}
+		fprintf(f, "\n");
 		return;
 	}
 
-	fprintf(f, " = ");
+	fprintf(f, " =");
 
 	if (!next_type_marker(m)) {
 		/* data type information missing, need to guess */
@@ -220,32 +240,23 @@ static void write_propval(FILE *f, struct property *prop)
 		m = &dummy_marker;
 	}
 
-	struct marker *m_label = prop->val.markers;
 	for_each_marker(m) {
-		size_t chunk_len;
+		size_t chunk_len = (m->next ? m->next->offset : len) - m->offset;
+		size_t data_len = type_marker_length(m) ? : len - m->offset;
 		const char *p = &prop->val.val[m->offset];
 
-		if (m->type < TYPE_UINT8)
-			continue;
-
-		chunk_len = type_marker_length(m);
-		if (!chunk_len)
-			chunk_len = len - m->offset;
-
-		if (emit_type != TYPE_NONE)
-			fprintf(f, "%s, ", delim_end[emit_type]);
-		emit_type = m->type;
-
-		for_each_marker_of_type(m_label, LABEL) {
-			if (m_label->offset > m->offset)
-				break;
-			fprintf(f, "%s: ", m_label->ref);
-		}
-
-		fprintf(f, "%s", delim_start[emit_type]);
+		if (has_data_type_information(m)) {
+			emit_type = m->type;
+			fprintf(f, " %s", delim_start[emit_type]);
+		} else if (m->type == LABEL)
+			fprintf(f, " %s:", m->ref);
+		else if (m->offset)
+			fputc(' ', f);
 
-		if (chunk_len <= 0)
+		if (emit_type == TYPE_NONE) {
+			assert(chunk_len == 0);
 			continue;
+		}
 
 		switch(emit_type) {
 		case TYPE_UINT16:
@@ -263,15 +274,23 @@ static void write_propval(FILE *f, struct property *prop)
 		default:
 			write_propval_int(f, p, chunk_len, 1);
 		}
-	}
 
-	/* Wrap up any labels at the end of the value */
-	for_each_marker_of_type(m_label, LABEL) {
-		assert (m_label->offset == len);
-		fprintf(f, " %s:", m_label->ref);
+		if (chunk_len == data_len) {
+			size_t pos = m->offset + chunk_len;
+			fprintf(f, pos == len ? "%s" : "%s,",
+			        delim_end[emit_type] ? : "");
+			emit_type = TYPE_NONE;
+		}
 	}
-
-	fprintf(f, "%s;\n", delim_end[emit_type] ? : "");
+	fprintf(f, ";");
+	if (annotate) {
+		srcstr = srcpos_string_first(prop->srcpos, annotate);
+		if (srcstr) {
+			fprintf(f, " /* %s */", srcstr);
+			free(srcstr);
+		}
+	}
+	fprintf(f, "\n");
 }
 
 static void write_tree_source_node(FILE *f, struct node *tree, int level)
@@ -279,14 +298,24 @@ static void write_tree_source_node(FILE *f, struct node *tree, int level)
 	struct property *prop;
 	struct node *child;
 	struct label *l;
+	char *srcstr;
 
 	write_prefix(f, level);
 	for_each_label(tree->labels, l)
 		fprintf(f, "%s: ", l->label);
 	if (tree->name && (*tree->name))
-		fprintf(f, "%s {\n", tree->name);
+		fprintf(f, "%s {", tree->name);
 	else
-		fprintf(f, "/ {\n");
+		fprintf(f, "/ {");
+
+	if (annotate) {
+		srcstr = srcpos_string_first(tree->srcpos, annotate);
+		if (srcstr) {
+			fprintf(f, " /* %s */", srcstr);
+			free(srcstr);
+		}
+	}
+	fprintf(f, "\n");
 
 	for_each_property(tree, prop) {
 		write_prefix(f, level+1);
@@ -300,10 +329,17 @@ static void write_tree_source_node(FILE *f, struct node *tree, int level)
 		write_tree_source_node(f, child, level+1);
 	}
 	write_prefix(f, level);
-	fprintf(f, "};\n");
+	fprintf(f, "};");
+	if (annotate) {
+		srcstr = srcpos_string_last(tree->srcpos, annotate);
+		if (srcstr) {
+			fprintf(f, " /* %s */", srcstr);
+			free(srcstr);
+		}
+	}
+	fprintf(f, "\n");
 }
 
-
 void dt_to_source(FILE *f, struct dt_info *dti)
 {
 	struct reserve_info *re;
diff --git a/scripts/dtc/util.c b/scripts/dtc/util.c
index a69b7a1346..9c6fb5f286 100644
--- a/scripts/dtc/util.c
+++ b/scripts/dtc/util.c
@@ -46,36 +46,54 @@ char *xstrdup(const char *s)
 	return d;
 }
 
-/* based in part from (3) vsnprintf */
-int xasprintf(char **strp, const char *fmt, ...)
+int xavsprintf_append(char **strp, const char *fmt, va_list ap)
 {
-	int n, size = 128;	/* start with 128 bytes */
+	int n, size = 0;	/* start with 128 bytes */
 	char *p;
-	va_list ap;
+	va_list ap_copy;
 
-	/* initial pointer is NULL making the fist realloc to be malloc */
-	p = NULL;
-	while (1) {
-		p = xrealloc(p, size);
+	p = *strp;
+	if (p)
+		size = strlen(p);
 
-		/* Try to print in the allocated space. */
-		va_start(ap, fmt);
-		n = vsnprintf(p, size, fmt, ap);
-		va_end(ap);
+	va_copy(ap_copy, ap);
+	n = vsnprintf(NULL, 0, fmt, ap_copy) + 1;
+	va_end(ap_copy);
+
+	p = xrealloc(p, size + n);
+
+	n = vsnprintf(p + size, n, fmt, ap);
 
-		/* If that worked, return the string. */
-		if (n > -1 && n < size)
-			break;
-		/* Else try again with more space. */
-		if (n > -1)	/* glibc 2.1 */
-			size = n + 1; /* precisely what is needed */
-		else		/* glibc 2.0 */
-			size *= 2; /* twice the old size */
-	}
 	*strp = p;
 	return strlen(p);
 }
 
+int xasprintf_append(char **strp, const char *fmt, ...)
+{
+	int n;
+	va_list ap;
+
+	va_start(ap, fmt);
+	n = xavsprintf_append(strp, fmt, ap);
+	va_end(ap);
+
+	return n;
+}
+
+int xasprintf(char **strp, const char *fmt, ...)
+{
+	int n;
+	va_list ap;
+
+	*strp = NULL;
+
+	va_start(ap, fmt);
+	n = xavsprintf_append(strp, fmt, ap);
+	va_end(ap);
+
+	return n;
+}
+
 char *join_path(const char *path, const char *name)
 {
 	int lenp = strlen(path);
diff --git a/scripts/dtc/util.h b/scripts/dtc/util.h
index f6cea82741..7658781a62 100644
--- a/scripts/dtc/util.h
+++ b/scripts/dtc/util.h
@@ -72,6 +72,8 @@ static inline void *xrealloc(void *p, size_t len)
 extern char *xstrdup(const char *s);
 
 extern int PRINTF(2, 3) xasprintf(char **strp, const char *fmt, ...);
+extern int PRINTF(2, 3) xasprintf_append(char **strp, const char *fmt, ...);
+extern int xavsprintf_append(char **strp, const char *fmt, va_list ap);
 extern char *join_path(const char *path, const char *name);
 
 /**
diff --git a/scripts/dtc/version_gen.h b/scripts/dtc/version_gen.h
index 2adf65b761..5c04ba938c 100644
--- a/scripts/dtc/version_gen.h
+++ b/scripts/dtc/version_gen.h
@@ -1 +1 @@
-#define DTC_VERSION "DTC 1.4.7"
+#define DTC_VERSION "DTC 1.5.0"
diff --git a/scripts/dtc/yamltree.c b/scripts/dtc/yamltree.c
new file mode 100644
index 0000000000..a00285a5a9
--- /dev/null
+++ b/scripts/dtc/yamltree.c
@@ -0,0 +1,247 @@
+/*
+ * (C) Copyright Linaro, Ltd. 2018
+ * (C) Copyright Arm Holdings.  2017
+ * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of the
+ * License, or (at your option) any later version.
+ *
+ *  This program is distributed in the hope that it will be useful,
+ *  but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ *  General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
+ *                                                                   USA
+ */
+
+#include <stdlib.h>
+#include <yaml.h>
+#include "dtc.h"
+#include "srcpos.h"
+
+char *yaml_error_name[] = {
+	[YAML_NO_ERROR] = "no error",
+	[YAML_MEMORY_ERROR] = "memory error",
+	[YAML_READER_ERROR] = "reader error",
+	[YAML_SCANNER_ERROR] = "scanner error",
+	[YAML_PARSER_ERROR] = "parser error",
+	[YAML_COMPOSER_ERROR] = "composer error",
+	[YAML_WRITER_ERROR] = "writer error",
+	[YAML_EMITTER_ERROR] = "emitter error",
+};
+
+#define yaml_emitter_emit_or_die(emitter, event) (			\
+{									\
+	if (!yaml_emitter_emit(emitter, event))				\
+		die("yaml '%s': %s in %s, line %i\n",			\
+		    yaml_error_name[(emitter)->error], 			\
+		    (emitter)->problem, __func__, __LINE__);		\
+})
+
+static void yaml_propval_int(yaml_emitter_t *emitter, struct marker *markers, char *data, int len, int width)
+{
+	yaml_event_t event;
+	void *tag;
+	int off, start_offset = markers->offset;
+
+	switch(width) {
+		case 1: tag = "!u8"; break;
+		case 2: tag = "!u16"; break;
+		case 4: tag = "!u32"; break;
+		case 8: tag = "!u64"; break;
+		default:
+			die("Invalid width %i", width);
+	}
+	assert(len % width == 0);
+
+	yaml_sequence_start_event_initialize(&event, NULL,
+		(yaml_char_t *)tag, width == 4, YAML_FLOW_SEQUENCE_STYLE);
+	yaml_emitter_emit_or_die(emitter, &event);
+
+	for (off = 0; off < len; off += width) {
+		char buf[32];
+		struct marker *m;
+		bool is_phandle = false;
+
+		switch(width) {
+		case 1:
+			sprintf(buf, "0x%"PRIx8, *(uint8_t*)(data + off));
+			break;
+		case 2:
+			sprintf(buf, "0x%"PRIx16, fdt16_to_cpu(*(fdt16_t*)(data + off)));
+			break;
+		case 4:
+			sprintf(buf, "0x%"PRIx32, fdt32_to_cpu(*(fdt32_t*)(data + off)));
+			m = markers;
+			is_phandle = false;
+			for_each_marker_of_type(m, REF_PHANDLE) {
+				if (m->offset == (start_offset + off)) {
+					is_phandle = true;
+					break;
+				}
+			}
+			break;
+		case 8:
+			sprintf(buf, "0x%"PRIx64, fdt64_to_cpu(*(fdt64_t*)(data + off)));
+			break;
+		}
+
+		if (is_phandle)
+			yaml_scalar_event_initialize(&event, NULL,
+				(yaml_char_t*)"!phandle", (yaml_char_t *)buf,
+				strlen(buf), 0, 0, YAML_PLAIN_SCALAR_STYLE);
+		else
+			yaml_scalar_event_initialize(&event, NULL,
+				(yaml_char_t*)YAML_INT_TAG, (yaml_char_t *)buf,
+				strlen(buf), 1, 1, YAML_PLAIN_SCALAR_STYLE);
+		yaml_emitter_emit_or_die(emitter, &event);
+	}
+
+	yaml_sequence_end_event_initialize(&event);
+	yaml_emitter_emit_or_die(emitter, &event);
+}
+
+static void yaml_propval_string(yaml_emitter_t *emitter, char *str, int len)
+{
+	yaml_event_t event;
+	int i;
+
+	assert(str[len-1] == '\0');
+
+	/* Make sure the entire string is in the lower 7-bit ascii range */
+	for (i = 0; i < len; i++)
+		assert(isascii(str[i]));
+
+	yaml_scalar_event_initialize(&event, NULL,
+		(yaml_char_t *)YAML_STR_TAG, (yaml_char_t*)str,
+		len-1, 0, 1, YAML_DOUBLE_QUOTED_SCALAR_STYLE);
+	yaml_emitter_emit_or_die(emitter, &event);
+}
+
+static void yaml_propval(yaml_emitter_t *emitter, struct property *prop)
+{
+	yaml_event_t event;
+	int len = prop->val.len;
+	struct marker *m = prop->val.markers;
+
+	/* Emit the property name */
+	yaml_scalar_event_initialize(&event, NULL,
+		(yaml_char_t *)YAML_STR_TAG, (yaml_char_t*)prop->name,
+		strlen(prop->name), 1, 1, YAML_PLAIN_SCALAR_STYLE);
+	yaml_emitter_emit_or_die(emitter, &event);
+
+	/* Boolean properties are easiest to deal with. Length is zero, so just emit 'true' */
+	if (len == 0) {
+		yaml_scalar_event_initialize(&event, NULL,
+			(yaml_char_t *)YAML_BOOL_TAG,
+			(yaml_char_t*)"true",
+			strlen("true"), 1, 0, YAML_PLAIN_SCALAR_STYLE);
+		yaml_emitter_emit_or_die(emitter, &event);
+		return;
+	}
+
+	if (!m)
+		die("No markers present in property '%s' value\n", prop->name);
+
+	yaml_sequence_start_event_initialize(&event, NULL,
+		(yaml_char_t *)YAML_SEQ_TAG, 1, YAML_FLOW_SEQUENCE_STYLE);
+	yaml_emitter_emit_or_die(emitter, &event);
+
+	for_each_marker(m) {
+		int chunk_len;
+		char *data = &prop->val.val[m->offset];
+
+		if (m->type < TYPE_UINT8)
+			continue;
+
+		chunk_len = type_marker_length(m) ? : len;
+		assert(chunk_len > 0);
+		len -= chunk_len;
+
+		switch(m->type) {
+		case TYPE_UINT16:
+			yaml_propval_int(emitter, m, data, chunk_len, 2);
+			break;
+		case TYPE_UINT32:
+			yaml_propval_int(emitter, m, data, chunk_len, 4);
+			break;
+		case TYPE_UINT64:
+			yaml_propval_int(emitter, m, data, chunk_len, 8);
+			break;
+		case TYPE_STRING:
+			yaml_propval_string(emitter, data, chunk_len);
+			break;
+		default:
+			yaml_propval_int(emitter, m, data, chunk_len, 1);
+			break;
+		}
+	}
+
+	yaml_sequence_end_event_initialize(&event);
+	yaml_emitter_emit_or_die(emitter, &event);
+}
+
+
+static void yaml_tree(struct node *tree, yaml_emitter_t *emitter)
+{
+	struct property *prop;
+	struct node *child;
+	yaml_event_t event;
+
+	if (tree->deleted)
+		return;
+
+	yaml_mapping_start_event_initialize(&event, NULL,
+		(yaml_char_t *)YAML_MAP_TAG, 1, YAML_ANY_MAPPING_STYLE);
+	yaml_emitter_emit_or_die(emitter, &event);
+
+	for_each_property(tree, prop)
+		yaml_propval(emitter, prop);
+
+	/* Loop over all the children, emitting them into the map */
+	for_each_child(tree, child) {
+		yaml_scalar_event_initialize(&event, NULL,
+			(yaml_char_t *)YAML_STR_TAG, (yaml_char_t*)child->name,
+			strlen(child->name), 1, 0, YAML_PLAIN_SCALAR_STYLE);
+		yaml_emitter_emit_or_die(emitter, &event);
+		yaml_tree(child, emitter);
+	}
+
+	yaml_mapping_end_event_initialize(&event);
+	yaml_emitter_emit_or_die(emitter, &event);
+}
+
+void dt_to_yaml(FILE *f, struct dt_info *dti)
+{
+	yaml_emitter_t emitter;
+	yaml_event_t event;
+
+	yaml_emitter_initialize(&emitter);
+	yaml_emitter_set_output_file(&emitter, f);
+	yaml_stream_start_event_initialize(&event, YAML_UTF8_ENCODING);
+	yaml_emitter_emit_or_die(&emitter, &event);
+
+	yaml_document_start_event_initialize(&event, NULL, NULL, NULL, 0);
+	yaml_emitter_emit_or_die(&emitter, &event);
+
+	yaml_sequence_start_event_initialize(&event, NULL, (yaml_char_t *)YAML_SEQ_TAG, 1, YAML_ANY_SEQUENCE_STYLE);
+	yaml_emitter_emit_or_die(&emitter, &event);
+
+	yaml_tree(dti->dt, &emitter);
+
+	yaml_sequence_end_event_initialize(&event);
+	yaml_emitter_emit_or_die(&emitter, &event);
+
+	yaml_document_end_event_initialize(&event, 0);
+	yaml_emitter_emit_or_die(&emitter, &event);
+
+	yaml_stream_end_event_initialize(&event);
+	yaml_emitter_emit_or_die(&emitter, &event);
+
+	yaml_emitter_delete(&emitter);
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
