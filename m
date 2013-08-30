Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VFOrF-0007hR-84
 for barebox@lists.infradead.org; Fri, 30 Aug 2013 13:35:27 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 30 Aug 2013 14:34:27 +0100
Message-Id: <1377869669-27821-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1377869669-27821-1-git-send-email-renaud.barbier@ge.com>
References: <1377869669-27821-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/4] ppc: add mpc85xx device tree fixup functions
To: barebox@lists.infradead.org

This commit is based on U-Boot code from common/fdt_support.c
and arch/powerpc/cpu/mpc85xx/fdt.c - version git-2b26201.

This adds support for populating derived properties of the SOC which
are not typically included in the dtb directly.

Adding gianfar instances is modified to explicitly configure the driver
instance so that the "local-mac-address" property can be correctly
assigned.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/processor.h    |    1 +
 arch/ppc/mach-mpc85xx/Makefile      |    1 +
 arch/ppc/mach-mpc85xx/eth-devices.c |    2 +-
 arch/ppc/mach-mpc85xx/fdt.c         |  197 +++++++++++++++++++++++++++++++++++
 4 files changed, 200 insertions(+), 1 deletions(-)
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
diff --git a/arch/ppc/mach-mpc85xx/eth-devices.c b/arch/ppc/mach-mpc85xx/eth-devices.c
index 611a578..09464f4 100644
--- a/arch/ppc/mach-mpc85xx/eth-devices.c
+++ b/arch/ppc/mach-mpc85xx/eth-devices.c
@@ -54,7 +54,7 @@ coredevice_initcall(fsl_phy_init);
 
 int fsl_eth_init(int num, struct gfar_info_struct *gf)
 {
-	add_generic_device("gfar", DEVICE_ID_DYNAMIC, NULL,
+	add_generic_device("gfar", num - 1, NULL,
 			GFAR_BASE_ADDR + ((num - 1) * 0x1000), 0x1000,
 			IORESOURCE_MEM, gf);
 	return 0;
diff --git a/arch/ppc/mach-mpc85xx/fdt.c b/arch/ppc/mach-mpc85xx/fdt.c
new file mode 100644
index 0000000..737550f
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/fdt.c
@@ -0,0 +1,197 @@
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
+	node = of_find_node_by_path("/chosen");
+	if (node == NULL)
+		node = of_create_node(blob, "/chosen");
+
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
+	return 0;
+error:
+	return 1;
+}
+
+static void fdt_mac_setup(struct device_node *blob)
+{
+	struct device_node *alias, *node;
+	const char *path, *tmp;
+	char mac[16], eth[12], *end;
+	unsigned char mac_addr[6];
+	struct device_d *dev;
+	int ix, idx = 0;
+
+	alias = of_find_node_by_path_from(blob, "/aliases");
+	if (!alias) {
+		pr_err("%s: Failed to get /aliases node\n", __func__);
+		return;
+	}
+
+	sprintf(mac, "eth%d.ethaddr", idx);
+	while ((tmp = getenv(mac)) != NULL) {
+		sprintf(eth, "eth%d", idx);
+		dev = get_device_by_name(eth);
+
+		/* If the parent id is not set correctly by
+		 * the board support, the wrong device path
+		 * may be obtained.
+		 */
+		sprintf(eth, "ethernet%d", dev->parent->id);
+		path = of_get_property(alias, eth, NULL);
+		if (!path) {
+			idx++;
+			sprintf(mac, "eth%d.ethaddr", idx);
+			continue;
+		}
+
+		for (ix = 0; ix < 6; ix++) {
+			mac_addr[ix] = tmp ? simple_strtoul(tmp, &end, 16) : 0;
+			if (tmp)
+				tmp = (*end) ? end+1 : end;
+		}
+
+		node = of_find_node_by_path_from(blob, path);
+		of_set_property(node, "mac-address", mac_addr,
+				sizeof(mac_addr), 1);
+		of_set_property(node, "local-mac-address", mac_addr,
+				sizeof(mac_addr), 1);
+		idx++;
+		sprintf(mac, "eth%d.ethaddr", idx);
+	}
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
+	fdt_mac_setup(blob);
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
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
