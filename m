Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4X-0001lf-3K
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 14:00:00 +0200
Message-Id: <1373457601-7225-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
References: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] ARM: mxs: Add convenience wrapper to register mxs_nand
 device
To: barebox@lists.infradead.org

The convenience wrapper also contains the bch resources to
get rid of the hardcoded base in the driver in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |  4 +--
 arch/arm/boards/karo-tx28/tx28.c              |  4 +--
 arch/arm/mach-mxs/include/mach/devices.h      | 47 +++++++++++++++++++++++++++
 3 files changed, 51 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/devices.h

diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 687d3f7..dfb1878 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -30,6 +30,7 @@
 #include <mach/mci.h>
 #include <mach/fb.h>
 #include <mach/ocotp.h>
+#include <mach/devices.h>
 #include <spi/spi.h>
 
 #include <asm/armlinux.h>
@@ -270,8 +271,7 @@ static int mx28_evk_devices_init(void)
 	add_generic_device("imx28-fec", 0, NULL, IMX_FEC0_BASE, 0x4000,
 			   IORESOURCE_MEM, &fec_info);
 
-	add_generic_device("mxs_nand", 0, NULL, MXS_GPMI_BASE, 0x2000,
-			   IORESOURCE_MEM, NULL);
+	imx28_add_nand();
 
 	spi_register_board_info(mx28evk_spi_board_info,
 			ARRAY_SIZE(mx28evk_spi_board_info));
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 6e8da15..4cacca3 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -21,6 +21,7 @@
 #include <io.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
+#include <mach/devices.h>
 #include <asm/mmu.h>
 
 /* setup the CPU card internal signals */
@@ -92,8 +93,7 @@ static int tx28_devices_init(void)
 
 	base_board_init();
 
-	add_generic_device("mxs_nand", 0, NULL, MXS_GPMI_BASE, 0x2000,
-			   IORESOURCE_MEM, NULL);
+	imx28_add_nand();
 
 	return 0;
 }
diff --git a/arch/arm/mach-mxs/include/mach/devices.h b/arch/arm/mach-mxs/include/mach/devices.h
new file mode 100644
index 0000000..012bfc4
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/devices.h
@@ -0,0 +1,47 @@
+#ifndef __MACH_MXS_DEVICES_H
+#define __MACH_MXS_DEVICES_H
+
+#include <common.h>
+#include <sizes.h>
+#include <xfuncs.h>
+#include <driver.h>
+#include <mach/imx-regs.h>
+
+static inline struct device_d *mxs_add_nand(unsigned long gpmi_base, unsigned long bch_base)
+{
+	struct resource res[] = {
+		{
+			.start = gpmi_base,
+			.end = gpmi_base + SZ_8K - 1,
+			.flags = IORESOURCE_MEM,
+		}, {
+			.start = bch_base,
+			.end = bch_base + SZ_8K - 1,
+			.flags = IORESOURCE_MEM,
+		},
+	};
+
+	struct device_d *dev = xzalloc(sizeof(*dev));
+
+	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
+	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
+	dev->num_resources = ARRAY_SIZE(res);
+	strcpy(dev->name, "mxs_nand");
+	dev->id = DEVICE_ID_DYNAMIC;
+
+	platform_device_register(dev);
+
+	return dev;
+};
+
+static inline struct device_d *imx23_add_nand(void)
+{
+	return mxs_add_nand(MXS_GPMI_BASE, MXS_BCH_BASE);
+}
+
+static inline struct device_d *imx28_add_nand(void)
+{
+	return mxs_add_nand(MXS_GPMI_BASE, MXS_BCH_BASE);
+}
+
+#endif /* __MACH_MXS_DEVICES_H */
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
