Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5d-0005qA-PC
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:39 +0100
Message-Id: <1362390820-10333-37-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 36/37] of: remove unused libfdt
To: barebox@lists.infradead.org

Now that we are completely independent of libfdt remove the unused
code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9m10ihd/hw_version.c |    1 -
 arch/arm/boards/at91sam9x5ek/hw_version.c   |    1 -
 arch/arm/boards/highbank/init.c             |    3 +-
 arch/arm/boards/sama5d3xek/hw_version.c     |    1 -
 arch/arm/lib/bootm.c                        |    1 -
 commands/bootm.c                            |    1 -
 commands/of_node.c                          |    1 -
 commands/of_property.c                      |    1 -
 commands/oftree.c                           |    3 +-
 common/memory.c                             |    1 -
 common/oftree.c                             |  175 ----
 drivers/of/Kconfig                          |    1 -
 drivers/of/base.c                           |    1 -
 drivers/of/dtb.c                            |    1 -
 include/fdt.h                               |   13 +
 include/libfdt.h                            | 1235 ---------------------------
 include/libfdt_env.h                        |   21 -
 include/of.h                                |   24 -
 lib/Kconfig                                 |    3 -
 lib/Makefile                                |    1 -
 lib/fdt/Makefile                            |    2 -
 lib/fdt/TODO                                |    3 -
 lib/fdt/fdt.c                               |  222 -----
 lib/fdt/fdt_ro.c                            |  574 -------------
 lib/fdt/fdt_rw.c                            |  465 ----------
 lib/fdt/fdt_strerror.c                      |   96 ---
 lib/fdt/fdt_sw.c                            |  256 ------
 lib/fdt/fdt_wip.c                           |  118 ---
 lib/fdt/libfdt_internal.h                   |   95 ---
 29 files changed, 15 insertions(+), 3305 deletions(-)
 delete mode 100644 include/libfdt.h
 delete mode 100644 include/libfdt_env.h
 delete mode 100644 lib/fdt/Makefile
 delete mode 100644 lib/fdt/TODO
 delete mode 100644 lib/fdt/fdt.c
 delete mode 100644 lib/fdt/fdt_ro.c
 delete mode 100644 lib/fdt/fdt_rw.c
 delete mode 100644 lib/fdt/fdt_strerror.c
 delete mode 100644 lib/fdt/fdt_sw.c
 delete mode 100644 lib/fdt/fdt_wip.c
 delete mode 100644 lib/fdt/libfdt_internal.h

diff --git a/arch/arm/boards/at91sam9m10ihd/hw_version.c b/arch/arm/boards/at91sam9m10ihd/hw_version.c
index cd522f7..be910df 100644
--- a/arch/arm/boards/at91sam9m10ihd/hw_version.c
+++ b/arch/arm/boards/at91sam9m10ihd/hw_version.c
@@ -20,7 +20,6 @@
 #include <libbb.h>
 #include <asm/armlinux.h>
 #include <of.h>
-#include <libfdt.h>
 
 #include "hw_version.h"
 
diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 2695faa..76d4e1b 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -20,7 +20,6 @@
 #include <libbb.h>
 #include <asm/armlinux.h>
 #include <of.h>
-#include <libfdt.h>
 
 #include "hw_version.h"
 
diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index bd32c1d..d4a5c5a 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -16,7 +16,6 @@
 #include <partition.h>
 #include <sizes.h>
 #include <io.h>
-#include <libfdt.h>
 #include <of.h>
 
 #define FIRMWARE_DTB_BASE	0x1000
@@ -124,7 +123,7 @@ static int highbank_devices_init(void)
 		highbank_register_xgmac(1);
 	} else {
 		fdt = of_get_fixed_tree(NULL);
-		add_mem_device("dtb", (unsigned long)fdt, fdt_totalsize(fdt),
+		add_mem_device("dtb", (unsigned long)fdt, be32_to_cpu(fdt->totalsize),
 		       IORESOURCE_MEM_WRITEABLE);
 		devfs_add_partition("ram0", FIRMWARE_DTB_BASE, SZ_64K, DEVFS_PARTITION_FIXED, "firmware-dtb");
 	}
diff --git a/arch/arm/boards/sama5d3xek/hw_version.c b/arch/arm/boards/sama5d3xek/hw_version.c
index a9fcf7d..79fd63a 100644
--- a/arch/arm/boards/sama5d3xek/hw_version.c
+++ b/arch/arm/boards/sama5d3xek/hw_version.c
@@ -20,7 +20,6 @@
 #include <libbb.h>
 #include <asm/armlinux.h>
 #include <of.h>
-#include <libfdt.h>
 
 #include "hw_version.h"
 
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 4decee4..e7a0625 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -14,7 +14,6 @@
 #include <sizes.h>
 #include <libbb.h>
 #include <magicvar.h>
-#include <libfdt.h>
 #include <binfmt.h>
 
 #include <asm/byteorder.h>
diff --git a/commands/bootm.c b/commands/bootm.c
index ea5a35b..e5dfc6a 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -34,7 +34,6 @@
 #include <errno.h>
 #include <boot.h>
 #include <of.h>
-#include <libfdt.h>
 #include <rtc.h>
 #include <init.h>
 #include <of.h>
diff --git a/commands/of_node.c b/commands/of_node.c
index 171ea2c..0249d97 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -24,7 +24,6 @@
 #include <command.h>
 #include <fs.h>
 #include <malloc.h>
-#include <libfdt.h>
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
 #include <errno.h>
diff --git a/commands/of_property.c b/commands/of_property.c
index 1567a0f..6311b70 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -24,7 +24,6 @@
 #include <command.h>
 #include <fs.h>
 #include <malloc.h>
-#include <libfdt.h>
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
 #include <errno.h>
diff --git a/commands/oftree.c b/commands/oftree.c
index e4f52b8..468235a 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -30,7 +30,6 @@
 #include <command.h>
 #include <fs.h>
 #include <malloc.h>
-#include <libfdt.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
 #include <asm/byteorder.h>
@@ -114,7 +113,7 @@ static int do_oftree(int argc, char *argv[])
 			goto out;
 		}
 
-		ret = write_file(file, fdt, fdt_totalsize(fdt));
+		ret = write_file(file, fdt, fdt32_to_cpu(fdt->totalsize));
 
 		goto out;
 	}
diff --git a/common/memory.c b/common/memory.c
index 61cca0d..7ec211b 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -21,7 +21,6 @@
 #include <memory.h>
 #include <of.h>
 #include <init.h>
-#include <libfdt.h>
 #include <linux/ioport.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
diff --git a/common/oftree.c b/common/oftree.c
index e6c82d6..776d301 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -5,7 +5,6 @@
 #include <command.h>
 #include <fs.h>
 #include <malloc.h>
-#include <libfdt.h>
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
 #include <errno.h>
@@ -99,180 +98,6 @@ void of_print_property(const void *data, int len)
 	}
 }
 
-static void printf_indent(int level, const char *fmt, ...)
-{
-	va_list args;
-
-	printf("%*s", level * 8, "");
-
-	va_start (args, fmt);
-	vprintf(fmt, args);
-	va_end (args);
-}
-
-int fdt_print(struct fdt_header *working_fdt, const char *pathp)
-{
-	const void *nodep;	/* property node pointer */
-	int  nodeoffset;	/* node offset from libfdt */
-	int  nextoffset;	/* next node offset from libfdt */
-	uint32_t tag;		/* tag */
-	int  len;		/* length of the property */
-	int  level = 0;		/* keep track of nesting level */
-	const struct fdt_property *fdt_prop;
-
-	nodeoffset = fdt_path_offset(working_fdt, pathp);
-	if (nodeoffset < 0) {
-		/*
-		 * Not found or something else bad happened.
-		 */
-		printf("libfdt fdt_path_offset() returned %s\n",
-			fdt_strerror(nodeoffset));
-		return 1;
-	}
-
-	while (level >= 0) {
-		tag = fdt_next_tag(working_fdt, nodeoffset, &nextoffset);
-		switch (tag) {
-		case FDT_BEGIN_NODE:
-			pathp = fdt_get_name(working_fdt, nodeoffset, NULL);
-			if (pathp == NULL)
-				pathp = "/* NULL pointer error */";
-			if (*pathp == '\0')
-				pathp = "/";	/* root is nameless */
-			printf_indent(level, "%s {\n",pathp);
-			level++;
-			if (level >= MAX_LEVEL) {
-				printf("Nested too deep, aborting.\n");
-				return 1;
-			}
-			break;
-		case FDT_END_NODE:
-			level--;
-			printf_indent(level, "};\n");
-			if (level == 0) {
-				level = -1;		/* exit the loop */
-			}
-			break;
-		case FDT_PROP:
-			fdt_prop = fdt_offset_ptr(working_fdt, nodeoffset,
-					sizeof(*fdt_prop));
-			pathp    = fdt_string(working_fdt,
-					fdt32_to_cpu(fdt_prop->nameoff));
-			len      = fdt32_to_cpu(fdt_prop->len);
-			nodep    = fdt_prop->data;
-			if (len < 0) {
-				printf("libfdt fdt_getprop(): %s\n",
-					fdt_strerror(len));
-				return 1;
-			} else if (len == 0) {
-				/* the property has no value */
-				printf_indent(level, "%s;\n", pathp);
-			} else {
-				printf_indent(level, "%s = ", pathp);
-				of_print_property(nodep, len);
-				printf(";\n");
-			}
-			break;
-		case FDT_NOP:
-			printf_indent(level, "/* NOP */\n");
-			break;
-		case FDT_END:
-			return 1;
-		default:
-			printf("Unknown tag 0x%08X\n", tag);
-			return 1;
-		}
-		nodeoffset = nextoffset;
-	}
-	return 0;
-}
-
-/**
- * fdt_find_and_setprop: Find a node and set it's property
- *
- * @fdt: ptr to device tree
- * @node: path of node
- * @prop: property name
- * @val: ptr to new value
- * @len: length of new property value
- * @create: flag to create the property if it doesn't exist
- *
- * Convenience function to directly set a property given the path to the node.
- */
-int fdt_find_and_setprop(struct fdt_header *fdt, const char *node,
-		const char *prop, const void *val, int len, int create)
-{
-	int nodeoff = fdt_path_offset(fdt, node);
-
-	if (nodeoff < 0)
-		return nodeoff;
-
-	if ((!create) && (fdt_get_property(fdt, nodeoff, prop, NULL) == NULL))
-		return 0; /* create flag not set; so exit quietly */
-
-	return fdt_setprop(fdt, nodeoff, prop, val, len);
-}
-
-void do_fixup_by_path(struct fdt_header *fdt, const char *path,
-		const char *prop, const void *val, int len, int create)
-{
-	int rc = fdt_find_and_setprop(fdt, path, prop, val, len, create);
-	if (rc)
-		printf("Unable to update property %s:%s, err=%s\n",
-			path, prop, fdt_strerror(rc));
-}
-
-void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path,
-		const char *prop, u32 val, int create)
-{
-	val = cpu_to_fdt32(val);
-	do_fixup_by_path(fdt, path, prop, &val, sizeof(val), create);
-}
-
-void do_fixup_by_compatible(struct fdt_header *fdt, const char *compatible,
-			const char *prop, const void *val, int len, int create)
-{
-	int off = -1;
-
-	off = fdt_node_offset_by_compatible(fdt, -1, compatible);
-	while (off != -FDT_ERR_NOTFOUND) {
-		if (create || (fdt_get_property(fdt, off, prop, 0) != NULL))
-			fdt_setprop(fdt, off, prop, val, len);
-		off = fdt_node_offset_by_compatible(fdt, off, compatible);
-	}
-}
-
-void do_fixup_by_compatible_u32(struct fdt_header *fdt, const char *compatible,
-				const char *prop, u32 val, int create)
-{
-	val = cpu_to_fdt32(val);
-	do_fixup_by_compatible(fdt, compatible, prop, &val, 4, create);
-}
-
-void do_fixup_by_compatible_string(struct fdt_header *fdt, const char *compatible,
-				const char *prop, const char *val, int create)
-{
-	do_fixup_by_compatible(fdt, compatible, prop, val, strlen(val) + 1,
-				create);
-}
-
-int fdt_get_path_or_create(struct fdt_header *fdt, const char *path)
-{
-	int nodeoffset;
-
-	nodeoffset = fdt_path_offset (fdt, path);
-	if (nodeoffset < 0) {
-		nodeoffset = fdt_add_subnode(fdt, 0, path + 1);
-		if (nodeoffset < 0) {
-			printf("WARNING: could not create %s %s.\n",
-					path, fdt_strerror(nodeoffset));
-                        return -EINVAL;
-                }
-        }
-
-	return nodeoffset;
-}
-
 static int of_fixup_bootargs(struct device_node *root)
 {
 	struct device_node *node;
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index c30b1c1..031bec1 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -1,5 +1,4 @@
 config OFTREE
-	select FDT
 	bool
 
 config OFDEVICE
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5891138..ada3fc1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -20,7 +20,6 @@
 #include <common.h>
 #include <of.h>
 #include <errno.h>
-#include <libfdt.h>
 #include <malloc.h>
 #include <init.h>
 #include <memory.h>
diff --git a/drivers/of/dtb.c b/drivers/of/dtb.c
index 856b591..6d6b76d 100644
--- a/drivers/of/dtb.c
+++ b/drivers/of/dtb.c
@@ -20,7 +20,6 @@
 #include <common.h>
 #include <of.h>
 #include <errno.h>
-#include <libfdt.h>
 #include <malloc.h>
 #include <init.h>
 #include <memory.h>
diff --git a/include/fdt.h b/include/fdt.h
index 48ccfd9..35278e3 100644
--- a/include/fdt.h
+++ b/include/fdt.h
@@ -3,6 +3,19 @@
 
 #ifndef __ASSEMBLY__
 
+#define _B(n)	((unsigned long long)((uint8_t *)&x)[n])
+
+#define fdt32_to_cpu(x)	be32_to_cpu(x)
+#define cpu_to_fdt32(x) cpu_to_be32(x)
+
+static inline uint64_t fdt64_to_cpu(uint64_t x)
+{
+	return (_B(0) << 56) | (_B(1) << 48) | (_B(2) << 40) | (_B(3) << 32)
+		| (_B(4) << 24) | (_B(5) << 16) | (_B(6) << 8) | _B(7);
+}
+#define cpu_to_fdt64(x) fdt64_to_cpu(x)
+#undef _B
+
 struct fdt_header {
 	uint32_t magic;			 /* magic word FDT_MAGIC */
 	uint32_t totalsize;		 /* total size of DT block */
diff --git a/include/libfdt.h b/include/libfdt.h
deleted file mode 100644
index 55f3eb3..0000000
diff --git a/include/libfdt_env.h b/include/libfdt_env.h
deleted file mode 100644
index 6486187..0000000
diff --git a/include/of.h b/include/of.h
index 1535694..c10afa7 100644
--- a/include/of.h
+++ b/include/of.h
@@ -5,30 +5,6 @@
 #include <errno.h>
 #include <asm/byteorder.h>
 
-int fdt_print(struct fdt_header *working_fdt, const char *pathp);
-
-int fdt_find_and_setprop(struct fdt_header *fdt, const char *node, const char *prop,
-			 const void *val, int len, int create);
-void do_fixup_by_path(struct fdt_header *fdt, const char *path, const char *prop,
-		      const void *val, int len, int create);
-void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path, const char *prop,
-			  u32 val, int create);
-void do_fixup_by_compatible(struct fdt_header *fdt, const char *compatible,
-			const char *prop, const void *val, int len, int create);
-void do_fixup_by_compatible_u32(struct fdt_header *fdt, const char *compatible,
-				const char *prop, u32 val, int create);
-void do_fixup_by_compatible_string(struct fdt_header *fdt, const char *compatible,
-				const char *prop, const char *val, int create);
-int fdt_get_path_or_create(struct fdt_header *fdt, const char *path);
-#ifdef CONFIG_FDT
-int fdt_initrd(void *fdt, ulong initrd_start, ulong initrd_end, int force);
-#else
-static inline int fdt_initrd(void *fdt, ulong start, ulong end, int force)
-{
-	return 0;
-}
-#endif
-
 #define OF_BAD_ADDR      ((u64)-1)
 
 typedef u32 phandle;
diff --git a/lib/Kconfig b/lib/Kconfig
index d58109b..646fdb7 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -22,9 +22,6 @@ config PROCESS_ESCAPE_SEQUENCE
 
 source lib/lzo/Kconfig
 
-config FDT
-	bool
-
 config BCH
 	bool
 
diff --git a/lib/Makefile b/lib/Makefile
index 3c94542..7c42537 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -31,7 +31,6 @@ obj-y			+= lzo/
 obj-y			+= show_progress.o
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
-obj-$(CONFIG_FDT)	+= fdt/
 obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
diff --git a/lib/fdt/Makefile b/lib/fdt/Makefile
deleted file mode 100644
index 853bee9..0000000
diff --git a/lib/fdt/TODO b/lib/fdt/TODO
deleted file mode 100644
index 288437e..0000000
diff --git a/lib/fdt/fdt.c b/lib/fdt/fdt.c
deleted file mode 100644
index e56833a..0000000
diff --git a/lib/fdt/fdt_ro.c b/lib/fdt/fdt_ro.c
deleted file mode 100644
index 02b6d68..0000000
diff --git a/lib/fdt/fdt_rw.c b/lib/fdt/fdt_rw.c
deleted file mode 100644
index 994037b..0000000
diff --git a/lib/fdt/fdt_strerror.c b/lib/fdt/fdt_strerror.c
deleted file mode 100644
index e6c3cee..0000000
diff --git a/lib/fdt/fdt_sw.c b/lib/fdt/fdt_sw.c
deleted file mode 100644
index 55ebebf..0000000
diff --git a/lib/fdt/fdt_wip.c b/lib/fdt/fdt_wip.c
deleted file mode 100644
index 6025fa1..0000000
diff --git a/lib/fdt/libfdt_internal.h b/lib/fdt/libfdt_internal.h
deleted file mode 100644
index 381133b..0000000
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
