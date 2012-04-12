Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIQLi-00007D-MN
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 20:10:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2012 22:10:18 +0200
Message-Id: <1334261421-4194-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334261421-4194-1-git-send-email-s.hauer@pengutronix.de>
References: <1334261421-4194-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM i.MX iomux-v3: Sync to kernel
To: barebox@lists.infradead.org

This means using an uint64_t instead of a struct pad_desc which allows
us to change pad settings using logic operations. Also with this we
can more easily keep the iomux tables in sync with the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |    2 +-
 arch/arm/boards/freescale-mx53-loco/board.c       |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c        |    2 +-
 arch/arm/boards/guf-cupid/board.c                 |    2 +-
 arch/arm/boards/karo-tx25/board.c                 |    6 +-
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/boards/tqma53/board.c                    |    2 +-
 arch/arm/mach-imx/include/mach/iomux-v3.h         |   78 +++++++++++++--------
 arch/arm/mach-imx/iomux-v3.c                      |   40 +++++++----
 14 files changed, 86 insertions(+), 60 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 1e48650..d6d169f 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -164,7 +164,7 @@ static int eukrea_cpuimx25_mem_init(void)
 }
 mem_initcall(eukrea_cpuimx25_mem_init);
 
-static struct pad_desc eukrea_cpuimx25_pads[] = {
+static iomux_v3_cfg_t eukrea_cpuimx25_pads[] = {
 	MX25_PAD_FEC_MDC__FEC_MDC,
 	MX25_PAD_FEC_MDIO__FEC_MDIO,
 	MX25_PAD_FEC_RDATA0__FEC_RDATA0,
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index ec30693..094c3e2 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -179,7 +179,7 @@ static int eukrea_cpuimx35_devices_init(void)
 
 device_initcall(eukrea_cpuimx35_devices_init);
 
-static struct pad_desc eukrea_cpuimx35_pads[] = {
+static iomux_v3_cfg_t eukrea_cpuimx35_pads[] = {
 	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
 	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
 	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 6de8f1f..d2b8399 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -52,7 +52,7 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
-static struct pad_desc eukrea_cpuimx51_pads[] = {
+static iomux_v3_cfg_t eukrea_cpuimx51_pads[] = {
 	/* FEC */
 	MX51_PAD_DISP2_DAT1__FEC_RX_ER,
 	MX51_PAD_DISP2_DAT15__FEC_TDATA0,
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index c63467a..ac781fd 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -243,7 +243,7 @@ static int imx25_devices_init(void)
 
 device_initcall(imx25_devices_init);
 
-static struct pad_desc imx25_pads[] = {
+static iomux_v3_cfg_t imx25_pads[] = {
 	MX25_PAD_FEC_MDC__FEC_MDC,
 	MX25_PAD_FEC_MDIO__FEC_MDIO,
 	MX25_PAD_FEC_RDATA0__FEC_RDATA0,
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index f435699..e9c28dc 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -206,7 +206,7 @@ static int f3s_enable_display(void)
 
 late_initcall(f3s_enable_display);
 
-static struct pad_desc f3s_pads[] = {
+static iomux_v3_cfg_t f3s_pads[] = {
 	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
 	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
 	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 6e8b418..66b4deb 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -47,7 +47,7 @@ static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
-static struct pad_desc f3s_pads[] = {
+static iomux_v3_cfg_t f3s_pads[] = {
 	MX51_PAD_EIM_EB2__FEC_MDIO,
 	MX51_PAD_EIM_EB3__FEC_RDATA1,
 	MX51_PAD_EIM_CS2__FEC_RDATA2,
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 6ae597a..1693866 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -47,7 +47,7 @@ static struct fec_platform_data fec_info = {
 	.xcv_type = RMII,
 };
 
-static struct pad_desc loco_pads[] = {
+static iomux_v3_cfg_t loco_pads[] = {
 	/* UART1 */
 	MX53_PAD_CSI0_DAT10__UART1_TXD_MUX,
 	MX53_PAD_CSI0_DAT11__UART1_RXD_MUX,
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index 7230245..b663255 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -44,7 +44,7 @@ static struct fec_platform_data fec_info = {
 	.xcv_type = RMII,
 };
 
-static struct pad_desc smd_pads[] = {
+static iomux_v3_cfg_t smd_pads[] = {
 	/* UART1 */
 	MX53_PAD_CSI0_DAT10__UART1_TXD_MUX,
 	MX53_PAD_CSI0_DAT11__UART1_RXD_MUX,
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 577d80e..653d440 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -146,7 +146,7 @@ static int cupid_devices_init(void)
 
 device_initcall(cupid_devices_init);
 
-static struct pad_desc cupid_pads[] = {
+static iomux_v3_cfg_t cupid_pads[] = {
 	/* UART1 */
 	MX35_PAD_CTS1__UART1_CTS,
 	MX35_PAD_RTS1__UART1_RTS,
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 451d91d..7df2e4c 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -64,7 +64,7 @@ static int tx25_mem_init(void)
 }
 mem_initcall(tx25_mem_init);
 
-static struct pad_desc karo_tx25_padsd_fec[] = {
+static iomux_v3_cfg_t karo_tx25_padsd_fec[] = {
 	MX25_PAD_D11__GPIO_4_9,		/* FEC PHY power on pin */
 	MX25_PAD_D13__GPIO_4_7,		/* FEC reset */
 	MX25_PAD_FEC_MDC__FEC_MDC,
@@ -131,7 +131,7 @@ static int tx25_devices_init(void)
 
 device_initcall(tx25_devices_init);
 
-static struct pad_desc tx25_pads[] = {
+static iomux_v3_cfg_t tx25_pads[] = {
 	MX25_PAD_D12__GPIO_4_8,
 	MX25_PAD_D10__GPIO_4_10,
 	MX25_PAD_NF_CE0__NF_CE0,
@@ -172,7 +172,7 @@ void __bare_init nand_boot(void)
 }
 #endif
 
-static struct pad_desc tx25_lcdc_gpios[] = {
+static iomux_v3_cfg_t tx25_lcdc_gpios[] = {
 	MX25_PAD_A18__GPIO_2_4,		/* LCD Reset (active LOW) */
 	MX25_PAD_PWM__GPIO_1_26,	/* LCD Backlight brightness 0: full 1: off */
 	MX25_PAD_A19__GPIO_2_5,		/* LCD Power Enable 0: off 1: on */
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index e0dd5fc..6da5dd4 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -178,7 +178,7 @@ static int imx35_devices_init(void)
 
 device_initcall(imx35_devices_init);
 
-static struct pad_desc pcm043_pads[] = {
+static iomux_v3_cfg_t pcm043_pads[] = {
 	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
 	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
 	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 184c00f..947c3f1 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -43,7 +43,7 @@ static struct fec_platform_data fec_info = {
 	.xcv_type = RMII,
 };
 
-static struct pad_desc tqma53_pads[] = {
+static iomux_v3_cfg_t tqma53_pads[] = {
 	MX53_PAD_KEY_ROW1__AUDMUX_AUD5_RXD,
 	MX53_PAD_KEY_COL0__AUDMUX_AUD5_TXC,
 	MX53_PAD_KEY_ROW0__AUDMUX_AUD5_TXD,
diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 8a1adc2..f2f0ccf 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -42,41 +42,59 @@
  * If <padname> or <padmode> refers to a GPIO, it is named
  * GPIO_<unit>_<num>
  *
- */
+ * IOMUX/PAD Bit field definitions
+ *
+ * MUX_CTRL_OFS:	    0..11 (12)
+ * PAD_CTRL_OFS:	   12..23 (12)
+ * SEL_INPUT_OFS:	   24..35 (12)
+ * MUX_MODE + SION:	   36..40  (5)
+ * PAD_CTRL + NO_PAD_CTRL: 41..57 (17)
+ * SEL_INP:		   58..61  (4)
+ * reserved:		     63    (1)
+*/
+
+typedef u64 iomux_v3_cfg_t;
+
+#define MUX_CTRL_OFS_SHIFT	0
+#define MUX_CTRL_OFS_MASK	((iomux_v3_cfg_t)0xfff << MUX_CTRL_OFS_SHIFT)
+#define MUX_PAD_CTRL_OFS_SHIFT	12
+#define MUX_PAD_CTRL_OFS_MASK	((iomux_v3_cfg_t)0xfff << MUX_PAD_CTRL_OFS_SHIFT)
+#define MUX_SEL_INPUT_OFS_SHIFT	24
+#define MUX_SEL_INPUT_OFS_MASK	((iomux_v3_cfg_t)0xfff << MUX_SEL_INPUT_OFS_SHIFT)
 
-struct pad_desc {
-	unsigned mux_ctrl_ofs:12; /* IOMUXC_SW_MUX_CTL_PAD offset */
-	unsigned mux_mode:8;
-	unsigned pad_ctrl_ofs:12; /* IOMUXC_SW_PAD_CTRL offset */
-#define	NO_PAD_CTRL	(1 << 16)
-	unsigned pad_ctrl:17;
-	unsigned select_input_ofs:12; /* IOMUXC_SELECT_INPUT offset */
-	unsigned select_input:3;
-};
-
-#define IOMUX_PAD(_pad_ctrl_ofs, _mux_ctrl_ofs, _mux_mode, _select_input_ofs, \
-		_select_input, _pad_ctrl)				\
-		{							\
-			.mux_ctrl_ofs     = _mux_ctrl_ofs,		\
-			.mux_mode         = _mux_mode,			\
-			.pad_ctrl_ofs     = _pad_ctrl_ofs,		\
-			.pad_ctrl         = _pad_ctrl,			\
-			.select_input_ofs = _select_input_ofs,		\
-			.select_input     = _select_input,		\
-		}
+#define MUX_MODE_SHIFT		36
+#define MUX_MODE_MASK		((iomux_v3_cfg_t)0x1f << MUX_MODE_SHIFT)
+#define MUX_PAD_CTRL_SHIFT	41
+#define MUX_PAD_CTRL_MASK	((iomux_v3_cfg_t)0x1ffff << MUX_PAD_CTRL_SHIFT)
+#define MUX_SEL_INPUT_SHIFT	58
+#define MUX_SEL_INPUT_MASK	((iomux_v3_cfg_t)0xf << MUX_SEL_INPUT_SHIFT)
 
+#define MUX_PAD_CTRL(x)		((iomux_v3_cfg_t)(x) << MUX_PAD_CTRL_SHIFT)
+
+#define IOMUX_PAD(_pad_ctrl_ofs, _mux_ctrl_ofs, _mux_mode, _sel_input_ofs, \
+		_sel_input, _pad_ctrl)					\
+	(((iomux_v3_cfg_t)(_mux_ctrl_ofs) << MUX_CTRL_OFS_SHIFT) |	\
+		((iomux_v3_cfg_t)(_mux_mode) << MUX_MODE_SHIFT) |	\
+		((iomux_v3_cfg_t)(_pad_ctrl_ofs) << MUX_PAD_CTRL_OFS_SHIFT) | \
+		((iomux_v3_cfg_t)(_pad_ctrl) << MUX_PAD_CTRL_SHIFT) |	\
+		((iomux_v3_cfg_t)(_sel_input_ofs) << MUX_SEL_INPUT_OFS_SHIFT) | \
+		((iomux_v3_cfg_t)(_sel_input) << MUX_SEL_INPUT_SHIFT))
+
+#define NEW_PAD_CTRL(cfg, pad)	(((cfg) & ~MUX_PAD_CTRL_MASK) | MUX_PAD_CTRL(pad))
 /*
  * Use to set PAD control
  */
+
+#define NO_PAD_CTRL			(1 << 16)
 #define PAD_CTL_DVS			(1 << 13)
 #define PAD_CTL_HYS			(1 << 8)
 
 #define PAD_CTL_PKE			(1 << 7)
-#define PAD_CTL_PUE			(1 << 6)
-#define PAD_CTL_PUS_100K_DOWN		(0 << 4)
-#define PAD_CTL_PUS_47K_UP		(1 << 4)
-#define PAD_CTL_PUS_100K_UP		(2 << 4)
-#define PAD_CTL_PUS_22K_UP		(3 << 4)
+#define PAD_CTL_PUE			(1 << 6 | PAD_CTL_PKE)
+#define PAD_CTL_PUS_100K_DOWN		(0 << 4 | PAD_CTL_PUE)
+#define PAD_CTL_PUS_47K_UP		(1 << 4 | PAD_CTL_PUE)
+#define PAD_CTL_PUS_100K_UP		(2 << 4 | PAD_CTL_PUE)
+#define PAD_CTL_PUS_22K_UP		(3 << 4 | PAD_CTL_PUE)
 
 #define PAD_CTL_ODE			(1 << 3)
 
@@ -91,16 +109,14 @@ struct pad_desc {
 #define IOMUX_CONFIG_SION		(0x1 << 4)
 
 /*
- * setups a single pad:
- * 	- reserves the pad so that it is not claimed by another driver
- * 	- setups the iomux according to the configuration
+ * setups a single pad in the iomuxer
  */
-int mxc_iomux_v3_setup_pad(struct pad_desc *pad);
+int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad);
 
 /*
  * setups mutliple pads
  * convenient way to call the above function with tables
  */
-int mxc_iomux_v3_setup_multiple_pads(struct pad_desc *pad_list, unsigned count);
+int mxc_iomux_v3_setup_multiple_pads(iomux_v3_cfg_t *pad_list, unsigned count);
 
 #endif /* __MACH_IOMUX_V3_H__*/
diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
index bb2307a..680d260 100644
--- a/arch/arm/mach-imx/iomux-v3.c
+++ b/arch/arm/mach-imx/iomux-v3.c
@@ -23,36 +23,46 @@
 #include <mach/iomux-v3.h>
 #include <mach/imx-regs.h>
 
+static void __iomem *base = (void *)IMX_IOMUXC_BASE;
+
 /*
- * setups a single pin:
- * 	- reserves the pin so that it is not claimed by another driver
- * 	- setups the iomux according to the configuration
+ * configures a single pad in the iomuxer
  */
-int mxc_iomux_v3_setup_pad(struct pad_desc *pad)
+int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
 {
-	if (pad->mux_ctrl_ofs)
-		writel(pad->mux_mode, IMX_IOMUXC_BASE + pad->mux_ctrl_ofs);
+	u32 mux_ctrl_ofs = (pad & MUX_CTRL_OFS_MASK) >> MUX_CTRL_OFS_SHIFT;
+	u32 mux_mode = (pad & MUX_MODE_MASK) >> MUX_MODE_SHIFT;
+	u32 sel_input_ofs = (pad & MUX_SEL_INPUT_OFS_MASK) >> MUX_SEL_INPUT_OFS_SHIFT;
+	u32 sel_input = (pad & MUX_SEL_INPUT_MASK) >> MUX_SEL_INPUT_SHIFT;
+	u32 pad_ctrl_ofs = (pad & MUX_PAD_CTRL_OFS_MASK) >> MUX_PAD_CTRL_OFS_SHIFT;
+	u32 pad_ctrl = (pad & MUX_PAD_CTRL_MASK) >> MUX_PAD_CTRL_SHIFT;
+
+	if (mux_ctrl_ofs)
+		__raw_writel(mux_mode, base + mux_ctrl_ofs);
+
+	if (sel_input_ofs)
+		__raw_writel(sel_input, base + sel_input_ofs);
 
-	if (pad->select_input_ofs)
-		writel(pad->select_input,
-				IMX_IOMUXC_BASE + pad->select_input_ofs);
+	if (!(pad_ctrl & NO_PAD_CTRL) && pad_ctrl_ofs)
+		__raw_writel(pad_ctrl, base + pad_ctrl_ofs);
 
-	if (!(pad->pad_ctrl & NO_PAD_CTRL))
-		writel(pad->pad_ctrl, IMX_IOMUXC_BASE + pad->pad_ctrl_ofs);
 	return 0;
 }
 EXPORT_SYMBOL(mxc_iomux_v3_setup_pad);
 
-int mxc_iomux_v3_setup_multiple_pads(struct pad_desc *pad_list, unsigned count)
+
+int mxc_iomux_v3_setup_multiple_pads(iomux_v3_cfg_t *pad_list, unsigned count)
 {
-	struct pad_desc *p = pad_list;
+	iomux_v3_cfg_t *p = pad_list;
 	int i;
+	int ret;
 
 	for (i = 0; i < count; i++) {
-		mxc_iomux_v3_setup_pad(p);
+		ret = mxc_iomux_v3_setup_pad(*p);
+		if (ret)
+			return ret;
 		p++;
 	}
 	return 0;
 }
 EXPORT_SYMBOL(mxc_iomux_v3_setup_multiple_pads);
-
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
