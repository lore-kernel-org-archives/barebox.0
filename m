Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXL2S-0001g5-Am
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:04:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id z23so614010plo.0
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:03:55 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:03:36 -0800
Message-Id: <20181213070336.26837-4-andrew.smirnov@gmail.com>
In-Reply-To: <20181213070336.26837-1-andrew.smirnov@gmail.com>
References: <20181213070336.26837-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/4] net/e1000: Only read EEPROM_INIT_CONTROL2_REG if it is
 needed
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

E1000_ich8lan, e1000_82573, e1000_82574 and e1000_igb
devices (hw->mac_type) do not use data read from
EEPROM_INIT_CONTROL2_REG in e1000_setup_link(), so there's no reason
for it to bail out when EEPROM read fails. An examlpe use-case would
be a i210 adapter initialized from iNVM with no valid EEPROM attached.

Change the code to only call e1000_read_eeprom() for devices that do
need it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 87ee46094..0ef8fd623 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -832,21 +832,6 @@ static int e1000_setup_link(struct e1000_hw *hw)
 	if (e1000_check_phy_reset_block(hw))
 		return E1000_SUCCESS;
 
-	/* Read and store word 0x0F of the EEPROM. This word contains bits
-	 * that determine the hardware's default PAUSE (flow control) mode,
-	 * a bit that determines whether the HW defaults to enabling or
-	 * disabling auto-negotiation, and the direction of the
-	 * SW defined pins. If there is no SW over-ride of the flow
-	 * control setting, then the variable hw->fc will
-	 * be initialized based on a value in the EEPROM.
-	 */
-	ret_val = e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1,
-				    &eeprom_data);
-	if (ret_val < 0) {
-		dev_err(hw->dev, "EEPROM Read Error\n");
-		return ret_val;
-	}
-
 	switch (hw->mac_type) {
 	case e1000_ich8lan:
 	case e1000_82573:
@@ -855,6 +840,22 @@ static int e1000_setup_link(struct e1000_hw *hw)
 		hw->fc = e1000_fc_full;
 		break;
 	default:
+		/* Read and store word 0x0F of the EEPROM. This word
+		 * contains bits that determine the hardware's default
+		 * PAUSE (flow control) mode, a bit that determines
+		 * whether the HW defaults to enabling or disabling
+		 * auto-negotiation, and the direction of the SW
+		 * defined pins. If there is no SW over-ride of the
+		 * flow control setting, then the variable hw->fc will
+		 * be initialized based on a value in the EEPROM.
+		 */
+		ret_val = e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1,
+					    &eeprom_data);
+		if (ret_val < 0) {
+			dev_err(hw->dev, "EEPROM Read Error\n");
+			return ret_val;
+		}
+
 		if ((eeprom_data & EEPROM_WORD0F_PAUSE_MASK) == 0)
 			hw->fc = e1000_fc_none;
 		else if ((eeprom_data & EEPROM_WORD0F_PAUSE_MASK) == EEPROM_WORD0F_ASM_DIR)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
