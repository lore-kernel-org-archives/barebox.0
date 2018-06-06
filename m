Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdRE-0000J4-Dc
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:45:42 +0000
Received: by mail-pl0-x241.google.com with SMTP id f1-v6so4362696plt.6
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:45:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:44:19 -0700
Message-Id: <20180606184431.10348-27-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 26/38] pinctrl: i.MX: Add support for i.MX8
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h |  9 ++++
 drivers/pinctrl/imx-iomux-v3.c            | 56 ++++++++++++++++++++---
 2 files changed, 59 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 40f6e5999..994c15c04 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -17,6 +17,7 @@
 #define __MACH_IOMUX_V3_H__
 
 #include <io.h>
+#include <linux/bitfield.h>
 
 /*
  *	build IOMUX_PAD structure
@@ -95,6 +96,13 @@ typedef u64 iomux_v3_cfg_t;
 #define PAD_CTL_DVS			(1 << 13)
 #define PAD_CTL_HYS			(1 << 8)
 
+#define SHARE_CONF_PAD_CTL_DSE	GENMASK(2, 0)
+#define SHARE_CONF_PAD_CTL_SRE	GENMASK(4, 3)
+
+#define SHARE_CONF_PAD_CTL_ODE	BIT(5)
+#define SHARE_CONF_PAD_CTL_PUE	BIT(6)
+#define SHARE_CONF_PAD_CTL_HYS	BIT(7)
+
 #define PAD_CTL_PKE			(1 << 7)
 #define PAD_CTL_PUE			(1 << 6 | PAD_CTL_PKE)
 #define PAD_CTL_PUS_100K_DOWN		(0 << 4 | PAD_CTL_PUE)
@@ -118,6 +126,7 @@ typedef u64 iomux_v3_cfg_t;
 #define SHARE_MUX_CONF_REG		0x1
 #define ZERO_OFFSET_VALID		0x2
 #define IMX7_PINMUX_LPSR		0x4
+#define SHARE_CONF			BIT(3)
 
 static inline void iomux_v3_setup_pad(void __iomem *iomux, unsigned int flags,
 				      u32 mux_reg, u32 conf_reg, u32 input_reg,
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 50d717736..38451875e 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -73,6 +73,7 @@ EXPORT_SYMBOL(mxc_iomux_v3_setup_multiple_pads);
  * 1 u32 CONFIG, so 24 types in total for each pin.
  */
 #define FSL_PIN_SIZE 24
+#define SHARE_CONF_FSL_PIN_SIZE (FSL_PIN_SIZE - 1 * sizeof(u32))
 
 #define IMX_DT_NO_PAD_CTL	(1 << 31)
 #define IMX_PAD_SION		(1 << 30)
@@ -83,22 +84,57 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
 {
 	struct imx_iomux_v3 *iomux = container_of(pdev, struct imx_iomux_v3, pinctrl);
 	const __be32 *list;
-	int npins, size, i;
+	const bool share_conf = iomux->flags & SHARE_CONF;
+	int npins, size, i, fsl_pin_size;
+	const char *name;
+	u32 share_conf_val;
 
 	dev_dbg(iomux->pinctrl.dev, "set state: %s\n", np->full_name);
 
-	list = of_get_property(np, "fsl,pins", &size);
+	if (share_conf) {
+		u32 drive_strength, slew_rate;
+		int ret;
+
+		fsl_pin_size = SHARE_CONF_FSL_PIN_SIZE;
+		name = "pinmux";
+
+		ret = of_property_read_u32(np, "drive-strength",
+					   &drive_strength);
+		if (ret)
+			return ret;
+
+		ret = of_property_read_u32(np, "slew-rate", &slew_rate);
+		if (ret)
+			return ret;
+
+		share_conf_val =
+			FIELD_PREP(SHARE_CONF_PAD_CTL_DSE, drive_strength) |
+			FIELD_PREP(SHARE_CONF_PAD_CTL_SRE, slew_rate);
+
+		if (of_get_property(np, "drive-open-drain", NULL))
+			share_conf_val |= SHARE_CONF_PAD_CTL_ODE;
+
+		if (of_get_property(np, "input-schmitt-enable", NULL))
+			share_conf_val |= SHARE_CONF_PAD_CTL_HYS;
+
+		if (of_get_property(np, "bias-pull-up", NULL))
+			share_conf_val |= SHARE_CONF_PAD_CTL_PUE;
+	} else {
+		fsl_pin_size = FSL_PIN_SIZE;
+		name = "fsl,pins";
+	}
+
+	list = of_get_property(np, name, &size);
 	if (!list)
 		return -EINVAL;
 
-
-	if (!size || size % FSL_PIN_SIZE) {
+	if (!size || size % fsl_pin_size) {
 		dev_err(iomux->pinctrl.dev, "Invalid fsl,pins property in %s\n",
 				np->full_name);
 		return -EINVAL;
 	}
 
-	npins = size / FSL_PIN_SIZE;
+	npins = size / fsl_pin_size;
 
 	for (i = 0; i < npins; i++) {
 		u32 mux_reg = be32_to_cpu(*list++);
@@ -106,7 +142,8 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
 		u32 input_reg = be32_to_cpu(*list++);
 		u32 mux_val = be32_to_cpu(*list++);
 		u32 input_val = be32_to_cpu(*list++);
-		u32 conf_val = be32_to_cpu(*list++);
+		u32 conf_val = share_conf ?
+			share_conf_val : be32_to_cpu(*list++);
 
 		if (conf_val & IMX_PAD_SION) {
 			mux_val |= IOMUXC_CONFIG_SION;
@@ -180,6 +217,10 @@ static struct imx_iomux_v3_data imx_iomux_imx7_lpsr_data = {
 	.flags = ZERO_OFFSET_VALID | IMX7_PINMUX_LPSR,
 };
 
+static struct imx_iomux_v3_data imx_iomux_imx8_data = {
+	.flags = SHARE_CONF,
+};
+
 static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 	{
 		.compatible = "fsl,imx25-iomuxc",
@@ -204,6 +245,9 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx7d-iomuxc-lpsr",
 		.data = &imx_iomux_imx7_lpsr_data,
+	}, {
+		.compatible = "fsl,imx8mq-iomuxc",
+		.data = &imx_iomux_imx8_data,
 	}, {
 		/* sentinel */
 	}
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
