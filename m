Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1b3D-0000zz-5k
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:22:59 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b39-0007CH-Ef
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:22:55 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b38-0000aD-0q
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:22:54 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:22:40 +0100
Message-Id: <20210118202240.2184-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] of: overlay: split debug messages for of_overlay_apply_symbols
To: barebox@lists.infradead.org

Overlays don't need to have __symbols__ therefore it shouldn't be
printed on info level. Move it to debug so interested users can print it
still.

I also fixed a minor alignment issue while on it.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index b79dbff94d..dc9711dac5 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -106,7 +106,7 @@ static char *of_overlay_fix_path(struct device_node *root,
 }
 
 static void of_overlay_apply_symbols(struct device_node *root,
-				    struct device_node *overlay)
+				     struct device_node *overlay)
 {
 	const char *old_path;
 	char *new_path;
@@ -117,8 +117,13 @@ static void of_overlay_apply_symbols(struct device_node *root,
 	root_symbols = of_get_child_by_name(root, "__symbols__");
 	overlay_symbols = of_get_child_by_name(overlay, "__symbols__");
 
-	if (!overlay_symbols || !root_symbols) {
-		pr_info("overlay/root doesn't have a __symbols__ node\n");
+	if (!overlay_symbols) {
+		pr_debug("overlay doesn't have a __symbols__ node\n");
+		return;
+	}
+
+	if (!root_symbols) {
+		pr_info("root doesn't have a __symbols__ node\n");
 		return;
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
