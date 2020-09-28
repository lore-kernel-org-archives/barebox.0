Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQg-0008C1-Vl
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000ZE-OW
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000K2-N0
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:36 +0200
Message-Id: <20200928155041.32649-14-m.felsch@pengutronix.de>
In-Reply-To: <20200928155041.32649-1-m.felsch@pengutronix.de>
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 13/18] of: base: move clock init from of_probe() to
 barebox_register_of()
To: barebox@lists.infradead.org

This is required for the new deep-probe mechanism. Barebox deep-probe
calls of_probe() very late and so clock drivers using the old
CLK_OF_DECLARE_DRIVER() mechanism are added very late. This would break
the deep-probe approach.

Move of_clk_init() and call it right before the the of_probe() should
have no impact because of_clk_init() only depends on an unflatten dtb.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/base.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4f08c45e40..861871b221 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1575,8 +1575,10 @@ void barebox_register_of(struct device_node *root)
 	of_fix_tree(root);
 	of_set_root_node(root);
 
-	if (IS_ENABLED(CONFIG_OFDEVICE))
+	if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		of_clk_init(root, NULL);
 		of_probe();
+	}
 }
 
 void barebox_register_fdt(const void *dtb)
@@ -2198,7 +2200,6 @@ int of_probe(void)
 
 	of_platform_device_create_root(root_node);
 
-	of_clk_init(root_node, NULL);
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
