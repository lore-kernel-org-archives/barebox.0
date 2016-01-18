Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL0sv-0004zC-JS
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:48 +0000
Received: by mail-pa0-x244.google.com with SMTP id yy13so32047711pab.1
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:36 -0800
Message-Id: <1453089161-6697-15-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/20] e1000: Refactor Flash/EEPROM reading code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Refactor Flash/EEPROM reading code to use vtable with pointers to
small, specialized functions based on the flash class instead of big
monolithic funtions whose behaviour is driven by a number of flags and
variables.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h  |   9 +-
 drivers/net/e1000/eeprom.c | 312 +++++++++++++++++++++++++++------------------
 2 files changed, 195 insertions(+), 126 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 92e2100..291e64d 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -693,13 +693,20 @@ struct e1000_tx_desc {
 #define E1000_82542_FFMT     E1000_FFMT
 #define E1000_82542_FFVT     E1000_FFVT

+struct e1000_hw;
+
 struct e1000_eeprom_info {
 	e1000_eeprom_type type;
 	uint16_t word_size;
 	uint16_t opcode_bits;
 	uint16_t address_bits;
 	uint16_t delay_usec;
-	bool use_eerd;
+
+	int32_t (*acquire) (struct e1000_hw *hw);
+	void    (*release) (struct e1000_hw *hw);
+
+	int32_t (*read) (struct e1000_hw *hw, uint16_t offset,
+			 uint16_t words, uint16_t *data);
 };

 #define E1000_EEPROM_SWDPIN0   0x0001	/* SWDPIN 0 EEPROM Value */
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 1f26a87..c3677c5 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -5,6 +5,18 @@

 #include "e1000.h"

+static void e1000_release_eeprom_spi(struct e1000_hw *hw);
+static int32_t e1000_read_eeprom_spi(struct e1000_hw *hw, uint16_t offset,
+				     uint16_t words, uint16_t *data);
+static void e1000_release_eeprom_microwire(struct e1000_hw *hw);
+static int32_t e1000_read_eeprom_microwire(struct e1000_hw *hw, uint16_t offset,
+					   uint16_t words, uint16_t *data);
+
+static int32_t e1000_read_eeprom_eerd(struct e1000_hw *hw, uint16_t offset,
+				      uint16_t words, uint16_t *data);
+static int32_t e1000_spi_eeprom_ready(struct e1000_hw *hw);
+static void e1000_release_eeprom(struct e1000_hw *hw);
+


 /******************************************************************************
@@ -202,28 +214,22 @@ static bool e1000_is_onboard_nvm_eeprom(struct e1000_hw *hw)
 	return true;
 }

-/******************************************************************************
- * Prepares EEPROM for access
- *
- * hw - Struct containing variables accessed by shared code
- *
- * Lowers EEPROM clock. Clears input pin. Sets the chip select pin. This
- * function should be called before issuing a command to the EEPROM.
- *****************************************************************************/
-static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
+static int32_t
+e1000_acquire_eeprom_spi_microwire_prologue(struct e1000_hw *hw)
 {
-	struct e1000_eeprom_info *eeprom = &hw->eeprom;
-	uint32_t eecd, i = 0;
-
-	DEBUGFUNC();
+	uint32_t eecd;

 	if (e1000_swfw_sync_acquire(hw, E1000_SWFW_EEP_SM))
 		return -E1000_ERR_SWFW_SYNC;
+
 	eecd = E1000_READ_REG(hw, EECD);

 	/* Request EEPROM Access */
-	if (hw->mac_type > e1000_82544 && hw->mac_type != e1000_82573 &&
-			hw->mac_type != e1000_82574) {
+	if (hw->mac_type > e1000_82544  &&
+	    hw->mac_type != e1000_82573 &&
+	    hw->mac_type != e1000_82574) {
+		int i = 0;
+
 		eecd |= E1000_EECD_REQ;
 		E1000_WRITE_REG(hw, EECD, eecd);
 		eecd = E1000_READ_REG(hw, EECD);
@@ -241,26 +247,57 @@ static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
 		}
 	}

-	/* Setup EEPROM for Read/Write */
+	return E1000_SUCCESS;
+}
+
+static int32_t e1000_acquire_eeprom_spi(struct e1000_hw *hw)
+{
+	int32_t ret;
+	uint32_t eecd;

-	if (eeprom->type == e1000_eeprom_microwire) {
-		/* Clear SK and DI */
-		eecd &= ~(E1000_EECD_DI | E1000_EECD_SK);
-		E1000_WRITE_REG(hw, EECD, eecd);
+	ret = e1000_acquire_eeprom_spi_microwire_prologue(hw);
+	if (ret != E1000_SUCCESS)
+		return ret;

-		/* Set CS */
-		eecd |= E1000_EECD_CS;
-		E1000_WRITE_REG(hw, EECD, eecd);
-	} else if (eeprom->type == e1000_eeprom_spi) {
-		/* Clear SK and CS */
-		eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
-		E1000_WRITE_REG(hw, EECD, eecd);
-		udelay(1);
-	}
+	eecd = E1000_READ_REG(hw, EECD);
+
+	/* Clear SK and CS */
+	eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
+	E1000_WRITE_REG(hw, EECD, eecd);
+	udelay(1);

 	return E1000_SUCCESS;
 }

+static int32_t e1000_acquire_eeprom_microwire(struct e1000_hw *hw)
+{
+	int ret;
+	uint32_t eecd;
+
+	ret = e1000_acquire_eeprom_spi_microwire_prologue(hw);
+	if (ret != E1000_SUCCESS)
+		return ret;
+
+	eecd = E1000_READ_REG(hw, EECD);
+	/* Clear SK and DI */
+	eecd &= ~(E1000_EECD_DI | E1000_EECD_SK);
+	E1000_WRITE_REG(hw, EECD, eecd);
+
+	/* Set CS */
+	eecd |= E1000_EECD_CS;
+	E1000_WRITE_REG(hw, EECD, eecd);
+
+	return E1000_SUCCESS;
+}
+
+static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
+{
+	if (hw->eeprom.acquire)
+		return hw->eeprom.acquire(hw);
+	else
+		return E1000_SUCCESS;
+}
+
 static void e1000_eeprom_uses_spi(struct e1000_eeprom_info *eeprom,
 				  uint32_t eecd)
 {
@@ -273,7 +310,9 @@ static void e1000_eeprom_uses_spi(struct e1000_eeprom_info *eeprom,
 		eeprom->address_bits = 8;
 	}

-	eeprom->use_eerd = false;
+	eeprom->acquire = e1000_acquire_eeprom_spi;
+	eeprom->release = e1000_release_eeprom_spi;
+	eeprom->read = e1000_read_eeprom_spi;
 }

 static void e1000_eeprom_uses_microwire(struct e1000_eeprom_info *eeprom,
@@ -289,7 +328,10 @@ static void e1000_eeprom_uses_microwire(struct e1000_eeprom_info *eeprom,
 		eeprom->word_size = 64;
 		eeprom->address_bits = 6;
 	}
-	eeprom->use_eerd = false;
+
+	eeprom->acquire = e1000_acquire_eeprom_microwire;
+	eeprom->release = e1000_release_eeprom_microwire;
+	eeprom->read = e1000_read_eeprom_microwire;
 }


@@ -343,8 +385,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		if (e1000_is_onboard_nvm_eeprom(hw)) {
 			e1000_eeprom_uses_spi(eeprom, eecd);
 		} else {
-			eeprom->use_eerd = true;
-
+			eeprom->read = e1000_read_eeprom_eerd;
 			eeprom->type = e1000_eeprom_flash;
 			eeprom->word_size = 2048;

@@ -356,7 +397,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		break;
 	case e1000_80003es2lan:
 		eeprom->type = e1000_eeprom_spi;
-		eeprom->use_eerd = true;
+		eeprom->read = e1000_read_eeprom_eerd;
 		break;
 	case e1000_igb:
 		if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
@@ -366,7 +407,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 			eeprom->type = e1000_eeprom_invm;
 		}

-		eeprom->use_eerd = true;
+		eeprom->read = e1000_read_eeprom_eerd;
 		break;
 	default:
 		break;
@@ -465,41 +506,73 @@ static int32_t e1000_read_eeprom_eerd(struct e1000_hw *hw,
 	return error;
 }

-static void e1000_release_eeprom(struct e1000_hw *hw)
+static int32_t e1000_read_eeprom_spi(struct e1000_hw *hw,
+				     uint16_t offset,
+				     uint16_t words,
+				     uint16_t *data)
 {
-	uint32_t eecd;
+	unsigned int i;
+	uint16_t word_in;
+	uint8_t read_opcode = EEPROM_READ_OPCODE_SPI;

-	DEBUGFUNC();
+	if (e1000_spi_eeprom_ready(hw)) {
+		e1000_release_eeprom(hw);
+		return -E1000_ERR_EEPROM;
+	}

-	eecd = E1000_READ_REG(hw, EECD);
+	e1000_standby_eeprom(hw);

-	if (hw->eeprom.type == e1000_eeprom_spi) {
-		eecd |= E1000_EECD_CS;  /* Pull CS high */
-		eecd &= ~E1000_EECD_SK; /* Lower SCK */
+	/* Some SPI eeproms use the 8th address bit embedded in
+	 * the opcode */
+	if ((hw->eeprom.address_bits == 8) && (offset >= 128))
+		read_opcode |= EEPROM_A8_OPCODE_SPI;

-		E1000_WRITE_REG(hw, EECD, eecd);
+	/* Send the READ command (opcode + addr)  */
+	e1000_shift_out_ee_bits(hw, read_opcode, hw->eeprom.opcode_bits);
+	e1000_shift_out_ee_bits(hw, (uint16_t)(offset * 2),
+				hw->eeprom.address_bits);

-		udelay(hw->eeprom.delay_usec);
-	} else if (hw->eeprom.type == e1000_eeprom_microwire) {
-		/* cleanup eeprom */
+	/* Read the data.  The address of the eeprom internally
+	 * increments with each byte (spi) being read, saving on the
+	 * overhead of eeprom setup and tear-down.  The address
+	 * counter will roll over if reading beyond the size of
+	 * the eeprom, thus allowing the entire memory to be read
+	 * starting from any offset. */
+	for (i = 0; i < words; i++) {
+		word_in = e1000_shift_in_ee_bits(hw, 16);
+		data[i] = (word_in >> 8) | (word_in << 8);
+	}

-		/* CS on Microwire is active-high */
-		eecd &= ~(E1000_EECD_CS | E1000_EECD_DI);
+	return E1000_SUCCESS;
+}

-		E1000_WRITE_REG(hw, EECD, eecd);
+static int32_t e1000_read_eeprom_microwire(struct e1000_hw *hw,
+					   uint16_t offset,
+					   uint16_t words,
+					   uint16_t *data)
+{
+	int i;
+	for (i = 0; i < words; i++) {
+		/* Send the READ command (opcode + addr)  */
+		e1000_shift_out_ee_bits(hw,
+					EEPROM_READ_OPCODE_MICROWIRE,
+					hw->eeprom.opcode_bits);
+		e1000_shift_out_ee_bits(hw, (uint16_t)(offset + i),
+					hw->eeprom.address_bits);
+
+		/* Read the data.  For microwire, each word requires
+		 * the overhead of eeprom setup and tear-down. */
+		data[i] = e1000_shift_in_ee_bits(hw, 16);
+		e1000_standby_eeprom(hw);
+	}

-		/* Rising edge of clock */
-		eecd |= E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(hw->eeprom.delay_usec);
+	return E1000_SUCCESS;
+}

-		/* Falling edge of clock */
-		eecd &= ~E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(hw->eeprom.delay_usec);
-	}
+static void
+e1000_release_eeprom_spi_microwire_epilogue(struct e1000_hw *hw)
+{
+	uint32_t eecd = E1000_READ_REG(hw, EECD);

 	/* Stop requesting EEPROM access */
 	if (hw->mac_type > e1000_82544) {
@@ -507,6 +580,53 @@ static void e1000_release_eeprom(struct e1000_hw *hw)
 		E1000_WRITE_REG(hw, EECD, eecd);
 	}
 }
+
+static void e1000_release_eeprom_microwire(struct e1000_hw *hw)
+{
+	uint32_t eecd = E1000_READ_REG(hw, EECD);
+
+	/* cleanup eeprom */
+
+	/* CS on Microwire is active-high */
+	eecd &= ~(E1000_EECD_CS | E1000_EECD_DI);
+
+	E1000_WRITE_REG(hw, EECD, eecd);
+
+	/* Rising edge of clock */
+	eecd |= E1000_EECD_SK;
+	E1000_WRITE_REG(hw, EECD, eecd);
+	E1000_WRITE_FLUSH(hw);
+	udelay(hw->eeprom.delay_usec);
+
+	/* Falling edge of clock */
+	eecd &= ~E1000_EECD_SK;
+	E1000_WRITE_REG(hw, EECD, eecd);
+	E1000_WRITE_FLUSH(hw);
+	udelay(hw->eeprom.delay_usec);
+
+
+	e1000_release_eeprom_spi_microwire_epilogue(hw);
+}
+
+static void e1000_release_eeprom_spi(struct e1000_hw *hw)
+{
+	uint32_t eecd = E1000_READ_REG(hw, EECD);
+
+	eecd |= E1000_EECD_CS;  /* Pull CS high */
+	eecd &= ~E1000_EECD_SK; /* Lower SCK */
+
+	E1000_WRITE_REG(hw, EECD, eecd);
+	udelay(hw->eeprom.delay_usec);
+
+	e1000_release_eeprom_spi_microwire_epilogue(hw);
+}
+
+static void e1000_release_eeprom(struct e1000_hw *hw)
+{
+	if (hw->eeprom.release)
+		hw->eeprom.release(hw);
+}
+
 /******************************************************************************
  * Reads a 16 bit word from the EEPROM.
  *
@@ -560,7 +680,7 @@ int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
 			  uint16_t words, uint16_t *data)
 {
 	struct e1000_eeprom_info *eeprom = &hw->eeprom;
-	uint32_t i = 0;
+	int32_t ret;

 	DEBUGFUNC();

@@ -575,75 +695,17 @@ int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
 		return -E1000_ERR_EEPROM;
 	}

-	/* EEPROM's that don't use EERD to read require us to bit-bang the SPI
-	 * directly. In this case, we need to acquire the EEPROM so that
-	 * FW or other port software does not interrupt.
-	 */
-	if (e1000_is_onboard_nvm_eeprom(hw) == true &&
-		hw->eeprom.use_eerd == false) {
-
-		/* Prepare the EEPROM for bit-bang reading */
+	if (eeprom->read) {
 		if (e1000_acquire_eeprom(hw) != E1000_SUCCESS)
 			return -E1000_ERR_EEPROM;
-	}

-	/* Eerd register EEPROM access requires no eeprom aquire/release */
-	if (eeprom->use_eerd == true)
-		return e1000_read_eeprom_eerd(hw, offset, words, data);
+		ret = eeprom->read(hw, offset, words, data);
+		e1000_release_eeprom(hw);

-	/* Set up the SPI or Microwire EEPROM for bit-bang reading.  We have
-	 * acquired the EEPROM at this point, so any returns should relase it */
-	if (eeprom->type == e1000_eeprom_spi) {
-		uint16_t word_in;
-		uint8_t read_opcode = EEPROM_READ_OPCODE_SPI;
-
-		if (e1000_spi_eeprom_ready(hw)) {
-			e1000_release_eeprom(hw);
-			return -E1000_ERR_EEPROM;
-		}
-
-		e1000_standby_eeprom(hw);
-
-		/* Some SPI eeproms use the 8th address bit embedded in
-		 * the opcode */
-		if ((eeprom->address_bits == 8) && (offset >= 128))
-			read_opcode |= EEPROM_A8_OPCODE_SPI;
-
-		/* Send the READ command (opcode + addr)  */
-		e1000_shift_out_ee_bits(hw, read_opcode, eeprom->opcode_bits);
-		e1000_shift_out_ee_bits(hw, (uint16_t)(offset*2),
-				eeprom->address_bits);
-
-		/* Read the data.  The address of the eeprom internally
-		 * increments with each byte (spi) being read, saving on the
-		 * overhead of eeprom setup and tear-down.  The address
-		 * counter will roll over if reading beyond the size of
-		 * the eeprom, thus allowing the entire memory to be read
-		 * starting from any offset. */
-		for (i = 0; i < words; i++) {
-			word_in = e1000_shift_in_ee_bits(hw, 16);
-			data[i] = (word_in >> 8) | (word_in << 8);
-		}
-	} else if (eeprom->type == e1000_eeprom_microwire) {
-		for (i = 0; i < words; i++) {
-			/* Send the READ command (opcode + addr)  */
-			e1000_shift_out_ee_bits(hw,
-				EEPROM_READ_OPCODE_MICROWIRE,
-				eeprom->opcode_bits);
-			e1000_shift_out_ee_bits(hw, (uint16_t)(offset + i),
-				eeprom->address_bits);
-
-			/* Read the data.  For microwire, each word requires
-			 * the overhead of eeprom setup and tear-down. */
-			data[i] = e1000_shift_in_ee_bits(hw, 16);
-			e1000_standby_eeprom(hw);
-		}
+		return ret;
+	} else {
+		return -ENOTSUPP;
 	}
-
-	/* End this read operation */
-	e1000_release_eeprom(hw);
-
-	return E1000_SUCCESS;
 }

 /******************************************************************************
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
