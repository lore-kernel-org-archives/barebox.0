Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c46hG-0005e7-Jc
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 13:44:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 14:43:56 +0100
Message-Id: <20161108134356.7998-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: OCOTP: Add functions to access fuses field wise
To: Barebox List <barebox@lists.infradead.org>

Add functions to access the OCOTP fuses field wise, similar to what has
been done for the IIM. Also add a i.MX6 fusemap header file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6-fusemap.h | 63 ++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/ocotp.h        | 20 +++++++++
 arch/arm/mach-imx/ocotp.c                     | 65 +++++++++++++++++++++++++++
 3 files changed, 148 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-fusemap.h
 create mode 100644 arch/arm/mach-imx/include/mach/ocotp.h

diff --git a/arch/arm/mach-imx/include/mach/imx6-fusemap.h b/arch/arm/mach-imx/include/mach/imx6-fusemap.h
new file mode 100644
index 0000000..5fdd904
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx6-fusemap.h
@@ -0,0 +1,63 @@
+#ifndef __MACH_IMX_IMX6_OCOTP_H
+#define __MACH_IMX_IMX6_OCOTP_H
+
+#include <mach/ocotp.h>
+
+#define IMX6_OCOTP_TESTER_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(0) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_BOOT_CFG_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(2) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_MEM_TRIM_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(4) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_SJC_RESP_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(6) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_MAC_ADDR_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(8) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_GP1_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(10) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_GP2_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(12) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_SRK_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(14) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_ANALOG_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(18) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_MISC_CONF_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(22) | OCOTP_WIDTH(1))
+
+/* 0 <= n <= 1 */
+#define IMX6_OCOTP_UNIQUE_ID(n)		(OCOTP_WORD(0x410 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define IMX6_OCOTP_SI_REV		(OCOTP_WORD(0x430) | OCOTP_BIT(16) | OCOTP_WIDTH(4))
+#define IMX6_OCOTP_NUM_CORES		(OCOTP_WORD(0x430) | OCOTP_BIT(20) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_SATA_RST_SRC		(OCOTP_WORD(0x430) | OCOTP_BIT(24) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_MLB_DISABLE		(OCOTP_WORD(0x430) | OCOTP_BIT(26) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_VPU_DISABLE		(OCOTP_WORD(0x440) | OCOTP_BIT(15) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_SPEED_GRADING	(OCOTP_WORD(0x440) | OCOTP_BIT(16) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_BOOT_CFG1		(OCOTP_WORD(0x450) | OCOTP_BIT(0) | OCOTP_WIDTH(8))
+#define IMX6_OCOTP_BOOT_CFG2		(OCOTP_WORD(0x450) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
+#define IMX6_OCOTP_BOOT_CFG3		(OCOTP_WORD(0x450) | OCOTP_BIT(16) | OCOTP_WIDTH(8))
+#define IMX6_OCOTP_BOOT_CFG4		(OCOTP_WORD(0x450) | OCOTP_BIT(24) | OCOTP_WIDTH(8))
+#define IMX6_OCOTP_SEC_CONFIG		(OCOTP_WORD(0x460) | OCOTP_BIT(1) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x460) | OCOTP_BIT(3) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_BT_FUSE_SEL		(OCOTP_WORD(0x460) | OCOTP_BIT(4) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_DDR3_CONFIG		(OCOTP_WORD(0x460) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
+#define IMX6_OCOTP_HDCP			(OCOTP_WORD(0x460) | OCOTP_BIT(16) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_SJC_DISABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(20) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_WDOG_ENABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(21) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_JTAG_SMODE		(OCOTP_WORD(0x460) | OCOTP_BIT(22) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_KTE			(OCOTP_WORD(0x460) | OCOTP_BIT(26) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_JTAG_HEO		(OCOTP_WORD(0x460) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_TZASC_ENABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(28) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_SDMMC_HYS_EN		(OCOTP_WORD(0x460) | OCOTP_BIT(29) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_eMMC_RESET_EN	(OCOTP_WORD(0x460) | OCOTP_BIT(30) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_NAND_READ_CMD_CODE1	(OCOTP_WORD(0x470) | OCOTP_BIT(0) | OCOTP_WIDTH(8))
+#define IMX6_OCOTP_NAND_READ_CMD_CODE2	(OCOTP_WORD(0x470) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
+#define IMX6_OCOTP_BT_LPB_POLARITY	(OCOTP_WORD(0x470) | OCOTP_BIT(20) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_LPB_BOOT		(OCOTP_WORD(0x470) | OCOTP_BIT(21) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_MMC_DLL_DLY		(OCOTP_WORD(0x470) | OCOTP_BIT(24) | OCOTP_WIDTH(7))
+#define IMX6_OCOTP_TEMPERATURE_GRADE	(OCOTP_WORD(0x480) | OCOTP_BIT(6) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_POWER_GATE_CORES	(OCOTP_WORD(0x4d0) | OCOTP_BIT(31) | OCOTP_WIDTH(1))
+#define IMX6_OCOTP_USB_VID		(OCOTP_WORD(0x4f0) | OCOTP_BIT(0) | OCOTP_WIDTH(16))
+#define IMX6_OCOTP_USB_PID		(OCOTP_WORD(0x4f0) | OCOTP_BIT(16) | OCOTP_WIDTH(16))
+/* 0 <= n <= 7 */
+#define IMX6_OCOTP_SRK_HASH(n)		(OCOTP_WORD(0x580 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define IMX6_OCOTP_SJC_RESP_31_0	(OCOTP_WORD(0x600) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define IMX6_OCOTP_SJC_RESP_55_32	(OCOTP_WORD(0x610) | OCOTP_BIT(0) | OCOTP_WIDTH(24))
+#define IMX6_OCOTP_MAC_ADDR_31_0	(OCOTP_WORD(0x620) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define IMX6_OCOTP_MAC_ADDR_47_32	(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(16))
+#define IMX6_OCOTP_GP1			(OCOTP_WORD(0x660) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define IMX6_OCOTP_GP2			(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
+#define IMX6_OCOTP_PAD_SETTINGS		(OCOTP_WORD(0x6d0) | OCOTP_BIT(0) | OCOTP_WIDTH(6))
+#define IMX6DQ_OCOTP_TEST_PORT_DISABLE	(OCOTP_WORD(0x6e0) | OCOTP_BIT(1) | OCOTP_WIDTH(1))
+#define IMX6SDL_OCOTP_FIELD_RETURN	(OCOTP_WORD(0x6e0) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
+
+#endif /* __MACH_IMX_IMX6_OCOTP_H */
diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/arch/arm/mach-imx/include/mach/ocotp.h
new file mode 100644
index 0000000..430bc75
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/ocotp.h
@@ -0,0 +1,20 @@
+#ifndef __MACH_IMX_OCOTP_H
+#define __MACH_IMX_OCOTP_H
+
+#define OCOTP_WORD_MASK_WIDTH	8
+#define OCOTP_WORD_MASK_SHIFT	0
+#define OCOTP_WORD(n)		((((n) - 0x400) >> 4) & ((1 << OCOTP_WORD_MASK_WIDTH) - 1))
+
+#define OCOTP_BIT_MASK_WIDTH	5
+#define OCOTP_BIT_MASK_SHIFT	(OCOTP_WORD_MASK_SHIFT + OCOTP_WORD_MASK_WIDTH)
+#define OCOTP_BIT(n)		(((n) & ((1 << OCOTP_BIT_MASK_WIDTH) - 1)) << OCOTP_BIT_MASK_SHIFT)
+
+#define OCOTP_WIDTH_MASK_WIDTH	5
+#define OCOTP_WIDTH_MASK_SHIFT	(OCOTP_BIT_MASK_SHIFT + OCOTP_BIT_MASK_WIDTH)
+#define OCOTP_WIDTH(n)		((((n) - 1) & ((1 << OCOTP_WIDTH_MASK_WIDTH) - 1)) << OCOTP_WIDTH_MASK_SHIFT)
+
+int imx_ocotp_read_field(uint32_t field, unsigned *value);
+int imx_ocotp_write_field(uint32_t field, unsigned value);
+int imx_ocotp_permanent_write(int enable);
+
+#endif /* __MACH_IMX_OCOTP_H */
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 17b944b..3acec7f 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -28,6 +28,7 @@
 #include <clock.h>
 #include <regmap.h>
 #include <linux/clk.h>
+#include <mach/ocotp.h>
 
 /*
  * a single MAC address reference has the form
@@ -87,6 +88,8 @@ struct ocotp_priv {
 	struct regmap_config map_config;
 };
 
+static struct ocotp_priv *imx_ocotp;
+
 static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
 {
 	u32 clk_rate;
@@ -282,6 +285,66 @@ static int imx_ocotp_reg_write(void *ctx, unsigned int reg, unsigned int val)
 	return 0;
 }
 
+static void imx_ocotp_field_decode(uint32_t field, unsigned *word,
+				 unsigned *bit, unsigned *mask)
+{
+	unsigned width;
+
+	*word = ((field >> OCOTP_WORD_MASK_SHIFT) & ((1 << OCOTP_WORD_MASK_WIDTH) - 1)) * 4;
+	*bit = (field >> OCOTP_BIT_MASK_SHIFT) & ((1 << OCOTP_BIT_MASK_WIDTH) - 1);
+	width = ((field >> OCOTP_WIDTH_MASK_SHIFT) & ((1 << OCOTP_WIDTH_MASK_WIDTH) - 1)) + 1;
+	*mask = (1 << width) - 1;
+}
+
+int imx_ocotp_read_field(uint32_t field, unsigned *value)
+{
+	unsigned word, bit, mask, val;
+	int ret;
+
+	imx_ocotp_field_decode(field, &word, &bit, &mask);
+
+	ret = imx_ocotp_reg_read(imx_ocotp, word, &val);
+	if (ret)
+		return ret;
+
+	val >>= bit;
+	val &= mask;
+
+	dev_dbg(&imx_ocotp->dev, "%s: word: 0x%x bit: %d mask: 0x%x val: 0x%x\n",
+		__func__, word, bit, mask, val);
+
+	*value = val;
+
+	return 0;
+}
+
+int imx_ocotp_write_field(uint32_t field, unsigned value)
+{
+	unsigned word, bit, mask;
+	int ret;
+
+	imx_ocotp_field_decode(field, &word, &bit, &mask);
+
+	value &= mask;
+	value <<= bit;
+
+	ret = imx_ocotp_reg_write(imx_ocotp, word, value);
+	if (ret)
+		return ret;
+
+	dev_dbg(&imx_ocotp->dev, "%s: word: 0x%x bit: %d mask: 0x%x val: 0x%x\n",
+		__func__, word, bit, mask, value);
+
+	return 0;
+}
+
+int imx_ocotp_permanent_write(int enable)
+{
+	imx_ocotp->permanent_write_enable = enable;
+
+	return 0;
+}
+
 static uint32_t inc_offset(uint32_t offset)
 {
 	if ((offset & 0x3) == 0x3)
@@ -412,6 +475,8 @@ static int imx_ocotp_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
+	imx_ocotp = priv;
+
 	if (IS_ENABLED(CONFIG_IMX_OCOTP_WRITE)) {
 		dev_add_param_bool(&(priv->dev), "permanent_write_enable",
 				NULL, NULL, &priv->permanent_write_enable, NULL);
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
