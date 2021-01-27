Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpanel.siel.si ([46.19.9.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4fc2-0000en-SQ
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 07:51:41 +0000
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:36800
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <andrej.picej@norik.com>) id 1l4fbw-00CMyJ-Ov
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 08:51:32 +0100
From: Andrej Picej <andrej.picej@norik.com>
Date: Wed, 27 Jan 2021 08:51:15 +0100
Message-Id: <20210127075115.63425-3-andrej.picej@norik.com>
In-Reply-To: <20210127075115.63425-1-andrej.picej@norik.com>
References: <20210127075115.63425-1-andrej.picej@norik.com>
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
Subject: [PATCH v2 3/3] ARM: i.MX: xload-gpmi-nand: apply errata 007117
To: barebox@lists.infradead.org

During raw NAND booting, GPMI/BCH clock generation might fail due to
improper clock gating conditions and consequently booting from NAND will
fail. This is caused by silicon errata ERR007117. Apply errata fix
workaround before GPMI NAND xload to prevent this from occurring.

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
v2:
- no changes

 arch/arm/mach-imx/xload-gpmi-nand.c | 62 +++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index 163929d81..ce707088f 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -20,6 +20,8 @@
 #include <mach/xload.h>
 #include <mach/imx-nand-bcb.h>
 #include <linux/mtd/rawnand.h>
+#include <mach/imx6-regs.h>
+#include <mach/clock-imx6.h>
 
 /*
  * MXS DMA hardware command.
@@ -256,6 +258,63 @@ struct mxs_nand_info {
 	unsigned long nand_size;
 };
 
+/**
+ * It was discovered that xloading barebox from NAND sometimes fails. Observed
+ * behaviour is similar to silicon errata ERR007117 for i.MX6.
+ *
+ * ERR007117 description:
+ * For raw NAND boot, ROM switches the source of enfc_clk_root from PLL2_PFD2
+ * to PLL3. The root clock is required to be gated before switching the source
+ * clock. If the root clock is not gated, clock glitches might be passed to the
+ * divider that follows the clock mux, and the divider might behave
+ * unpredictably. This can cause the clock generation to fail and the chip will
+ * not boot successfully.
+ *
+ * Workaround solution for this errata:
+ * 1) gate all GPMI/BCH related clocks (CG15, G14, CG13, CG12 and CG6)
+ * 2) reconfigure clocks
+ * 3) ungate all GPMI/BCH related clocks
+ *
+ */
+static inline void imx6_errata_007117_enable(void)
+{
+	u32 reg;
+
+	/* Gate (disable) the GPMI/BCH clocks in CCM_CCGR4 */
+	reg = readl(MXC_CCM_CCGR4);
+	reg &= ~(0xFF003000);
+	writel(reg, MXC_CCM_CCGR4);
+
+	/**
+	 * Gate (disable) the enfc_clk_root before changing the enfc_clk_root
+	 * source or dividers by clearing CCM_CCGR2[CG7] to 2'b00. This
+	 * disables the iomux_ipt_clk_io_clk.
+	 */
+	reg = readl(MXC_CCM_CCGR2);
+	reg &= ~(0x3 << 14);
+	writel(reg, MXC_CCM_CCGR2);
+
+	/* Configure CCM_CS2CDR for the new clock source configuration */
+	reg = readl(MXC_CCM_CS2CDR);
+	reg &= ~(0x7FF0000);
+	writel(reg, MXC_CCM_CS2CDR);
+	reg |= 0xF0000;
+	writel(reg, MXC_CCM_CS2CDR);
+
+	/**
+	 * Enable enfc_clk_root by setting CCM_CCGR2[CG7] to 2'b11. This
+	 * enables the iomux_ipt_clk_io_clk.
+	 */
+	reg = readl(MXC_CCM_CCGR2);
+	reg |= 0x3 << 14;
+	writel(reg, MXC_CCM_CCGR2);
+
+	/* Ungate (enable) the GPMI/BCH clocks in CCM_CCGR4 */
+	reg = readl(MXC_CCM_CCGR4);
+	reg |= 0xFF003000;
+	writel(reg, MXC_CCM_CCGR4);
+}
+
 static uint32_t mxs_nand_aux_status_offset(void)
 {
 	return (MXS_NAND_METADATA_SIZE + 0x3) & ~0x3;
@@ -1139,6 +1198,9 @@ int imx6_nand_start_image(void)
 		sizeof(struct mxs_dma_cmd) * MXS_NAND_DMA_DESCRIPTOR_COUNT;
 	bb = (void *)PAGE_ALIGN((unsigned long)databuf + SZ_8K);
 
+	/* Apply ERR007117 workaround */
+	imx6_errata_007117_enable();
+
 	ret = imx6_nand_load_image(cmdbuf, descs, databuf,
 		bb, imx_image_size());
 	if (ret) {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
