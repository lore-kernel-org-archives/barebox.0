Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5XR-0004kB-3h
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:53:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:53:34 +0200
Message-Id: <1349434416-4231-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] ARM i.MX: Turn iomux-v2 into driver
To: barebox@lists.infradead.org

To get proper resources allocated for it and to get rid of IOMUXC_BASE
usage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx31.c    |    1 +
 arch/arm/mach-imx/iomux-v2.c |   66 +++++++++++++++++++++++++++++++++++-------
 2 files changed, 57 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index 90eee0a..d4955bf 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -31,6 +31,7 @@ static int imx31_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX31_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx31-iomux", 0, NULL, MX31_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-ccm", 0, NULL, MX31_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, MX31_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx-gpio", 0, NULL, MX31_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/iomux-v2.c b/arch/arm/mach-imx/iomux-v2.c
index 08af54c..dbbb8a2 100644
--- a/arch/arm/mach-imx/iomux-v2.c
+++ b/arch/arm/mach-imx/iomux-v2.c
@@ -16,19 +16,22 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <init.h>
 #include <mach/iomux-mx31.h>
 
 /*
  * IOMUX register (base) addresses
  */
-#define IOMUXINT_OBS1	(IOMUXC_BASE + 0x000)
-#define IOMUXINT_OBS2	(IOMUXC_BASE + 0x004)
-#define IOMUXGPR	(IOMUXC_BASE + 0x008)
-#define IOMUXSW_MUX_CTL	(IOMUXC_BASE + 0x00C)
-#define IOMUXSW_PAD_CTL	(IOMUXC_BASE + 0x154)
+#define IOMUXINT_OBS1	0x000
+#define IOMUXINT_OBS2	0x004
+#define IOMUXGPR	0x008
+#define IOMUXSW_MUX_CTL	0x00C
+#define IOMUXSW_PAD_CTL	0x154
 
 #define IOMUX_REG_MASK (IOMUX_PADNUM_MASK & ~0x3)
+
+static void __iomem *base;
+
 /*
  * set the mode for a IOMUX pin.
  */
@@ -37,7 +40,10 @@ int imx_iomux_mode(unsigned int pin_mode)
 	u32 field, l, mode, ret = 0;
 	void __iomem *reg;
 
-	reg = (void *)(IOMUXSW_MUX_CTL + (pin_mode & IOMUX_REG_MASK));
+	if (!base)
+		return -EINVAL;
+
+	reg = base + IOMUXSW_MUX_CTL + (pin_mode & IOMUX_REG_MASK);
 	field = pin_mode & 0x3;
 	mode = (pin_mode & IOMUX_MODE_MASK) >> IOMUX_MODE_SHIFT;
 
@@ -61,8 +67,11 @@ void imx_iomux_set_pad(enum iomux_pins pin, u32 config)
 	u32 field, l;
 	void __iomem *reg;
 
+	if (!base)
+		return;
+
 	pin &= IOMUX_PADNUM_MASK;
-	reg = (void *)(IOMUXSW_PAD_CTL + (pin + 2) / 3 * 4);
+	reg = base + IOMUXSW_PAD_CTL + (pin + 2) / 3 * 4;
 	field = (pin + 2) % 3;
 
 	pr_debug("%s: reg offset = 0x%x, field = %d\n",
@@ -83,14 +92,51 @@ void imx_iomux_set_gpr(enum iomux_gp_func gp, int en)
 {
 	u32 l;
 
-	l = readl(IOMUXGPR);
+	if (!base)
+		return;
+
+	l = readl(base + IOMUXGPR);
 	if (en)
 		l |= gp;
 	else
 		l &= ~gp;
 
-	writel(l, IOMUXGPR);
+	writel(l, base + IOMUXGPR);
 }
 EXPORT_SYMBOL(mxc_iomux_set_gpr);
 
+static int imx_iomux_probe(struct device_d *dev)
+{
+	base = dev_request_mem_region(dev, 0);
+
+	return 0;
+}
 
+static __maybe_unused struct of_device_id imx_iomux_dt_ids[] = {
+	{
+		.compatible = "fsl,imx31-iomux",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct platform_device_id imx_iomux_ids[] = {
+	{
+		.name = "imx31-iomux",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d imx_iomux_driver = {
+	.name = "imx-iomuxv2",
+	.probe = imx_iomux_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_iomux_dt_ids),
+	.id_table = imx_iomux_ids,
+};
+
+static int imx_iomux_init(void)
+{
+	return platform_driver_register(&imx_iomux_driver);
+}
+postcore_initcall(imx_iomux_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
