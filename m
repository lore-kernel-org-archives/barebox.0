Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtt8-0005Qs-WA
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNtt7-0003Qj-T4
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:13 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNtt7-0005DF-KR
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:44 +0200
Message-Id: <20200413075204.17544-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 01/21] mfd: syscon: enable specified clocks on
 syscon_base_lookup_by_phandle
To: barebox@lists.infradead.org

Since commit b36b7b72 ("mfd: syscon: clock peripheral if specified in
device tree"), we now clock syscons during access if the device tree nodes
indicate a clocks property. We haven't been doing this for
syscon_base_lookup_by_phandle though, because we did this as part of the
regmap access functions.

The best way forward is probably dropping the syscon_base API altogether
and change users to the regmap API instead, but for now, make the behavior
consistent, by detaching the clock and enabling it permanently, so:

- We are safe from breakage that results from upstream device trees moving
  a clocks property from the consumer to the syscon provider (like in [1])
- Another syscon consumer can't disable the clock for a syscon that's
  also shared via a syscon_base_lookup_by_phandle

I've reviewed the current driver code users of syscon_base_lookup_by_phandle
and all upstream device trees that match against the drivers lack
a clocks property, so this shouldn't alter behavior (for now).

[1]: c9322d4fe ("net: designware: eqos: stm32: drop no longer needed syscfg-clk")

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/regmap-mmio.c | 5 ++++-
 drivers/mfd/syscon.c              | 4 ++++
 include/regmap.h                  | 2 +-
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index 7ca95d6bea79..626c6fa3f387 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -308,9 +308,12 @@ int regmap_mmio_attach_clk(struct regmap *map, struct clk *clk)
 	return 0;
 }
 
-void regmap_mmio_detach_clk(struct regmap *map)
+struct clk *regmap_mmio_detach_clk(struct regmap *map)
 {
 	struct regmap_mmio_context *ctx = map->bus_context;
+	struct clk *clk = ctx->clk;
 
 	ctx->clk = NULL;
+
+	return clk;
 }
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 67e2ebb6c2f5..ba0489bf95a8 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -128,10 +128,14 @@ static struct syscon *node_to_syscon(struct device_node *np)
 static void __iomem *syscon_node_to_base(struct device_node *np)
 {
 	struct syscon *syscon = node_to_syscon(np);
+	struct clk *clk;
 
 	if (IS_ERR(syscon))
 		return ERR_CAST(syscon);
 
+	clk = regmap_mmio_detach_clk(syscon->regmap);
+	clk_enable(clk);
+
 	return syscon->base;
 }
 
diff --git a/include/regmap.h b/include/regmap.h
index 4172c00bd2da..d950971b7d48 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -91,7 +91,7 @@ struct regmap *regmap_init_mmio_clk(struct device_d *dev, const char *clk_id,
 
 
 int regmap_mmio_attach_clk(struct regmap *map, struct clk *clk);
-void regmap_mmio_detach_clk(struct regmap *map);
+struct clk *regmap_mmio_detach_clk(struct regmap *map);
 
 void regmap_exit(struct regmap *map);
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
