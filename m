Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJGoA-000288-68
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 09:34:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cJGnk-00039l-SV
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 10:33:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 20 Dec 2016 10:33:34 +0100
Message-Id: <20161220093340.14404-3-l.stach@pengutronix.de>
In-Reply-To: <20161220093340.14404-1-l.stach@pengutronix.de>
References: <20161220093340.14404-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/9] net: e1000: don't try to register eeprom if MTD support
 is missing
To: barebox@lists.infradead.org

EEPROM support is an optional feature and the driver should work
just fine without it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000/main.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 6f9dddaf232a..00d18adff111 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3588,10 +3588,13 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		return -EINVAL;
 	}
 
-	ret = e1000_register_eeprom(hw);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "failed to register EEPROM devices!\n");
-		return ret;
+	if (IS_ENABLED(CONFIG_MTD)) {
+		ret = e1000_register_eeprom(hw);
+		if (ret < 0) {
+			dev_err(&pdev->dev,
+			        "failed to register EEPROM devices!\n");
+			return ret;
+		}
 	}
 
 	if (e1000_validate_eeprom_checksum(hw))
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
