Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzjVP-0007YB-O9
 for barebox@lists.infradead.org; Wed, 13 Jan 2021 17:00:27 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 13 Jan 2021 18:00:18 +0100
Message-Id: <20210113170018.8045-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] fixup! of: overlay: do not parse phandles as properties
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

This breaks the eventual fixup of phandles into the linux device tree.
Fix this by also keeping the phandle properties in the DT.
---
 drivers/of/overlay.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 0bebe26e39..d7695726fc 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -60,7 +60,6 @@ static int of_overlay_apply(struct device_node *target,
 
 		if (of_prop_cmp(prop->name, "phandle") == 0) {
 			target->phandle = be32_to_cpup(prop->value);
-			continue;
 		}
 
 		err = of_set_property(target, prop->name, prop->value,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
