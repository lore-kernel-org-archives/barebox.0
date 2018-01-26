Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ef47c-00038H-Jj
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 13:32:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1ef47M-0005M4-Ic
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 14:32:32 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 26 Jan 2018 14:32:30 +0100
Message-Id: <20180126133232.4992-3-l.stach@pengutronix.de>
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
Subject: [PATCH v3 3/5] net/e1000: EEPROM isn't valid if only iNVM is available
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
index ddac7de8a0e9..0a28dfdd8868 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1525,20 +1525,18 @@ int e1000_register_invm(struct e1000_hw *hw)
 
 int e1000_eeprom_valid(struct e1000_hw *hw)
 {
-	uint32_t eecd;
+	uint32_t valid_mask = E1000_EECD_FLASH_IN_USE |
+			      E1000_EECD_AUTO_RD | E1000_EECD_EE_PRES;
 
 	if (hw->mac_type != e1000_igb)
 		return 1;
 
 	/*
-	 * if AUTO_RD or EE_PRES are not set in EECD, the shadow RAM is invalid
-	 * (and in practise seems to contain the contents of iNVM).
+	 * If there is no flash in use or AUTO_RD or EE_PRES are not set in
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
