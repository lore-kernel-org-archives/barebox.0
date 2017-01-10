Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3t-0001Ko-En
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:16 +0000
Received: by mail-pf0-x243.google.com with SMTP id f144so10456635pfa.2
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:09:08 -0800
Message-Id: <20170110150913.31416-16-andrew.smirnov@gmail.com>
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 15/20] i.MX: vf610: Add low-level pin configuration helper
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add low-level pin configuration helper for early boot code, and convert
pinctrl driver to use that code as well.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-vf610.h | 15 +++++++++++++++
 drivers/pinctrl/pinctrl-vf610.c              | 11 ++++++-----
 2 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-vf610.h b/arch/arm/mach-imx/include/mach/iomux-vf610.h
index 1535628..84a1eb5 100644
--- a/arch/arm/mach-imx/include/mach/iomux-vf610.h
+++ b/arch/arm/mach-imx/include/mach/iomux-vf610.h
@@ -223,4 +223,19 @@ enum {
 	VF610_PAD_DDR_ODT0__DDR_ODT_1	= IOMUX_PAD(0x02d8, 0x02d8, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
 };
 
+#define PINCTRL_VF610_MUX_SHIFT 20
+
+
+static inline void vf610_setup_pad(void __iomem *iomux, iomux_v3_cfg_t pad)
+{
+	iomux_v3_setup_pad(iomux, SHARE_MUX_CONF_REG | ZERO_OFFSET_VALID,
+			   IOMUX_CTRL_OFS(pad),
+			   IOMUX_PAD_CTRL_OFS(pad),
+			   IOMUX_SEL_INPUT_OFS(pad),
+			   IOMUX_MODE(pad) << PINCTRL_VF610_MUX_SHIFT,
+			   IOMUX_PAD_CTRL(pad),
+			   IOMUX_SEL_INPUT(pad));
+}
+
+
 #endif	/* __IOMUX_VF610_H__ */
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index b479bf2..4234263 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -24,9 +24,10 @@
 #include <malloc.h>
 #include <gpio.h>
 
+#include <mach/iomux-vf610.h>
+
 enum {
 	PINCTRL_VF610_MUX_LINE_SIZE = 20,
-	PINCTRL_VF610_MUX_SHIFT = 20,
 
 	PINCTRL_VF610_IBE = 1 << 0,
 	PINCTRL_VF610_OBE = 1 << 1,
@@ -60,17 +61,17 @@ static int pinctrl_vf610_set_state(struct pinctrl_device *pdev,
 	npins = size / PINCTRL_VF610_MUX_LINE_SIZE;
 
 	for (i = 0; i < npins; i++) {
+		iomux_v3_cfg_t pad;
 		u32 mux_reg   = be32_to_cpu(*list++);
 		u32 input_reg = be32_to_cpu(*list++);
 		u32 mux_val   = be32_to_cpu(*list++);
 		u32 input_val = be32_to_cpu(*list++);
 		u32 conf_val  = be32_to_cpu(*list++);
 
-		writel(mux_val << PINCTRL_VF610_MUX_SHIFT | conf_val,
-		       iomux->base + mux_reg);
+		pad = IOMUX_PAD(mux_reg, mux_reg, mux_val,
+				input_reg, input_val, conf_val);
 
-		if (input_reg)
-			writel(input_val, iomux->base + input_reg);
+		vf610_setup_pad(iomux->base, pad);
 	}
 
 	return 0;
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
