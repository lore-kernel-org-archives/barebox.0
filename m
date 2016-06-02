Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjF-000236-L2
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:48 +0000
Received: by mail-pf0-x244.google.com with SMTP id f144so6541713pfa.2
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:32 -0700
Message-Id: <1464843531-1824-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 03/22] e1000: Convert E1000_*_REG macros to functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

E1000_*_REG don't bring any value by being macros and implicit appending
of "E1000_" prefix to the constant name only makes thing harder to grep
or understand. Replace those macros with functions.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/Makefile       |   2 +-
 drivers/net/e1000/e1000.h  |  22 ++-
 drivers/net/e1000/eeprom.c | 102 ++++++------
 drivers/net/e1000/main.c   | 404 ++++++++++++++++++++++-----------------------
 drivers/net/e1000/regio.c  |  29 ++++
 5 files changed, 293 insertions(+), 266 deletions(-)
 create mode 100644 drivers/net/e1000/regio.c

diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 08166d2..42ea208 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -10,7 +10,7 @@ obj-$(CONFIG_DRIVER_NET_CPSW)		+= cpsw.o
 obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
-obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/main.o e1000/eeprom.o
+obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/regio.o e1000/main.o e1000/eeprom.o
 obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 19faf0b..7c5c98b 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -28,18 +28,6 @@
 #define DEBUGFUNC()		do { } while (0)
 #endif
 
-/* I/O wrapper functions */
-#define E1000_WRITE_REG(a, reg, value) \
-	writel((value), ((a)->hw_addr + E1000_##reg))
-#define E1000_READ_REG(a, reg) \
-	readl((a)->hw_addr + E1000_##reg)
-#define E1000_WRITE_REG_ARRAY(a, reg, offset, value) \
-	writel((value), ((a)->hw_addr + E1000_##reg + ((offset) << 2)))
-#define E1000_READ_REG_ARRAY(a, reg, offset) \
-	readl((a)->hw_addr + E1000_##reg + ((offset) << 2))
-#define E1000_WRITE_FLUSH(a) \
-	do { E1000_READ_REG(a, STATUS); } while (0)
-
 /* Enumerated types specific to the e1000 hardware */
 /* Media Access Controlers */
 typedef enum {
@@ -2128,6 +2116,16 @@ struct e1000_hw {
 	int rx_tail, rx_last;
 };
 
+void e1000_write_reg(struct e1000_hw *hw, uint32_t reg,
+		     uint32_t value);
+uint32_t e1000_read_reg(struct e1000_hw *hw, uint32_t reg);
+uint32_t e1000_read_reg_array(struct e1000_hw *hw,
+			      uint32_t base, uint32_t idx);
+void e1000_write_reg_array(struct e1000_hw *hw, uint32_t base,
+			   uint32_t idx, uint32_t value);
+
+void e1000_write_flush(struct e1000_hw *hw);
+
 int32_t e1000_init_eeprom_params(struct e1000_hw *hw);
 int e1000_validate_eeprom_checksum(struct e1000_hw *hw);
 int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index cc9199b..c16f69a 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -18,8 +18,8 @@ static void e1000_raise_ee_clk(struct e1000_hw *hw, uint32_t *eecd)
 	 * wait 50 microseconds.
 	 */
 	*eecd = *eecd | E1000_EECD_SK;
-	E1000_WRITE_REG(hw, EECD, *eecd);
-	E1000_WRITE_FLUSH(hw);
+	e1000_write_reg(hw, E1000_EECD, *eecd);
+	e1000_write_flush(hw);
 	udelay(50);
 }
 
@@ -35,8 +35,8 @@ static void e1000_lower_ee_clk(struct e1000_hw *hw, uint32_t *eecd)
 	 * wait 50 microseconds.
 	 */
 	*eecd = *eecd & ~E1000_EECD_SK;
-	E1000_WRITE_REG(hw, EECD, *eecd);
-	E1000_WRITE_FLUSH(hw);
+	e1000_write_reg(hw, E1000_EECD, *eecd);
+	e1000_write_flush(hw);
 	udelay(50);
 }
 
@@ -57,7 +57,7 @@ static void e1000_shift_out_ee_bits(struct e1000_hw *hw, uint16_t data, uint16_t
 	 * In order to do this, "data" must be broken down into bits.
 	 */
 	mask = 0x01 << (count - 1);
-	eecd = E1000_READ_REG(hw, EECD);
+	eecd = e1000_read_reg(hw, E1000_EECD);
 	eecd &= ~(E1000_EECD_DO | E1000_EECD_DI);
 	do {
 		/* A "1" is shifted out to the EEPROM by setting bit "DI" to a "1",
@@ -70,8 +70,8 @@ static void e1000_shift_out_ee_bits(struct e1000_hw *hw, uint16_t data, uint16_t
 		if (data & mask)
 			eecd |= E1000_EECD_DI;
 
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		e1000_write_flush(hw);
 
 		udelay(50);
 
@@ -84,7 +84,7 @@ static void e1000_shift_out_ee_bits(struct e1000_hw *hw, uint16_t data, uint16_t
 
 	/* We leave the "DI" bit set to "0" when we leave this routine. */
 	eecd &= ~E1000_EECD_DI;
-	E1000_WRITE_REG(hw, EECD, eecd);
+	e1000_write_reg(hw, E1000_EECD, eecd);
 }
 
 /******************************************************************************
@@ -105,7 +105,7 @@ static uint16_t e1000_shift_in_ee_bits(struct e1000_hw *hw, uint16_t count)
 	 * "DI" bit should always be clear.
 	 */
 
-	eecd = E1000_READ_REG(hw, EECD);
+	eecd = e1000_read_reg(hw, E1000_EECD);
 
 	eecd &= ~(E1000_EECD_DO | E1000_EECD_DI);
 	data = 0;
@@ -114,7 +114,7 @@ static uint16_t e1000_shift_in_ee_bits(struct e1000_hw *hw, uint16_t count)
 		data = data << 1;
 		e1000_raise_ee_clk(hw, &eecd);
 
-		eecd = E1000_READ_REG(hw, EECD);
+		eecd = e1000_read_reg(hw, E1000_EECD);
 
 		eecd &= ~(E1000_EECD_DI);
 		if (eecd & E1000_EECD_DO)
@@ -136,40 +136,40 @@ static void e1000_standby_eeprom(struct e1000_hw *hw)
 	struct e1000_eeprom_info *eeprom = &hw->eeprom;
 	uint32_t eecd;
 
-	eecd = E1000_READ_REG(hw, EECD);
+	eecd = e1000_read_reg(hw, E1000_EECD);
 
 	if (eeprom->type == e1000_eeprom_microwire) {
 		eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		e1000_write_flush(hw);
 		udelay(eeprom->delay_usec);
 
 		/* Clock high */
 		eecd |= E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		e1000_write_flush(hw);
 		udelay(eeprom->delay_usec);
 
 		/* Select EEPROM */
 		eecd |= E1000_EECD_CS;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		e1000_write_flush(hw);
 		udelay(eeprom->delay_usec);
 
 		/* Clock low */
 		eecd &= ~E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		e1000_write_flush(hw);
 		udelay(eeprom->delay_usec);
 	} else if (eeprom->type == e1000_eeprom_spi) {
 		/* Toggle CS to flush commands */
 		eecd |= E1000_EECD_CS;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		e1000_write_flush(hw);
 		udelay(eeprom->delay_usec);
 		eecd &= ~E1000_EECD_CS;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		e1000_write_flush(hw);
 		udelay(eeprom->delay_usec);
 	}
 }
@@ -189,7 +189,7 @@ static bool e1000_is_onboard_nvm_eeprom(struct e1000_hw *hw)
 		return false;
 
 	if (hw->mac_type == e1000_82573 || hw->mac_type == e1000_82574) {
-		eecd = E1000_READ_REG(hw, EECD);
+		eecd = e1000_read_reg(hw, E1000_EECD);
 
 		/* Isolate bits 15 & 16 */
 		eecd = ((eecd >> 15) & 0x03);
@@ -218,23 +218,23 @@ static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
 
 	if (e1000_swfw_sync_acquire(hw, E1000_SWFW_EEP_SM))
 		return -E1000_ERR_SWFW_SYNC;
-	eecd = E1000_READ_REG(hw, EECD);
+	eecd = e1000_read_reg(hw, E1000_EECD);
 
 	/* Request EEPROM Access */
 	if (hw->mac_type > e1000_82544 && hw->mac_type != e1000_82573 &&
 			hw->mac_type != e1000_82574) {
 		eecd |= E1000_EECD_REQ;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		eecd = E1000_READ_REG(hw, EECD);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		eecd = e1000_read_reg(hw, E1000_EECD);
 		while ((!(eecd & E1000_EECD_GNT)) &&
 			(i < E1000_EEPROM_GRANT_ATTEMPTS)) {
 			i++;
 			udelay(5);
-			eecd = E1000_READ_REG(hw, EECD);
+			eecd = e1000_read_reg(hw, E1000_EECD);
 		}
 		if (!(eecd & E1000_EECD_GNT)) {
 			eecd &= ~E1000_EECD_REQ;
-			E1000_WRITE_REG(hw, EECD, eecd);
+			e1000_write_reg(hw, E1000_EECD, eecd);
 			dev_dbg(hw->dev, "Could not acquire EEPROM grant\n");
 			return -E1000_ERR_EEPROM;
 		}
@@ -245,15 +245,15 @@ static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
 	if (eeprom->type == e1000_eeprom_microwire) {
 		/* Clear SK and DI */
 		eecd &= ~(E1000_EECD_DI | E1000_EECD_SK);
-		E1000_WRITE_REG(hw, EECD, eecd);
+		e1000_write_reg(hw, E1000_EECD, eecd);
 
 		/* Set CS */
 		eecd |= E1000_EECD_CS;
-		E1000_WRITE_REG(hw, EECD, eecd);
+		e1000_write_reg(hw, E1000_EECD, eecd);
 	} else if (eeprom->type == e1000_eeprom_spi) {
 		/* Clear SK and CS */
 		eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
-		E1000_WRITE_REG(hw, EECD, eecd);
+		e1000_write_reg(hw, E1000_EECD, eecd);
 		udelay(1);
 	}
 
@@ -275,9 +275,9 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 	uint16_t eeprom_size;
 
 	if (hw->mac_type == e1000_igb)
-		eecd = E1000_READ_REG(hw, I210_EECD);
+		eecd = e1000_read_reg(hw, E1000_I210_EECD);
 	else
-		eecd = E1000_READ_REG(hw, EECD);
+		eecd = e1000_read_reg(hw, E1000_EECD);
 
 	DEBUGFUNC();
 
@@ -379,7 +379,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		/* Ensure that the Autonomous FLASH update bit is cleared due to
 		 * Flash update issue on parts which use a FLASH for NVM. */
 			eecd &= ~E1000_EECD_AUPDEN;
-			E1000_WRITE_REG(hw, EECD, eecd);
+			e1000_write_reg(hw, E1000_EECD, eecd);
 		}
 		break;
 	case e1000_80003es2lan:
@@ -456,14 +456,14 @@ static int32_t e1000_poll_eerd_eewr_done(struct e1000_hw *hw, int eerd)
 	for (i = 0; i < attempts; i++) {
 		if (eerd == E1000_EEPROM_POLL_READ) {
 			if (hw->mac_type == e1000_igb)
-				reg = E1000_READ_REG(hw, I210_EERD);
+				reg = e1000_read_reg(hw, E1000_I210_EERD);
 			else
-				reg = E1000_READ_REG(hw, EERD);
+				reg = e1000_read_reg(hw, E1000_EERD);
 		} else {
 			if (hw->mac_type == e1000_igb)
-				reg = E1000_READ_REG(hw, I210_EEWR);
+				reg = e1000_read_reg(hw, E1000_I210_EEWR);
 			else
-				reg = E1000_READ_REG(hw, EEWR);
+				reg = e1000_read_reg(hw, E1000_EEWR);
 		}
 
 		if (reg & E1000_EEPROM_RW_REG_DONE) {
@@ -497,9 +497,9 @@ static int32_t e1000_read_eeprom_eerd(struct e1000_hw *hw,
 			E1000_EEPROM_RW_REG_START;
 
 		if (hw->mac_type == e1000_igb)
-			E1000_WRITE_REG(hw, I210_EERD, eerd);
+			e1000_write_reg(hw, E1000_I210_EERD, eerd);
 		else
-			E1000_WRITE_REG(hw, EERD, eerd);
+			e1000_write_reg(hw, E1000_EERD, eerd);
 
 		error = e1000_poll_eerd_eewr_done(hw, E1000_EEPROM_POLL_READ);
 
@@ -507,10 +507,10 @@ static int32_t e1000_read_eeprom_eerd(struct e1000_hw *hw,
 			break;
 
 		if (hw->mac_type == e1000_igb) {
-			data[i] = (E1000_READ_REG(hw, I210_EERD) >>
+			data[i] = (e1000_read_reg(hw, E1000_I210_EERD) >>
 				E1000_EEPROM_RW_REG_DATA);
 		} else {
-			data[i] = (E1000_READ_REG(hw, EERD) >>
+			data[i] = (e1000_read_reg(hw, E1000_EERD) >>
 				E1000_EEPROM_RW_REG_DATA);
 		}
 
@@ -525,13 +525,13 @@ static void e1000_release_eeprom(struct e1000_hw *hw)
 
 	DEBUGFUNC();
 
-	eecd = E1000_READ_REG(hw, EECD);
+	eecd = e1000_read_reg(hw, E1000_EECD);
 
 	if (hw->eeprom.type == e1000_eeprom_spi) {
 		eecd |= E1000_EECD_CS;  /* Pull CS high */
 		eecd &= ~E1000_EECD_SK; /* Lower SCK */
 
-		E1000_WRITE_REG(hw, EECD, eecd);
+		e1000_write_reg(hw, E1000_EECD, eecd);
 
 		udelay(hw->eeprom.delay_usec);
 	} else if (hw->eeprom.type == e1000_eeprom_microwire) {
@@ -540,25 +540,25 @@ static void e1000_release_eeprom(struct e1000_hw *hw)
 		/* CS on Microwire is active-high */
 		eecd &= ~(E1000_EECD_CS | E1000_EECD_DI);
 
-		E1000_WRITE_REG(hw, EECD, eecd);
+		e1000_write_reg(hw, E1000_EECD, eecd);
 
 		/* Rising edge of clock */
 		eecd |= E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		e1000_write_flush(hw);
 		udelay(hw->eeprom.delay_usec);
 
 		/* Falling edge of clock */
 		eecd &= ~E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_EECD, eecd);
+		e1000_write_flush(hw);
 		udelay(hw->eeprom.delay_usec);
 	}
 
 	/* Stop requesting EEPROM access */
 	if (hw->mac_type > e1000_82544) {
 		eecd &= ~E1000_EECD_REQ;
-		E1000_WRITE_REG(hw, EECD, eecd);
+		e1000_write_reg(hw, E1000_EECD, eecd);
 	}
 }
 /******************************************************************************
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index f5eb086..f3c0ed8 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -147,15 +147,15 @@ static int32_t e1000_get_software_semaphore(struct e1000_hw *hw)
 
 	DEBUGFUNC();
 
-	swsm = E1000_READ_REG(hw, SWSM);
+	swsm = e1000_read_reg(hw, E1000_SWSM);
 	swsm &= ~E1000_SWSM_SMBI;
-	E1000_WRITE_REG(hw, SWSM, swsm);
+	e1000_write_reg(hw, E1000_SWSM, swsm);
 
 	if (hw->mac_type != e1000_80003es2lan)
 		return E1000_SUCCESS;
 
 	while (timeout) {
-		swsm = E1000_READ_REG(hw, SWSM);
+		swsm = e1000_read_reg(hw, E1000_SWSM);
 		/* If SMBI bit cleared, it is now set and we hold
 		 * the semaphore */
 		if (!(swsm & E1000_SWSM_SMBI))
@@ -180,7 +180,7 @@ static void e1000_put_hw_eeprom_semaphore(struct e1000_hw *hw)
 {
 	uint32_t swsm;
 
-	swsm = E1000_READ_REG(hw, SWSM);
+	swsm = e1000_read_reg(hw, E1000_SWSM);
 
 	if (hw->mac_type == e1000_80003es2lan)
 		/* Release both semaphores. */
@@ -188,7 +188,7 @@ static void e1000_put_hw_eeprom_semaphore(struct e1000_hw *hw)
 	else
 		swsm &= ~(E1000_SWSM_SWESMBI);
 
-	E1000_WRITE_REG(hw, SWSM, swsm);
+	e1000_write_reg(hw, E1000_SWSM, swsm);
 }
 
 /***************************************************************************
@@ -216,11 +216,11 @@ static int32_t e1000_get_hw_eeprom_semaphore(struct e1000_hw *hw)
 	/* Get the FW semaphore. */
 	timeout = hw->eeprom.word_size + 1;
 	while (timeout) {
-		swsm = E1000_READ_REG(hw, SWSM);
+		swsm = e1000_read_reg(hw, E1000_SWSM);
 		swsm |= E1000_SWSM_SWESMBI;
-		E1000_WRITE_REG(hw, SWSM, swsm);
+		e1000_write_reg(hw, E1000_SWSM, swsm);
 		/* if we managed to set the bit we got the semaphore. */
-		swsm = E1000_READ_REG(hw, SWSM);
+		swsm = e1000_read_reg(hw, E1000_SWSM);
 		if (swsm & E1000_SWSM_SWESMBI)
 			break;
 
@@ -250,7 +250,7 @@ int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask)
 		if (e1000_get_hw_eeprom_semaphore(hw))
 			return -E1000_ERR_SWFW_SYNC;
 
-		swfw_sync = E1000_READ_REG(hw, SW_FW_SYNC);
+		swfw_sync = e1000_read_reg(hw, E1000_SW_FW_SYNC);
 		if (!(swfw_sync & (fwmask | swmask)))
 			break;
 
@@ -267,7 +267,7 @@ int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask)
 	}
 
 	swfw_sync |= swmask;
-	E1000_WRITE_REG(hw, SW_FW_SYNC, swfw_sync);
+	e1000_write_reg(hw, E1000_SW_FW_SYNC, swfw_sync);
 
 	e1000_put_hw_eeprom_semaphore(hw);
 	return E1000_SUCCESS;
@@ -279,7 +279,7 @@ static bool e1000_is_second_port(struct e1000_hw *hw)
 	case e1000_80003es2lan:
 	case e1000_82546:
 	case e1000_82571:
-		if (E1000_READ_REG(hw, STATUS) & E1000_STATUS_FUNC_1)
+		if (e1000_read_reg(hw, E1000_STATUS) & E1000_STATUS_FUNC_1)
 			return true;
 		/* Fallthrough */
 	default:
@@ -304,12 +304,12 @@ static int e1000_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 
 	if (hw->mac_type == e1000_igb) {
 		/* i210 preloads MAC address into RAL/RAH registers */
-		reg_data = E1000_READ_REG_ARRAY(hw, RA, 0);
+		reg_data = e1000_read_reg_array(hw, E1000_RA, 0);
 		adr[0] = reg_data & 0xff;
 		adr[1] = (reg_data >> 8) & 0xff;
 		adr[2] = (reg_data >> 16) & 0xff;
 		adr[3] = (reg_data >> 24) & 0xff;
-		reg_data = E1000_READ_REG_ARRAY(hw, RA, 1);
+		reg_data = e1000_read_reg_array(hw, E1000_RA, 1);
 		adr[4] = reg_data & 0xff;
 		adr[5] = (reg_data >> 8) & 0xff;
 		return 0;
@@ -344,8 +344,8 @@ static int e1000_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
 	addr_low = (adr[0] | (adr[1] << 8) | (adr[2] << 16) | (adr[3] << 24));
 	addr_high = (adr[4] | (adr[5] << 8) | E1000_RAH_AV);
 
-	E1000_WRITE_REG_ARRAY(hw, RA, 0, addr_low);
-	E1000_WRITE_REG_ARRAY(hw, RA, 1, addr_high);
+	e1000_write_reg_array(hw, E1000_RA, 0, addr_low);
+	e1000_write_reg_array(hw, E1000_RA, 1, addr_high);
 
 	return 0;
 }
@@ -360,7 +360,7 @@ static void e1000_clear_vfta(struct e1000_hw *hw)
 	uint32_t offset;
 
 	for (offset = 0; offset < E1000_VLAN_FILTER_TBL_SIZE; offset++)
-		E1000_WRITE_REG_ARRAY(hw, VFTA, offset, 0);
+		e1000_write_reg_array(hw, E1000_VFTA, offset, 0);
 }
 
 /******************************************************************************
@@ -524,9 +524,9 @@ static void e1000_reset_hw(struct e1000_hw *hw)
 	 * any pending transactions to complete before we hit the MAC with
 	 * the global reset.
 	 */
-	E1000_WRITE_REG(hw, RCTL, 0);
-	E1000_WRITE_REG(hw, TCTL, E1000_TCTL_PSP);
-	E1000_WRITE_FLUSH(hw);
+	e1000_write_reg(hw, E1000_RCTL, 0);
+	e1000_write_reg(hw, E1000_TCTL, E1000_TCTL_PSP);
+	e1000_write_flush(hw);
 
 	/* Delay to allow any outstanding PCI transactions to complete before
 	 * resetting the device
@@ -539,17 +539,17 @@ static void e1000_reset_hw(struct e1000_hw *hw)
 	 * clearing, and should clear within a microsecond.
 	 */
 	dev_dbg(hw->dev, "Issuing a global reset to MAC\n");
-	ctrl = E1000_READ_REG(hw, CTRL);
+	ctrl = e1000_read_reg(hw, E1000_CTRL);
 
-	E1000_WRITE_REG(hw, CTRL, (ctrl | E1000_CTRL_RST));
+	e1000_write_reg(hw, E1000_CTRL, (ctrl | E1000_CTRL_RST));
 
 	/* Force a reload from the EEPROM if necessary */
 	if (hw->mac_type == e1000_igb) {
 		mdelay(20);
-		reg = E1000_READ_REG(hw, STATUS);
+		reg = e1000_read_reg(hw, E1000_STATUS);
 		if (reg & E1000_STATUS_PF_RST_DONE)
 			dev_dbg(hw->dev, "PF OK\n");
-		reg = E1000_READ_REG(hw, I210_EECD);
+		reg = e1000_read_reg(hw, E1000_I210_EECD);
 		if (reg & E1000_EECD_AUTO_RD)
 			dev_dbg(hw->dev, "EEC OK\n");
 	} else if (hw->mac_type < e1000_82540) {
@@ -557,10 +557,10 @@ static void e1000_reset_hw(struct e1000_hw *hw)
 
 		/* Wait for reset to complete */
 		udelay(10);
-		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		ctrl_ext = e1000_read_reg(hw, E1000_CTRL_EXT);
 		ctrl_ext |= E1000_CTRL_EXT_EE_RST;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_CTRL_EXT, ctrl_ext);
+		e1000_write_flush(hw);
 		/* Wait for EEPROM reload */
 		mdelay(2);
 	} else {
@@ -569,19 +569,19 @@ static void e1000_reset_hw(struct e1000_hw *hw)
 		/* Wait for EEPROM reload (it happens automatically) */
 		mdelay(4);
 		/* Dissable HW ARPs on ASF enabled adapters */
-		manc = E1000_READ_REG(hw, MANC);
+		manc = e1000_read_reg(hw, E1000_MANC);
 		manc &= ~(E1000_MANC_ARP_EN);
-		E1000_WRITE_REG(hw, MANC, manc);
+		e1000_write_reg(hw, E1000_MANC, manc);
 	}
 
 	/* Clear interrupt mask to stop board from generating interrupts */
 	if (hw->mac_type == e1000_igb)
-		E1000_WRITE_REG(hw, I210_IAM, 0);
+		e1000_write_reg(hw, E1000_I210_IAM, 0);
 
-	E1000_WRITE_REG(hw, IMC, 0xffffffff);
+	e1000_write_reg(hw, E1000_IMC, 0xffffffff);
 
 	/* Clear any pending interrupt events. */
-	E1000_READ_REG(hw, ICR);
+	e1000_read_reg(hw, E1000_ICR);
 
 	/* If MWI was previously enabled, reenable it. */
 	if (hw->mac_type == e1000_82542_rev2_0)
@@ -589,9 +589,9 @@ static void e1000_reset_hw(struct e1000_hw *hw)
 
 	if (hw->mac_type != e1000_igb) {
 		if (hw->mac_type < e1000_82571)
-			E1000_WRITE_REG(hw, PBA, 0x00000030);
+			e1000_write_reg(hw, E1000_PBA, 0x00000030);
 		else
-			E1000_WRITE_REG(hw, PBA, 0x000a0026);
+			e1000_write_reg(hw, E1000_PBA, 0x000a0026);
 	}
 }
 
@@ -616,23 +616,23 @@ static void e1000_initialize_hardware_bits(struct e1000_hw *hw)
 	/* Settings common to all PCI-express silicon */
 
 	/* link autonegotiation/sync workarounds */
-	reg_tarc0 = E1000_READ_REG(hw, TARC0);
+	reg_tarc0 = e1000_read_reg(hw, E1000_TARC0);
 	reg_tarc0 &= ~((1 << 30) | (1 << 29) | (1 << 28) | (1 << 27));
 
 	/* Enable not-done TX descriptor counting */
-	reg_txdctl = E1000_READ_REG(hw, TXDCTL);
+	reg_txdctl = e1000_read_reg(hw, E1000_TXDCTL);
 	reg_txdctl |= E1000_TXDCTL_COUNT_DESC;
-	E1000_WRITE_REG(hw, TXDCTL, reg_txdctl);
+	e1000_write_reg(hw, E1000_TXDCTL, reg_txdctl);
 
-	reg_txdctl1 = E1000_READ_REG(hw, TXDCTL1);
+	reg_txdctl1 = e1000_read_reg(hw, E1000_TXDCTL1);
 	reg_txdctl1 |= E1000_TXDCTL_COUNT_DESC;
-	E1000_WRITE_REG(hw, TXDCTL1, reg_txdctl1);
+	e1000_write_reg(hw, E1000_TXDCTL1, reg_txdctl1);
 
 	switch (hw->mac_type) {
 	case e1000_82571:
 	case e1000_82572:
 		/* Clear PHY TX compatible mode bits */
-		reg_tarc1 = E1000_READ_REG(hw, TARC1);
+		reg_tarc1 = e1000_read_reg(hw, E1000_TARC1);
 		reg_tarc1 &= ~((1 << 30) | (1 << 29));
 
 		/* link autonegotiation/sync workarounds */
@@ -642,25 +642,25 @@ static void e1000_initialize_hardware_bits(struct e1000_hw *hw)
 		reg_tarc1 |= (1 << 26) | (1 << 25) | (1 << 24);
 
 		/* Multiple read bit is reversed polarity */
-		if (E1000_READ_REG(hw, TCTL) & E1000_TCTL_MULR)
+		if (e1000_read_reg(hw, E1000_TCTL) & E1000_TCTL_MULR)
 			reg_tarc1 &= ~(1 << 28);
 		else
 			reg_tarc1 |= (1 << 28);
 
-		E1000_WRITE_REG(hw, TARC1, reg_tarc1);
+		e1000_write_reg(hw, E1000_TARC1, reg_tarc1);
 		break;
 	case e1000_82573:
 	case e1000_82574:
-		reg_ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		reg_ctrl_ext = e1000_read_reg(hw, E1000_CTRL_EXT);
 		reg_ctrl_ext &= ~(1 << 23);
 		reg_ctrl_ext |= (1 << 22);
 
 		/* TX byte count fix */
-		reg_ctrl = E1000_READ_REG(hw, CTRL);
+		reg_ctrl = e1000_read_reg(hw, E1000_CTRL);
 		reg_ctrl &= ~(1 << 29);
 
-		E1000_WRITE_REG(hw, CTRL_EXT, reg_ctrl_ext);
-		E1000_WRITE_REG(hw, CTRL, reg_ctrl);
+		e1000_write_reg(hw, E1000_CTRL_EXT, reg_ctrl_ext);
+		e1000_write_reg(hw, E1000_CTRL, reg_ctrl);
 		break;
 	case e1000_80003es2lan:
 		/* improve small packet performace for fiber/serdes */
@@ -668,13 +668,13 @@ static void e1000_initialize_hardware_bits(struct e1000_hw *hw)
 			reg_tarc0 &= ~(1 << 20);
 
 		/* Multiple read bit is reversed polarity */
-		reg_tarc1 = E1000_READ_REG(hw, TARC1);
-		if (E1000_READ_REG(hw, TCTL) & E1000_TCTL_MULR)
+		reg_tarc1 = e1000_read_reg(hw, E1000_TARC1);
+		if (e1000_read_reg(hw, E1000_TCTL) & E1000_TCTL_MULR)
 			reg_tarc1 &= ~(1 << 28);
 		else
 			reg_tarc1 |= (1 << 28);
 
-		E1000_WRITE_REG(hw, TARC1, reg_tarc1);
+		e1000_write_reg(hw, E1000_TARC1, reg_tarc1);
 		break;
 	case e1000_ich8lan:
 		/* Reduce concurrent DMA requests to 3 from 4 */
@@ -683,16 +683,16 @@ static void e1000_initialize_hardware_bits(struct e1000_hw *hw)
 		    (hw->device_id != E1000_DEV_ID_ICH8_IGP_M)))
 			reg_tarc0 |= (1 << 29) | (1 << 28);
 
-		reg_ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		reg_ctrl_ext = e1000_read_reg(hw, E1000_CTRL_EXT);
 		reg_ctrl_ext |= (1 << 22);
-		E1000_WRITE_REG(hw, CTRL_EXT, reg_ctrl_ext);
+		e1000_write_reg(hw, E1000_CTRL_EXT, reg_ctrl_ext);
 
 		/* workaround TX hang with TSO=on */
 		reg_tarc0 |= (1 << 27) | (1 << 26) | (1 << 24) | (1 << 23);
 
 		/* Multiple read bit is reversed polarity */
-		reg_tarc1 = E1000_READ_REG(hw, TARC1);
-		if (E1000_READ_REG(hw, TCTL) & E1000_TCTL_MULR)
+		reg_tarc1 = e1000_read_reg(hw, E1000_TARC1);
+		if (e1000_read_reg(hw, E1000_TCTL) & E1000_TCTL_MULR)
 			reg_tarc1 &= ~(1 << 28);
 		else
 			reg_tarc1 |= (1 << 28);
@@ -700,7 +700,7 @@ static void e1000_initialize_hardware_bits(struct e1000_hw *hw)
 		/* workaround TX hang with TSO=on */
 		reg_tarc1 |= (1 << 30) | (1 << 26) | (1 << 24);
 
-		E1000_WRITE_REG(hw, TARC1, reg_tarc1);
+		e1000_write_reg(hw, E1000_TARC1, reg_tarc1);
 		break;
 	case e1000_igb:
 		return;
@@ -708,7 +708,7 @@ static void e1000_initialize_hardware_bits(struct e1000_hw *hw)
 		break;
 	}
 
-	E1000_WRITE_REG(hw, TARC0, reg_tarc0);
+	e1000_write_reg(hw, E1000_TARC0, reg_tarc0);
 }
 
 static int e1000_open(struct eth_device *edev)
@@ -726,56 +726,56 @@ static int e1000_open(struct eth_device *edev)
 
 	/* Set the transmit descriptor write-back policy */
 	if (hw->mac_type > e1000_82544) {
-		ctrl = E1000_READ_REG(hw, TXDCTL);
+		ctrl = e1000_read_reg(hw, E1000_TXDCTL);
 		ctrl &= ~E1000_TXDCTL_WTHRESH;
 		ctrl |= E1000_TXDCTL_FULL_TX_DESC_WB;
-		E1000_WRITE_REG(hw, TXDCTL, ctrl);
+		e1000_write_reg(hw, E1000_TXDCTL, ctrl);
 	}
 
 	/* Set the receive descriptor write back policy */
 	if (hw->mac_type >= e1000_82571) {
-		ctrl = E1000_READ_REG(hw, RXDCTL);
+		ctrl = e1000_read_reg(hw, E1000_RXDCTL);
 		ctrl &= ~E1000_RXDCTL_WTHRESH;
 		ctrl |= E1000_RXDCTL_FULL_RX_DESC_WB;
-		E1000_WRITE_REG(hw, RXDCTL, ctrl);
+		e1000_write_reg(hw, E1000_RXDCTL, ctrl);
 	}
 
 	switch (hw->mac_type) {
 	case e1000_80003es2lan:
 		/* Enable retransmit on late collisions */
-		reg_data = E1000_READ_REG(hw, TCTL);
+		reg_data = e1000_read_reg(hw, E1000_TCTL);
 		reg_data |= E1000_TCTL_RTLC;
-		E1000_WRITE_REG(hw, TCTL, reg_data);
+		e1000_write_reg(hw, E1000_TCTL, reg_data);
 
 		/* Configure Gigabit Carry Extend Padding */
-		reg_data = E1000_READ_REG(hw, TCTL_EXT);
+		reg_data = e1000_read_reg(hw, E1000_TCTL_EXT);
 		reg_data &= ~E1000_TCTL_EXT_GCEX_MASK;
 		reg_data |= DEFAULT_80003ES2LAN_TCTL_EXT_GCEX;
-		E1000_WRITE_REG(hw, TCTL_EXT, reg_data);
+		e1000_write_reg(hw, E1000_TCTL_EXT, reg_data);
 
 		/* Configure Transmit Inter-Packet Gap */
-		reg_data = E1000_READ_REG(hw, TIPG);
+		reg_data = e1000_read_reg(hw, E1000_TIPG);
 		reg_data &= ~E1000_TIPG_IPGT_MASK;
 		reg_data |= DEFAULT_80003ES2LAN_TIPG_IPGT_1000;
-		E1000_WRITE_REG(hw, TIPG, reg_data);
+		e1000_write_reg(hw, E1000_TIPG, reg_data);
 
-		reg_data = E1000_READ_REG_ARRAY(hw, FFLT, 0x0001);
+		reg_data = e1000_read_reg_array(hw, E1000_FFLT, 1);
 		reg_data &= ~0x00100000;
-		E1000_WRITE_REG_ARRAY(hw, FFLT, 0x0001, reg_data);
+		e1000_write_reg_array(hw, E1000_FFLT, 1, reg_data);
 		/* Fall through */
 	case e1000_82571:
 	case e1000_82572:
 	case e1000_ich8lan:
-		ctrl = E1000_READ_REG(hw, TXDCTL1);
+		ctrl = e1000_read_reg(hw, E1000_TXDCTL1);
 		ctrl &= ~E1000_TXDCTL_WTHRESH;
 		ctrl |= E1000_TXDCTL_FULL_TX_DESC_WB;
-		E1000_WRITE_REG(hw, TXDCTL1, ctrl);
+		e1000_write_reg(hw, E1000_TXDCTL1, ctrl);
 		break;
 	case e1000_82573:
 	case e1000_82574:
-		reg_data = E1000_READ_REG(hw, GCR);
+		reg_data = e1000_read_reg(hw, E1000_GCR);
 		reg_data |= E1000_GCR_L1_ACT_WITHOUT_L0S_RX;
-		E1000_WRITE_REG(hw, GCR, reg_data);
+		e1000_write_reg(hw, E1000_GCR, reg_data);
 	case e1000_igb:
 	default:
 		break;
@@ -783,11 +783,11 @@ static int e1000_open(struct eth_device *edev)
 
 	if (hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER ||
 	    hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3) {
-		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		ctrl_ext = e1000_read_reg(hw, E1000_CTRL_EXT);
 		/* Relaxed ordering must be disabled to avoid a parity
 		 * error crash in a PCI slot. */
 		ctrl_ext |= E1000_CTRL_EXT_RO_DIS;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
+		e1000_write_reg(hw, E1000_CTRL_EXT, ctrl_ext);
 	}
 
 	return 0;
@@ -875,7 +875,7 @@ static int e1000_setup_link(struct e1000_hw *hw)
 	if (hw->mac_type == e1000_82543) {
 		ctrl_ext = ((eeprom_data & EEPROM_WORD0F_SWPDIO_EXT) <<
 			    SWDPIO__EXT_SHIFT);
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
+		e1000_write_reg(hw, E1000_CTRL_EXT, ctrl_ext);
 	}
 
 	/* Call the necessary subroutine to configure the link. */
@@ -896,12 +896,12 @@ static int e1000_setup_link(struct e1000_hw *hw)
 
 	/* FCAL/H and FCT are hardcoded to standard values in e1000_ich8lan. */
 	if (hw->mac_type != e1000_ich8lan) {
-		E1000_WRITE_REG(hw, FCT, FLOW_CONTROL_TYPE);
-		E1000_WRITE_REG(hw, FCAH, FLOW_CONTROL_ADDRESS_HIGH);
-		E1000_WRITE_REG(hw, FCAL, FLOW_CONTROL_ADDRESS_LOW);
+		e1000_write_reg(hw, E1000_FCT, FLOW_CONTROL_TYPE);
+		e1000_write_reg(hw, E1000_FCAH, FLOW_CONTROL_ADDRESS_HIGH);
+		e1000_write_reg(hw, E1000_FCAL, FLOW_CONTROL_ADDRESS_LOW);
 	}
 
-	E1000_WRITE_REG(hw, FCTTV, E1000_FC_PAUSE_TIME);
+	e1000_write_reg(hw, E1000_FCTTV, E1000_FC_PAUSE_TIME);
 
 	/* Set the flow control receive threshold registers.  Normally,
 	 * these registers will be set to a default threshold that may be
@@ -913,11 +913,11 @@ static int e1000_setup_link(struct e1000_hw *hw)
 		/* We need to set up the Receive Threshold high and low water marks
 		 * as well as (optionally) enabling the transmission of XON frames.
 		 */
-		E1000_WRITE_REG(hw, FCRTL, E1000_FC_LOW_THRESH | E1000_FCRTL_XONE);
-		E1000_WRITE_REG(hw, FCRTH, E1000_FC_HIGH_THRESH);
+		e1000_write_reg(hw, E1000_FCRTL, E1000_FC_LOW_THRESH | E1000_FCRTL_XONE);
+		e1000_write_reg(hw, E1000_FCRTH, E1000_FC_HIGH_THRESH);
 	} else {
-		E1000_WRITE_REG(hw, FCRTL, 0);
-		E1000_WRITE_REG(hw, FCRTH, 0);
+		e1000_write_reg(hw, E1000_FCRTL, 0);
+		e1000_write_reg(hw, E1000_FCRTH, 0);
 	}
 
 	return ret_val;
@@ -946,7 +946,7 @@ static int e1000_setup_fiber_link(struct e1000_hw *hw)
 	 * set when the optics detect a signal. On older adapters, it will be
 	 * cleared when there is a signal
 	 */
-	ctrl = E1000_READ_REG(hw, CTRL);
+	ctrl = e1000_read_reg(hw, E1000_CTRL);
 	if ((hw->mac_type > e1000_82544) && !(ctrl & E1000_CTRL_ILOS))
 		signal = E1000_CTRL_SWDPIN1;
 	else
@@ -1010,9 +1010,9 @@ static int e1000_setup_fiber_link(struct e1000_hw *hw)
 	 */
 	dev_dbg(hw->dev, "Auto-negotiation enabled (%#x)\n", txcw);
 
-	E1000_WRITE_REG(hw, TXCW, txcw);
-	E1000_WRITE_REG(hw, CTRL, ctrl);
-	E1000_WRITE_FLUSH(hw);
+	e1000_write_reg(hw, E1000_TXCW, txcw);
+	e1000_write_reg(hw, E1000_CTRL, ctrl);
+	e1000_write_flush(hw);
 
 	mdelay(1);
 
@@ -1021,11 +1021,11 @@ static int e1000_setup_fiber_link(struct e1000_hw *hw)
 	 * seen in 500 milliseconds seconds (Auto-negotiation should complete in
 	 * less than 500 milliseconds even if the other end is doing it in SW).
 	 */
-	if ((E1000_READ_REG(hw, CTRL) & E1000_CTRL_SWDPIN1) == signal) {
+	if ((e1000_read_reg(hw, E1000_CTRL) & E1000_CTRL_SWDPIN1) == signal) {
 		dev_dbg(hw->dev, "Looking for Link\n");
 		for (i = 0; i < (LINK_UP_TIMEOUT / 10); i++) {
 			mdelay(10);
-			status = E1000_READ_REG(hw, STATUS);
+			status = e1000_read_reg(hw, E1000_STATUS);
 			if (status & E1000_STATUS_LU)
 				break;
 		}
@@ -1062,7 +1062,7 @@ static int32_t e1000_copper_link_preconfig(struct e1000_hw *hw)
 
 	DEBUGFUNC();
 
-	ctrl = E1000_READ_REG(hw, CTRL);
+	ctrl = e1000_read_reg(hw, E1000_CTRL);
 	/* With 82543, we need to force speed and duplex on the MAC equal to what
 	 * the PHY speed and duplex configuration is. In addition, we need to
 	 * perform a hardware reset on the PHY to take it out of reset.
@@ -1070,11 +1070,11 @@ static int32_t e1000_copper_link_preconfig(struct e1000_hw *hw)
 	if (hw->mac_type > e1000_82543) {
 		ctrl |= E1000_CTRL_SLU;
 		ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
-		E1000_WRITE_REG(hw, CTRL, ctrl);
+		e1000_write_reg(hw, E1000_CTRL, ctrl);
 	} else {
 		ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX
 				| E1000_CTRL_SLU);
-		E1000_WRITE_REG(hw, CTRL, ctrl);
+		e1000_write_reg(hw, E1000_CTRL, ctrl);
 		ret_val = e1000_phy_hw_reset(hw);
 		if (ret_val)
 			return ret_val;
@@ -1137,7 +1137,7 @@ static int32_t e1000_set_d3_lplu_state_off(struct e1000_hw *hw)
 		/* MAC writes into PHY register based on the state transition
 		 * and start auto-negotiation. SW driver can overwrite the
 		 * settings in CSR PHY power control E1000_PHY_CTRL register. */
-		phy_ctrl = E1000_READ_REG(hw, PHY_CTRL);
+		phy_ctrl = e1000_read_reg(hw, E1000_PHY_CTRL);
 	} else {
 		ret_val = e1000_read_phy_reg(hw, IGP02E1000_PHY_POWER_MGMT, &phy_data);
 		if (ret_val)
@@ -1153,7 +1153,7 @@ static int32_t e1000_set_d3_lplu_state_off(struct e1000_hw *hw)
 	} else {
 		if (hw->mac_type == e1000_ich8lan) {
 			phy_ctrl &= ~E1000_PHY_CTRL_NOND0A_LPLU;
-			E1000_WRITE_REG(hw, PHY_CTRL, phy_ctrl);
+			e1000_write_reg(hw, E1000_PHY_CTRL, phy_ctrl);
 		} else {
 			phy_data &= ~IGP02E1000_PM_D3_LPLU;
 			ret_val = e1000_write_phy_reg(hw,
@@ -1191,13 +1191,13 @@ static int32_t e1000_set_d0_lplu_state_off(struct e1000_hw *hw)
 		return E1000_SUCCESS;
 
 	if (hw->mac_type == e1000_ich8lan) {
-		phy_ctrl = E1000_READ_REG(hw, PHY_CTRL);
+		phy_ctrl = e1000_read_reg(hw, E1000_PHY_CTRL);
 		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
-		E1000_WRITE_REG(hw, PHY_CTRL, phy_ctrl);
+		e1000_write_reg(hw, E1000_PHY_CTRL, phy_ctrl);
 	} else if (hw->mac_type == e1000_igb) {
-		phy_ctrl = E1000_READ_REG(hw, I210_PHY_CTRL);
+		phy_ctrl = e1000_read_reg(hw, E1000_I210_PHY_CTRL);
 		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
-		E1000_WRITE_REG(hw, I210_PHY_CTRL, phy_ctrl);
+		e1000_write_reg(hw, E1000_I210_PHY_CTRL, phy_ctrl);
 	} else {
 		ret_val = e1000_read_phy_reg(hw, IGP02E1000_PHY_POWER_MGMT,
 				&phy_data);
@@ -1238,10 +1238,10 @@ static int32_t e1000_copper_link_igp_setup(struct e1000_hw *hw)
 	mdelay(15);
 	if (hw->mac_type != e1000_ich8lan) {
 		/* Configure activity LED after PHY reset */
-		led_ctrl = E1000_READ_REG(hw, LEDCTL);
+		led_ctrl = e1000_read_reg(hw, E1000_LEDCTL);
 		led_ctrl &= IGP_ACTIVITY_LED_MASK;
 		led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
-		E1000_WRITE_REG(hw, LEDCTL, led_ctrl);
+		e1000_write_reg(hw, E1000_LEDCTL, led_ctrl);
 	}
 
 	/* The NVM settings will configure LPLU in D3 for IGP2 and IGP3 PHYs */
@@ -1326,7 +1326,7 @@ static bool e1000_check_mng_mode(struct e1000_hw *hw)
 
 	DEBUGFUNC();
 
-	fwsm = E1000_READ_REG(hw, FWSM);
+	fwsm = e1000_read_reg(hw, E1000_FWSM);
 
 	if (hw->mac_type == e1000_ich8lan) {
 		if ((fwsm & E1000_FWSM_MODE_MASK) ==
@@ -1353,7 +1353,7 @@ static int32_t e1000_write_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint
 
 	reg_val = ((reg_addr << E1000_KUMCTRLSTA_OFFSET_SHIFT)
 			& E1000_KUMCTRLSTA_OFFSET) | data;
-	E1000_WRITE_REG(hw, KUMCTRLSTA, reg_val);
+	e1000_write_reg(hw, E1000_KUMCTRLSTA, reg_val);
 	udelay(2);
 
 	return E1000_SUCCESS;
@@ -1376,11 +1376,11 @@ static int32_t e1000_read_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint1
 	/* Write register address */
 	reg_val = ((reg_addr << E1000_KUMCTRLSTA_OFFSET_SHIFT) &
 			E1000_KUMCTRLSTA_OFFSET) | E1000_KUMCTRLSTA_REN;
-	E1000_WRITE_REG(hw, KUMCTRLSTA, reg_val);
+	e1000_write_reg(hw, E1000_KUMCTRLSTA, reg_val);
 	udelay(2);
 
 	/* Read the data returned */
-	reg_val = E1000_READ_REG(hw, KUMCTRLSTA);
+	reg_val = e1000_read_reg(hw, E1000_KUMCTRLSTA);
 	*data = (uint16_t)reg_val;
 
 	return E1000_SUCCESS;
@@ -1462,9 +1462,9 @@ static int32_t e1000_copper_link_ggp_setup(struct e1000_hw *hw)
 	if (ret_val)
 		return ret_val;
 
-	reg_data = E1000_READ_REG(hw, CTRL_EXT);
+	reg_data = e1000_read_reg(hw, E1000_CTRL_EXT);
 	reg_data &= ~(E1000_CTRL_EXT_LINK_MODE_MASK);
-	E1000_WRITE_REG(hw, CTRL_EXT, reg_data);
+	e1000_write_reg(hw, E1000_CTRL_EXT, reg_data);
 
 	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_PWR_MGMT_CTRL, &phy_data);
 	if (ret_val)
@@ -1930,13 +1930,13 @@ static void e1000_config_collision_dist(struct e1000_hw *hw)
 	else
 		coll_dist = E1000_COLLISION_DISTANCE;
 
-	tctl = E1000_READ_REG(hw, TCTL);
+	tctl = e1000_read_reg(hw, E1000_TCTL);
 
 	tctl &= ~E1000_TCTL_COLD;
 	tctl |= coll_dist << E1000_COLD_SHIFT;
 
-	E1000_WRITE_REG(hw, TCTL, tctl);
-	E1000_WRITE_FLUSH(hw);
+	e1000_write_reg(hw, E1000_TCTL, tctl);
+	e1000_write_flush(hw);
 }
 
 /******************************************************************************
@@ -1958,7 +1958,7 @@ static int e1000_config_mac_to_phy(struct e1000_hw *hw)
 	/* Read the Device Control Register and set the bits to Force Speed
 	 * and Duplex.
 	 */
-	ctrl = E1000_READ_REG(hw, CTRL);
+	ctrl = e1000_read_reg(hw, E1000_CTRL);
 	ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 	ctrl &= ~(E1000_CTRL_ILOS);
 	ctrl |= (E1000_CTRL_SPD_SEL);
@@ -1985,7 +1985,7 @@ static int e1000_config_mac_to_phy(struct e1000_hw *hw)
 	else if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_100MBS)
 		ctrl |= E1000_CTRL_SPD_100;
 	/* Write the configured values back to the Device Control Reg. */
-	E1000_WRITE_REG(hw, CTRL, ctrl);
+	e1000_write_reg(hw, E1000_CTRL, ctrl);
 	return 0;
 }
 
@@ -2007,7 +2007,7 @@ static int e1000_force_mac_fc(struct e1000_hw *hw)
 	DEBUGFUNC();
 
 	/* Get the current configuration of the Device Control Register */
-	ctrl = E1000_READ_REG(hw, CTRL);
+	ctrl = e1000_read_reg(hw, E1000_CTRL);
 
 	/* Because we didn't get link via the internal auto-negotiation
 	 * mechanism (we either forced link or we got link via PHY
@@ -2051,7 +2051,7 @@ static int e1000_force_mac_fc(struct e1000_hw *hw)
 	if (hw->mac_type == e1000_82542_rev2_0)
 		ctrl &= (~E1000_CTRL_TFCE);
 
-	E1000_WRITE_REG(hw, CTRL, ctrl);
+	e1000_write_reg(hw, E1000_CTRL, ctrl);
 	return 0;
 }
 
@@ -2261,10 +2261,10 @@ static int32_t e1000_configure_kmrn_for_10_100(struct e1000_hw *hw, uint16_t dup
 		return ret_val;
 
 	/* Configure Transmit Inter-Packet Gap */
-	tipg = E1000_READ_REG(hw, TIPG);
+	tipg = e1000_read_reg(hw, E1000_TIPG);
 	tipg &= ~E1000_TIPG_IPGT_MASK;
 	tipg |= DEFAULT_80003ES2LAN_TIPG_IPGT_10_100;
-	E1000_WRITE_REG(hw, TIPG, tipg);
+	e1000_write_reg(hw, E1000_TIPG, tipg);
 
 	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, &reg_data);
 
@@ -2296,10 +2296,10 @@ static int32_t e1000_configure_kmrn_for_1000(struct e1000_hw *hw)
 		return ret_val;
 
 	/* Configure Transmit Inter-Packet Gap */
-	tipg = E1000_READ_REG(hw, TIPG);
+	tipg = e1000_read_reg(hw, E1000_TIPG);
 	tipg &= ~E1000_TIPG_IPGT_MASK;
 	tipg |= DEFAULT_80003ES2LAN_TIPG_IPGT_1000;
-	E1000_WRITE_REG(hw, TIPG, tipg);
+	e1000_write_reg(hw, E1000_TIPG, tipg);
 
 	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, &reg_data);
 
@@ -2328,7 +2328,7 @@ static int e1000_get_speed_and_duplex(struct e1000_hw *hw, uint16_t *speed,
 	DEBUGFUNC();
 
 	if (hw->mac_type >= e1000_82543) {
-		status = E1000_READ_REG(hw, STATUS);
+		status = e1000_read_reg(hw, E1000_STATUS);
 		if (status & E1000_STATUS_SPEED_1000) {
 			*speed = SPEED_1000;
 			dev_dbg(hw->dev, "1000 Mbs, ");
@@ -2411,8 +2411,8 @@ static void e1000_raise_mdi_clk(struct e1000_hw *hw, uint32_t * ctrl)
 	/* Raise the clock input to the Management Data Clock (by setting the MDC
 	 * bit), and then delay 2 microseconds.
 	 */
-	E1000_WRITE_REG(hw, CTRL, (*ctrl | E1000_CTRL_MDC));
-	E1000_WRITE_FLUSH(hw);
+	e1000_write_reg(hw, E1000_CTRL, (*ctrl | E1000_CTRL_MDC));
+	e1000_write_flush(hw);
 	udelay(2);
 }
 
@@ -2427,8 +2427,8 @@ static void e1000_lower_mdi_clk(struct e1000_hw *hw, uint32_t * ctrl)
 	/* Lower the clock input to the Management Data Clock (by clearing the MDC
 	 * bit), and then delay 2 microseconds.
 	 */
-	E1000_WRITE_REG(hw, CTRL, (*ctrl & ~E1000_CTRL_MDC));
-	E1000_WRITE_FLUSH(hw);
+	e1000_write_reg(hw, E1000_CTRL, (*ctrl & ~E1000_CTRL_MDC));
+	e1000_write_flush(hw);
 	udelay(2);
 }
 
@@ -2454,7 +2454,7 @@ static void e1000_shift_out_mdi_bits(struct e1000_hw *hw, uint32_t data,
 	mask = 0x01;
 	mask <<= (count - 1);
 
-	ctrl = E1000_READ_REG(hw, CTRL);
+	ctrl = e1000_read_reg(hw, E1000_CTRL);
 
 	/* Set MDIO_DIR and MDC_DIR direction bits to be used as output pins. */
 	ctrl |= (E1000_CTRL_MDIO_DIR | E1000_CTRL_MDC_DIR);
@@ -2470,8 +2470,8 @@ static void e1000_shift_out_mdi_bits(struct e1000_hw *hw, uint32_t data,
 		else
 			ctrl &= ~E1000_CTRL_MDIO;
 
-		E1000_WRITE_REG(hw, CTRL, ctrl);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_CTRL, ctrl);
+		e1000_write_flush(hw);
 
 		udelay(2);
 
@@ -2502,14 +2502,14 @@ static uint16_t e1000_shift_in_mdi_bits(struct e1000_hw *hw)
 	 * by raising the input to the Management Data Clock (setting the MDC bit),
 	 * and then reading the value of the MDIO bit.
 	 */
-	ctrl = E1000_READ_REG(hw, CTRL);
+	ctrl = e1000_read_reg(hw, E1000_CTRL);
 
 	/* Clear MDIO_DIR (SWDPIO1) to indicate this bit is to be used as input. */
 	ctrl &= ~E1000_CTRL_MDIO_DIR;
 	ctrl &= ~E1000_CTRL_MDIO;
 
-	E1000_WRITE_REG(hw, CTRL, ctrl);
-	E1000_WRITE_FLUSH(hw);
+	e1000_write_reg(hw, E1000_CTRL, ctrl);
+	e1000_write_flush(hw);
 
 	/* Raise and Lower the clock before reading in the data. This accounts for
 	 * the turnaround bits. The first clock occurred when we clocked out the
@@ -2521,7 +2521,7 @@ static uint16_t e1000_shift_in_mdi_bits(struct e1000_hw *hw)
 	for (data = 0, i = 0; i < 16; i++) {
 		data = data << 1;
 		e1000_raise_mdi_clk(hw, &ctrl);
-		ctrl = E1000_READ_REG(hw, CTRL);
+		ctrl = e1000_read_reg(hw, E1000_CTRL);
 		/* Check to see if we shifted in a "1". */
 		if (ctrl & E1000_CTRL_MDIO)
 			data |= 1;
@@ -2552,12 +2552,12 @@ static int e1000_phy_read(struct mii_bus *bus, int phy_addr, int reg_addr)
 			(phy_addr << E1000_MDIC_PHY_SHIFT) |
 			(E1000_MDIC_OP_READ));
 
-		E1000_WRITE_REG(hw, MDIC, mdic);
+		e1000_write_reg(hw, E1000_MDIC, mdic);
 
 		/* Poll the ready bit to see if the MDI read completed */
 		for (i = 0; i < 64; i++) {
 			udelay(10);
-			mdic = E1000_READ_REG(hw, MDIC);
+			mdic = e1000_read_reg(hw, E1000_MDIC);
 			if (mdic & E1000_MDIC_READY)
 				break;
 		}
@@ -2641,12 +2641,12 @@ static int e1000_phy_write(struct mii_bus *bus, int phy_addr,
 			(phy_addr << E1000_MDIC_PHY_SHIFT) |
 			(E1000_MDIC_OP_WRITE));
 
-		E1000_WRITE_REG(hw, MDIC, mdic);
+		e1000_write_reg(hw, E1000_MDIC, mdic);
 
 		/* Poll the ready bit to see if the MDI read completed */
 		for (i = 0; i < 64; i++) {
 			udelay(10);
-			mdic = E1000_READ_REG(hw, MDIC);
+			mdic = e1000_read_reg(hw, E1000_MDIC);
 			if (mdic & E1000_MDIC_READY)
 				break;
 		}
@@ -2704,14 +2704,14 @@ static int e1000_write_phy_reg(struct e1000_hw *hw, uint32_t reg_addr, uint16_t
 static int32_t e1000_check_phy_reset_block(struct e1000_hw *hw)
 {
 	if (hw->mac_type == e1000_ich8lan) {
-		if (E1000_READ_REG(hw, FWSM) & E1000_FWSM_RSPCIPHY)
+		if (e1000_read_reg(hw, E1000_FWSM) & E1000_FWSM_RSPCIPHY)
 			return E1000_SUCCESS;
 		else
 			return E1000_BLK_PHY_RESET;
 	}
 
 	if (hw->mac_type > e1000_82547_rev_2) {
-		if (E1000_READ_REG(hw, MANC) & E1000_MANC_BLK_PHY_RST_ON_IDE)
+		if (e1000_read_reg(hw, E1000_MANC) & E1000_MANC_BLK_PHY_RST_ON_IDE)
 			return E1000_BLK_PHY_RESET;
 		else
 			return E1000_SUCCESS;
@@ -2752,10 +2752,10 @@ static int32_t e1000_get_phy_cfg_done(struct e1000_hw *hw)
 	case e1000_igb:
 		while (timeout) {
 			if (hw->mac_type == e1000_igb) {
-				if (E1000_READ_REG(hw, I210_EEMNGCTL) & cfg_mask)
+				if (e1000_read_reg(hw, E1000_I210_EEMNGCTL) & cfg_mask)
 					break;
 			} else {
-				if (E1000_READ_REG(hw, EEMNGCTL) & cfg_mask)
+				if (e1000_read_reg(hw, E1000_EEMNGCTL) & cfg_mask)
 					break;
 			}
 			mdelay(1);
@@ -2805,14 +2805,14 @@ static int32_t e1000_phy_hw_reset(struct e1000_hw *hw)
 		/* Read the device control register and assert the E1000_CTRL_PHY_RST
 		 * bit. Then, take it out of reset.
 		 */
-		ctrl = E1000_READ_REG(hw, CTRL);
-		E1000_WRITE_REG(hw, CTRL, ctrl | E1000_CTRL_PHY_RST);
-		E1000_WRITE_FLUSH(hw);
+		ctrl = e1000_read_reg(hw, E1000_CTRL);
+		e1000_write_reg(hw, E1000_CTRL, ctrl | E1000_CTRL_PHY_RST);
+		e1000_write_flush(hw);
 
 		udelay(100);
 
-		E1000_WRITE_REG(hw, CTRL, ctrl);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_CTRL, ctrl);
+		e1000_write_flush(hw);
 
 		if (hw->mac_type >= e1000_82571)
 			mdelay(10);
@@ -2820,24 +2820,24 @@ static int32_t e1000_phy_hw_reset(struct e1000_hw *hw)
 		/* Read the Extended Device Control Register, assert the PHY_RESET_DIR
 		 * bit to put the PHY into reset. Then, take it out of reset.
 		 */
-		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		ctrl_ext = e1000_read_reg(hw, E1000_CTRL_EXT);
 		ctrl_ext |= E1000_CTRL_EXT_SDP4_DIR;
 		ctrl_ext &= ~E1000_CTRL_EXT_SDP4_DATA;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_CTRL_EXT, ctrl_ext);
+		e1000_write_flush(hw);
 		mdelay(10);
 		ctrl_ext |= E1000_CTRL_EXT_SDP4_DATA;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_CTRL_EXT, ctrl_ext);
+		e1000_write_flush(hw);
 	}
 	udelay(150);
 
 	if ((hw->mac_type == e1000_82541) || (hw->mac_type == e1000_82547)) {
 		/* Configure activity LED after PHY reset */
-		led_ctrl = E1000_READ_REG(hw, LEDCTL);
+		led_ctrl = e1000_read_reg(hw, E1000_LEDCTL);
 		led_ctrl &= IGP_ACTIVITY_LED_MASK;
 		led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
-		E1000_WRITE_REG(hw, LEDCTL, led_ctrl);
+		e1000_write_reg(hw, E1000_LEDCTL, led_ctrl);
 	}
 
 	/* Wait for FW to finish PHY configuration. */
@@ -3147,7 +3147,7 @@ static void e1000_set_media_type(struct e1000_hw *hw)
 		break;
 	}
 
-	if (E1000_READ_REG(hw, STATUS) & E1000_STATUS_TBIMODE)
+	if (e1000_read_reg(hw, E1000_STATUS) & E1000_STATUS_TBIMODE)
 		hw->media_type = e1000_media_type_fiber;
 	else
 		hw->media_type = e1000_media_type_copper;
@@ -3198,7 +3198,7 @@ static void fill_rx(struct e1000_hw *hw)
 
 	rd->buffer_addr = cpu_to_le64((unsigned long)hw->packet);
 
-	E1000_WRITE_REG(hw, RDT, hw->rx_tail);
+	e1000_write_reg(hw, E1000_RDT, hw->rx_tail);
 }
 
 /**
@@ -3214,14 +3214,14 @@ static void e1000_configure_tx(struct e1000_hw *hw)
 	unsigned long tipg, tarc;
 	uint32_t ipgr1, ipgr2;
 
-	E1000_WRITE_REG(hw, TDBAL, (unsigned long)hw->tx_base);
-	E1000_WRITE_REG(hw, TDBAH, 0);
+	e1000_write_reg(hw, E1000_TDBAL, (unsigned long)hw->tx_base);
+	e1000_write_reg(hw, E1000_TDBAH, 0);
 
-	E1000_WRITE_REG(hw, TDLEN, 128);
+	e1000_write_reg(hw, E1000_TDLEN, 128);
 
 	/* Setup the HW Tx Head and Tail descriptor pointers */
-	E1000_WRITE_REG(hw, TDH, 0);
-	E1000_WRITE_REG(hw, TDT, 0);
+	e1000_write_reg(hw, E1000_TDH, 0);
+	e1000_write_reg(hw, E1000_TDT, 0);
 	hw->tx_tail = 0;
 
 	/* Set the default values for the Tx Inter Packet Gap timer */
@@ -3251,25 +3251,25 @@ static void e1000_configure_tx(struct e1000_hw *hw)
 	}
 	tipg |= ipgr1 << E1000_TIPG_IPGR1_SHIFT;
 	tipg |= ipgr2 << E1000_TIPG_IPGR2_SHIFT;
-	E1000_WRITE_REG(hw, TIPG, tipg);
+	e1000_write_reg(hw, E1000_TIPG, tipg);
 	/* Program the Transmit Control Register */
-	tctl = E1000_READ_REG(hw, TCTL);
+	tctl = e1000_read_reg(hw, E1000_TCTL);
 	tctl &= ~E1000_TCTL_CT;
 	tctl |= E1000_TCTL_EN | E1000_TCTL_PSP |
 	    (E1000_COLLISION_THRESHOLD << E1000_CT_SHIFT);
 
 	if (hw->mac_type == e1000_82571 || hw->mac_type == e1000_82572) {
-		tarc = E1000_READ_REG(hw, TARC0);
+		tarc = e1000_read_reg(hw, E1000_TARC0);
 		/* set the speed mode bit, we'll clear it if we're not at
 		 * gigabit link later */
 		/* git bit can be set to 1*/
 	} else if (hw->mac_type == e1000_80003es2lan) {
-		tarc = E1000_READ_REG(hw, TARC0);
+		tarc = e1000_read_reg(hw, E1000_TARC0);
 		tarc |= 1;
-		E1000_WRITE_REG(hw, TARC0, tarc);
-		tarc = E1000_READ_REG(hw, TARC1);
+		e1000_write_reg(hw, E1000_TARC0, tarc);
+		tarc = e1000_read_reg(hw, E1000_TARC1);
 		tarc |= 1;
-		E1000_WRITE_REG(hw, TARC1, tarc);
+		e1000_write_reg(hw, E1000_TARC1, tarc);
 	}
 
 
@@ -3287,15 +3287,15 @@ static void e1000_configure_tx(struct e1000_hw *hw)
 	if (hw->mac_type == e1000_igb) {
 		uint32_t reg_txdctl;
 
-		E1000_WRITE_REG(hw, TCTL_EXT, 0x42 << 10);
+		e1000_write_reg(hw, E1000_TCTL_EXT, 0x42 << 10);
 
-		reg_txdctl = E1000_READ_REG(hw, TXDCTL);
+		reg_txdctl = e1000_read_reg(hw, E1000_TXDCTL);
 		reg_txdctl |= 1 << 25;
-		E1000_WRITE_REG(hw, TXDCTL, reg_txdctl);
+		e1000_write_reg(hw, E1000_TXDCTL, reg_txdctl);
 		mdelay(20);
 	}
 
-	E1000_WRITE_REG(hw, TCTL, tctl);
+	e1000_write_reg(hw, E1000_TCTL, tctl);
 }
 
 /**
@@ -3306,7 +3306,7 @@ static void e1000_setup_rctl(struct e1000_hw *hw)
 {
 	uint32_t rctl;
 
-	rctl = E1000_READ_REG(hw, RCTL);
+	rctl = e1000_read_reg(hw, E1000_RCTL);
 
 	rctl &= ~(3 << E1000_RCTL_MO_SHIFT);
 
@@ -3319,7 +3319,7 @@ static void e1000_setup_rctl(struct e1000_hw *hw)
 	rctl &= ~(E1000_RCTL_SZ_4096);
 		rctl |= E1000_RCTL_SZ_2048;
 		rctl &= ~(E1000_RCTL_BSEX | E1000_RCTL_LPE);
-	E1000_WRITE_REG(hw, RCTL, rctl);
+	e1000_write_reg(hw, E1000_RCTL, rctl);
 }
 
 /**
@@ -3334,42 +3334,42 @@ static void e1000_configure_rx(struct e1000_hw *hw)
 
 	hw->rx_tail = 0;
 	/* make sure receives are disabled while setting up the descriptors */
-	rctl = E1000_READ_REG(hw, RCTL);
-	E1000_WRITE_REG(hw, RCTL, rctl & ~E1000_RCTL_EN);
+	rctl = e1000_read_reg(hw, E1000_RCTL);
+	e1000_write_reg(hw, E1000_RCTL, rctl & ~E1000_RCTL_EN);
 	if (hw->mac_type >= e1000_82540) {
 		/* Set the interrupt throttling rate.  Value is calculated
 		 * as DEFAULT_ITR = 1/(MAX_INTS_PER_SEC * 256ns) */
 #define MAX_INTS_PER_SEC	8000
 #define DEFAULT_ITR		1000000000/(MAX_INTS_PER_SEC * 256)
-		E1000_WRITE_REG(hw, ITR, DEFAULT_ITR);
+		e1000_write_reg(hw, E1000_ITR, DEFAULT_ITR);
 	}
 
 	if (hw->mac_type >= e1000_82571) {
-		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		ctrl_ext = e1000_read_reg(hw, E1000_CTRL_EXT);
 		/* Reset delay timers after every interrupt */
 		ctrl_ext |= E1000_CTRL_EXT_INT_TIMER_CLR;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_CTRL_EXT, ctrl_ext);
+		e1000_write_flush(hw);
 	}
 	/* Setup the Base and Length of the Rx Descriptor Ring */
-	E1000_WRITE_REG(hw, RDBAL, (unsigned long)hw->rx_base);
-	E1000_WRITE_REG(hw, RDBAH, 0);
+	e1000_write_reg(hw, E1000_RDBAL, (unsigned long)hw->rx_base);
+	e1000_write_reg(hw, E1000_RDBAH, 0);
 
-	E1000_WRITE_REG(hw, RDLEN, 128);
+	e1000_write_reg(hw, E1000_RDLEN, 128);
 
 	/* Setup the HW Rx Head and Tail Descriptor Pointers */
-	E1000_WRITE_REG(hw, RDH, 0);
-	E1000_WRITE_REG(hw, RDT, 0);
+	e1000_write_reg(hw, E1000_RDH, 0);
+	e1000_write_reg(hw, E1000_RDT, 0);
 	/* Enable Receives */
 
 	if (hw->mac_type == e1000_igb) {
-		uint32_t reg_rxdctl = E1000_READ_REG(hw, RXDCTL);
+		uint32_t reg_rxdctl = e1000_read_reg(hw, E1000_RXDCTL);
 		reg_rxdctl |= 1 << 25;
-		E1000_WRITE_REG(hw, RXDCTL, reg_rxdctl);
+		e1000_write_reg(hw, E1000_RXDCTL, reg_rxdctl);
 		mdelay(20);
 	}
 
-	E1000_WRITE_REG(hw, RCTL, rctl);
+	e1000_write_reg(hw, E1000_RCTL, rctl);
 
 	fill_rx(hw);
 }
@@ -3410,9 +3410,9 @@ static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
 
 	dma_sync_single_for_device((unsigned long)txpacket, length, DMA_TO_DEVICE);
 
-	E1000_WRITE_REG(hw, TDT, hw->tx_tail);
+	e1000_write_reg(hw, E1000_TDT, hw->tx_tail);
 
-	E1000_WRITE_FLUSH(hw);
+	e1000_write_flush(hw);
 
 	to = get_time_ns();
 	while (1) {
@@ -3432,16 +3432,16 @@ static void e1000_disable(struct eth_device *edev)
 	struct e1000_hw *hw = edev->priv;
 
 	/* Turn off the ethernet interface */
-	E1000_WRITE_REG(hw, RCTL, 0);
-	E1000_WRITE_REG(hw, TCTL, 0);
+	e1000_write_reg(hw, E1000_RCTL, 0);
+	e1000_write_reg(hw, E1000_TCTL, 0);
 
 	/* Clear the transmit ring */
-	E1000_WRITE_REG(hw, TDH, 0);
-	E1000_WRITE_REG(hw, TDT, 0);
+	e1000_write_reg(hw, E1000_TDH, 0);
+	e1000_write_reg(hw, E1000_TDT, 0);
 
 	/* Clear the receive ring */
-	E1000_WRITE_REG(hw, RDH, 0);
-	E1000_WRITE_REG(hw, RDT, 0);
+	e1000_write_reg(hw, E1000_RDH, 0);
+	e1000_write_reg(hw, E1000_RDT, 0);
 
 	mdelay(10);
 }
@@ -3456,15 +3456,15 @@ static int e1000_init(struct eth_device *edev)
 	DEBUGFUNC();
 
 	if (hw->mac_type >= e1000_82544)
-		E1000_WRITE_REG(hw, WUC, 0);
+		e1000_write_reg(hw, E1000_WUC, 0);
 
 	/* force full DMA clock frequency for 10/100 on ICH8 A0-B0 */
 	if ((hw->mac_type == e1000_ich8lan) && ((hw->revision_id < 3) ||
 	    ((hw->device_id != E1000_DEV_ID_ICH8_IGP_M_AMT) &&
 	     (hw->device_id != E1000_DEV_ID_ICH8_IGP_M)))) {
-		reg_data = E1000_READ_REG(hw, STATUS);
+		reg_data = e1000_read_reg(hw, E1000_STATUS);
 		reg_data &= ~0x80000000;
-		E1000_WRITE_REG(hw, STATUS, reg_data);
+		e1000_write_reg(hw, E1000_STATUS, reg_data);
 	}
 
 	/* Set the media type and TBI compatibility */
@@ -3478,7 +3478,7 @@ static int e1000_init(struct eth_device *edev)
 	/* VET hardcoded to standard value and VFTA removed in ICH8 LAN */
 	if (hw->mac_type != e1000_ich8lan) {
 		if (hw->mac_type < e1000_82545_rev_3)
-			E1000_WRITE_REG(hw, VET, 0);
+			e1000_write_reg(hw, E1000_VET, 0);
 		e1000_clear_vfta(hw);
 	}
 
@@ -3487,20 +3487,20 @@ static int e1000_init(struct eth_device *edev)
 		dev_dbg(hw->dev, "Disabling MWI on 82542 rev 2.0\n");
 		pci_write_config_word(hw->pdev, PCI_COMMAND,
 				      hw->pci_cmd_word & ~PCI_COMMAND_INVALIDATE);
-		E1000_WRITE_REG(hw, RCTL, E1000_RCTL_RST);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_RCTL, E1000_RCTL_RST);
+		e1000_write_flush(hw);
 		mdelay(5);
 	}
 
 	for (i = 1; i < E1000_RAR_ENTRIES; i++) {
-		E1000_WRITE_REG_ARRAY(hw, RA, (i << 1), 0);
-		E1000_WRITE_REG_ARRAY(hw, RA, ((i << 1) + 1), 0);
+		e1000_write_reg_array(hw, E1000_RA, (i << 1), 0);
+		e1000_write_reg_array(hw, E1000_RA, (i << 1) + 1, 0);
 	}
 
 	/* For 82542 (rev 2.0), take the receiver out of reset and enable MWI */
 	if (hw->mac_type == e1000_82542_rev2_0) {
-		E1000_WRITE_REG(hw, RCTL, 0);
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_reg(hw, E1000_RCTL, 0);
+		e1000_write_flush(hw);
 		mdelay(1);
 		pci_write_config_word(hw->pdev, PCI_COMMAND, hw->pci_cmd_word);
 	}
@@ -3511,10 +3511,10 @@ static int e1000_init(struct eth_device *edev)
 		mta_size = E1000_MC_TBL_SIZE_ICH8LAN;
 
 	for (i = 0; i < mta_size; i++) {
-		E1000_WRITE_REG_ARRAY(hw, MTA, i, 0);
+		e1000_write_reg_array(hw, E1000_MTA, i, 0);
 		/* use write flush to prevent Memory Write Block (MWB) from
 		 * occuring when accessing our register space */
-		E1000_WRITE_FLUSH(hw);
+		e1000_write_flush(hw);
 	}
 
 	/* More time needed for PHY to initialize */
@@ -3571,7 +3571,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		dev_err(&pdev->dev, "EEPROM is invalid!\n");
 		return -EINVAL;
 	}
-	if ((E1000_READ_REG(hw, I210_EECD) & E1000_EECD_FLUPD) &&
+	if ((e1000_read_reg(hw, E1000_I210_EECD) & E1000_EECD_FLUPD) &&
 	    e1000_validate_eeprom_checksum(hw))
 		return -EINVAL;
 
diff --git a/drivers/net/e1000/regio.c b/drivers/net/e1000/regio.c
new file mode 100644
index 0000000..8c529f1
--- /dev/null
+++ b/drivers/net/e1000/regio.c
@@ -0,0 +1,29 @@
+#include <common.h>
+
+#include "e1000.h"
+
+void e1000_write_reg(struct e1000_hw *hw, uint32_t reg, uint32_t value)
+{
+	writel(value, hw->hw_addr + reg);
+}
+
+uint32_t e1000_read_reg(struct e1000_hw *hw, uint32_t reg)
+{
+	return readl(hw->hw_addr + reg);
+}
+
+void e1000_write_reg_array(struct e1000_hw *hw, uint32_t base,
+			   uint32_t idx, uint32_t value)
+{
+	writel(value, hw->hw_addr + base + idx * sizeof(uint32_t));
+}
+
+uint32_t e1000_read_reg_array(struct e1000_hw *hw, uint32_t base, uint32_t idx)
+{
+	return readl(hw->hw_addr + base + idx * sizeof(uint32_t));
+}
+
+void e1000_write_flush(struct e1000_hw *hw)
+{
+	e1000_read_reg(hw, E1000_STATUS);
+}
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
