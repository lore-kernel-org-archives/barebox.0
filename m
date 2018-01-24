Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eeJI5-0000I7-3P
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 11:32:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1eeJHt-0004yl-0m
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 12:32:17 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 24 Jan 2018 12:32:14 +0100
Message-Id: <20180124113216.16950-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] net/e1000: use correct bit to check for flash presence
To: barebox@lists.infradead.org

This code path was checking the same bit (E1000_EECD_EE_PRES) twice,
which doesn't look right. Use the correct bit to check for flash
presence.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000/e1000.h  | 1 -
 drivers/net/e1000/eeprom.c | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 1558b3c7f5c7..0c83a47e9aab 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -794,7 +794,6 @@ struct e1000_eeprom_info {
 #ifndef E1000_EEPROM_GRANT_ATTEMPTS
 #define E1000_EEPROM_GRANT_ATTEMPTS 1000 /* EEPROM # attempts to gain grant */
 #endif
-#define E1000_EECD_FLASH_IN_USE     0x00000100  /* Flash is present with a valid signature */
 #define E1000_EECD_EE_PRES          0x00000100
 #define E1000_EECD_AUTO_RD          0x00000200  /* EEPROM Auto Read done */
 #define E1000_EECD_SIZE_EX_MASK     0x00007800  /* EEprom Size */
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 748d8afe7922..ee4f768bb4cd 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1569,7 +1569,7 @@ int e1000_register_eeprom(struct e1000_hw *hw)
 
 		if (eecd & E1000_EECD_AUTO_RD) {
 			if (eecd & E1000_EECD_EE_PRES) {
-				if (eecd & E1000_EECD_FLASH_IN_USE) {
+				if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
 					uint32_t fla = e1000_read_reg(hw, E1000_FLA);
 					dev_info(hw->dev,
 						 "Hardware programmed from flash (%ssecure)\n",
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
