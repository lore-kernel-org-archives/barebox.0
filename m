Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cagtg-0002oF-JU
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 10:51:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 11:51:24 +0100
Message-Id: <20170206105124.29475-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] pinctrl: i.MX7: Fix LPSR sel_imput setting
To: Barebox List <barebox@lists.infradead.org>

The i.MX7 has two pinmux controllers, the regular and the LPSR
controller. The LPSR pinmux controller doesn't have any sel_input
registers, instead they can be found in the regular pinmux controller.
This means whenever we want to apply the the sel_input setting for
the LPSR controller, we have to apply them to the regular controller
instead.
In barebox take the easy way out and just add the difference of the
two base addresses to the register offset. The same issue is present
in the Kernel aswell, but when the bootloader already configured
the pins correctly nobody notices when the Kernel sel_input setup
effectively is a no-op.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h | 8 ++++++++
 drivers/pinctrl/imx-iomux-v3.c            | 2 +-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index f877aad89..271fe94a0 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -116,6 +116,7 @@ typedef u64 iomux_v3_cfg_t;
 
 #define SHARE_MUX_CONF_REG		0x1
 #define ZERO_OFFSET_VALID		0x2
+#define IMX7_PINMUX_LPSR		0x4
 
 static inline void iomux_v3_setup_pad(void __iomem *iomux, unsigned int flags,
 				      u32 mux_reg, u32 conf_reg, u32 input_reg,
@@ -125,6 +126,13 @@ static inline void iomux_v3_setup_pad(void __iomem *iomux, unsigned int flags,
 	const bool conf_ok  = !!conf_reg;
 	const bool input_ok = !!input_reg;
 
+	/*
+	 * The sel_input registers for the LPSR controller pins are in the regular pinmux
+	 * controller, so bend the register offset over to the other controller.
+	 */
+	if (flags & IMX7_PINMUX_LPSR)
+		input_reg += 0x70000;
+
 	if (flags & SHARE_MUX_CONF_REG) {
 		mux_val |= conf_val;
 	} else {
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index dea432464..50d717736 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -177,7 +177,7 @@ static int imx_iomux_v3_probe(struct device_d *dev)
 }
 
 static struct imx_iomux_v3_data imx_iomux_imx7_lpsr_data = {
-	.flags = ZERO_OFFSET_VALID,
+	.flags = ZERO_OFFSET_VALID | IMX7_PINMUX_LPSR,
 };
 
 static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
