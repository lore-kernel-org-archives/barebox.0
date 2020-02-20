Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ifN-0004XJ-0N
 for barebox@lists.infradead.org; Thu, 20 Feb 2020 10:02:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2020 11:01:08 +0100
Message-Id: <20200220100109.18147-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200220100109.18147-1-a.fatoum@pengutronix.de>
References: <20200220100109.18147-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/6] phy: populate existing ->pwr member with phy-supply
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de, rcz@pengutronix.de

barebox already enables/disables the ->pwr regulator at the correct
places, but doesn't assign a value anywhere. Initialize it with the
phy-supply regulator like Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/phy/phy-core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index d1f3c7fde4a2..ad1e8147881b 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -51,6 +51,16 @@ struct phy *phy_create(struct device_d *dev, struct device_node *node,
 	phy->id = id;
 	phy->ops = ops;
 
+	/* phy-supply */
+	phy->pwr = regulator_get(&phy->dev, "phy");
+	if (IS_ERR(phy->pwr)) {
+		ret = PTR_ERR(phy->pwr);
+		if (ret == -EPROBE_DEFER)
+			goto free_ida;
+
+		phy->pwr = NULL;
+	}
+
 	ret = register_device(&phy->dev);
 	if (ret)
 		goto free_ida;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
