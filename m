Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnkfn-0002P1-QS
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 13:08:17 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Thu,  9 Aug 2018 15:07:40 +0200
Message-Id: <20180809130740.14125-1-r.hieber@pengutronix.de>
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
Subject: [PATCH] FIT: be more verbose when RSA signature check fails
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Tell the user what device tree node we're looking for.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 common/image-fit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 6cbf23250d..72b5bbf179 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -291,7 +291,7 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 	key_node = of_find_node_by_path(key_path);
 	free(key_path);
 	if (!key_node) {
-		pr_info("failed to find key node\n");
+		pr_info("failed to find key node %s\n", key_path);
 		return -ENOENT;
 	}
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
