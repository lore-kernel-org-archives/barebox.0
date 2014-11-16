Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xq7qk-0007Jy-BN
 for barebox@lists.infradead.org; Sun, 16 Nov 2014 21:59:15 +0000
Received: from s326.sam-solutions.net ([217.21.35.11])
 by s250.sam-solutions.net with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <D.Lavnikevich@sam-solutions.com>)
 id 1Xq7qL-0001B5-D1
 for barebox@lists.infradead.org; Mon, 17 Nov 2014 00:58:49 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Date: Mon, 17 Nov 2014 00:58:34 +0300
Message-ID: <1416175114-3132-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: [PATCH] mtd: nand-mxs: Gate ENFC_CLK_ROOT clock off before changing
 nand clock rate
To: barebox@lists.infradead.org
Cc: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

This fixes NAND initialization issue which appears occasionally on
some i.MX6 SoCs (particulary was observed on phyCARD-i.MX6 with
i.MX6Solo).

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
---
 arch/arm/mach-imx/include/mach/clock-imx6.h |  4 ++++
 drivers/mtd/nand/nand_mxs.c                 | 12 ++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/clock-imx6.h b/arch/arm/mach-imx/include/mach/clock-imx6.h
index 8e5e9d9..ffa889d 100644
--- a/arch/arm/mach-imx/include/mach/clock-imx6.h
+++ b/arch/arm/mach-imx/include/mach/clock-imx6.h
@@ -344,4 +344,8 @@
 #define MXC_CCM_CGPR_MMDC_EXT_CLK_DIS			(1 << 2)
 #define MXC_CCM_CGPR_PMIC_DELAY_SCALER			(1)
 
+/* Define the bits in register CCGR2 */
+#define MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_OFFSET		14
+#define MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_MASK		(3 << 14)
+
 #endif				/* __ARCH_ARM_MACH_MX6_CRM_REGS_H__ */
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index d5428bc..9ebddb3 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -34,6 +34,8 @@
 #include <stmp-device.h>
 #include <asm/mmu.h>
 #include <mach/generic.h>
+#include <mach/clock-imx6.h>
+#include <mach/imx6-regs.h>
 
 #define	MX28_BLOCK_SFTRST				(1 << 31)
 #define	MX28_BLOCK_CLKGATE				(1 << 30)
@@ -1254,6 +1256,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	struct nand_chip *nand;
 	struct mtd_info *mtd;
 	enum gpmi_type type;
+	u32 val;
 	int err;
 
 	err = dev_get_drvdata(dev, (unsigned long *)&type);
@@ -1277,7 +1280,16 @@ static int mxs_nand_probe(struct device_d *dev)
 		return PTR_ERR(nand_info->clk);
 
 	if (mxs_nand_is_imx6(nand_info)) {
+		val = readl(MXC_CCM_CCGR2);
+		val &= ~MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_MASK;
+		writel(val, MXC_CCM_CCGR2);
+
 		clk_set_rate(nand_info->clk, 96000000);
+
+		val = readl(MXC_CCM_CCGR2);
+		val |= MXC_CCM_CCGR2_IOMUX_IPT_CLK_IO_MASK;
+		writel(val, MXC_CCM_CCGR2);
+
 		clk_enable(nand_info->clk);
 		nand_info->dma_channel_base = 0;
 	} else {
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
