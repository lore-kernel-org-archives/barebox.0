Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtIL-0000NV-Tb
 for barebox@lists.infradead.org; Tue, 07 Apr 2020 18:49:59 +0000
Received: from geraet.fritz.box (muedsl-82-207-223-115.citykom.de
 [82.207.223.115]) (Authenticated sender: ahmad@a3f.at)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 6EF20C0003
 for <barebox@lists.infradead.org>; Tue,  7 Apr 2020 18:49:46 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  7 Apr 2020 20:49:41 +0200
Message-Id: <20200407184941.155842-1-ahmad@a3f.at>
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
Subject: [PATCH] of: overlay: fix uninitialized read of variable
To: barebox@lists.infradead.org

When there are no fragments, we return an uninitialized err.
Initialize err as zero, so it's returned in that case.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/of/overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index a35eddfa084e..b79dbff94dbf 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -162,7 +162,7 @@ int of_overlay_apply_tree(struct device_node *root,
 {
 	struct device_node *resolved;
 	struct device_node *fragment;
-	int err;
+	int err = 0;
 
 	resolved = of_resolve_phandles(root, overlay);
 	if (!resolved)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
