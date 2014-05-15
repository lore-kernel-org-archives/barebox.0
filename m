Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpDb-0000rS-3S
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:32:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:32:15 +0200
Message-Id: <1400135535-29312-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400135535-29312-1-git-send-email-s.hauer@pengutronix.de>
References: <1400135535-29312-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] net: phy: Print ethernet device in the link information
To: barebox@lists.infradead.org

When multiple ethernet devices are in use it's interesting to know
which one has link.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 879939d..5975637 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -49,7 +49,7 @@ int phy_update_status(struct phy_device *dev)
 		dev->adjust_link(edev);
 
 	if (dev->link)
-		pr_info("%dMbps %s duplex link detected\n", dev->speed,
+		dev_info(&edev->dev, "%dMbps %s duplex link detected\n", dev->speed,
 			dev->duplex ? "full" : "half");
 
 	return 0;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
