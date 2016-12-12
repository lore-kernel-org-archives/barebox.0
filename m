Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGUxH-0005Gt-Ad
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 18:04:05 +0000
Received: by mail-pf0-x243.google.com with SMTP id i88so815784pfk.2
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2016 10:03:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Dec 2016 10:02:58 -0800
Message-Id: <1481565788-9115-12-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 11/21] i.MX: iomuxv3: Add low-level pad code to headers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add a basic low-level pad configuration function that can be used to
implement early boot pin configuration code as well as shared with
various iomuxv3 and vf610 drivers.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index b8cc9af..3bf457f 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -16,6 +16,8 @@
 #ifndef __MACH_IOMUX_V3_H__
 #define __MACH_IOMUX_V3_H__
 
+#include <io.h>
+
 /*
  *	build IOMUX_PAD structure
  *
@@ -104,6 +106,32 @@ typedef u64 iomux_v3_cfg_t;
 
 #define IOMUX_CONFIG_SION		(0x1 << 4)
 
+#define SHARE_MUX_CONF_REG		0x1
+#define ZERO_OFFSET_VALID		0x2
+
+static inline void iomux_v3_setup_pad(void __iomem *iomux, unsigned int flags,
+				      u32 mux_reg, u32 conf_reg, u32 input_reg,
+				      u32 mux_val, u32 conf_val, u32 input_val)
+{
+	const bool mux_ok   = !!mux_reg || (flags & ZERO_OFFSET_VALID);
+	const bool conf_ok  = !!conf_reg;
+	const bool input_ok = !!input_reg;
+
+	if (flags & SHARE_MUX_CONF_REG) {
+		mux_val |= conf_val;
+	} else {
+		if (conf_ok)
+			writel(conf_val, iomux + conf_reg);
+	}
+
+	if (mux_ok)
+		writel(mux_val, iomux + mux_reg);
+
+	if (input_ok)
+		writel(input_val, iomux + input_reg);
+}
+
+
 /*
  * setups a single pad in the iomuxer
  */
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
