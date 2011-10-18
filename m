Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RG8I2-0007Ip-Ey
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 11:57:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Oct 2011 13:56:59 +0200
Message-Id: <1318939019-32713-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1318939019-32713-1-git-send-email-s.hauer@pengutronix.de>
References: <1318939019-32713-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] oftree: add fixup for memory nodes
To: barebox@lists.infradead.org

Thanks to a common memory handling barebox knows the sdram banks
and sizes, so we can add a common fixup functions for the nodes
in the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c |   80 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 80 insertions(+), 0 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 4d59f15..0ba9a18 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -22,6 +22,9 @@
 
 #include <common.h>
 #include <memory.h>
+#include <of.h>
+#include <init.h>
+#include <libfdt.h>
 
 /*
  * Begin and End of memory area for malloc(), and current "brk"
@@ -87,3 +90,80 @@ void barebox_add_memory_bank(const char *name, resource_size_t start,
 
 	list_add_tail(&bank->list, &memory_banks);
 }
+
+#ifdef CONFIG_OFTREE
+
+/*
+ * Get cells len in bytes
+ *     if #NNNN-cells property is 2 then len is 8
+ *     otherwise len is 4
+ */
+static int get_cells_len(struct fdt_header *fdt, char *nr_cells_name)
+{
+	const u32 *cell;
+
+	cell = fdt_getprop(fdt, 0, nr_cells_name, NULL);
+	if (cell && *cell == 2)
+		return 8;
+
+	return 4;
+}
+
+/*
+ * Write a 4 or 8 byte big endian cell
+ */
+static void write_cell(u8 *addr, u64 val, int size)
+{
+	int shift = (size - 1) * 8;
+
+	while (size-- > 0) {
+		*addr++ = (val >> shift) & 0xff;
+		shift -= 8;
+	}
+}
+
+static int of_memory_fixup(struct fdt_header *fdt)
+{
+	struct memory_bank *bank;
+	int err, nodeoffset;
+	int addr_cell_len, size_cell_len, len = 0;
+	u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
+
+	/* update, or add and update /memory node */
+	nodeoffset = fdt_get_path_or_create(fdt, "/memory");
+	if (nodeoffset < 0)
+		return nodeoffset;
+
+	err = fdt_setprop(fdt, nodeoffset, "device_type", "memory",
+			sizeof("memory"));
+	if (err < 0) {
+		printf("WARNING: could not set %s %s.\n", "device_type",
+				fdt_strerror(err));
+		return err;
+	}
+
+	addr_cell_len = get_cells_len(fdt, "#address-cells");
+	size_cell_len = get_cells_len(fdt, "#size-cells");
+
+	for_each_memory_bank(bank) {
+		write_cell(tmp + len, bank->start, addr_cell_len);
+		len += addr_cell_len;
+		write_cell(tmp + len, bank->size, size_cell_len);
+		len += size_cell_len;
+	}
+
+	err = fdt_setprop(fdt, nodeoffset, "reg", tmp, len);
+	if (err < 0) {
+		printf("WARNING: could not set %s %s.\n",
+				"reg", fdt_strerror(err));
+		return err;
+	}
+	return 0;
+}
+
+static int of_register_memory_fixup(void)
+{
+	return of_register_fixup(of_memory_fixup);
+}
+late_initcall(of_register_memory_fixup);
+#endif
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
