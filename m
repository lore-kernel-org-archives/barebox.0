Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2zvm-00021Y-As
 for barebox@lists.infradead.org; Sat, 27 Jul 2013 08:32:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 27 Jul 2013 10:32:19 +0200
Message-Id: <1374913941-17529-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374913941-17529-1-git-send-email-s.hauer@pengutronix.de>
References: <1374913941-17529-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] of: net: Use correct devicetree in eth_of_fixup
To: barebox@lists.infradead.org

eth_of_fixup() is passed a devicetree, so use this one instead
of the internal devicetree. This makes sure it also works when
the tree to fixup is not the internal one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index 09b3bd5..e94689a 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -296,7 +296,7 @@ static int eth_of_fixup(struct device_node *root)
 			continue;
 		}
 
-		node = of_find_node_by_path(edev->nodepath);
+		node = of_find_node_by_path_from(root, edev->nodepath);
 		if (!node) {
 			dev_dbg(&edev->dev, "%s: fixup node %s not found\n",
 					__func__, edev->nodepath);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
