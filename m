Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([213.84.116.84])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9YUO-0004kn-PJ
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 10:39:41 +0000
From: David Jander <david@protonic.nl>
Date: Wed, 14 Aug 2013 12:38:56 +0200
Message-Id: <1376476736-15172-1-git-send-email-david@protonic.nl>
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
Subject: [PATCH] of: base.c: Use correct device-tree in of_add_initrd()
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, David Jander <david@protonic.nl>

Otherwise only the internal DT is modified, not necessarily the one passed
to the kernel.

Signed-off-by: David Jander <david@protonic.nl>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 34a06c2..ce474be 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1732,7 +1732,7 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
 	struct device_node *chosen;
 	__be32 buf[2];
 
-	chosen = of_find_node_by_path("/chosen");
+	chosen = of_find_node_by_path_from(root, "/chosen");
 	if (!chosen)
 		return -EINVAL;
 
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
