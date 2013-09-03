Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGs15-0001io-SD
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 14:55:41 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  3 Sep 2013 15:54:25 +0100
Message-Id: <1378220067-22296-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
References: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/4] ppc: add and update device tree fixup functions
To: barebox@lists.infradead.org

This adds support for populating derived properties of the mpc85xx SOC
which are not typically included in the dtb directly.

This update is based on U-Boot code from common/fdt_support.c
and arch/powerpc/cpu/mpc85xx/fdt.c - version git-2b26201.

The function eth_of_fixup is also updated so that the MAC address can
be assigned to an Ethernet device node based on its alias retrieved
from the device tree.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/processor.h |    1 +
 arch/ppc/mach-mpc85xx/Makefile   |    1 +
 arch/ppc/mach-mpc85xx/fdt.c      |  146 ++++++++++++++++++++++++++++++++++++++
 net/eth.c                        |   20 +++---
 4 files changed, 159 insertions(+), 9 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/fdt.c

diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index 29e0622..04cfb60 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -845,6 +845,7 @@
 
 /* Some parts define SVR[0:23] as the SOC version */
 #define SVR_SOC_VER(svr) (((svr) >> 8) & 0xFFFFFF)	/* SOC Version fields */
+#define IS_E_PROCESSOR(svr)    ((svr) & 0x80000)
 
 /*
  * SVR_VER() Version Values
diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
index cc412c5..81d6853 100644
--- a/arch/ppc/mach-mpc85xx/Makefile
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -5,4 +5,5 @@ obj-y			+= fsl_law.o
 obj-y			+= speed.o
 obj-y			+=time.o
 obj-$(CONFIG_MP)	+= mp.o
+obj-$(CONFIG_OFTREE)	+= fdt.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR) += eth-devices.o
diff --git a/arch/ppc/mach-mpc85xx/fdt.c b/arch/ppc/mach-mpc85xx/fdt.c
new file mode 100644
index 0000000..4feae44
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/fdt.c
@@ -0,0 +1,146 @@
+/*
+ * Copyright 2013 GE Intelligent Platforms, Inc.
+ * Copyright 2007-2011 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * Based on U-Boot arch/powerpc/cpu/mpc85xx/fdt.c and
+ * common/fdt_support.c - version git-2b26201.
+ */
+#include <common.h>
+#include <init.h>
+#include <errno.h>
+#include <environment.h>
+#include <asm/processor.h>
+#include <mach/clock.h>
+#include <of.h>
+
+static void of_setup_crypto_node(void *blob)
+{
+	struct device_node *crypto_node;
+
+	crypto_node = of_find_compatible_node(blob, NULL, "fsl,sec2.0");
+	if (crypto_node == NULL)
+		return;
+
+	of_delete_node(crypto_node);
+}
+
+/* These properties specify whether the hardware supports the stashing
+ * of buffer descriptors in L2 cache.
+ */
+static void fdt_add_enet_stashing(void *fdt)
+{
+	struct device_node *node;
+
+	node = of_find_compatible_node(fdt, NULL, "gianfar");
+	while (node) {
+		of_set_property(node, "bd-stash", NULL, 0, 1);
+		of_property_write_u32(node, "rx-stash-len", 96);
+		of_property_write_u32(node, "rx-stash-idx", 0);
+		node = of_find_compatible_node(node, NULL, "gianfar");
+	}
+}
+
+static int fdt_stdout_setup(struct device_node *blob)
+{
+	struct device_node *node, *alias;
+	char sername[9] = { 0 };
+	const char *prop;
+	struct console_device *cdev;
+	int len;
+
+	node = of_create_node(blob, "/chosen");
+	if (node == NULL) {
+		pr_err("%s: could not open /chosen node\n", __func__);
+		goto error;
+	}
+
+	for_each_console(cdev)
+		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
+			break;
+	if (cdev)
+		sprintf(sername, "serial%d", cdev->dev->id);
+	else
+		sprintf(sername, "serial%d", 0);
+
+	alias = of_find_node_by_path_from(blob, "/aliases");
+	if (!alias) {
+		pr_err("%s: could not get aliases node.\n", __func__);
+		goto error;
+	}
+	prop = of_get_property(alias, sername, &len);
+	of_set_property(node, "linux,stdout-path", prop, len, 1);
+
+	return 0;
+error:
+	return -ENODEV;
+}
+
+static int fdt_cpu_setup(struct device_node *blob)
+{
+	struct device_node *node;
+	struct sys_info sysinfo;
+
+	/* delete crypto node if not on an E-processor */
+	if (!IS_E_PROCESSOR(get_svr()))
+		of_setup_crypto_node(blob);
+
+	fdt_add_enet_stashing(blob);
+	fsl_get_sys_info(&sysinfo);
+
+	node = of_find_node_by_type(blob, "cpu");
+	while (node) {
+		const uint32_t *reg;
+
+		of_property_write_u32(node, "timebase-frequency",
+				fsl_get_timebase_clock());
+		of_property_write_u32(node, "bus-frequency",
+				sysinfo.freqSystemBus);
+		reg = of_get_property(node, "reg", NULL);
+		of_property_write_u32(node, "clock-frequency",
+				sysinfo.freqProcessor[*reg]);
+		node = of_find_node_by_type(node, "cpu");
+	}
+
+	node = of_find_node_by_type(blob, "soc");
+	if (node)
+		of_property_write_u32(node, "bus-frequency",
+				sysinfo.freqSystemBus);
+
+	node = of_find_compatible_node(blob, NULL, "fsl,elbc");
+	if (node)
+		of_property_write_u32(node, "bus-frequency",
+				sysinfo.freqLocalBus);
+
+	node = of_find_compatible_node(blob, NULL, "ns16550");
+	while (node) {
+		of_property_write_u32(node, "clock-frequency",
+				sysinfo.freqSystemBus);
+		node = of_find_compatible_node(node, NULL, "ns16550");
+	}
+
+	fdt_stdout_setup(blob);
+
+	return 0;
+}
+
+static int of_register_mpc85xx_fixup(void)
+{
+	return of_register_fixup(fdt_cpu_setup);
+}
+late_initcall(of_register_mpc85xx_fixup);
diff --git a/net/eth.c b/net/eth.c
index e94689a..52ce466 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -285,21 +285,23 @@ static int eth_of_fixup(struct device_node *root)
 	 * find a nodepath for and which has a valid mac address.
 	 */
 	list_for_each_entry(edev, &netdev_list, list) {
-		if (!edev->nodepath) {
-			dev_dbg(&edev->dev, "%s: no node to fixup\n", __func__);
+		if (!is_valid_ether_addr(edev->ethaddr)) {
+			dev_dbg(&edev->dev,
+				"%s: no valid mac address, cannot fixup\n",
+				__func__);
 			continue;
 		}
 
-		if (!is_valid_ether_addr(edev->ethaddr)) {
-			dev_dbg(&edev->dev, "%s: no valid mac address, cannot fixup\n",
-					__func__);
-			continue;
+		if (edev->nodepath) {
+			node = of_find_node_by_path_from(root, edev->nodepath);
+		} else {
+			char eth[12];
+			sprintf(eth, "ethernet%d", edev->dev.id);
+			node = of_find_node_by_alias(root, eth);
 		}
 
-		node = of_find_node_by_path_from(root, edev->nodepath);
 		if (!node) {
-			dev_dbg(&edev->dev, "%s: fixup node %s not found\n",
-					__func__, edev->nodepath);
+			dev_dbg(&edev->dev, "%s: no node to fixup\n", __func__);
 			continue;
 		}
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
