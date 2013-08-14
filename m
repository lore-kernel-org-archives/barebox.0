Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9VcW-0007TC-CL
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 07:35:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2013 09:35:28 +0200
Message-Id: <1376465728-2935-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: Fix endless loop in of_add_memory
To: barebox@lists.infradead.org

of_add_memory is stuck in an endless loop when a memory bank with zero
size is passed. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 34a06c2..33dfd5a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1555,8 +1555,11 @@ int of_add_memory(struct device_node *node, bool dump)
 		return -ENXIO;
 
 	while (!of_address_to_resource(node, n, &res)) {
-		if (!resource_size(&res))
+		if (!resource_size(&res)) {
+			n++;
 			continue;
+		}
+
 		of_add_memory_bank(node, dump, n,
 				res.start, resource_size(&res));
 		n++;
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
