Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkCHK-0001Jl-8J
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 10:48:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jun 2012 12:48:46 +0200
Message-Id: <1340880527-6895-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340880527-6895-1-git-send-email-s.hauer@pengutronix.de>
References: <1340880527-6895-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] net: Use dev_name directly
To: barebox@lists.infradead.org

eth_get_byname uses a selfmade dev_name, use dev_name directly instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 2b492ad..e023d65 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -100,11 +100,9 @@ struct eth_device * eth_get_current(void)
 struct eth_device *eth_get_byname(char *ethname)
 {
 	struct eth_device *edev;
-	char name[MAX_DRIVER_NAME];
 
 	list_for_each_entry(edev, &netdev_list, list) {
-		sprintf(name, "%s%d", edev->dev.name, edev->dev.id);
-		if (!strcmp(ethname, name))
+		if (!strcmp(ethname, dev_name(&edev->dev)))
 			return edev;
 	}
 	return NULL;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
