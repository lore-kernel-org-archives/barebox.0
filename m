Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43mG-0002ep-B8
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:23:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:23:03 +0100
Message-Id: <20200218142305.26992-5-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/6] mfd: syscon: use regmap-mmio as backend
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux supports a clocks property in syscon nodes to indicate that access
should only occur with the clock active. The new regmap-mmio supports
this, thus port syscon over, so it can make use of it in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/syscon.c | 27 ++-------------------------
 1 file changed, 2 insertions(+), 25 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 809941937857..adc263c6e6da 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -31,27 +31,6 @@ struct syscon {
 	struct regmap *regmap;
 };
 
-static int syscon_reg_write(void *context, unsigned int reg,
-			    unsigned int val)
-{
-	struct syscon *syscon = context;
-	writel(val, syscon->base + reg);
-	return 0;
-}
-
-static int syscon_reg_read(void *context, unsigned int reg,
-			   unsigned int *val)
-{
-	struct syscon *syscon = context;
-	*val = readl(syscon->base + reg);
-	return 0;
-}
-
-static const struct regmap_bus syscon_regmap_bus = {
-	.reg_write = syscon_reg_write,
-	.reg_read  = syscon_reg_read,
-};
-
 static const struct regmap_config syscon_regmap_config = {
 	.reg_bits = 32,
 	.val_bits = 32,
@@ -79,10 +58,8 @@ static struct syscon *of_syscon_register(struct device_node *np)
 
 	list_add_tail(&syscon->list, &syscon_list);
 
-	syscon->regmap = regmap_init(NULL,
-				     &syscon_regmap_bus,
-				     syscon,
-				     &syscon_regmap_config);
+	syscon->regmap = of_regmap_init_mmio_clk(np, NULL, syscon->base,
+					     &syscon_regmap_config);
 	return syscon;
 
 err_map:
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
