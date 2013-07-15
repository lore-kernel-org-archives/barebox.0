Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uyosy-00070y-3p
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 19:56:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jul 2013 21:56:00 +0200
Message-Id: <1373918160-20718-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: add mtd of helpers
To: barebox@lists.infradead.org

Directly taken from the kernel

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/Makefile |  1 +
 drivers/of/of_mtd.c | 82 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of_mtd.h    | 18 ++++++++++++
 3 files changed, 101 insertions(+)
 create mode 100644 drivers/of/of_mtd.c
 create mode 100644 include/of_mtd.h

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index e7d0733..058afc2 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_OFTREE_MEM_GENERIC) += mem_generic.o
 obj-$(CONFIG_GPIOLIB) += of_gpio.o
 obj-y += partition.o
 obj-y += of_net.o
+obj-$(CONFIG_MTD) += of_mtd.o
diff --git a/drivers/of/of_mtd.c b/drivers/of/of_mtd.c
new file mode 100644
index 0000000..239f1f9
--- /dev/null
+++ b/drivers/of/of_mtd.c
@@ -0,0 +1,82 @@
+/*
+ * Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * OF helpers for mtd.
+ *
+ * This file is released under the GPLv2
+ *
+ */
+#include <common.h>
+#include <of_mtd.h>
+#include <linux/mtd/nand.h>
+
+/**
+ * It maps 'enum nand_ecc_modes_t' found in include/linux/mtd/nand.h
+ * into the device tree binding of 'nand-ecc', so that MTD
+ * device driver can get nand ecc from device tree.
+ */
+static const char *nand_ecc_modes[] = {
+	[NAND_ECC_NONE]		= "none",
+	[NAND_ECC_SOFT]		= "soft",
+	[NAND_ECC_HW]		= "hw",
+	[NAND_ECC_HW_SYNDROME]	= "hw_syndrome",
+};
+
+/**
+ * of_get_nand_ecc_mode - Get nand ecc mode for given device_node
+ * @np:	Pointer to the given device_node
+ *
+ * The function gets ecc mode string from property 'nand-ecc-mode',
+ * and return its index in nand_ecc_modes table, or errno in error case.
+ */
+int of_get_nand_ecc_mode(struct device_node *np)
+{
+	const char *pm;
+	int err, i;
+
+	err = of_property_read_string(np, "nand-ecc-mode", &pm);
+	if (err < 0)
+		return err;
+
+	for (i = 0; i < ARRAY_SIZE(nand_ecc_modes); i++)
+		if (!strcasecmp(pm, nand_ecc_modes[i]))
+			return i;
+
+	return -ENODEV;
+}
+EXPORT_SYMBOL_GPL(of_get_nand_ecc_mode);
+
+/**
+ * of_get_nand_bus_width - Get nand bus witdh for given device_node
+ * @np:	Pointer to the given device_node
+ *
+ * return bus width option, or errno in error case.
+ */
+int of_get_nand_bus_width(struct device_node *np)
+{
+	u32 val;
+
+	if (of_property_read_u32(np, "nand-bus-width", &val))
+		return 8;
+
+	switch(val) {
+	case 8:
+	case 16:
+		return val;
+	default:
+		return -EIO;
+	}
+}
+EXPORT_SYMBOL_GPL(of_get_nand_bus_width);
+
+/**
+ * of_get_nand_on_flash_bbt - Get nand on flash bbt for given device_node
+ * @np:	Pointer to the given device_node
+ *
+ * return true if present false other wise
+ */
+bool of_get_nand_on_flash_bbt(struct device_node *np)
+{
+	return of_property_read_bool(np, "nand-on-flash-bbt");
+}
+EXPORT_SYMBOL_GPL(of_get_nand_on_flash_bbt);
diff --git a/include/of_mtd.h b/include/of_mtd.h
new file mode 100644
index 0000000..a5a8f20
--- /dev/null
+++ b/include/of_mtd.h
@@ -0,0 +1,18 @@
+/*
+ * Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * OF helpers for mtd.
+ *
+ * This file is released under the GPLv2
+ */
+
+#ifndef __LINUX_OF_MTD_H
+#define __LINUX_OF_MTD_H
+
+#include <of.h>
+
+int of_get_nand_ecc_mode(struct device_node *np);
+int of_get_nand_bus_width(struct device_node *np);
+bool of_get_nand_on_flash_bbt(struct device_node *np);
+
+#endif /* __LINUX_OF_MTD_H */
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
