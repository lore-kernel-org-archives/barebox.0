Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPFBB-0003Sg-Ma
 for barebox@lists.infradead.org; Sat, 02 Jun 2018 22:39:23 +0000
Received: by mail-wm0-x244.google.com with SMTP id r15-v6so8953133wmc.1
 for <barebox@lists.infradead.org>; Sat, 02 Jun 2018 15:39:10 -0700 (PDT)
From: Pascal Vizeli <pvizeli@syshack.ch>
Date: Sat,  2 Jun 2018 22:39:04 +0000
Message-Id: <20180602223904.29018-1-pvizeli@syshack.ch>
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
Subject: [PATCH 1/1] common: state: allow to overlay state backend
To: barebox@lists.infradead.org
Cc: Pascal Vizeli <pvizeli@syshack.ch>

This allow to use overlay for state backends. I.e. on raspberry you need
use barebox with SDHCI (slow) and after linux boot it will use SDHOST driver.
But the problem now is, that the state is on SDHCI and dt-utils need it on
SDHOST. Actual it is not possible to overwrite this.

Signed-off-by: Pascal Vizeli <pvizeli@syshack.ch>
---
 common/state/state.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 25d950211..e6259043f 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -494,8 +494,17 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	}
 
 	/* backend phandle */
-	backend_node = of_find_node_by_reproducible_name(root,
-						state->backend_reproducible_name);
+	if (node) {
+		ret = of_property_read_u32(node, "backend", &phandle);
+		if (ret)
+			goto out;
+
+		backend_node = of_find_node_by_phandle_from(phandle, root);
+	} else {
+		backend_node = of_find_node_by_reproducible_name(root,
+					state->backend_reproducible_name);
+	}
+
 	if (!backend_node) {
 		ret = -ENODEV;
 		goto out;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
