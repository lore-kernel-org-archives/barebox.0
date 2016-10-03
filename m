Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qr-0008GX-Sk
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:33 +0000
Received: by mail-pa0-x242.google.com with SMTP id hh10so1403594pac.0
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:47 -0700
Message-Id: <1475505657-898-11-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/20] i.MX: clk: Port imx_check_clocks() and
 imx_obtain_fixed_clock()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port imx_check_clocks() and imx_obtain_fixed_clock() from Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/clk.h  |  4 ++++
 drivers/clk/Makefile     |  1 +
 drivers/clk/imx/Makefile |  1 +
 drivers/clk/imx/clk.c    | 49 ++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 55 insertions(+)
 create mode 100644 drivers/clk/imx/Makefile
 create mode 100644 drivers/clk/imx/clk.c

diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index 35e480f..f96e5d2 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -109,4 +109,8 @@ static inline struct clk *imx_clk_busy_mux(const char *name, void __iomem *reg,
 struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u32 exclusive_mask);
 
+void imx_check_clocks(struct clk *clks[], unsigned int count);
+struct clk * __init imx_obtain_fixed_clock(const char *name, unsigned long rate);
+
+
 #endif /* __IMX_CLK_H */
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 0fe8f1e..6dc82ea 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
 obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga.o
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= clk-ar933x.o
+obj-$(CONFIG_COMMON_CLK)	+= imx/
diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
new file mode 100644
index 0000000..0303c0b
--- /dev/null
+++ b/drivers/clk/imx/Makefile
@@ -0,0 +1 @@
+obj-y += clk.o
diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
new file mode 100644
index 0000000..0357048
--- /dev/null
+++ b/drivers/clk/imx/clk.c
@@ -0,0 +1,49 @@
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <of.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+
+#include "../../../arch/arm/mach-imx/clk.h"
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
+static struct clk * __init imx_obtain_fixed_clock_from_dt(const char *name)
+{
+	struct of_phandle_args phandle;
+	struct clk *clk = ERR_PTR(-ENODEV);
+	char *path;
+
+	path = basprintf("/clocks/%s", name);
+	if (!path)
+		return ERR_PTR(-ENOMEM);
+
+	phandle.np = of_find_node_by_path(path);
+	kfree(path);
+
+	if (phandle.np)
+		clk = of_clk_get_from_provider(&phandle);
+
+	return clk;
+}
+
+struct clk * __init imx_obtain_fixed_clock(const char *name, unsigned long rate)
+{
+	struct clk *clk;
+
+	clk = imx_obtain_fixed_clock_from_dt(name);
+	if (IS_ERR(clk))
+		clk = clk_fixed(name, rate);
+	return clk;
+}
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
