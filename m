Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YnpLV-0008He-93
 for barebox@lists.infradead.org; Thu, 30 Apr 2015 14:21:46 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 30 Apr 2015 16:21:18 +0200
Message-Id: <1430403678-31458-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] mtd: of_mtd_fixup(): fix given DT not the default one
To: barebox@lists.infradead.org

We have to start searching for the mtd node starting in the given root node not
the defaukt (= barebox internal) one. This means the internal DT is always
fixed up. This leads to booting not fixed up DT when using external DTs.

This patch fixes the problem.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/mtd/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 63b1e4a824fa..0197d2c8a3e1 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -488,7 +488,7 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 	struct device_node *np, *part, *tmp;
 	int ret, i = 0;
 
-	np = of_find_node_by_path(mtd->of_path);
+	np = of_find_node_by_path_from(root, mtd->of_path);
 	if (!np) {
 		dev_err(&mtd->class_dev, "Cannot find nodepath %s, cannot fixup\n",
 				mtd->of_path);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
