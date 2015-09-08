Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZFRG-00015n-Vz
 for barebox@lists.infradead.org; Tue, 08 Sep 2015 09:43:43 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZZFQu-0000MS-Cc
 for barebox@lists.infradead.org; Tue, 08 Sep 2015 11:43:20 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  8 Sep 2015 11:43:20 +0200
Message-Id: <1441705400-2905-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] net: e1000: correct function signature of set_ethaddr
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/e1000.c b/drivers/net/e1000.c
index 6ef825928621..a7acfd00acc4 100644
--- a/drivers/net/e1000.c
+++ b/drivers/net/e1000.c
@@ -1106,7 +1106,7 @@ static int e1000_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 	return 0;
 }
 
-static int e1000_set_ethaddr(struct eth_device *edev, unsigned char *adr)
+static int e1000_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
 {
 	struct e1000_hw *hw = edev->priv;
 	uint32_t addr_low;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
