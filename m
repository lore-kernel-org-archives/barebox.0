Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1UCS5i-0004bi-8E
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:36 +0100
Message-Id: <1362390820-10333-34-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 33/37] of: Add reservemap handling
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/dtb.c |   65 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h     |   10 +++++++++
 2 files changed, 75 insertions(+)

diff --git a/drivers/of/dtb.c b/drivers/of/dtb.c
index 3867128..856b591 100644
--- a/drivers/of/dtb.c
+++ b/drivers/of/dtb.c
@@ -399,3 +399,68 @@ out_free:
 
 	return NULL;
 }
+
+/*
+ * The last entry is the zeroed sentinel, the one before is
+ * reserved for the reservemap entry for the dtb itself.
+ */
+#define OF_MAX_FREE_RESERVE_MAP	(OF_MAX_RESERVE_MAP - 2)
+
+static struct of_reserve_map of_reserve_map;
+
+int of_add_reserve_entry(resource_size_t start, resource_size_t end)
+{
+	int e = of_reserve_map.num_entries;
+
+	if (e >= OF_MAX_FREE_RESERVE_MAP)
+		return -ENOSPC;
+
+	of_reserve_map.start[e] = start;
+	of_reserve_map.end[e] = end;
+	of_reserve_map.num_entries++;
+
+	return 0;
+}
+
+struct of_reserve_map *of_get_reserve_map(void)
+{
+	return &of_reserve_map;
+}
+
+void of_clean_reserve_map(void)
+{
+	of_reserve_map.num_entries = 0;
+}
+
+/**
+ * fdt_add_reserve_map - Add reserve map entries to a devicetree binary
+ * @__fdt: The devicetree blob
+ *
+ * This adds the reservemap entries previously colllected in
+ * of_add_reserve_entry() to a devicetree binary blob. This also
+ * adds the devicetree itself to the reserved list, so after calling
+ * this function the tree should not be relocated anymore.
+ */
+void fdt_add_reserve_map(void *__fdt)
+{
+	struct fdt_header *fdt = __fdt;
+	struct of_reserve_map *res = &of_reserve_map;
+	struct fdt_reserve_entry *fdt_res =
+		__fdt + be32_to_cpu(fdt->off_mem_rsvmap);
+	int i;
+
+	for (i = 0; i < res->num_entries; i++) {
+		of_write_number(&fdt_res->address, res->start[i], 2);
+		of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1,
+				2);
+		fdt_res++;
+	}
+
+	of_write_number(&fdt_res->address, (unsigned long)__fdt, 2);
+	of_write_number(&fdt_res->size, (unsigned long)__fdt +
+			be32_to_cpu(fdt->totalsize), 2);
+	fdt_res++;
+
+	of_write_number(&fdt_res->address, 0, 2);
+	of_write_number(&fdt_res->size, 0, 2);
+}
diff --git a/include/of.h b/include/of.h
index ef6a4ce..1535694 100644
--- a/include/of.h
+++ b/include/of.h
@@ -61,6 +61,16 @@ struct of_device_id {
 };
 
 #define OF_MAX_RESERVE_MAP	16
+struct of_reserve_map {
+	uint64_t start[OF_MAX_RESERVE_MAP];
+	uint64_t end[OF_MAX_RESERVE_MAP];
+	int num_entries;
+};
+
+int of_add_reserve_entry(resource_size_t start, resource_size_t end);
+struct of_reserve_map *of_get_reserve_map(void);
+void of_clean_reserve_map(void);
+void fdt_add_reserve_map(void *fdt);
 
 struct driver_d;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
