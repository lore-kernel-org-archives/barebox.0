Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjH-000238-3I
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:37 +0000
Received: by mail-pa0-x241.google.com with SMTP id gp3so2238479pac.2
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:36 -0700
Message-Id: <1464843531-1824-8-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/22] e1000: Remove unneeded i210 specific register code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Despite having EEC(EECD) and EERD at "non-standard" offsets i210
aliases those registers to be accesible via regular addresses so none
of the code removed by this commit is really necessary.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h  |  2 --
 drivers/net/e1000/eeprom.c | 25 +++++--------------------
 drivers/net/e1000/main.c   |  5 +++--
 3 files changed, 8 insertions(+), 24 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 7c5c98b..d75c707 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -404,9 +404,7 @@ struct e1000_tx_desc {
 #define E1000_CTRL     0x00000	/* Device Control - RW */
 #define E1000_STATUS   0x00008	/* Device Status - RO */
 #define E1000_EECD     0x00010	/* EEPROM/Flash Control - RW */
-#define E1000_I210_EECD     0x12010	/* EEPROM/Flash Control - RW */
 #define E1000_EERD     0x00014	/* EEPROM Read - RW */
-#define E1000_I210_EERD     0x12014	/* EEPROM Read - RW */
 #define E1000_CTRL_EXT 0x00018	/* Extended Device Control - RW */
 #define E1000_MDIC     0x00020	/* MDI Control - RW */
 #define E1000_FCAL     0x00028	/* Flow Control Address Low - RW */
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index c16f69a..497fb7b 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -274,10 +274,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 	int32_t ret_val = E1000_SUCCESS;
 	uint16_t eeprom_size;
 
-	if (hw->mac_type == e1000_igb)
-		eecd = e1000_read_reg(hw, E1000_I210_EECD);
-	else
-		eecd = e1000_read_reg(hw, E1000_EECD);
+	eecd = e1000_read_reg(hw, E1000_EECD);
 
 	DEBUGFUNC();
 
@@ -455,10 +452,7 @@ static int32_t e1000_poll_eerd_eewr_done(struct e1000_hw *hw, int eerd)
 
 	for (i = 0; i < attempts; i++) {
 		if (eerd == E1000_EEPROM_POLL_READ) {
-			if (hw->mac_type == e1000_igb)
-				reg = e1000_read_reg(hw, E1000_I210_EERD);
-			else
-				reg = e1000_read_reg(hw, E1000_EERD);
+			reg = e1000_read_reg(hw, E1000_EERD);
 		} else {
 			if (hw->mac_type == e1000_igb)
 				reg = e1000_read_reg(hw, E1000_I210_EEWR);
@@ -496,24 +490,15 @@ static int32_t e1000_read_eeprom_eerd(struct e1000_hw *hw,
 		eerd = ((offset+i) << E1000_EEPROM_RW_ADDR_SHIFT) +
 			E1000_EEPROM_RW_REG_START;
 
-		if (hw->mac_type == e1000_igb)
-			e1000_write_reg(hw, E1000_I210_EERD, eerd);
-		else
-			e1000_write_reg(hw, E1000_EERD, eerd);
+		e1000_write_reg(hw, E1000_EERD, eerd);
 
 		error = e1000_poll_eerd_eewr_done(hw, E1000_EEPROM_POLL_READ);
 
 		if (error)
 			break;
 
-		if (hw->mac_type == e1000_igb) {
-			data[i] = (e1000_read_reg(hw, E1000_I210_EERD) >>
-				E1000_EEPROM_RW_REG_DATA);
-		} else {
-			data[i] = (e1000_read_reg(hw, E1000_EERD) >>
-				E1000_EEPROM_RW_REG_DATA);
-		}
-
+		data[i] = (e1000_read_reg(hw, E1000_EERD) >>
+			   E1000_EEPROM_RW_REG_DATA);
 	}
 
 	return error;
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 11a0a2f..f1055ea 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -549,7 +549,7 @@ static void e1000_reset_hw(struct e1000_hw *hw)
 		reg = e1000_read_reg(hw, E1000_STATUS);
 		if (reg & E1000_STATUS_PF_RST_DONE)
 			dev_dbg(hw->dev, "PF OK\n");
-		reg = e1000_read_reg(hw, E1000_I210_EECD);
+		reg = e1000_read_reg(hw, E1000_EECD);
 		if (reg & E1000_EECD_AUTO_RD)
 			dev_dbg(hw->dev, "EEC OK\n");
 	} else if (hw->mac_type < e1000_82540) {
@@ -3564,7 +3564,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		dev_err(&pdev->dev, "EEPROM is invalid!\n");
 		return -EINVAL;
 	}
-	if ((e1000_read_reg(hw, E1000_I210_EECD) & E1000_EECD_FLUPD) &&
+
+	if ((e1000_read_reg(hw, E1000_EECD) & E1000_EECD_FLUPD) &&
 	    e1000_validate_eeprom_checksum(hw))
 		return -EINVAL;
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
