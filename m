Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvPG-00056m-LY
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:34:04 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 2CB3318B425E
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:32 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:10 +0200
Message-Id: <1401827717-6420-24-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 23/30] clk: tegra: allow variable sized muxes
To: barebox@lists.infradead.org

Tegra124 extended the mux by 1bit to allow for
more PLL sources.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-periph.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index e4e5412..fd1e2ed 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -21,6 +21,7 @@
 #include <malloc.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/log2.h>
 
 #include "clk.h"
 
@@ -113,6 +114,7 @@ static struct clk *_tegra_clk_register_periph(const char *name,
 {
 	struct tegra_clk_periph *periph;
 	int ret, gate_offs, rst_offs;
+	u8 mux_size = order_base_2(num_parents);
 
 	periph = kzalloc(sizeof(*periph), GFP_KERNEL);
 	if (!periph) {
@@ -121,8 +123,8 @@ static struct clk *_tegra_clk_register_periph(const char *name,
 		goto out_periph;
 	}
 
-	periph->mux = clk_mux_alloc(NULL, clk_base + reg_offset, 30, 2,
-				    parent_names, num_parents, 0);
+	periph->mux = clk_mux_alloc(NULL, clk_base + reg_offset, 32 - mux_size,
+				    mux_size, parent_names, num_parents, 0);
 	if (!periph->mux)
 		goto out_mux;
 
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
