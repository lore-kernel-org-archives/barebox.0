Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNb5Q-0004J4-VB
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 10:10:54 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri, 16 Nov 2018 11:10:32 +0100
Message-Id: <20181116101032.3358-5-linux@rempel-privat.de>
In-Reply-To: <20181116101032.3358-1-linux@rempel-privat.de>
References: <20181116101032.3358-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 4/4] of: partition: set ret for error cases
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

looks like it was forgotten.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/of/partition.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index aa6e601b7..2848b9636 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -186,11 +186,11 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 			return ret;
 	}
 
-	of_property_write_u32(partnode, "#size-cells", n_cells);
+	ret = of_property_write_u32(partnode, "#size-cells", n_cells);
 	if (ret)
 		return ret;
 
-	of_property_write_u32(partnode, "#address-cells", n_cells);
+	ret = of_property_write_u32(partnode, "#address-cells", n_cells);
 	if (ret)
 		return ret;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
