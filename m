Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVClE-0007UP-1C
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 11:58:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0007DU-S5
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0000dY-8X
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 21 Oct 2020 13:58:08 +0200
Message-Id: <20201021115813.31645-6-m.felsch@pengutronix.de>
In-Reply-To: <20201021115813.31645-1-m.felsch@pengutronix.de>
References: <20201021115813.31645-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v3 05/10] of: base: move clock init from of_probe() to
 barebox_register_of()
To: barebox@lists.infradead.org

This is required for the new deep-probe mechanism. Barebox deep-probe
calls of_probe() very late and so clock drivers using the old
CLK_OF_DECLARE_DRIVER() mechanism are added very late. This would break
the deep-probe approach.

Move of_clk_init() and call it right before of_probe() should have no
impact because of_clk_init() depends only on an unflatten dtb.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:

v2:
- no changes
v3:
- fix commit message typo
---
 drivers/of/base.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 2a3e34b071..a1903735f4 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1660,8 +1660,10 @@ void barebox_register_of(struct device_node *root)
 	of_fix_tree(root);
 	of_set_root_node(root);
 
-	if (IS_ENABLED(CONFIG_OFDEVICE))
+	if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		of_clk_init(root, NULL);
 		of_probe();
+	}
 }
 
 void barebox_register_fdt(const void *dtb)
@@ -2283,7 +2285,6 @@ int of_probe(void)
 
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
