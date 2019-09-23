Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCL49-0000D6-0v
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 09:55:34 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 23 Sep 2019 11:55:26 +0200
Message-Id: <20190923095527.29174-3-o.rempel@pengutronix.de>
In-Reply-To: <20190923095527.29174-1-o.rempel@pengutronix.de>
References: <20190923095527.29174-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 2/3] of: base: don't try to read cells_name property if no
 cells_name set
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

Some device tree node parsed by of_count_phandle_with_args() have no #*-cells
parameter. To make linux device trees work with barebox, we should accept
cells_name set to NULL, so sync this behavior with linux.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/of/base.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 838f530f85..d72c687ef3 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1360,7 +1360,8 @@ static int __of_parse_phandle_with_args(const struct device_node *np,
 					 np->full_name);
 				goto err;
 			}
-			if (of_property_read_u32(node, cells_name, &count)) {
+			if (cells_name &&
+			    of_property_read_u32(node, cells_name, &count)) {
 				pr_err("%s: could not get %s for %s\n",
 					 np->full_name, cells_name,
 					 node->full_name);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
