Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNP8P-0008DA-0t
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 14:25:42 +0000
Received: from mail641.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4CFE9DC12BE
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 16:32:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 16:23:18 +0200
Message-Id: <1350224598-16979-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] designware: fix 100mps phy support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/designware.c |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 63b199f..7eadd92 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -244,6 +244,16 @@ static void dwc_update_linkspeed(struct eth_device *edev)
 		conf &= ~MII_PORTSELECT;
 	else
 		conf |= MII_PORTSELECT;
+
+	if ((edev->phydev->interface != PHY_INTERFACE_MODE_MII) &&
+		(edev->phydev->interface != PHY_INTERFACE_MODE_GMII)) {
+
+		if (edev->phydev->speed == 100)
+			conf |= FES_100;
+		else
+			conf &= ~FES_100;
+	}
+
 	writel(conf, &mac_p->conf);
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
