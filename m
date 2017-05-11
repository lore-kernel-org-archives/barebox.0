Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8jB7-0003oS-KS
 for barebox@lists.infradead.org; Thu, 11 May 2017 08:10:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 May 2017 10:10:03 +0200
Message-Id: <20170511081003.18988-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] state: remove unused variables
To: Barebox List <barebox@lists.infradead.org>

There's no need to check for the existence of the backend property as
this is done implicitly later anyway. With this check removed of_path
is only assigned, but never used. Remove the unused code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index b4a634fa99..878fd1b0fb 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -570,10 +570,8 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 {
 	struct state *state;
 	int ret = 0;
-	int len;
 	const char *backend_type;
 	const char *storage_type;
-	const char *of_path;
 	const char *alias;
 	uint32_t stridesize;
 
@@ -587,12 +585,6 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 	if (IS_ERR(state))
 		return state;
 
-	of_path = of_get_property(node, "backend", &len);
-	if (!of_path) {
-		ret = -ENODEV;
-		goto out_release_state;
-	}
-
 	if (!path) {
 		struct device_node *partition_node;
 
@@ -603,7 +595,6 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 			goto out_release_state;
 		}
 
-		of_path = partition_node->full_name;
 		ret = of_find_path_by_node(partition_node, &path, 0);
 		if (ret) {
 			if (ret != -EPROBE_DEFER)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
