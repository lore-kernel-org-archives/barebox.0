Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAsU-00042c-GU
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 11:19:01 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihAsQ-0004Wc-N8
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 12:18:54 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 17 Dec 2019 12:18:53 +0100
Message-Id: <20191217111854.3164-2-l.stach@pengutronix.de>
In-Reply-To: <20191217111854.3164-1-l.stach@pengutronix.de>
References: <20191217111854.3164-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: zii-imx8mq-dev: add DT fixups
To: barebox@lists.infradead.org

There are only two fixups we need to apply at the moment:
- The 27" RMB3 based unit has a eGalax Touchscreen instead of Synaptics.
- The 10.1" SCU/CCU unit has no DEB and thus no switch, but instead the
  i210 ethernet is routed to the external connector directly.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx8mq-dev/board.c | 138 +++++++++++++++++++++++++
 arch/arm/dts/imx8mq-zii-ultra.dtsi     |  10 ++
 2 files changed, 148 insertions(+)

diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index dcf945db495a..0be68423d9bf 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -11,6 +11,15 @@
 #include <asm/memory.h>
 #include <linux/sizes.h>
 #include <mach/bbu.h>
+#include "../zii-common/pn-fixup.h"
+
+#define LRU_FLAG_EGALAX		BIT(0)
+#define LRU_FLAG_NO_DEB		BIT(1)
+
+struct zii_imx8mq_dev_lru_fixup {
+	struct zii_pn_fixup fixup;
+	unsigned int flags;
+};
 
 static int zii_imx8mq_dev_init(void)
 {
@@ -32,3 +41,132 @@ static int zii_imx8mq_dev_init(void)
 	return 0;
 }
 device_initcall(zii_imx8mq_dev_init);
+
+static int zii_imx8mq_dev_fixup_egalax_ts(struct device_node *root, void *ctx)
+{
+	struct device_node *np;
+
+	/*
+	 * The 27" unit has a EETI eGalax touchscreen instead of the
+	 * Synaptics RMI4 found on other units.
+	 */
+	pr_info("Enabling eGalax touchscreen instead of RMI4\n");
+
+	np = of_find_compatible_node(root, NULL, "syna,rmi4-i2c");
+	if (!np)
+		return -ENODEV;
+
+	of_device_disable(np);
+
+	np = of_find_compatible_node(root, NULL, "eeti,exc3000");
+	if (!np)
+		return -ENODEV;
+
+	of_device_enable(np);
+
+	return 0;
+}
+
+static int zii_imx8mq_dev_fixup_deb_internal(void)
+{
+	struct device_node *np, *aliases;
+	struct device_d *dev;
+
+	/*
+	 * In the internal DT remove the complete FEC hierarchy and move the
+	 * i210 to be the eth0 interface to allow network boot to work without
+	 * rewriting all the boot scripts.
+	 */
+	aliases = of_find_node_by_path("/aliases");
+	if (!aliases)
+		return -ENODEV;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mq-fec");
+	if (!np)
+		return -ENODEV;
+
+	of_device_disable(np);
+
+	of_property_write_string(aliases, "ethernet1", np->full_name);
+
+	dev = get_device_by_device_node(np);
+	if (!dev)
+		return -ENODEV;
+
+	unregister_device(dev);
+
+	np = of_find_node_by_name(NULL, "i210@0");
+	if (!np)
+		return -ENODEV;
+
+	of_property_write_string(aliases, "ethernet0", np->full_name);
+
+	/* Refresh the internal aliases list from the patched DT */
+	of_alias_scan();
+
+	return 0;
+}
+
+static int zii_imx8mq_dev_fixup_deb(struct device_node *root, void *ctx)
+{
+	struct device_node *np;
+
+	/*
+	 * In the kernel DT remove all devices from the DEB, which isn't
+	 * present on this system.
+	 */
+	np = of_find_compatible_node(root, NULL, "marvell,mv88e6085");
+	if (!np)
+		return -ENODEV;
+
+	of_device_disable(np);
+
+	np = of_find_compatible_node(root, NULL, "zii,rave-wdt");
+	if (!np)
+		return -ENODEV;
+
+	of_device_disable(np);
+
+	return 0;
+}
+
+static void zii_imx8mq_dev_lru_fixup(const struct zii_pn_fixup *context)
+{
+	const struct zii_imx8mq_dev_lru_fixup *fixup =
+		container_of(context, struct zii_imx8mq_dev_lru_fixup, fixup);
+
+	if (fixup->flags & LRU_FLAG_EGALAX)
+		of_register_fixup(zii_imx8mq_dev_fixup_egalax_ts, NULL);
+
+	if (fixup->flags & LRU_FLAG_NO_DEB) {
+		zii_imx8mq_dev_fixup_deb_internal();
+		of_register_fixup(zii_imx8mq_dev_fixup_deb, NULL);
+	}
+}
+
+#define ZII_IMX8MQ_DEV_LRU_FIXUP(__pn, __flags)		\
+	{						\
+		{ __pn, zii_imx8mq_dev_lru_fixup },	\
+		__flags					\
+	}
+
+static const struct zii_imx8mq_dev_lru_fixup zii_imx8mq_dev_lru_fixups[] = {
+	ZII_IMX8MQ_DEV_LRU_FIXUP("00-5131-02", LRU_FLAG_EGALAX),
+	ZII_IMX8MQ_DEV_LRU_FIXUP("00-5131-03", LRU_FLAG_EGALAX),
+	ZII_IMX8MQ_DEV_LRU_FIXUP("00-5170-01", LRU_FLAG_NO_DEB),
+};
+
+/*
+ * This initcall needs to be executed before coredevices, so we have a chance
+ * to fix up the devices with the correct information.
+ */
+static int zii_imx8mq_dev_process_fixups(void)
+{
+	if (!of_machine_is_compatible("zii,imx8mq-ultra"))
+		return 0;
+
+	zii_process_lru_fixups(zii_imx8mq_dev_lru_fixups);
+
+	return 0;
+}
+postmmu_initcall(zii_imx8mq_dev_process_fixups);
diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 6180f21ab0a4..50bad9b1a27e 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -22,6 +22,11 @@
 		};
 	};
 
+	device-info {
+		nvmem-cells = <&lru_part_number>;
+		nvmem-cell-names = "lru-part-number";
+	};
+
 	aliases {
 		ethernet0 = &fec1;
 		ethernet1 = &i210;
@@ -64,6 +69,11 @@
 &uart2 {
 	rave-sp {
 		eeprom@a4 {
+			lru_part_number: lru-part-number@21 {
+				reg = <0x21 15>;
+				read-only;
+			};
+
 			mac_address_0: mac-address@180 {
 				reg = <0x180 6>;
 			};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
