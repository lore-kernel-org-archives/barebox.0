Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7nBJ-0003hv-AX
 for barebox@lists.infradead.org; Tue, 31 May 2016 17:10:19 +0000
Received: by mail-pa0-x244.google.com with SMTP id x1so9074641pav.1
 for <barebox@lists.infradead.org>; Tue, 31 May 2016 10:10:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 May 2016 10:09:27 -0700
Message-Id: <1464714580-31488-9-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464714580-31488-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464714580-31488-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/21] e1000: Consolidate register offset fixups
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Consolidate all code taking care on CSR offset differences for i210
chips into a single place in the driver and integrate that
funcionality into E1000_{READ,WRITE}_REG macros. This way we can get
rid of all those

    if (hw->mac_type == e1000_igb) {
       ....
    } else {
       ....
    }

snippets sprinkled all across the driver code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/eeprom.c | 10 +++-------
 drivers/net/e1000/main.c   | 17 +++++------------
 drivers/net/e1000/regio.c  | 26 ++++++++++++++++++++++++++
 3 files changed, 34 insertions(+), 19 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 497fb7b..c2dfad5 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -451,14 +451,10 @@ static int32_t e1000_poll_eerd_eewr_done(struct e1000_hw *hw, int eerd)
 	int32_t done = E1000_ERR_EEPROM;
 
 	for (i = 0; i < attempts; i++) {
-		if (eerd == E1000_EEPROM_POLL_READ) {
+		if (eerd == E1000_EEPROM_POLL_READ)
 			reg = e1000_read_reg(hw, E1000_EERD);
-		} else {
-			if (hw->mac_type == e1000_igb)
-				reg = e1000_read_reg(hw, E1000_I210_EEWR);
-			else
-				reg = e1000_read_reg(hw, E1000_EEWR);
-		}
+		else
+			reg = e1000_read_reg(hw, E1000_EEWR);
 
 		if (reg & E1000_EEPROM_RW_REG_DONE) {
 			done = E1000_SUCCESS;
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index f1055ea..4a527a3 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -1184,14 +1184,11 @@ static int32_t e1000_set_d0_lplu_state_off(struct e1000_hw *hw)
 	if (hw->mac_type <= e1000_82547_rev_2)
 		return E1000_SUCCESS;
 
-	if (hw->mac_type == e1000_ich8lan) {
+	if (hw->mac_type == e1000_ich8lan ||
+	    hw->mac_type == e1000_igb) {
 		phy_ctrl = e1000_read_reg(hw, E1000_PHY_CTRL);
 		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
 		e1000_write_reg(hw, E1000_PHY_CTRL, phy_ctrl);
-	} else if (hw->mac_type == e1000_igb) {
-		phy_ctrl = e1000_read_reg(hw, E1000_I210_PHY_CTRL);
-		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
-		e1000_write_reg(hw, E1000_I210_PHY_CTRL, phy_ctrl);
 	} else {
 		ret_val = e1000_read_phy_reg(hw, IGP02E1000_PHY_POWER_MGMT,
 				&phy_data);
@@ -2745,13 +2742,9 @@ static int32_t e1000_get_phy_cfg_done(struct e1000_hw *hw)
 	case e1000_82572:
 	case e1000_igb:
 		while (timeout) {
-			if (hw->mac_type == e1000_igb) {
-				if (e1000_read_reg(hw, E1000_I210_EEMNGCTL) & cfg_mask)
-					break;
-			} else {
-				if (e1000_read_reg(hw, E1000_EEMNGCTL) & cfg_mask)
-					break;
-			}
+			if (e1000_read_reg(hw, E1000_EEMNGCTL) & cfg_mask)
+				break;
+
 			mdelay(1);
 			timeout--;
 		}
diff --git a/drivers/net/e1000/regio.c b/drivers/net/e1000/regio.c
index 8c529f1..33012be 100644
--- a/drivers/net/e1000/regio.c
+++ b/drivers/net/e1000/regio.c
@@ -2,13 +2,39 @@
 
 #include "e1000.h"
 
+struct e1000_fixup_table {
+	uint32_t orig, fixed;
+};
+
+static inline uint32_t e1000_true_offset(struct e1000_hw *hw, uint32_t reg)
+{
+	if (hw->mac_type == e1000_igb) {
+		unsigned int i;
+
+		const struct e1000_fixup_table fixup_table[] = {
+			{ E1000_EEWR,     E1000_I210_EEWR     },
+			{ E1000_PHY_CTRL, E1000_I210_PHY_CTRL },
+		        { E1000_EEMNGCTL, E1000_I210_EEMNGCTL },
+		};
+
+		for (i = 0; i < ARRAY_SIZE(fixup_table); i++) {
+			if (fixup_table[i].orig == reg)
+				return fixup_table[i].fixed;
+		}
+	}
+
+	return reg;
+}
+
 void e1000_write_reg(struct e1000_hw *hw, uint32_t reg, uint32_t value)
 {
+	reg = e1000_true_offset(hw, reg);
 	writel(value, hw->hw_addr + reg);
 }
 
 uint32_t e1000_read_reg(struct e1000_hw *hw, uint32_t reg)
 {
+	reg = e1000_true_offset(hw, reg);
 	return readl(hw->hw_addr + reg);
 }
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
