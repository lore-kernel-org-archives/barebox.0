Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3o-0001J7-Sc
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:12 +0000
Received: by mail-pf0-x243.google.com with SMTP id 127so29397133pfg.0
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:09:05 -0800
Message-Id: <20170110150913.31416-13-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 12/20] i.MX: iomuxv3: Add low-level pad configuration
 routine
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add low-level pad configuration routine that can be used by early boot
code as well as leveraged by pinmux driver.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 1ecd11b..f877aad 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -139,6 +139,23 @@ static inline void iomux_v3_setup_pad(void __iomem *iomux, unsigned int flags,
 		writel(input_val, iomux + input_reg);
 }
 
+static inline void imx_setup_pad(void __iomem *iomux, iomux_v3_cfg_t pad)
+{
+	uint32_t pad_ctrl;
+
+	pad_ctrl = IOMUX_PAD_CTRL(pad);
+	pad_ctrl = (pad_ctrl & NO_PAD_CTRL) ? 0 : pad_ctrl,
+
+	iomux_v3_setup_pad(iomux, 0,
+			   IOMUX_CTRL_OFS(pad),
+			   IOMUX_PAD_CTRL_OFS(pad),
+			   IOMUX_SEL_INPUT_OFS(pad),
+			   IOMUX_MODE(pad),
+			   pad_ctrl,
+			   IOMUX_SEL_INPUT(pad));
+}
+
+
 
 /*
  * setups a single pad in the iomuxer
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
