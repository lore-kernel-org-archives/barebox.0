Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyFHi-0004n9-A8
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 10:14:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Apr 2017 12:13:36 +0200
Message-Id: <20170412101336.32256-2-s.hauer@pengutronix.de>
In-Reply-To: <20170412101336.32256-1-s.hauer@pengutronix.de>
References: <20170412101336.32256-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] of: of_net: use a loop
To: Barebox List <barebox@lists.infradead.org>

iterate over the different property names rather than having
the same code three times.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_net.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index 086573fc1a..9b54e44674 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -77,19 +77,15 @@ EXPORT_SYMBOL_GPL(of_get_phy_mode);
 */
 const void *of_get_mac_address(struct device_node *np)
 {
-	struct property *pp;
+	const void *p;
+	int len, i;
+	const char *str[] = { "mac-address", "local-mac-address", "address" };
 
-	pp = of_find_property(np, "mac-address", NULL);
-	if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
-		return pp->value;
-
-	pp = of_find_property(np, "local-mac-address", NULL);
-	if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
-		return pp->value;
-
-	pp = of_find_property(np, "address", NULL);
-	if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
-		return pp->value;
+	for (i = 0; i < ARRAY_SIZE(str); i++) {
+		p = of_get_property(np, str[i], &len);
+		if (p && (len == 6) && is_valid_ether_addr(p))
+			return p;
+	}
 
 	return NULL;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
