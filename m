Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjH-000239-Le
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:38 +0000
Received: by mail-pa0-x242.google.com with SMTP id gp3so2238513pac.2
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:37 -0700
Message-Id: <1464843531-1824-9-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 08/22] e1000: Consolidate register offset fixups
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Consolidate all code taking care on CSR offset differences for i210
chips into a single place in the driver and integrate that funcionality
into e1000_{read,write}_reg functions. This way we can get rid of all
those

    if (hw->mac_type == e1000_igb) {
       ....
    } else {
       ....
    }

snippets sprinkled all across the driver code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h  | 11 ++++++++---
 drivers/net/e1000/eeprom.c | 10 +++-------
 drivers/net/e1000/main.c   | 17 +++++------------
 drivers/net/e1000/regio.c  | 25 +++++++++++++++++++++++++
 4 files changed, 41 insertions(+), 22 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index d75c707..1d0b3c6 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -389,6 +389,11 @@ struct e1000_tx_desc {
 #define E1000_MC_TBL_SIZE	   128	/* Multicast Filter Table (4096 bits) */
 #define E1000_VLAN_FILTER_TBL_SIZE 128	/* VLAN Filter Table (4096 bits) */
 
+#define E1000_MIGHT_BE_REMAPPED 0x80000000  /* Flag indicating that on
+					       some variants of the chip
+					       register offset might be
+					       different */
+
 /* Register Set. (82543, 82544)
  *
  * Registers are defined to be 32 bits and  should be accessed as 32 bit values.
@@ -429,17 +434,17 @@ struct e1000_tx_desc {
 #define E1000_LEDCTL   0x00E00	/* LED Control - RW */
 #define E1000_EXTCNF_CTRL  0x00F00  /* Extended Configuration Control */
 #define E1000_EXTCNF_SIZE  0x00F08  /* Extended Configuration Size */
-#define E1000_PHY_CTRL     0x00F10  /* PHY Control Register in CSR */
+#define E1000_PHY_CTRL     (E1000_MIGHT_BE_REMAPPED | 0x00F10)  /* PHY Control Register in CSR */
 #define E1000_I210_PHY_CTRL     0x00E14  /* PHY Control Register in CSR */
 #define FEXTNVM_SW_CONFIG  0x0001
 #define E1000_PBA      0x01000	/* Packet Buffer Allocation - RW */
 #define E1000_PBS      0x01008  /* Packet Buffer Size */
-#define E1000_EEMNGCTL 0x01010  /* MNG EEprom Control */
+#define E1000_EEMNGCTL (E1000_MIGHT_BE_REMAPPED | 0x01010)  /* MNG EEprom Control */
 #define E1000_I210_EEMNGCTL 0x12030  /* MNG EEprom Control */
 #define E1000_FLASH_UPDATES 1000
 #define E1000_EEARBC   0x01024  /* EEPROM Auto Read Bus Control */
 #define E1000_FLASHT   0x01028  /* FLASH Timer Register */
-#define E1000_EEWR     0x0102C  /* EEPROM Write Register - RW */
+#define E1000_EEWR     (E1000_MIGHT_BE_REMAPPED | 0x0102C)  /* EEPROM Write Register - RW */
 #define E1000_I210_EEWR     0x12018  /* EEPROM Write Register - RW */
 #define E1000_FLSWCTL  0x01030  /* FLASH control register */
 #define E1000_FLSWDATA 0x01034  /* FLASH data register */
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
index 8c529f1..4970084 100644
--- a/drivers/net/e1000/regio.c
+++ b/drivers/net/e1000/regio.c
@@ -2,13 +2,38 @@
 
 #include "e1000.h"
 
+static uint32_t e1000_true_offset(struct e1000_hw *hw, uint32_t reg)
+{
+	if (reg & E1000_MIGHT_BE_REMAPPED) {
+		reg &= ~E1000_MIGHT_BE_REMAPPED;
+
+		if (hw->mac_type == e1000_igb) {
+			switch (reg) {
+			case E1000_EEWR:
+				reg = E1000_I210_EEWR;
+				break;
+			case E1000_PHY_CTRL:
+				reg = E1000_I210_PHY_CTRL;
+				break;
+			case E1000_EEMNGCTL:
+				reg = E1000_I210_EEMNGCTL;
+				break;
+			}
+		};
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
