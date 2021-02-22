Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE4kS-0003AF-Qf
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 06:31:13 +0000
Received: from geraet.fritz.box (unknown [83.135.83.78])
 (Authenticated sender: ahmad@a3f.at)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5BEB8240005
 for <barebox@lists.infradead.org>; Mon, 22 Feb 2021 06:31:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 07:30:52 +0100
Message-Id: <20210222063052.566792-2-ahmad@a3f.at>
In-Reply-To: <20210222063052.566792-1-ahmad@a3f.at>
References: <20210222063052.566792-1-ahmad@a3f.at>
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
Subject: [PATCH 2/2] pbl: provide externally visible fdt_find_mem
To: barebox@lists.infradead.org

of_find_mem can be used for generic DT images for other architectures as
well. To support this, move the definition, so it can be used by others
in the future.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/board-dt-2nd.c | 68 +----------------------------------
 include/pbl.h               |  2 ++
 pbl/Makefile                |  1 +
 pbl/fdt.c                   | 70 +++++++++++++++++++++++++++++++++++++
 4 files changed, 74 insertions(+), 67 deletions(-)
 create mode 100644 pbl/fdt.c

diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
index 7a8155b7b01b..bb131807859c 100644
--- a/arch/arm/cpu/board-dt-2nd.c
+++ b/arch/arm/cpu/board-dt-2nd.c
@@ -8,73 +8,7 @@
 #include <debug_ll.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
-#include <linux/libfdt.h>
-
-static void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize)
-{
-	const __be32 *nap, *nsp, *reg;
-	uint32_t na, ns;
-	uint64_t memsize64, membase64;
-	int node, size, i;
-
-	/* Make sure FDT blob is sane */
-	if (fdt_check_header(fdt) != 0) {
-		pr_err("Invalid device tree blob\n");
-		goto err;
-	}
-
-	/* Find the #address-cells and #size-cells properties */
-	node = fdt_path_offset(fdt, "/");
-	if (node < 0) {
-		pr_err("Cannot find root node\n");
-		goto err;
-	}
-
-	nap = fdt_getprop(fdt, node, "#address-cells", &size);
-	if (!nap || (size != 4)) {
-		pr_err("Cannot find #address-cells property");
-		goto err;
-	}
-	na = fdt32_to_cpu(*nap);
-
-	nsp = fdt_getprop(fdt, node, "#size-cells", &size);
-	if (!nsp || (size != 4)) {
-		pr_err("Cannot find #size-cells property");
-		goto err;
-	}
-	ns = fdt32_to_cpu(*nap);
-
-	/* Find the memory range */
-	node = fdt_node_offset_by_prop_value(fdt, -1, "device_type",
-					     "memory", sizeof("memory"));
-	if (node < 0) {
-		pr_err("Cannot find memory node\n");
-		goto err;
-	}
-
-	reg = fdt_getprop(fdt, node, "reg", &size);
-	if (size < (na + ns) * sizeof(u32)) {
-		pr_err("cannot get memory range\n");
-		goto err;
-	}
-
-	membase64 = 0;
-	for (i = 0; i < na; i++)
-		membase64 = (membase64 << 32) | fdt32_to_cpu(*reg++);
-
-	/* get the memsize and truncate it to under 4G on 32 bit machines */
-	memsize64 = 0;
-	for (i = 0; i < ns; i++)
-		memsize64 = (memsize64 << 32) | fdt32_to_cpu(*reg++);
-
-	*membase = membase64;
-	*memsize = memsize64;
-
-	return;
-err:
-	pr_err("No memory, cannot continue\n");
-	while (1);
-}
+#include <pbl.h>
 
 #ifdef CONFIG_CPU_V8
 
diff --git a/include/pbl.h b/include/pbl.h
index 5e971f865675..194d5e750839 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -32,4 +32,6 @@ ssize_t pbl_fat_load(struct pbl_bio *, const char *filename, void *dest, size_t
 #define IN_PBL	0
 #endif
 
+void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
+
 #endif /* __PBL_H__ */
diff --git a/pbl/Makefile b/pbl/Makefile
index c5a08c135421..9faa56ac91d1 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -4,4 +4,5 @@
 pbl-y += misc.o
 pbl-y += string.o
 pbl-y += decomp.o
+pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
diff --git a/pbl/fdt.c b/pbl/fdt.c
new file mode 100644
index 000000000000..b4a40a514b8b
--- /dev/null
+++ b/pbl/fdt.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/libfdt.h>
+#include <pbl.h>
+#include <printk.h>
+
+void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize)
+{
+	const __be32 *nap, *nsp, *reg;
+	uint32_t na, ns;
+	uint64_t memsize64, membase64;
+	int node, size, i;
+
+	/* Make sure FDT blob is sane */
+	if (fdt_check_header(fdt) != 0) {
+		pr_err("Invalid device tree blob\n");
+		goto err;
+	}
+
+	/* Find the #address-cells and #size-cells properties */
+	node = fdt_path_offset(fdt, "/");
+	if (node < 0) {
+		pr_err("Cannot find root node\n");
+		goto err;
+	}
+
+	nap = fdt_getprop(fdt, node, "#address-cells", &size);
+	if (!nap || (size != 4)) {
+		pr_err("Cannot find #address-cells property");
+		goto err;
+	}
+	na = fdt32_to_cpu(*nap);
+
+	nsp = fdt_getprop(fdt, node, "#size-cells", &size);
+	if (!nsp || (size != 4)) {
+		pr_err("Cannot find #size-cells property");
+		goto err;
+	}
+	ns = fdt32_to_cpu(*nap);
+
+	/* Find the memory range */
+	node = fdt_node_offset_by_prop_value(fdt, -1, "device_type",
+					     "memory", sizeof("memory"));
+	if (node < 0) {
+		pr_err("Cannot find memory node\n");
+		goto err;
+	}
+
+	reg = fdt_getprop(fdt, node, "reg", &size);
+	if (size < (na + ns) * sizeof(u32)) {
+		pr_err("cannot get memory range\n");
+		goto err;
+	}
+
+	membase64 = 0;
+	for (i = 0; i < na; i++)
+		membase64 = (membase64 << 32) | fdt32_to_cpu(*reg++);
+
+	/* get the memsize and truncate it to under 4G on 32 bit machines */
+	memsize64 = 0;
+	for (i = 0; i < ns; i++)
+		memsize64 = (memsize64 << 32) | fdt32_to_cpu(*reg++);
+
+	*membase = membase64;
+	*memsize = memsize64;
+
+	return;
+err:
+	pr_err("No memory, cannot continue\n");
+	while (1);
+}
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
