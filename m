Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZel0-0003S2-Q1
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 14:54:53 +0000
Received: by mail-pf0-x242.google.com with SMTP id 1so2592950pfi.3
 for <barebox@lists.infradead.org>; Mon, 24 Jul 2017 07:54:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Jul 2017 07:53:55 -0700
Message-Id: <20170724145400.2279-5-andrew.smirnov@gmail.com>
In-Reply-To: <20170724145400.2279-1-andrew.smirnov@gmail.com>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/9] ARM: i.MX: Add mx7_setup_pad()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add mx7_setup_pad() low-level convenience function for setting up
pinmux in PBL code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-mx7.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx7.h b/arch/arm/mach-imx/include/mach/iomux-mx7.h
index 378e73a74..2667dc3eb 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx7.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx7.h
@@ -1306,4 +1306,23 @@ enum {
 	MX7D_PAD_ENET1_COL__CSU_INT_DEB                          = IOMUX_PAD(0x04D8, 0x0268, 7, 0x0000, 0, 0),
 };
 
+static inline void mx7_setup_pad(void __iomem *iomux, iomux_v3_cfg_t pad)
+{
+	unsigned int flags = 0;
+	uint32_t mode = IOMUX_MODE(pad);
+
+	if (mode & IOMUX_CONFIG_LPSR) {
+		mode &= ~IOMUX_CONFIG_LPSR;
+		flags = ZERO_OFFSET_VALID | IMX7_PINMUX_LPSR;
+	}
+
+	iomux_v3_setup_pad(iomux, flags,
+			   IOMUX_CTRL_OFS(pad),
+			   IOMUX_PAD_CTRL_OFS(pad),
+			   IOMUX_SEL_INPUT_OFS(pad),
+			   mode,
+			   IOMUX_PAD_CTRL(pad),
+			   IOMUX_SEL_INPUT(pad));
+}
+
 #endif
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
