Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9sqj-0001tk-5Z
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:28:37 +0000
Received: by mail-we0-f174.google.com with SMTP id x48so880384wes.5
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 02:28:15 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 11:28:07 +0200
Message-Id: <1406107690-8605-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/5] ARM: mvebu: allow to fixup mbus ranges
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

On Marvell MVEBU SoCs internal registers are usually remapped from reset
default. While Dove and Kirkwood always had their registers remapped,
some Armada 370 and XP where shipped with bootloaders that did not remap
them.

On Barebox these registers are remapped early and on all MVEBU SoCs, so
provided DTs should always reflect that in their mbus ranges property.

This patch registers a fixup for DTBs and allows individual SoCs to add
specific remap ranges to the fixup list. The fixup is registered on
pure_initcall to even allow to fixup pbl or appended DTBs.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: barebox@lists.infradead.org
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/bus/mvebu-mbus.c | 74 +++++++++++++++++++++++++++++++++++++++++++++++-
 include/linux/mbus.h     |  2 ++
 2 files changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index 11e3777a6094..2fefa63edd9d 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -53,6 +53,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <malloc.h>
 #include <of.h>
 #include <of_address.h>
 #include <linux/mbus.h>
@@ -546,7 +547,7 @@ void mvebu_mbus_get_pcie_io_aperture(struct resource *res)
  *  - bits 16 to 23: window attribute ID
  *  - bits  0 to 15: unused
  */
-#define CUSTOM(id) (((id) & 0xF0000000) >> 24)
+#define CUSTOM(id) (((id) & 0xF0000000) >> 28)
 #define TARGET(id) (((id) & 0x0F000000) >> 24)
 #define ATTR(id)   (((id) & 0x00FF0000) >> 16)
 
@@ -741,3 +742,74 @@ static int mvebu_mbus_init(void)
 	return platform_driver_register(&mvebu_mbus_driver);
 }
 postcore_initcall(mvebu_mbus_init);
+
+struct mbus_range {
+	u32 mbusid;
+	u32 remap;
+	struct list_head list;
+};
+
+#define MBUS_ID(t,a)	(((t) << 24) | ((attr) << 16))
+static LIST_HEAD(mbus_ranges);
+
+void mvebu_mbus_add_range(u8 target, u8 attr, u32 remap)
+{
+	struct mbus_range *r = xzalloc(sizeof(*r));
+
+	r->mbusid = MBUS_ID(target, attr);
+	r->remap = remap;
+	list_add_tail(&r->list, &mbus_ranges);
+}
+
+/*
+ * Barebox always remaps internal registers to 0xf1000000 on every SoC.
+ * As we (and Linux) need a working DT and there is no way to tell the current
+ * remap address, fixup any provided DT to ensure custom MBUS_IDs are correct.
+ */
+static int mvebu_mbus_of_fixup(struct device_node *root, void *context)
+{
+	struct device_node *np;
+
+	for_each_matching_node(np, mvebu_mbus_dt_ids) {
+		struct property *p;
+		int n, pa, na, ns, lenp, size;
+		u32 *ranges;
+
+		p = of_find_property(np, "ranges", &lenp);
+		if (!p)
+			return -EINVAL;
+
+		pa = of_n_addr_cells(np);
+		if (of_property_read_u32(np, "#address-cells", &na) ||
+		    of_property_read_u32(np, "#size-cells", &ns))
+			return -EINVAL;
+
+		size = pa + na + ns;
+		ranges = xzalloc(lenp);
+		of_property_read_u32_array(np, "ranges", ranges, lenp/4);
+
+		for (n = 0; n < lenp/4; n += size) {
+			struct mbus_range *r;
+			u32 mbusid = ranges[n];
+
+			if (!CUSTOM(mbusid))
+				continue;
+
+			list_for_each_entry(r, &mbus_ranges, list) {
+				if (r->mbusid == mbusid)
+					ranges[n + na] = r->remap;
+			}
+		}
+
+		if (of_property_write_u32_array(np, "ranges", ranges, lenp/4))
+			pr_err("Unable to fixup mbus ranges\n");
+		free(ranges);
+	}
+
+	return 0;
+}
+
+static int mvebu_mbus_fixup_register(void) {
+	return of_register_fixup(mvebu_mbus_of_fixup, NULL);
+}
+pure_initcall(mvebu_mbus_fixup_register);
diff --git a/include/linux/mbus.h b/include/linux/mbus.h
index 578ff331461c..ac149828757b 100644
--- a/include/linux/mbus.h
+++ b/include/linux/mbus.h
@@ -58,4 +58,6 @@ int mvebu_mbus_add_window_by_id(unsigned int target, unsigned int attribute,
 				phys_addr_t base, size_t size);
 int mvebu_mbus_del_window(phys_addr_t base, size_t size);
 
+void mvebu_mbus_add_range(u8 target, u8 attr, u32 remap);
+
 #endif /* __LINUX_MBUS_H */
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
