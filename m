Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5XI-0004iU-UC
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:53:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:53:35 +0200
Message-Id: <1349434416-4231-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] ARM i.MX: Turn iomux-v3 into driver
To: barebox@lists.infradead.org

To get proper resources allocated for it and to get rid of IMX_IOMUXC_BASE
usage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx35.c    |    1 +
 arch/arm/mach-imx/imx51.c    |    1 +
 arch/arm/mach-imx/imx53.c    |    1 +
 arch/arm/mach-imx/imx6.c     |    1 +
 arch/arm/mach-imx/iomux-v3.c |   42 +++++++++++++++++++++++++++++++++++++++++-
 5 files changed, 45 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 1575d54..bb93c37 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -64,6 +64,7 @@ static int imx35_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX35_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx-iomuxv3", 0, NULL, MX35_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx35-ccm", 0, NULL, MX35_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, MX35_GPT1_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx-gpio", 0, NULL, MX35_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 3850001..81e6211 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -73,6 +73,7 @@ static int imx51_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx-iomuxv3", 0, NULL, MX51_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx51-ccm", 0, NULL, MX51_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, MX51_GPT1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX51_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 4aa3f61..569d8f4 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -69,6 +69,7 @@ static int imx53_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx-iomuxv3", 0, NULL, MX53_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx53-ccm", 0, NULL, MX53_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, 0X53fa0000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX53_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index a5ec364..fef6832 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -54,6 +54,7 @@ void imx6_init_lowlevel(void)
 
 static int imx6_init(void)
 {
+	add_generic_device("imx-iomuxv3", 0, NULL, MX6_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx6-ccm", 0, NULL, MX6_CCM_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, 0x02098000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX6_GPIO1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
index 948b610..9153ead 100644
--- a/arch/arm/mach-imx/iomux-v3.c
+++ b/arch/arm/mach-imx/iomux-v3.c
@@ -15,11 +15,12 @@
  *
  */
 #include <common.h>
+#include <init.h>
 #include <io.h>
 #include <mach/iomux-v3.h>
 #include <mach/imx-regs.h>
 
-static void __iomem *base = (void *)IMX_IOMUXC_BASE;
+static void __iomem *base;
 
 /*
  * configures a single pad in the iomuxer
@@ -33,6 +34,9 @@ int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
 	u32 pad_ctrl_ofs = (pad & MUX_PAD_CTRL_OFS_MASK) >> MUX_PAD_CTRL_OFS_SHIFT;
 	u32 pad_ctrl = (pad & MUX_PAD_CTRL_MASK) >> MUX_PAD_CTRL_SHIFT;
 
+	if (!base)
+		return -EINVAL;
+
 	debug("%s: mux 0x%08x -> 0x%04x pad: 0x%08x -> 0x%04x sel_inp: 0x%08x -> 0x%04x\n",
 			__func__, mux_mode, mux_ctrl_ofs, pad_ctrl, pad_ctrl_ofs, sel_input,
 			sel_input_ofs);
@@ -66,3 +70,39 @@ int mxc_iomux_v3_setup_multiple_pads(iomux_v3_cfg_t *pad_list, unsigned count)
 	return 0;
 }
 EXPORT_SYMBOL(mxc_iomux_v3_setup_multiple_pads);
+
+static int imx_iomux_probe(struct device_d *dev)
+{
+	base = dev_request_mem_region(dev, 0);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx_iomux_dt_ids[] = {
+	{
+		.compatible = "fsl,imx35-iomux",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct platform_device_id imx_iomux_ids[] = {
+	{
+		.name = "imx35-iomux",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d imx_iomux_driver = {
+	.name = "imx-iomuxv3",
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
