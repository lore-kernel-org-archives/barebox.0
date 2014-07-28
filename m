Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBkwt-0006Cr-QL
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 13:26:44 +0000
Received: by mail-wg0-f44.google.com with SMTP id m15so7332299wgh.27
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 06:26:21 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 28 Jul 2014 15:26:09 +0200
Message-Id: <1406553970-18157-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 4/5] of: pci: import of_pci_get_devfn()
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Marvell MVEBU PCIe driver requires of_pcie_get_devfn(), import it from
Linux.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Lucas Stach <l.stach@pengutronix.de>
---
Changelog:
v1->v2:
- none

Cc: barebox@lists.infradead.org
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/of/Kconfig  |  6 ++++++
 drivers/of/Makefile |  1 +
 drivers/of/of_pci.c | 27 +++++++++++++++++++++++++++
 include/of_pci.h    | 17 +++++++++++++++++
 4 files changed, 51 insertions(+)
 create mode 100644 drivers/of/of_pci.c
 create mode 100644 include/of_pci.h

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 2b28cf3fb425..81955063d70c 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -27,6 +27,12 @@ config OF_GPIO
 	depends on OFDEVICE
 	def_bool y
 
+config OF_PCI
+	bool
+	depends on PCI
+	help
+	  OpenFirmware PCI bus accessors
+
 config OF_BAREBOX_DRIVERS
 	depends on OFDEVICE
 	depends on ENV_HANDLING
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index c883e516c834..0dc2f8d63ed0 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -1,6 +1,7 @@
 obj-y += address.o base.o fdt.o platform.o
 obj-$(CONFIG_OFTREE_MEM_GENERIC) += mem_generic.o
 obj-$(CONFIG_OF_GPIO) += of_gpio.o
+obj-$(CONFIG_OF_PCI) += of_pci.o
 obj-y += partition.o
 obj-y += of_net.o
 obj-$(CONFIG_MTD) += of_mtd.o
diff --git a/drivers/of/of_pci.c b/drivers/of/of_pci.c
new file mode 100644
index 000000000000..2d0fbd2e5f69
--- /dev/null
+++ b/drivers/of/of_pci.c
@@ -0,0 +1,27 @@
+#include <common.h>
+#include <errno.h>
+#include <of.h>
+#include <of_pci.h>
+
+/**
+ * of_pci_get_devfn() - Get device and function numbers for a device node
+ * @np: device node
+ *
+ * Parses a standard 5-cell PCI resource and returns an 8-bit value that can
+ * be passed to the PCI_SLOT() and PCI_FUNC() macros to extract the device
+ * and function numbers respectively. On error a negative error code is
+ * returned.
+ */
+int of_pci_get_devfn(struct device_node *np)
+{
+	unsigned int size;
+	const __be32 *reg;
+
+	reg = of_get_property(np, "reg", &size);
+
+	if (!reg || size < 5 * sizeof(__be32))
+		return -EINVAL;
+
+	return (be32_to_cpup(reg) >> 8) & 0xff;
+}
+EXPORT_SYMBOL_GPL(of_pci_get_devfn);
diff --git a/include/of_pci.h b/include/of_pci.h
new file mode 100644
index 000000000000..c95cb0135ae0
--- /dev/null
+++ b/include/of_pci.h
@@ -0,0 +1,17 @@
+#ifndef __OF_PCI_H
+#define __OF_PCI_H
+
+#include <linux/pci.h>
+
+#ifdef CONFIG_OF_PCI
+int of_pci_get_devfn(struct device_node *np);
+
+#else
+static inline int of_pci_get_devfn(struct device_node *np)
+{
+	return -EINVAL;
+}
+
+#endif
+
+#endif
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
