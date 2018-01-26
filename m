Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ef47c-00038F-HJ
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 13:32:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1ef47M-0005M4-F9
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 14:32:32 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 26 Jan 2018 14:32:28 +0100
Message-Id: <20180126133232.4992-1-l.stach@pengutronix.de>
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
Subject: [PATCH v3 1/5] net/e1000: remove one level of indentation
To: barebox@lists.infradead.org

By returning early if the MAC type isn't e1000_igb.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000/eeprom.c | 121 +++++++++++++++++++++++----------------------
 1 file changed, 61 insertions(+), 60 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 748d8afe7922..ddac7de8a0e9 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1551,79 +1551,80 @@ int e1000_eeprom_valid(struct e1000_hw *hw)
  */
 int e1000_register_eeprom(struct e1000_hw *hw)
 {
-	int ret = E1000_SUCCESS;
-
 	struct e1000_eeprom_info *eeprom = &hw->eeprom;
+	uint32_t eecd;
+	int ret;
 
-	if (hw->mac_type == e1000_igb) {
-		uint32_t eecd = e1000_read_reg(hw, E1000_EECD);
+	if (hw->mac_type != e1000_igb)
+		return E1000_SUCCESS;
 
-		hw->eepromcdev.dev = hw->dev;
-		hw->eepromcdev.ops = &e1000_eeprom_ops;
-		hw->eepromcdev.name = xasprintf("e1000-eeprom%d", hw->dev->id);
-		hw->eepromcdev.size = 0x1000;
+	eecd = e1000_read_reg(hw, E1000_EECD);
 
-		ret = devfs_create(&hw->eepromcdev);
-		if (ret < 0)
-			return ret;
+	hw->eepromcdev.dev = hw->dev;
+	hw->eepromcdev.ops = &e1000_eeprom_ops;
+	hw->eepromcdev.name = xasprintf("e1000-eeprom%d", hw->dev->id);
+	hw->eepromcdev.size = 0x1000;
+
+	ret = devfs_create(&hw->eepromcdev);
+	if (ret < 0)
+		return ret;
 
-		if (eecd & E1000_EECD_AUTO_RD) {
-			if (eecd & E1000_EECD_EE_PRES) {
-				if (eecd & E1000_EECD_FLASH_IN_USE) {
-					uint32_t fla = e1000_read_reg(hw, E1000_FLA);
-					dev_info(hw->dev,
-						 "Hardware programmed from flash (%ssecure)\n",
-						 fla & E1000_FLA_LOCKED ? "" : "un");
-				} else {
-					dev_info(hw->dev, "Hardware programmed from iNVM\n");
-				}
+	if (eecd & E1000_EECD_AUTO_RD) {
+		if (eecd & E1000_EECD_EE_PRES) {
+			if (eecd & E1000_EECD_FLASH_IN_USE) {
+				uint32_t fla = e1000_read_reg(hw, E1000_FLA);
+				dev_info(hw->dev,
+					 "Hardware programmed from flash (%ssecure)\n",
+					 fla & E1000_FLA_LOCKED ? "" : "un");
 			} else {
-				dev_warn(hw->dev, "Shadow RAM invalid\n");
+				dev_info(hw->dev, "Hardware programmed from iNVM\n");
 			}
 		} else {
-			/*
-			 * I never saw this case in practise and I'm unsure how
-			 * to handle that. Maybe just wait until the hardware is
-			 * up enough that this bit is set?
-			 */
-			dev_err(hw->dev, "Flash Auto-Read not done\n");
-		}
-
-		if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
-			hw->mtd.parent = hw->dev;
-			hw->mtd.read = e1000_mtd_read;
-			hw->mtd.write = e1000_mtd_write;
-			hw->mtd.erase = e1000_mtd_erase;
-			hw->mtd.lock = e1000_mtd_lock;
-			hw->mtd.unlock = e1000_mtd_unlock;
-			hw->mtd.size = eeprom->word_size * 2;
-			hw->mtd.writesize = 1;
-			hw->mtd.subpage_sft = 0;
-
-			hw->mtd.eraseregions = xzalloc(sizeof(struct mtd_erase_region_info));
-			hw->mtd.erasesize = SZ_4K;
-			hw->mtd.eraseregions[0].erasesize = SZ_4K;
-			hw->mtd.eraseregions[0].numblocks = hw->mtd.size / SZ_4K;
-			hw->mtd.numeraseregions = 1;
-
-			hw->mtd.flags = MTD_CAP_NORFLASH;
-			hw->mtd.type = MTD_NORFLASH;
-
-			ret = add_mtd_device(&hw->mtd, "e1000-nor",
-					     DEVICE_ID_DYNAMIC);
-			if (ret) {
-				devfs_remove(&hw->eepromcdev);
-				return ret;
-			}
+			dev_warn(hw->dev, "Shadow RAM invalid\n");
 		}
+	} else {
+		/*
+		 * I never saw this case in practise and I'm unsure how
+		 * to handle that. Maybe just wait until the hardware is
+		 * up enough that this bit is set?
+		 */
+		dev_err(hw->dev, "Flash Auto-Read not done\n");
+	}
 
-		ret = e1000_register_invm(hw);
-		if (ret < 0) {
-			if (eecd & E1000_EECD_I210_FLASH_DETECTED)
-				del_mtd_device(&hw->mtd);
+	if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
+		hw->mtd.parent = hw->dev;
+		hw->mtd.read = e1000_mtd_read;
+		hw->mtd.write = e1000_mtd_write;
+		hw->mtd.erase = e1000_mtd_erase;
+		hw->mtd.lock = e1000_mtd_lock;
+		hw->mtd.unlock = e1000_mtd_unlock;
+		hw->mtd.size = eeprom->word_size * 2;
+		hw->mtd.writesize = 1;
+		hw->mtd.subpage_sft = 0;
+
+		hw->mtd.eraseregions = xzalloc(sizeof(struct mtd_erase_region_info));
+		hw->mtd.erasesize = SZ_4K;
+		hw->mtd.eraseregions[0].erasesize = SZ_4K;
+		hw->mtd.eraseregions[0].numblocks = hw->mtd.size / SZ_4K;
+		hw->mtd.numeraseregions = 1;
+
+		hw->mtd.flags = MTD_CAP_NORFLASH;
+		hw->mtd.type = MTD_NORFLASH;
+
+		ret = add_mtd_device(&hw->mtd, "e1000-nor",
+				     DEVICE_ID_DYNAMIC);
+		if (ret) {
 			devfs_remove(&hw->eepromcdev);
+			return ret;
 		}
 	}
 
+	ret = e1000_register_invm(hw);
+	if (ret < 0) {
+		if (eecd & E1000_EECD_I210_FLASH_DETECTED)
+			del_mtd_device(&hw->mtd);
+		devfs_remove(&hw->eepromcdev);
+	}
+
 	return ret;
 }
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
