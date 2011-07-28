Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNTj-0000qO-EC
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:06:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:05:59 +0200
Message-Id: <1311847560-22946-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
References: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM i.MX: rework IIM MAC address setting
To: barebox@lists.infradead.org

Switch to the generic way of setting a MAC address for a
device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +
 arch/arm/mach-imx/iim.c                           |   13 ---------
 arch/arm/mach-imx/include/mach/iim.h              |   31 ++++++++++++++++++---
 drivers/net/fec_imx.c                             |    4 ---
 5 files changed, 31 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 6ea4a6e..d797846 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -37,6 +37,7 @@
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
 #include <mach/imxfb.h>
+#include <mach/iim.h>
 #include <fec.h>
 #include <nand.h>
 #include <mach/imx-flash-header.h>
@@ -251,6 +252,7 @@ static int eukrea_cpuimx25_devices_init(void)
 
 	led_gpio_register(&led0);
 
+	imx25_iim_register_fec_ethaddr();
 	imx25_add_fec(&fec_info);
 
 	nand_info.width = 1;
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 6d4bde5..f71cb4b 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -37,6 +37,7 @@
 #include <mach/imx-flash-header.h>
 #include <mach/iomux-mx25.h>
 #include <mach/generic.h>
+#include <mach/iim.h>
 #include <linux/err.h>
 #include <i2c/i2c.h>
 #include <mfd/mc34704.h>
@@ -210,6 +211,7 @@ static int imx25_devices_init(void)
 	register_device(&usbh2_dev);
 #endif
 
+	imx25_iim_register_fec_ethaddr();
 	imx25_add_fec(&fec_info);
 
 	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 14))
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 7a8712b..d641bf5 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -316,16 +316,3 @@ int imx_iim_read(unsigned int bank, int offset, int count, void *buf)
 
 	return ret;
 }
-
-int imx_iim_get_mac(unsigned char *mac)
-{
-	int i;
-
-	if (mac_addr_base == 0)
-		return -EINVAL;
-
-	for (i = 0; i < 6; i++)
-		 mac[i] = readb(mac_addr_base + i*4);
-
-	return 0;
-}
diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/include/mach/iim.h
index 9ff44be..f74b415 100644
--- a/arch/arm/mach-imx/include/mach/iim.h
+++ b/arch/arm/mach-imx/include/mach/iim.h
@@ -24,6 +24,7 @@
 #define __MACH_IMX_IIM_H
 
 #include <errno.h>
+#include <net.h>
 
 #define IIM_STAT	0x0000
 #define IIM_STATM	0x0004
@@ -47,18 +48,40 @@ struct imx_iim_platform_data {
 
 #ifdef CONFIG_IMX_IIM
 int imx_iim_read(unsigned int bank, int offset, int count, void *buf);
-int imx_iim_get_mac(unsigned char *mac);
 #else
 static inline int imx_iim_read(unsigned int bank, int offset, int count,
 		void *buf)
 {
 	return -EINVAL;
 }
+#endif /* CONFIG_IMX_IIM */
 
-static inline int imx_iim_get_mac(unsigned char *mac)
+static inline int imx51_iim_register_fec_ethaddr(void)
 {
-	return -EINVAL;
+	int ret;
+	u8 buf[6];
+
+	ret = imx_iim_read(1, 9, 6, buf);
+	if (ret != 6)
+		return -EINVAL;
+
+	eth_register_ethaddr(0, buf);
+
+	return 0;
+}
+
+static inline int imx25_iim_register_fec_ethaddr(void)
+{
+	int ret;
+	u8 buf[6];
+
+	ret = imx_iim_read(0, 26, 6, buf);
+	if (ret != 6)
+		return -EINVAL;
+
+	eth_register_ethaddr(0, buf);
+
+	return 0;
 }
-#endif /* CONFIG_IMX_IIM */
 
 #endif /* __MACH_IMX_IIM_H */
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index fcb8cc5..619504e 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -269,11 +269,7 @@ static void fec_rbd_clean(int last, struct buffer_descriptor __iomem *pRbd)
 
 static int fec_get_hwaddr(struct eth_device *dev, unsigned char *mac)
 {
-#ifdef CONFIG_ARCH_MXS
 	return -1;
-#else
-	return imx_iim_get_mac(mac);
-#endif
 }
 
 static int fec_set_hwaddr(struct eth_device *dev, unsigned char *mac)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
