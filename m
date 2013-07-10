Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4c-0001nk-3M
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 13:59:55 +0200
Message-Id: <1373457601-7225-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] dma: apbh: Turn into a driver
To: barebox@lists.infradead.org

This converts the apbh driver into a real driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/soc-imx23.c |   2 +-
 arch/arm/mach-mxs/soc-imx28.c |   2 +-
 drivers/dma/apbh_dma.c        | 113 ++++++++++++++++++++++++++++++------------
 drivers/mtd/nand/nand_mxs.c   |   3 --
 include/driver.h              |   2 +
 5 files changed, 84 insertions(+), 38 deletions(-)

diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
index 4e45064..825ea20 100644
--- a/arch/arm/mach-mxs/soc-imx23.c
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -38,7 +38,7 @@ EXPORT_SYMBOL(reset_cpu);
 
 static int imx23_devices_init(void)
 {
-
+	add_generic_device("imx23-dma-apbh", 0, NULL, MXS_APBH_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx23-clkctrl", 0, NULL, IMX_CCM_BASE, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index 426f8ac..01bc20a 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -56,7 +56,7 @@ postcore_initcall(imx28_init);
 
 static int imx28_devices_init(void)
 {
-
+	add_generic_device("imx28-dma-apbh", 0, NULL, MXS_APBH_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx28-clkctrl", 0, NULL, IMX_CCM_BASE, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index b0a20b8..fa4dd34 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -18,6 +18,8 @@
 #include <linux/list.h>
 
 #include <common.h>
+#include <driver.h>
+#include <init.h>
 #include <malloc.h>
 #include <errno.h>
 #include <dma/apbh-dma.h>
@@ -37,23 +39,28 @@
 #define HW_APBHX_CTRL2				0x020
 #define HW_APBHX_CHANNEL_CTRL			0x030
 #define BP_APBHX_CHANNEL_CTRL_RESET_CHANNEL	16
-#define HW_APBH_VERSION				(cpu_is_mx23() ? 0x3f0 : 0x800)
-#define HW_APBX_VERSION				0x800
 #define BP_APBHX_VERSION_MAJOR			24
-#define HW_APBHX_CHn_NXTCMDAR(n) \
-	((apbh_is_old ? 0x050 : 0x110) + (n) * 0x70)
-#define HW_APBHX_CHn_SEMA(n) \
-	((apbh_is_old ? 0x080 : 0x140) + (n) * 0x70)
+#define HW_APBHX_CHn_NXTCMDAR_MX23(n)		(0x050 + (n) * 0x70)
+#define HW_APBHX_CHn_NXTCMDAR_MX28(n)		(0x110 + (n) * 0x70)
+#define HW_APBHX_CHn_SEMA_MX23(n)		(0x080 + (n) * 0x70)
+#define HW_APBHX_CHn_SEMA_MX28(n)		(0x140 + (n) * 0x70)
 #define	BM_APBHX_CHn_SEMA_PHORE			(0xff << 16)
 #define	BP_APBHX_CHn_SEMA_PHORE			16
 
 static struct mxs_dma_chan mxs_dma_channels[MXS_MAX_DMA_CHANNELS];
-static bool apbh_is_old;
+
+enum mxs_dma_id {
+	IMX23_DMA,
+	IMX28_DMA,
+};
 
 struct apbh_dma {
 	void __iomem *regs;
+	enum mxs_dma_id id;
 };
 
+#define apbh_dma_is_imx23(aphb) ((apbh)->id == IMX23_DMA)
+
 static struct apbh_dma *apbh_dma;
 
 /*
@@ -105,7 +112,10 @@ static int mxs_dma_read_semaphore(int channel)
 	if (ret)
 		return ret;
 
-	tmp = readl(apbh->regs + HW_APBHX_CHn_SEMA(channel));
+	if (apbh_dma_is_imx23(apbh))
+		tmp = readl(apbh->regs + HW_APBHX_CHn_SEMA_MX23(channel));
+	else
+		tmp = readl(apbh->regs + HW_APBHX_CHn_SEMA_MX28(channel));
 
 	tmp &= BM_APBHX_CHn_SEMA_PHORE;
 	tmp >>= BP_APBHX_CHn_SEMA_PHORE;
@@ -156,21 +166,39 @@ static int mxs_dma_enable(int channel)
 		if (sem == 1) {
 			pdesc = list_entry(pdesc->node.next,
 					   struct mxs_dma_desc, node);
-			writel(mxs_dma_cmd_address(pdesc),
-				apbh->regs + HW_APBHX_CHn_NXTCMDAR(channel));
+			if (apbh_dma_is_imx23(apbh))
+				writel(mxs_dma_cmd_address(pdesc),
+					apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX23(channel));
+			else
+				writel(mxs_dma_cmd_address(pdesc),
+					apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX28(channel));
 		}
-		writel(pchan->pending_num,
-			apbh->regs + HW_APBHX_CHn_SEMA(channel));
+
+		if (apbh_dma_is_imx23(apbh))
+			writel(pchan->pending_num,
+					apbh->regs + HW_APBHX_CHn_SEMA_MX23(channel));
+		else
+			writel(pchan->pending_num,
+					apbh->regs + HW_APBHX_CHn_SEMA_MX28(channel));
+
 		pchan->active_num += pchan->pending_num;
 		pchan->pending_num = 0;
 	} else {
 		pchan->active_num += pchan->pending_num;
 		pchan->pending_num = 0;
-		writel(mxs_dma_cmd_address(pdesc),
-			apbh->regs + HW_APBHX_CHn_NXTCMDAR(channel));
-		writel(pchan->active_num,
-			apbh->regs + HW_APBHX_CHn_SEMA(channel));
-		channel_bit = channel + (apbh_is_old ? BP_APBH_CTRL0_CLKGATE_CHANNEL : 0);
+		if (apbh_dma_is_imx23(apbh)) {
+			writel(mxs_dma_cmd_address(pdesc),
+				apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX23(channel));
+			writel(pchan->active_num,
+				apbh->regs + HW_APBHX_CHn_SEMA_MX23(channel));
+			channel_bit = channel + BP_APBH_CTRL0_CLKGATE_CHANNEL;
+		} else {
+			writel(mxs_dma_cmd_address(pdesc),
+				apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX28(channel));
+			writel(pchan->active_num,
+				apbh->regs + HW_APBHX_CHn_SEMA_MX28(channel));
+			channel_bit = channel;
+		}
 		writel(1 << channel_bit, apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_CLR);
 	}
 
@@ -207,7 +235,11 @@ static int mxs_dma_disable(int channel)
 	if (!(pchan->flags & MXS_DMA_FLAGS_BUSY))
 		return -EINVAL;
 
-	channel_bit = channel + (apbh_is_old ? BP_APBH_CTRL0_CLKGATE_CHANNEL : 0);
+	if (apbh_dma_is_imx23(apbh))
+		channel_bit = channel + BP_APBH_CTRL0_CLKGATE_CHANNEL;
+	else
+		channel_bit = channel + 0;
+
 	writel(1 << channel_bit, apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 
 	pchan->flags &= ~MXS_DMA_FLAGS_BUSY;
@@ -230,7 +262,7 @@ static int mxs_dma_reset(int channel)
 	if (ret)
 		return ret;
 
-	if (apbh_is_old)
+	if (apbh_dma_is_imx23(apbh))
 		writel(1 << (channel + BP_APBH_CTRL0_RESET_CHANNEL),
 			apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 	else
@@ -554,29 +586,27 @@ int mxs_dma_go(int chan)
 /*
  * Initialize the DMA hardware
  */
-int mxs_dma_init(void)
+static int apbh_dma_probe(struct device_d *dev)
 {
 	struct apbh_dma *apbh;
 	struct mxs_dma_chan *pchan;
+	enum mxs_dma_id id;
 	int ret, channel;
-	u32 val;
-	void __iomem *reg;
 
-	apbh = xzalloc(sizeof(*apbh));
-	apbh->regs = (void __iomem *)MXS_APBH_BASE;
-
-	ret = stmp_reset_block(apbh->regs, 0);
+	ret = dev_get_drvdata(dev, (unsigned long *)&id);
 	if (ret)
 		return ret;
 
-	/* HACK: Get CPUID and determine APBH version */
-	val = readl(0x8001c310) >> 16;
-	if (val == 0x2800)
-		reg = apbh->regs + 0x0800;
-	else
-		reg = apbh->regs + 0x03f0;
+	apbh_dma = apbh = xzalloc(sizeof(*apbh));
+	apbh->regs = dev_request_mem_region(dev, 0);
+	if (!apbh->regs)
+		return -EBUSY;
+
+	apbh->id = id;
 
-	apbh_is_old = (readl((void *)reg) >> 24) < 3;
+	ret = stmp_reset_block(apbh->regs, 0);
+	if (ret)
+		return ret;
 
 	writel(BM_APBH_CTRL0_APB_BURST8_EN,
 		apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
@@ -608,3 +638,20 @@ err:
 		mxs_dma_release(channel);
 	return ret;
 }
+
+static struct platform_device_id apbh_ids[] = {
+	{
+		.name = "imx23-dma-apbh",
+		.driver_data = (unsigned long)IMX23_DMA,
+        }, {
+		.name = "imx28-dma-apbh",
+		.driver_data = (unsigned long)IMX28_DMA,
+        },
+};
+
+static struct driver_d apbh_dma_driver = {
+	.name  = "dma-apbh",
+	.id_table = apbh_ids,
+	.probe = apbh_dma_probe,
+};
+coredevice_platform_driver(apbh_dma_driver);
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index adb0500..2086f80 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1147,9 +1147,6 @@ int mxs_nand_hw_init(struct mxs_nand_info *info)
 			goto err2;
 	}
 
-	/* Init the DMA controller. */
-	mxs_dma_init();
-
 	/* Reset the GPMI block. */
 	ret = stmp_reset_block(gpmi_regs + GPMI_CTRL0, 0);
 	if (ret)
diff --git a/include/driver.h b/include/driver.h
index b18318f..7983946 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -414,6 +414,8 @@ int platform_driver_register(struct driver_d *drv);
 	}						\
 	level##_initcall(drv##_register)
 
+#define coredevice_platform_driver(drv)	\
+	register_driver_macro(coredevice,platform,drv)
 #define device_platform_driver(drv)	\
 	register_driver_macro(device,platform,drv)
 #define console_platform_driver(drv)	\
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
