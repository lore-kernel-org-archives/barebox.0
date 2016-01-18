Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL0sp-0004xU-2f
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:38 +0000
Received: by mail-pf0-x243.google.com with SMTP id 65so11171837pff.2
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:14 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:27 -0800
Message-Id: <1453089161-6697-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
References: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/20] e1000: Consolidate register offset fixups
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
 drivers/net/e1000/e1000.h  | 41 +++++++++++++++++++++++++++++++++++++++--
 drivers/net/e1000/eeprom.c | 10 +++-------
 drivers/net/e1000/main.c   | 17 +++++------------
 3 files changed, 47 insertions(+), 21 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 7bc8825..0d5b265 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -29,9 +29,9 @@

 /* I/O wrapper functions */
 #define E1000_WRITE_REG(a, reg, value) \
-	writel((value), ((a)->hw_addr + E1000_##reg))
+	e1000_write_reg((a), E1000_##reg, (value))
 #define E1000_READ_REG(a, reg) \
-	readl((a)->hw_addr + E1000_##reg)
+	e1000_read_reg((a), E1000_##reg)
 #define E1000_WRITE_REG_ARRAY(a, reg, offset, value) \
 	writel((value), ((a)->hw_addr + E1000_##reg + ((offset) << 2)))
 #define E1000_READ_REG_ARRAY(a, reg, offset) \
@@ -2133,5 +2133,42 @@ int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,

 int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask);

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
+static inline void e1000_write_reg(struct e1000_hw *hw, uint32_t reg, uint32_t value)
+{
+	reg = e1000_true_offset(hw, reg);
+	writel(value, hw->hw_addr + reg);
+}
+
+static inline uint32_t e1000_read_reg(struct e1000_hw *hw, uint32_t reg)
+{
+	reg = e1000_true_offset(hw, reg);
+	return readl(hw->hw_addr + reg);
+}
+
+

 #endif	/* _E1000_HW_H_ */
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 1fa437e..b99b96b 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -452,14 +452,10 @@ static int32_t e1000_poll_eerd_eewr_done(struct e1000_hw *hw, int eerd)
 	int32_t done = E1000_ERR_EEPROM;

 	for (i = 0; i < attempts; i++) {
-		if (eerd == E1000_EEPROM_POLL_READ) {
+		if (eerd == E1000_EEPROM_POLL_READ)
 			reg = E1000_READ_REG(hw, EERD);
-		} else {
-			if (hw->mac_type == e1000_igb)
-				reg = E1000_READ_REG(hw, I210_EEWR);
-			else
-				reg = E1000_READ_REG(hw, EEWR);
-		}
+		else
+			reg = E1000_READ_REG(hw, EEWR);

 		if (reg & E1000_EEPROM_RW_REG_DONE) {
 			done = E1000_SUCCESS;
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index a29ceb1..9791b60 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -1185,14 +1185,11 @@ static int32_t e1000_set_d0_lplu_state_off(struct e1000_hw *hw)
 	if (hw->mac_type <= e1000_82547_rev_2)
 		return E1000_SUCCESS;

-	if (hw->mac_type == e1000_ich8lan) {
+	if (hw->mac_type == e1000_ich8lan ||
+	    hw->mac_type == e1000_igb) {
 		phy_ctrl = E1000_READ_REG(hw, PHY_CTRL);
 		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
 		E1000_WRITE_REG(hw, PHY_CTRL, phy_ctrl);
-	} else if (hw->mac_type == e1000_igb) {
-		phy_ctrl = E1000_READ_REG(hw, I210_PHY_CTRL);
-		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
-		E1000_WRITE_REG(hw, I210_PHY_CTRL, phy_ctrl);
 	} else {
 		ret_val = e1000_read_phy_reg(hw, IGP02E1000_PHY_POWER_MGMT,
 				&phy_data);
@@ -2746,13 +2743,9 @@ static int32_t e1000_get_phy_cfg_done(struct e1000_hw *hw)
 	case e1000_82572:
 	case e1000_igb:
 		while (timeout) {
-			if (hw->mac_type == e1000_igb) {
-				if (E1000_READ_REG(hw, I210_EEMNGCTL) & cfg_mask)
-					break;
-			} else {
-				if (E1000_READ_REG(hw, EEMNGCTL) & cfg_mask)
-					break;
-			}
+			if (E1000_READ_REG(hw, EEMNGCTL) & cfg_mask)
+				break;
+
 			mdelay(1);
 			timeout--;
 		}
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
