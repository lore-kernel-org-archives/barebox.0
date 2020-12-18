Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqC8G-0001MI-TK
 for barebox@lists.infradead.org; Fri, 18 Dec 2020 09:33:05 +0000
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1kqC8E-0001CD-6f
 for barebox@lists.infradead.org; Fri, 18 Dec 2020 10:33:02 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1kqC8A-007Hm4-Vy
 for barebox@lists.infradead.org; Fri, 18 Dec 2020 10:32:58 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 18 Dec 2020 10:32:58 +0100
Message-Id: <20201218093258.1736578-1-m.tretter@pengutronix.de>
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
Subject: [PATCH] overlay: return error if target for firmware is missing
To: barebox@lists.infradead.org

If the overlay references a firmware, the overlay must not be applied if
the firmware cannot be loaded. However, if the target node of the
firmware (i.e., the firmware manager) was not found, the fragment was
ignored and the firmware not loaded, but the overlay applied anyway.

If the overlay does not reference a firmware, of_process_overlay must
succeed even if the target node cannot be found, because the overlay
might still apply to the Linux device tree.

Always call the process function on a fragment, even if the target node
was not found. This allows the caller to decide, if a missing target is
fatal or if the overlay can be applied anyway.

Fix load_firmware to fail if a overlay references a firmware and the
target is NULL. Also, rephrase and clarify the comment that documents
this behavior.

Reported-by: Matthias Fend <matthias.fend@wolfvision.net>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/of/of_firmware.c | 11 ++++++++---
 drivers/of/overlay.c     |  5 +++--
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
index 0135631fb899..096f84572e63 100644
--- a/drivers/of/of_firmware.c
+++ b/drivers/of/of_firmware.c
@@ -43,6 +43,9 @@ static int load_firmware(struct device_node *target,
 	else if (err)
 		return -EINVAL;
 
+	if (!target)
+		return -EINVAL;
+
 	mgr = of_node_get_mgr(target);
 	if (!mgr)
 		return -EINVAL;
@@ -69,11 +72,13 @@ int of_firmware_load_overlay(struct device_node *overlay, const char *path)
 	struct device_node *ovl;
 
 	root = of_get_root_node();
+	resolved = of_resolve_phandles(root, overlay);
 	/*
-	 * If we cannot resolve the symbols in the overlay, ensure that the
-	 * overlay does depend on firmware to be loaded.
+	 * If the overlay cannot be resolved, use the load_firmware callback
+	 * with the unresolved overlay to verify that the overlay does not
+	 * depend on a firmware to be loaded. If a required firmware cannot be
+	 * loaded, the overlay must not be applied.
 	 */
-	resolved = of_resolve_phandles(root, overlay);
 	ovl = resolved ? resolved : overlay;
 
 	err = of_process_overlay(root, ovl,
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index b79dbff94dbf..eb47378258b6 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -215,12 +215,13 @@ int of_process_overlay(struct device_node *root,
 
 		target = find_target(root, fragment);
 		if (!target)
-			continue;
+			pr_debug("cannot find target for fragment",
+				 fragment->name);
 
 		err = process(target, ovl, data);
 		if (err) {
 			pr_warn("failed to process overlay for %s\n",
-				target->name);
+				target ? target->name : "unknown");
 			break;
 		}
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
