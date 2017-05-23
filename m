Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD4XE-0005Yb-MM
 for barebox@lists.infradead.org; Tue, 23 May 2017 07:47:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 May 2017 09:46:52 +0200
Message-Id: <20170523074653.32180-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] state: do not complain about missing backend-storage-type
To: Barebox List <barebox@lists.infradead.org>

backend-storage-type is irrelevant for mtd devices, so do not
complain about this option missing. The mtd backend will print
messages if necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 878fd1b0fb..121ba0c6d3 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -571,7 +571,7 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 	struct state *state;
 	int ret = 0;
 	const char *backend_type;
-	const char *storage_type;
+	const char *storage_type = NULL;
 	const char *alias;
 	uint32_t stridesize;
 
@@ -616,12 +616,7 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 		stridesize = 0;
 	}
 
-	ret = of_property_read_string(node, "backend-storage-type",
-				      &storage_type);
-	if (ret) {
-		storage_type = NULL;
-		dev_info(&state->dev, "No backend-storage-type found, using default.\n");
-	}
+	of_property_read_string(node, "backend-storage-type", &storage_type);
 
 	ret = state_format_init(state, backend_type, node, alias);
 	if (ret)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
