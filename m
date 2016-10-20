Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bx7pY-00007I-Ct
 for barebox@lists.infradead.org; Thu, 20 Oct 2016 07:32:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Oct 2016 09:31:20 +0200
Message-Id: <20161020073122.19295-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] state: pass error code instead of inventing new one
To: Barebox List <barebox@lists.infradead.org>

Both of_find_path() and of_find_path_by_node() return a meaningful
error code, so forward it instead of inventing a new one. Do this
especially for the -EPROBE_DEFER case which currently does not work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 075618e..2be3c8c 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -466,9 +466,10 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 			of_path = partition_node->full_name;
 			ret = of_find_path_by_node(partition_node, &path, 0);
 		}
-		if (!path) {
-			pr_err("state failed to parse path to backend\n");
-			ret = -EINVAL;
+		if (ret) {
+			if (ret != -EPROBE_DEFER)
+				pr_err("state failed to parse path to backend: %s\n",
+				       strerror(-ret));
 			goto out_release_state;
 		}
 	}
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
