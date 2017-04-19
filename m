Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0pu7-000507-MR
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 13:44:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Apr 2017 15:43:56 +0200
Message-Id: <20170419134356.10965-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] state: Fix error return value
To: Barebox List <barebox@lists.infradead.org>

When the backend phandle cannot be resolved we jump to the error
return path without initializing ret. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/state/state.c b/common/state/state.c
index 8369aedac6..6db77f2c18 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -577,6 +577,7 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 		partition_node = of_parse_phandle(node, "backend", 0);
 		if (!partition_node) {
 			dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
+			ret = -EINVAL;
 			goto out_release_state;
 		}
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
