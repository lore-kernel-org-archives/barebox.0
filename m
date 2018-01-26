Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ef47c-00038J-Ih
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 13:32:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1ef47M-0005M4-JH
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 14:32:32 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 26 Jan 2018 14:32:32 +0100
Message-Id: <20180126133232.4992-5-l.stach@pengutronix.de>
In-Reply-To: <20180126133232.4992-1-l.stach@pengutronix.de>
References: <20180126133232.4992-1-l.stach@pengutronix.de>
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
Subject: [PATCH v3 5/5] net/e1000: don't register EERPOM device if the content
 is invalid
To: barebox@lists.infradead.org

If the EEPROM content isn't valid, there is no point in registering the
EEPROM device, as it will reject any read attempt anyway.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000/eeprom.c | 41 ++++++++++++++++++++++++-----------------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index b0408107bbdd..319910103eee 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1556,15 +1556,6 @@ int e1000_register_eeprom(struct e1000_hw *hw)
 
 	eecd = e1000_read_reg(hw, E1000_EECD);
 
-	hw->eepromcdev.dev = hw->dev;
-	hw->eepromcdev.ops = &e1000_eeprom_ops;
-	hw->eepromcdev.name = xasprintf("e1000-eeprom%d", hw->dev->id);
-	hw->eepromcdev.size = 0x1000;
-
-	ret = devfs_create(&hw->eepromcdev);
-	if (ret < 0)
-		return ret;
-
 	if (eecd & E1000_EECD_AUTO_RD) {
 		if (eecd & E1000_EECD_EE_PRES) {
 			if (eecd & E1000_EECD_FLASH_IN_USE) {
@@ -1587,6 +1578,18 @@ int e1000_register_eeprom(struct e1000_hw *hw)
 		dev_err(hw->dev, "Flash Auto-Read not done\n");
 	}
 
+	if (e1000_eeprom_valid(hw)) {
+		hw->eepromcdev.dev = hw->dev;
+		hw->eepromcdev.ops = &e1000_eeprom_ops;
+		hw->eepromcdev.name = xasprintf("e1000-eeprom%d",
+						hw->dev->id);
+		hw->eepromcdev.size = 0x1000;
+
+		ret = devfs_create(&hw->eepromcdev);
+		if (ret < 0)
+			return ret;
+	}
+
 	if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
 		hw->mtd.parent = hw->dev;
 		hw->mtd.read = e1000_mtd_read;
@@ -1609,18 +1612,22 @@ int e1000_register_eeprom(struct e1000_hw *hw)
 
 		ret = add_mtd_device(&hw->mtd, "e1000-nor",
 				     DEVICE_ID_DYNAMIC);
-		if (ret) {
-			devfs_remove(&hw->eepromcdev);
-			return ret;
-		}
+		if (ret)
+			goto out_eeprom;
 	}
 
 	ret = e1000_register_invm(hw);
-	if (ret < 0) {
-		if (eecd & E1000_EECD_I210_FLASH_DETECTED)
-			del_mtd_device(&hw->mtd);
+	if (ret < 0)
+		goto out_mtd;
+
+	return E1000_SUCCESS;
+
+out_mtd:
+	if (eecd & E1000_EECD_I210_FLASH_DETECTED)
+		del_mtd_device(&hw->mtd);
+out_eeprom:
+	if (e1000_eeprom_valid(hw))
 		devfs_remove(&hw->eepromcdev);
-	}
 
 	return ret;
 }
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
