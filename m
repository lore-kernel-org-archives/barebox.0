Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGUxO-0005Jp-8Z
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 18:04:12 +0000
Received: by mail-pg0-x241.google.com with SMTP id x23so1670279pgx.3
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2016 10:03:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Dec 2016 10:03:03 -0800
Message-Id: <1481565788-9115-17-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 16/21] i.MX: vf610: Add low-level pin configuration helper
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add low-level pin configuration helper for early boot code, and convert
pinctrl driver to use that code as well.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-vf610.h | 16 ++++++++++++++++
 drivers/pinctrl/pinctrl-vf610.c              | 11 ++++++-----
 2 files changed, 22 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-vf610.h b/arch/arm/mach-imx/include/mach/iomux-vf610.h
index 1535628..087d6f2 100644
--- a/arch/arm/mach-imx/include/mach/iomux-vf610.h
+++ b/arch/arm/mach-imx/include/mach/iomux-vf610.h
@@ -223,4 +223,20 @@ enum {
 	VF610_PAD_DDR_ODT0__DDR_ODT_1	= IOMUX_PAD(0x02d8, 0x02d8, 0, __NA_, 0, VF610_DDR_PAD_CTRL),
 };
 
+#define PINCTRL_VF610_MUX_SHIFT 20
+
+
+static inline void vf610_setup_pad(void __iomem *iomux, iomux_v3_cfg_t __pad)
+{
+	union iomux_v3_pad pad = { .raw = __pad };
+
+	iomux_v3_setup_pad(iomux, SHARE_MUX_CONF_REG | ZERO_OFFSET_VALID,
+			   pad.cfg.mux_ctrl_ofs,
+			   pad.cfg.pad_ctrl_ofs,
+			   pad.cfg.sel_input_ofs,
+			   pad.cfg.mux_mode << PINCTRL_VF610_MUX_SHIFT,
+			   pad.cfg.pad_ctrl, pad.cfg.sel_inp);
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
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
