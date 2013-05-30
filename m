Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0M9-0004Ho-B0
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:45:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:44:51 +0200
Message-Id: <1369910694-20991-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369910694-20991-1-git-send-email-s.hauer@pengutronix.de>
References: <1369910694-20991-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] of: Also print disabled nodes
To: barebox@lists.infradead.org

It's confusing to set the status of a node to disabled and afterwards
it's invisible. Similarly it's confusing to be able to enable invisible
nodes.

Also print disabled nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8383549..9c04c78 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -663,9 +663,6 @@ void of_print_nodes(struct device_node *node, int indent)
 	if (!node)
 		return;
 
-	if (of_node_disabled(node))
-		return;
-
 	for (i = 0; i < indent; i++)
 		printf("\t");
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
