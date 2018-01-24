Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eeJI5-0000I8-3O
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 11:32:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1eeJHt-0004yl-18
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 12:32:17 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 24 Jan 2018 12:32:15 +0100
Message-Id: <20180124113216.16950-2-l.stach@pengutronix.de>
In-Reply-To: <20180124113216.16950-1-l.stach@pengutronix.de>
References: <20180124113216.16950-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] net/e1000: mark EEPROM as invalid if external flash is
 absent
To: barebox@lists.infradead.org

There is no point in registering the emulated EEPROM device if only the
iNVM is available with no external flash attached to the i210, as in
practice it's only shadowing the iNVM.

When the EEPROM is populated from iNVM, the signature is not valid, which
causes other parts of the driver to fall over. To fix this just ignore
the EEPROM in that case.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000/eeprom.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index ee4f768bb4cd..7b92aa0fb715 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1525,20 +1525,18 @@ int e1000_register_invm(struct e1000_hw *hw)
 
 int e1000_eeprom_valid(struct e1000_hw *hw)
 {
-	uint32_t eecd;
+	uint32_t valid_mask = E1000_EECD_I210_FLASH_DETECTED |
+			      E1000_EECD_AUTO_RD | E1000_EECD_EE_PRES;
 
 	if (hw->mac_type != e1000_igb)
 		return 1;
 
 	/*
-	 * if AUTO_RD or EE_PRES are not set in EECD, the shadow RAM is invalid
-	 * (and in practise seems to contain the contents of iNVM).
+	 * If there is no flash detected or AUTO_RD or EE_PRES are not set in
+	 * EECD, the shadow RAM is invalid (and in practise seems to contain
+	 * the contents of iNVM).
 	 */
-	eecd = e1000_read_reg(hw, E1000_EECD);
-	if (!(eecd & E1000_EECD_AUTO_RD))
-		return 0;
-
-	if (!(eecd & E1000_EECD_EE_PRES))
+	if ((e1000_read_reg(hw, E1000_EECD) & valid_mask) != valid_mask)
 		return 0;
 
 	return 1;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
