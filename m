Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYa6y-0006sr-Vx
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 09:17:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 Dec 2011 10:17:44 +0100
Message-Id: <1323335864-27895-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX27: initialize MAX
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx27.c                   |   43 +++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx27-regs.h |    1 +
 2 files changed, 44 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 86039c4..1af291d 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -19,6 +19,7 @@
 #include <mach/imx-regs.h>
 #include <sizes.h>
 #include <init.h>
+#include <io.h>
 
 #include "gpio.h"
 
@@ -38,11 +39,53 @@ void *imx_gpio_base[] = {
 
 int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
 
+/*
+ * Initialize MAX on i.MX27. necessary to give the DMA engine
+ * higher priority to the memory than the CPU. Needed for proper
+ * audio support
+ */
+#define MAX_SLAVE_MPR_OFFSET	0x0	/* Master Priority register */
+#define MAX_SLAVE_AMPR_OFFSET	0x4	/* Alternate Master Priority register */
+#define MAX_SLAVE_PORT0_OFFSET	0x0
+#define MAX_SLAVE_PORT1_OFFSET	0x100
+#define MAX_SLAVE_PORT2_OFFSET	0x200
+#define MAX_MASTER_PRIO(master, prio)	(((prio) << (master) * 4))
+
+#define MASTER_IAHB	0
+#define MASTER_DAHB	1
+#define MASTER_EMMA	2
+#define MASTER_DMA	3
+#define MASTER_SLDC	4
+#define MASTER_CODEC	5
+
+static void imx27_init_max(void)
+{
+	void __iomem *max_base = (void *)IMX_MAX_BASE;
+	u32 val;
+
+	/* 0 is the highest priority */
+	val = MAX_MASTER_PRIO(MASTER_IAHB, 5) |
+		MAX_MASTER_PRIO(MASTER_DAHB, 4) |
+		MAX_MASTER_PRIO(MASTER_EMMA, 1) |
+		MAX_MASTER_PRIO(MASTER_DMA, 2) |
+		MAX_MASTER_PRIO(MASTER_SLDC, 0) |
+		MAX_MASTER_PRIO(MASTER_CODEC, 3);
+
+	writel(val, max_base + MAX_SLAVE_PORT0_OFFSET + MAX_SLAVE_MPR_OFFSET);
+	writel(val, max_base + MAX_SLAVE_PORT1_OFFSET + MAX_SLAVE_MPR_OFFSET);
+	writel(val, max_base + MAX_SLAVE_PORT2_OFFSET + MAX_SLAVE_MPR_OFFSET);
+	writel(val, max_base + MAX_SLAVE_PORT0_OFFSET + MAX_SLAVE_AMPR_OFFSET);
+	writel(val, max_base + MAX_SLAVE_PORT1_OFFSET + MAX_SLAVE_AMPR_OFFSET);
+	writel(val, max_base + MAX_SLAVE_PORT2_OFFSET + MAX_SLAVE_AMPR_OFFSET);
+}
+
 static int imx27_init(void)
 {
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	imx27_init_max();
+
 	return 0;
 }
 coredevice_initcall(imx27_init);
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 6754c5a..3a4325e 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -33,6 +33,7 @@
 #define IMX_IIM_BASE               (0x28000 + IMX_IO_BASE)
 #define IMX_OTG_BASE               (0x24000 + IMX_IO_BASE)
 #define IMX_FEC_BASE               (0x2b000 + IMX_IO_BASE)
+#define IMX_MAX_BASE               (0x3f000 + IMX_IO_BASE)
 
 #define IMX_NFC_BASE               (0xd8000000)
 #define IMX_ESD_BASE               (0xd8001000)
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
