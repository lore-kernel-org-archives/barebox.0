Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNxTB-00059E-Rf
 for barebox@lists.infradead.org; Fri, 15 Jul 2016 07:23:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jul 2016 09:23:06 +0200
Message-Id: <1468567389-28169-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1468567389-28169-1-git-send-email-s.hauer@pengutronix.de>
References: <1468567389-28169-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] net: eth: open correct edev in eth_check_open
To: Barebox List <barebox@lists.infradead.org>

eth_check_open gets the network device to check as parameter, so
use it rather than using eth_current. Currently both are the same,
so this currently does not fix anything.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index fb3f22f..6bec154 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -228,7 +228,7 @@ static int eth_check_open(struct eth_device *edev)
 	if (edev->active)
 		return 0;
 
-	ret = edev->open(eth_current);
+	ret = edev->open(edev);
 	if (ret)
 		return ret;
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
