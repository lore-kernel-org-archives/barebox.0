Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6EWx-0007yt-NO
 for barebox@lists.infradead.org; Thu, 04 May 2017 11:02:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 May 2017 13:02:17 +0200
Message-Id: <20170504110219.17929-3-s.hauer@pengutronix.de>
In-Reply-To: <20170504110219.17929-1-s.hauer@pengutronix.de>
References: <20170504110219.17929-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] state: warn when a state node will be overwritten
To: Barebox List <barebox@lists.infradead.org>

People do not seem to know that a state node in the kernel
device tree will be overwritten by barebox. Print a warning
when this happens so that people can get an idea why changes
in the kernel device tree state node do not have any effect.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/common/state/state.c b/common/state/state.c
index 6db77f2c18..c3c8b768c7 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -416,6 +416,15 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	if (node) {
 		/* replace existing node - it will be deleted later */
 		parent = node->parent;
+
+		/*
+		 * barebox replaces the state node in the device tree it starts the
+		 * kernel with, so a state node that already exists in the device tree
+		 * will be overwritten. Warn about this so people do not wonder why
+		 * changes in the kernels state node do not have any effect.
+		 */
+		if (root != of_get_root_node())
+			dev_warn(&state->dev, "Warning: Kernel devicetree contains state node, replacing it\n");
 	} else {
 		char *of_path, *c;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
