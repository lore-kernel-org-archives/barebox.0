Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUCTD-0002dT-Kh
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:28:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2014 12:27:55 +0200
Message-Id: <1410949675-14010-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: Call edev->recv with correct eth_device
To: barebox@lists.infradead.org

edev->recv has to be called with edev as argument, not eth_current.
This fixes networking when multiple network devices are used and the
current one is switched during runtime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index b830f79..89bddba 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -246,7 +246,7 @@ static int __eth_rx(struct eth_device *edev)
 	if (ret)
 		return ret;
 
-	return edev->recv(eth_current);
+	return edev->recv(edev);
 }
 
 int eth_rx(void)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
