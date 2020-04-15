Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOe5G-0004nb-4T
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 09:11:51 +0000
Received: from geraet.fritz.box (muedsl-82-207-215-039.citykom.de
 [82.207.215.39]) (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id CB95720008
 for <barebox@lists.infradead.org>; Wed, 15 Apr 2020 09:11:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 15 Apr 2020 11:11:42 +0200
Message-Id: <20200415091142.1639141-1-ahmad@a3f.at>
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
Subject: [PATCH v2] mfd: syscon: enable specified clocks on
 syscon_base_lookup_by_phandle
To: barebox@lists.infradead.org

Since commit b36b7b72 ("mfd: syscon: clock peripheral if specified in
device tree"), we now clock syscons during access if the device tree nodes
indicate a clocks property. We haven't been doing this for
syscon_base_lookup_by_phandle though, because we did this as part of the
regmap access functions, but that function returns a direct pointer to
the MMIO region.

The best way forward is probably dropping the syscon_base API altogether
and change users to the regmap API instead, but for now, make the behavior
consistent by enabling it permanently.

This makes use safe from breakage that results from upstream device trees moving
a clock from the consumer to the syscon provider (like in [1])

I've reviewed the current driver code users of syscon_base_lookup_by_phandle
and all upstream device trees that match against the drivers lack
a clocks property, so this shouldn't alter behavior (for now).

[1]: c9322d4fe ("net: designware: eqos: stm32: drop no longer needed syscfg-clk")

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - as clks are reference counted, we don't need to detach the regmap
    clock. This makes the patch smaller and easier to follow.
---
 drivers/mfd/syscon.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 67e2ebb6c2f5..f867c078e7ba 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -128,10 +128,20 @@ static struct syscon *node_to_syscon(struct device_node *np)
 static void __iomem *syscon_node_to_base(struct device_node *np)
 {
 	struct syscon *syscon = node_to_syscon(np);
+	struct clk *clk;
 
 	if (IS_ERR(syscon))
 		return ERR_CAST(syscon);
 
+	/* Returning the direct pointer here side steps the regmap
+	 * and any specified clock wouldn't be enabled on access.
+	 * Deal with this by enabling the clock permanently if any
+	 * syscon_node_to_base users exist.
+	 */
+	clk = of_clk_get(np, 0);
+	if (!IS_ERR(clk))
+		clk_enable(clk);
+
 	return syscon->base;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
