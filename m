Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VWq-0005Fd-HF
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:16 +0000
Received: by mail-pf0-x242.google.com with SMTP id n85so783066pfi.3
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:14:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:14:01 -0800
Message-Id: <1478708056-7875-14-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 13/28] i.MX: clk: Port imx_check_clocks()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port imx_check_clocks() from Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/Makefile |  3 ++-
 drivers/clk/imx/clk.c    | 21 +++++++++++++++++++++
 drivers/clk/imx/clk.h    |  3 +++
 3 files changed, 26 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/imx/clk.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 893a1a5..06af530 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -4,7 +4,8 @@ obj-$(CONFIG_COMMON_CLK) +=	\
 	clk-pllv3.o		\
 	clk-pfd.o		\
 	clk-gate2.o		\
-	clk-gate-exclusive.o
+	clk-gate-exclusive.o	\
+	clk.o
 
 obj-$(CONFIG_ARCH_IMX1)   += clk-imx1.o
 obj-$(CONFIG_ARCH_IMX25)  += clk-imx25.o
diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
new file mode 100644
index 0000000..7488dfc
--- /dev/null
+++ b/drivers/clk/imx/clk.c
@@ -0,0 +1,21 @@
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <of.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+void __init imx_check_clocks(struct clk *clks[], unsigned int count)
+{
+	unsigned i;
+
+	for (i = 0; i < count; i++)
+		if (IS_ERR(clks[i]))
+			pr_err("i.MX clk %u: register failed with %ld\n",
+			       i, PTR_ERR(clks[i]));
+}
+
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 35e480f..fd43fc2 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -109,4 +109,7 @@ static inline struct clk *imx_clk_busy_mux(const char *name, void __iomem *reg,
 struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u32 exclusive_mask);
 
+void imx_check_clocks(struct clk *clks[], unsigned int count);
+
+
 #endif /* __IMX_CLK_H */
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
