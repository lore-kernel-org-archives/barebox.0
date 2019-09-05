Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5niU-0004hO-Ao
 for barebox@lists.infradead.org; Thu, 05 Sep 2019 09:06:12 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  5 Sep 2019 11:06:06 +0200
Message-Id: <20190905090606.17748-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] clk: zynqmp: rename driver specific CLK_MUX_READ_ONLY
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Since commit c7cc27d006cc (clk: mux: Support CLK_MUX_READ_ONLY flag)
Barebox defines the CLK_MUX_READ_ONLY flag like Linux.

The ZynqMP clock driver used the flag before, because this flag is used
to convey this information from the PMU firmware to the Linux driver.
However, the flags of the common clock framework and the flag of the
protocol between PMU firmware and the ZynqMP clock driver should be
handled separately.

Therefore, add a driver specific prefix to the flag definition in the
ZynqMP driver.

Fixes the warning

	drivers/clk/zynqmp/clk-mux-zynqmp.c:18:0: warning: "CLK_MUX_READ_ONLY" redefined
	In file included from drivers/clk/zynqmp/clk-mux-zynqmp.c:13:0:
	include/linux/clk.h:350:0: note: this is the location of the previous definition

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/clk/zynqmp/clk-mux-zynqmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/zynqmp/clk-mux-zynqmp.c b/drivers/clk/zynqmp/clk-mux-zynqmp.c
index 4003267bd1..4c15223980 100644
--- a/drivers/clk/zynqmp/clk-mux-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-mux-zynqmp.c
@@ -15,7 +15,7 @@
 
 #include "clk-zynqmp.h"
 
-#define CLK_MUX_READ_ONLY		BIT(3)
+#define ZYNQMP_CLK_MUX_READ_ONLY		BIT(3)
 
 struct zynqmp_clk_mux {
 	struct clk clk;
@@ -83,7 +83,7 @@ struct clk *zynqmp_clk_register_mux(const char *name,
 	mux->ops = zynqmp_pm_get_eemi_ops();
 
 	mux->clk.name = strdup(name);
-	if (nodes->type_flag & CLK_MUX_READ_ONLY)
+	if (nodes->type_flag & ZYNQMP_CLK_MUX_READ_ONLY)
 		mux->clk.ops = &zynqmp_clk_mux_ro_ops;
 	else
 		mux->clk.ops = &zynqmp_clk_mux_ops;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
