Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WdeiW-00048f-H1
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 11:54:57 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 65C79BF0F0
 for <barebox@lists.infradead.org>; Fri, 25 Apr 2014 13:54:32 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 25 Apr 2014 13:54:26 +0200
Message-Id: <1398426868-30285-2-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
References: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 2/4] imx6: read back memory size
To: barebox@lists.infradead.org

To reduce the devicetree files for one board with different memory sizes the
memory size can be read back from i.MX6.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/mach-imx/esdctl.c                 |   67 ++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx6-mmdc.h |    9 ++++
 arch/arm/mach-imx/include/mach/imx6-regs.h |    2 +
 3 files changed, 78 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index d11957f..994adb8 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -21,10 +21,12 @@
 #include <errno.h>
 #include <sizes.h>
 #include <init.h>
+#include <of.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
 #include <mach/esdctl.h>
 #include <mach/esdctl-v4.h>
+#include <mach/imx6-mmdc.h>
 #include <mach/imx1-regs.h>
 #include <mach/imx21-regs.h>
 #include <mach/imx25-regs.h>
@@ -33,6 +35,7 @@
 #include <mach/imx35-regs.h>
 #include <mach/imx51-regs.h>
 #include <mach/imx53-regs.h>
+#include <mach/imx6-regs.h>
 
 struct imx_esdctl_data {
 	unsigned long base0;
@@ -163,6 +166,45 @@ static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
 	return size;
 }
 
+/*
+ * MMDC - found on i.MX6
+ */
+
+static inline unsigned long imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
+{
+	u32 ctlval = readl(mmdcbase + MDCTL);
+	u32 mdmisc = readl(mmdcbase + MDMISC);
+	unsigned long size;
+	int rows, cols, width = 2, banks = 8;
+
+	if (cs == 0 && !(ctlval & MMDCx_MDCTL_SDE0))
+		return 0;
+	if (cs == 1 && !(ctlval & MMDCx_MDCTL_SDE1))
+		return 0;
+
+	rows = ((ctlval >> 24) & 0x7) + 11;
+
+	cols = (ctlval >> 20) & 0x7;
+	if (cols == 3)
+		cols = 8;
+	else if (cols == 4)
+		cols = 12;
+	else
+		cols += 9;
+
+	if (ctlval & MMDCx_MDCTL_DSIZ_32B)
+		width = 4;
+	else if (ctlval & MMDCx_MDCTL_DSIZ_64B)
+		width = 8;
+
+	if (mdmisc & MMDCx_MDMISC_DDR_4_BANKS)
+		banks = 4;
+
+	size = (1 << cols) * (1 << rows) * banks * width;
+
+	return size;
+}
+
 static void add_mem(unsigned long base0, unsigned long size0,
 		unsigned long base1, unsigned long size1)
 {
@@ -237,6 +279,16 @@ static void imx_esdctl_v4_add_mem(void *esdctlbase, struct imx_esdctl_data *data
 			data->base1, imx_v4_sdram_size(esdctlbase, 1));
 }
 
+static void imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+{
+	u32 mmdcmisc = readl(mmdcbase + MDMISC);
+	unsigned long base1;
+
+	arm_add_mem_device("ram0", data->base0,
+			imx6_mmdc_sdram_size(mmdcbase, 0) +
+			imx6_mmdc_sdram_size(mmdcbase, 1));
+}
+
 static int imx_esdctl_probe(struct device_d *dev)
 {
 	struct imx_esdctl_data *data;
@@ -301,6 +353,11 @@ static __maybe_unused struct imx_esdctl_data imx53_data = {
 	.add_mem = imx_esdctl_v4_add_mem,
 };
 
+static __maybe_unused struct imx_esdctl_data imx6q_data = {
+	.base0 = MX6_MMDC_PORT0_BASE_ADDR,
+	.add_mem = imx6_mmdc_add_mem,
+};
+
 static struct platform_device_id imx_esdctl_ids[] = {
 #ifdef CONFIG_ARCH_IMX1
 	{
@@ -349,10 +406,20 @@ static struct platform_device_id imx_esdctl_ids[] = {
 	},
 };
 
+static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
+	{
+		.compatible = "fsl,imx6q-mmdc",
+		.data = (unsigned long)&imx6q_data
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx_serial_driver = {
 	.name   = "imx-esdctl",
 	.probe  = imx_esdctl_probe,
 	.id_table = imx_esdctl_ids,
+	.of_compatible = DRV_OF_COMPAT(imx_esdctl_dt_ids),
 };
 
 static int imx_esdctl_init(void)
diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
index 3152e16..0017174 100644
--- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
+++ b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
@@ -30,6 +30,15 @@
 #define MPDGHWST2	0x884
 #define MPDGHWST3	0x888
 
+#define MMDCx_MDCTL_SDE0	0x80000000
+#define MMDCx_MDCTL_SDE1	0x40000000
+
+#define MMDCx_MDCTL_DSIZ_16B	0x00000000
+#define MMDCx_MDCTL_DSIZ_32B	0x00010000
+#define MMDCx_MDCTL_DSIZ_64B	0x00020000
+
+#define MMDCx_MDMISC_DDR_4_BANKS	0x00000020
+
 #define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5a8)
 #define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS1	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x5b0)
 #define IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS2	((void __iomem *)MX6_IOMUXC_BASE_ADDR + 0x524)
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index facbe51..68be43c 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -113,4 +113,6 @@
 
 #define MX6_SATA_BASE_ADDR		0x02200000
 
+#define MX6_MMDC_PORT0_BASE_ADDR	0x10000000
+
 #endif /* __MACH_IMX6_REGS_H */
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
