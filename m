Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gITrQ-0005EZ-PF
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 07:27:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  2 Nov 2018 08:27:04 +0100
Message-Id: <20181102072704.26807-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] pinctrl: at91: Do not print registration messages
To: Barebox List <barebox@lists.infradead.org>

Turn registration messages into dev_dbg.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-at91.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 0303869774..630f11be76 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -510,7 +510,7 @@ static int at91_pinctrl_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	dev_info(dev, "AT91 pinctrl registered\n");
+	dev_dbg(dev, "AT91 pinctrl registered\n");
 
 	return 0;
 }
@@ -690,7 +690,7 @@ static int at91_gpio_probe(struct device_d *dev)
 		return ret;
 	}
 
-	dev_info(dev, "AT91 gpio driver registered\n");
+	dev_dbg(dev, "AT91 gpio driver registered\n");
 
 	return 0;
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
