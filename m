Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43mG-0002eq-Dx
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:23:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:23:04 +0100
Message-Id: <20200218142305.26992-6-a.fatoum@pengutronix.de>
In-Reply-To: <20200218142305.26992-1-a.fatoum@pengutronix.de>
References: <20200218142305.26992-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/6] mfd: syscon: clock peripheral if specified in device tree
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux supports a clocks property in syscon nodes to indicate that access
should only occur with the clock active.

Attach the clock to the regmap if found.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/syscon.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index adc263c6e6da..f1e6559d71fa 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -19,6 +19,7 @@
 #include <xfuncs.h>
 #include <of_address.h>
 #include <linux/err.h>
+#include <linux/clk.h>
 
 #include <mfd/syscon.h>
 
@@ -37,7 +38,7 @@ static const struct regmap_config syscon_regmap_config = {
 	.reg_stride = 4,
 };
 
-static struct syscon *of_syscon_register(struct device_node *np)
+static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
 {
 	int ret;
 	struct syscon *syscon;
@@ -60,6 +61,21 @@ static struct syscon *of_syscon_register(struct device_node *np)
 
 	syscon->regmap = of_regmap_init_mmio_clk(np, NULL, syscon->base,
 					     &syscon_regmap_config);
+
+	if (check_clk) {
+		struct clk *clk = of_clk_get(np, 0);
+		if (IS_ERR(clk)) {
+			ret = PTR_ERR(clk);
+			/* clock is optional */
+			if (ret != -ENOENT)
+				goto err_map;
+		} else {
+			ret = regmap_mmio_attach_clk(syscon->regmap, clk);
+			if (ret)
+				goto err_map;
+		}
+	}
+
 	return syscon;
 
 err_map:
@@ -78,7 +94,7 @@ static struct syscon *node_to_syscon(struct device_node *np)
 		}
 
 	if (!syscon)
-		syscon = of_syscon_register(np);
+		syscon = of_syscon_register(np, true);
 
 	if (IS_ERR(syscon))
 		return ERR_CAST(syscon);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
