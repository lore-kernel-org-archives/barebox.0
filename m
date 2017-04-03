Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cuzeN-0007YP-IA
 for barebox@lists.infradead.org; Mon, 03 Apr 2017 10:56:02 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Apr 2017 12:55:18 +0200
Message-Id: <20170403105523.16797-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
References: <20170403105523.16797-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/7] clk: socfpga: move driver to subdirectory
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/clk/Makefile                     | 2 +-
 drivers/clk/socfpga/Makefile             | 1 +
 drivers/clk/{socfpga.c => socfpga/clk.c} | 0
 3 files changed, 2 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/socfpga/Makefile
 rename drivers/clk/{socfpga.c => socfpga/clk.c} (100%)

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 5811d28b88ce..2a8c058d84e9 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -8,6 +8,6 @@ obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
 obj-$(CONFIG_ARCH_MXS)		+= mxs/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
-obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga.o
+obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga/
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= clk-ar933x.o
 obj-$(CONFIG_ARCH_IMX)		+= imx/
diff --git a/drivers/clk/socfpga/Makefile b/drivers/clk/socfpga/Makefile
new file mode 100644
index 000000000000..fc216adb744e
--- /dev/null
+++ b/drivers/clk/socfpga/Makefile
@@ -0,0 +1 @@
+obj-y	+= clk.o
diff --git a/drivers/clk/socfpga.c b/drivers/clk/socfpga/clk.c
similarity index 100%
rename from drivers/clk/socfpga.c
rename to drivers/clk/socfpga/clk.c
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
