Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhsA-0002Oe-FQ
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 13:39:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Aug 2019 15:38:43 +0200
Message-Id: <20190819133847.17015-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] Compile libfdt for barebox
To: Barebox List <barebox@lists.infradead.org>

libfdt can be useful for very early device tree parsing, so compile it
for barobox aswell. This is done the same way as done in the Kernel:
we put C files with the same name as in libfdt into lib/ and just
include the libfdt files from there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/fdt.h              | 69 +-------------------------------------
 include/linux/libfdt.h     |  8 +++++
 include/linux/libfdt_env.h | 19 +++++++++++
 lib/Kconfig                |  3 ++
 lib/Makefile               | 10 ++++++
 lib/fdt.c                  |  2 ++
 lib/fdt_empty_tree.c       |  2 ++
 lib/fdt_ro.c               |  2 ++
 lib/fdt_rw.c               |  2 ++
 lib/fdt_strerror.c         |  2 ++
 lib/fdt_sw.c               |  2 ++
 lib/fdt_wip.c              |  2 ++
 12 files changed, 55 insertions(+), 68 deletions(-)
 create mode 100644 include/linux/libfdt.h
 create mode 100644 include/linux/libfdt_env.h
 create mode 100644 lib/fdt.c
 create mode 100644 lib/fdt_empty_tree.c
 create mode 100644 lib/fdt_ro.c
 create mode 100644 lib/fdt_rw.c
 create mode 100644 lib/fdt_strerror.c
 create mode 100644 lib/fdt_sw.c
 create mode 100644 lib/fdt_wip.c

diff --git a/include/fdt.h b/include/fdt.h
index 1ccd4c6734..38a2d27b02 100644
--- a/include/fdt.h
+++ b/include/fdt.h
@@ -3,73 +3,6 @@
 
 #include <linux/types.h>
 
-#ifndef __ASSEMBLY__
-
-#define _B(n)	((unsigned long long)((uint8_t *)&x)[n])
-
-#define fdt32_to_cpu(x)	be32_to_cpu(x)
-#define cpu_to_fdt32(x) cpu_to_be32(x)
-
-static inline uint64_t fdt64_to_cpu(uint64_t x)
-{
-	return (_B(0) << 56) | (_B(1) << 48) | (_B(2) << 40) | (_B(3) << 32)
-		| (_B(4) << 24) | (_B(5) << 16) | (_B(6) << 8) | _B(7);
-}
-#define cpu_to_fdt64(x) fdt64_to_cpu(x)
-#undef _B
-
-struct fdt_header {
-	uint32_t magic;			 /* magic word FDT_MAGIC */
-	uint32_t totalsize;		 /* total size of DT block */
-	uint32_t off_dt_struct;		 /* offset to structure */
-	uint32_t off_dt_strings;	 /* offset to strings */
-	uint32_t off_mem_rsvmap;	 /* offset to memory reserve map */
-	uint32_t version;		 /* format version */
-	uint32_t last_comp_version;	 /* last compatible version */
-
-	/* version 2 fields below */
-	uint32_t boot_cpuid_phys;	 /* Which physical CPU id we're
-					    booting on */
-	/* version 3 fields below */
-	uint32_t size_dt_strings;	 /* size of the strings block */
-
-	/* version 17 fields below */
-	uint32_t size_dt_struct;	 /* size of the structure block */
-};
-
-struct fdt_reserve_entry {
-	uint64_t address;
-	uint64_t size;
-};
-
-struct fdt_node_header {
-	uint32_t tag;
-	char name[0];
-};
-
-struct fdt_property {
-	uint32_t tag;
-	uint32_t len;
-	uint32_t nameoff;
-	char data[0];
-};
-
-#endif /* !__ASSEMBLY */
-
-#define FDT_MAGIC	0xd00dfeed	/* 4: version, 4: total size */
-#define FDT_TAGSIZE	sizeof(uint32_t)
-
-#define FDT_BEGIN_NODE	0x1		/* Start node: full name */
-#define FDT_END_NODE	0x2		/* End node */
-#define FDT_PROP	0x3		/* Property: name off,
-					   size, content */
-#define FDT_NOP		0x4		/* nop */
-#define FDT_END		0x9
-
-#define FDT_V1_SIZE	(7*sizeof(uint32_t))
-#define FDT_V2_SIZE	(FDT_V1_SIZE + sizeof(uint32_t))
-#define FDT_V3_SIZE	(FDT_V2_SIZE + sizeof(uint32_t))
-#define FDT_V16_SIZE	FDT_V3_SIZE
-#define FDT_V17_SIZE	(FDT_V16_SIZE + sizeof(uint32_t))
+#include <linux/libfdt.h>
 
 #endif /* _FDT_H */
diff --git a/include/linux/libfdt.h b/include/linux/libfdt.h
new file mode 100644
index 0000000000..ef2467213b
--- /dev/null
+++ b/include/linux/libfdt.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _INCLUDE_LIBFDT_H_
+#define _INCLUDE_LIBFDT_H_
+
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/libfdt.h"
+
+#endif /* _INCLUDE_LIBFDT_H_ */
diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
new file mode 100644
index 0000000000..edb0f0c309
--- /dev/null
+++ b/include/linux/libfdt_env.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef LIBFDT_ENV_H
+#define LIBFDT_ENV_H
+
+#include <linux/kernel.h>	/* For INT_MAX */
+#include <linux/string.h>
+
+#include <asm/byteorder.h>
+
+typedef __be16 fdt16_t;
+typedef __be32 fdt32_t;
+typedef __be64 fdt64_t;
+
+#define fdt32_to_cpu(x) be32_to_cpu(x)
+#define cpu_to_fdt32(x) cpu_to_be32(x)
+#define fdt64_to_cpu(x) be64_to_cpu(x)
+#define cpu_to_fdt64(x) cpu_to_be64(x)
+
+#endif /* LIBFDT_ENV_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index af178217f8..f75eba9220 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -100,6 +100,9 @@ config FSL_QE_FIRMWARE
 	select CRC32
 	bool
 
+config LIBFDT
+	bool
+
 config RATP
 	select CRC_ITU_T
 	bool "RATP protocol support"
diff --git a/lib/Makefile b/lib/Makefile
index 161d3a756e..a07ceb15ab 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -79,3 +79,13 @@ obj-$(CONFIG_GENERIC_LIB_LSHRDI3) += lshrdi3.o
 obj-$(CONFIG_GENERIC_LIB_MULDI3)  += muldi3.o
 
 pbl-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
+
+libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
+	                      fdt_empty_tree.o
+$(foreach file, $(libfdt_files), \
+	        $(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt))
+$(foreach file, $(libfdt_files), \
+		$(eval CFLAGS_pbl-$(file) = -I $(srctree)/scripts/dtc/libfdt))
+
+obj-pbl-$(CONFIG_LIBFDT) += $(libfdt_files)
+
diff --git a/lib/fdt.c b/lib/fdt.c
new file mode 100644
index 0000000000..97f20069fc
--- /dev/null
+++ b/lib/fdt.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt.c"
diff --git a/lib/fdt_empty_tree.c b/lib/fdt_empty_tree.c
new file mode 100644
index 0000000000..5d30c58150
--- /dev/null
+++ b/lib/fdt_empty_tree.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_empty_tree.c"
diff --git a/lib/fdt_ro.c b/lib/fdt_ro.c
new file mode 100644
index 0000000000..f73c04ea7b
--- /dev/null
+++ b/lib/fdt_ro.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_ro.c"
diff --git a/lib/fdt_rw.c b/lib/fdt_rw.c
new file mode 100644
index 0000000000..0c1f0f4a4b
--- /dev/null
+++ b/lib/fdt_rw.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_rw.c"
diff --git a/lib/fdt_strerror.c b/lib/fdt_strerror.c
new file mode 100644
index 0000000000..8713e3ff47
--- /dev/null
+++ b/lib/fdt_strerror.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_strerror.c"
diff --git a/lib/fdt_sw.c b/lib/fdt_sw.c
new file mode 100644
index 0000000000..9ac7e50c76
--- /dev/null
+++ b/lib/fdt_sw.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_sw.c"
diff --git a/lib/fdt_wip.c b/lib/fdt_wip.c
new file mode 100644
index 0000000000..45b3fc3d3b
--- /dev/null
+++ b/lib/fdt_wip.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_wip.c"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
