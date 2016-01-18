Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aL0t0-0004IN-K7
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:47 +0000
Received: by mail-pa0-x244.google.com with SMTP id pv5so33075598pac.0
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:24 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:40 -0800
Message-Id: <1453089161-6697-19-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 19/20] e1000: Expose i210's external flash as MTD
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code needed to access SPI-NOR flash attached to i210 as a regular
MTD device.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h  |  36 +++-
 drivers/net/e1000/eeprom.c | 398 ++++++++++++++++++++++++++++++++++++++++++++-
 drivers/net/e1000/main.c   |   7 +
 3 files changed, 438 insertions(+), 3 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index cb6c914..dc38ce1 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -17,6 +17,7 @@
  */

 #include <io.h>
+#include <linux/mtd/mtd.h>

 #ifndef _E1000_HW_H_
 #define _E1000_HW_H_
@@ -453,8 +454,11 @@ struct e1000_tx_desc {
 #define E1000_EEWR     0x0102C  /* EEPROM Write Register - RW */
 #define E1000_I210_EEWR     0x12018  /* EEPROM Write Register - RW */
 #define E1000_FLSWCTL  0x01030  /* FLASH control register */
+#define E1000_I210_FLSWCTL 0x12048  /* FLASH control register */
 #define E1000_FLSWDATA 0x01034  /* FLASH data register */
+#define E1000_I210_FLSWDATA 0x1204C  /* FLASH data register */
 #define E1000_FLSWCNT  0x01038  /* FLASH Access Counter */
+#define E1000_I210_FLSWCNT  0x12050  /* FLASH Access Counter */
 #define E1000_FLOP     0x0103C  /* FLASH Opcode Register */
 #define E1000_ERT      0x02008  /* Early Rx Threshold - RW */
 #define E1000_FCRTL    0x02160	/* Flow Control Receive Threshold Low - RW */
@@ -697,7 +701,7 @@ struct e1000_hw;

 struct e1000_eeprom_info {
 	e1000_eeprom_type type;
-	uint16_t word_size;
+	size_t word_size;
 	uint16_t opcode_bits;
 	uint16_t address_bits;
 	uint16_t delay_usec;
@@ -811,6 +815,8 @@ struct e1000_eeprom_info {
 #define E1000_EECD_AUPDEN    0x00100000 /* Enable Autonomous FLASH update */
 #define E1000_EECD_SHADV     0x00200000 /* Shadow RAM Data Valid */
 #define E1000_EECD_SEC1VAL   0x00400000 /* Sector One Valid */
+#define E1000_EECD_I210_FLUPD (1 << 23)
+#define E1000_EECD_I210_FLUDONE (1 << 26)
 #define E1000_EECD_SECVAL_SHIFT      22
 #define E1000_STM_OPCODE     0xDB00
 #define E1000_HICR_FW_RESET  0xC0
@@ -2097,6 +2103,28 @@ struct e1000_eeprom_info {
 #define E1000_CTRL_EXT_INT_TIMER_CLR  0x20000000 /* Clear Interrupt timers
 							after IMS clear */

+#define E1000_FLA			0x1201C
+#define E1000_FLA_FL_SIZE_SHIFT		17
+#define E1000_FLA_FL_SIZE_MASK		(0b111 << E1000_FLA_FL_SIZE_SHIFT) /* EEprom Size */
+#define E1000_FLA_FL_SIZE_2MB		0b101
+#define E1000_FLA_FL_SIZE_4MB		0b110
+#define E1000_FLA_FL_SIZE_8MB		0b111
+
+
+#define E1000_FLSWCTL_ADDR(a)		((a) & 0x00FFFFFF)
+#define E1000_FLSWCTL_CMD_READ		0b0000
+#define E1000_FLSWCTL_CMD_WRITE		0b0001
+#define E1000_FLSWCTL_CMD_ERASE_SECTOR	0b0010
+#define E1000_FLSWCTL_CMD_ERASE_DEVICE	0b0011
+#define E1000_FLSWCTL_CMD_(c)		((0b1111 & (c)) << 24)
+#define E1000_FLSWCTL_CMD(c)	        E1000_FLSWCTL_CMD_(E1000_FLSWCTL_CMD_##c)
+
+#define E1000_FLSWCTL_CMD_ADDR_MASK	0x0FFFFFFF
+
+#define E1000_FLSWCTL_CMDV		(1 << 28)
+#define E1000_FLSWCTL_FLBUSY		(1 << 29)
+#define E1000_FLSWCTL_DONE		(1 << 30)
+#define E1000_FLSWCTL_GLDONE		(1 << 31)

 struct e1000_hw {
 	struct eth_device edev;
@@ -2112,6 +2140,7 @@ struct e1000_hw {
 	e1000_media_type media_type;
 	e1000_fc_type fc;
 	struct e1000_eeprom_info eeprom;
+	struct mtd_info mtd;
 	uint32_t phy_id;
 	uint32_t phy_revision;
 	uint32_t original_fc;
@@ -2150,6 +2179,9 @@ static inline uint32_t e1000_true_offset(struct e1000_hw *hw, uint32_t reg)
 		unsigned int i;

 		const struct e1000_fixup_table fixup_table[] = {
+			{ E1000_FLSWCTL,  E1000_I210_FLSWCTL  },
+			{ E1000_FLSWDATA, E1000_I210_FLSWDATA },
+			{ E1000_FLSWCNT,  E1000_I210_FLSWCNT  },
 			{ E1000_EEWR,     E1000_I210_EEWR     },
 			{ E1000_PHY_CTRL, E1000_I210_PHY_CTRL },
 		        { E1000_EEMNGCTL, E1000_I210_EEMNGCTL },
@@ -2197,4 +2229,6 @@ static inline int e1000_poll_reg(struct e1000_hw *hw, uint32_t reg,
 #define E1000_POLL_REG(a, reg, mask, value, timeout)	\
 	e1000_poll_reg((a), E1000_##reg, (mask), (value), (timeout))

+int e1000_register_eeprom(struct e1000_hw *hw);
+
 #endif	/* _E1000_HW_H_ */
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index aca16f7..4ea7128 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -2,6 +2,8 @@
 #include <init.h>
 #include <net.h>
 #include <malloc.h>
+#include <linux/math64.h>
+#include <linux/sizes.h>

 #include "e1000.h"

@@ -407,9 +409,29 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		break;
 	case e1000_igb:
 		if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
-			eeprom->type = e1000_eeprom_flash;
-			eeprom->word_size = 2048;
+			uint32_t fla;
+
+			fla  = E1000_READ_REG(hw, FLA);
+			fla &= E1000_FLA_FL_SIZE_MASK;
+			fla >>= E1000_FLA_FL_SIZE_SHIFT;
+
+			switch (fla) {
+			case E1000_FLA_FL_SIZE_8MB:
+				eeprom->word_size = SZ_8M / 2;
+				break;
+			case E1000_FLA_FL_SIZE_4MB:
+				eeprom->word_size = SZ_4M / 2;
+				break;
+			case E1000_FLA_FL_SIZE_2MB:
+				eeprom->word_size = SZ_2M / 2;
+				break;
+			default:
+				eeprom->word_size = 2048;
+				dev_info(hw->dev, "Unprogrammed Flash detected, "
+					 "limiting access to first 4KB\n");
+			}

+			eeprom->type = e1000_eeprom_flash;
 			eeprom->acquire = e1000_acquire_eeprom_flash;
 			eeprom->release = e1000_release_eeprom_flash;
 		} else {
@@ -686,6 +708,257 @@ static int32_t e1000_spi_eeprom_ready(struct e1000_hw *hw)
 	return E1000_SUCCESS;
 }

+static int e1000_flash_mode_wait_for_idle(struct e1000_hw *hw)
+{
+	/* Strictly speaking we need to poll FLSWCTL.DONE only if we
+	 * are executing this code after a reset event, but it
+	 * shouldn't hurt to do this everytime, besided we need to
+	 * poll got FLSWCTL.GLDONE to make sure that back to back
+	 * calls to that function work correctly, since we finish
+	 * execution by polling only FLSWCTL.DONE */
+
+	const int ret = E1000_POLL_REG(hw, FLSWCTL,
+				       E1000_FLSWCTL_DONE | E1000_FLSWCTL_GLDONE,
+				       E1000_FLSWCTL_DONE | E1000_FLSWCTL_GLDONE,
+				       SECOND);
+	if (ret < 0)
+		dev_err(hw->dev,
+			"Timeout waiting for FLSWCTL.DONE to be set\n");
+	return ret;
+}
+
+static int e1000_flash_mode_check_command_valid(struct e1000_hw *hw)
+{
+	const uint32_t flswctl = E1000_READ_REG(hw, FLSWCTL);
+	if (!(flswctl & E1000_FLSWCTL_CMDV)) {
+		dev_err(hw->dev, "FLSWCTL.CMDV was cleared");
+		return -EIO;
+	}
+
+	return E1000_SUCCESS;
+}
+
+#define E1000_FLASH_CMD(hw, cmd, offset)				\
+	do {								\
+		uint32_t ___flswctl = E1000_READ_REG(hw, FLSWCTL);	\
+		___flswctl &= ~E1000_FLSWCTL_CMD_ADDR_MASK;		\
+		___flswctl |= E1000_FLSWCTL_CMD(cmd) | E1000_FLSWCTL_ADDR(offset); \
+		E1000_WRITE_REG(hw, FLSWCTL, ___flswctl);		\
+	} while (0)
+
+static int e1000_flash_mode_read_chunk(struct e1000_hw *hw, loff_t offset,
+				       size_t size, void *data)
+{
+	int ret;
+	size_t chunk, residue = size;
+	uint32_t flswdata;
+
+	DEBUGFUNC();
+
+	if (size > SZ_4K ||
+	    E1000_FLSWCTL_ADDR(offset) != offset)
+		return -EINVAL;
+
+	ret = e1000_flash_mode_wait_for_idle(hw);
+	if (ret < 0)
+		return ret;
+
+	E1000_WRITE_REG(hw, FLSWCNT, size);
+	E1000_FLASH_CMD(hw, READ, offset);
+
+	do {
+		ret = e1000_flash_mode_check_command_valid(hw);
+		if (ret < 0)
+			return -EIO;
+
+		chunk = min(sizeof(flswdata), residue);
+
+		ret = E1000_POLL_REG(hw, FLSWCTL,
+				     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
+				     SECOND);
+		if (ret < 0) {
+			dev_err(hw->dev,
+				"Timeout waiting for FLSWCTL.DONE to be set\n");
+			return ret;
+		}
+
+		flswdata = E1000_READ_REG(hw, FLSWDATA);
+		/*
+		 * Readl does le32_to_cpu, so we need to undo that
+		 */
+		flswdata = cpu_to_le32(flswdata);
+		memcpy(data, &flswdata, chunk);
+
+		data += chunk;
+		residue -= chunk;
+	} while (residue);
+
+	return E1000_SUCCESS;
+}
+
+static int e1000_flash_mode_write_chunk(struct e1000_hw *hw, loff_t offset,
+					size_t size, const void *data)
+{
+	int ret;
+	size_t chunk, residue = size;
+	uint32_t flswdata;
+
+	if (size > 256 ||
+	    E1000_FLSWCTL_ADDR(offset) != offset)
+		return -EINVAL;
+
+	ret = e1000_flash_mode_wait_for_idle(hw);
+	if (ret < 0)
+		return ret;
+
+
+	E1000_WRITE_REG(hw, FLSWCNT, size);
+	E1000_FLASH_CMD(hw, WRITE, offset);
+
+	do {
+		chunk = min(sizeof(flswdata), residue);
+		memcpy(&flswdata, data, chunk);
+		/*
+		 * writel does cpu_to_le32, so we do the inverse in
+		 * order to account for that
+		 */
+		flswdata = le32_to_cpu(flswdata);
+		E1000_WRITE_REG(hw, FLSWDATA, flswdata);
+
+		ret = e1000_flash_mode_check_command_valid(hw);
+		if (ret < 0)
+			return -EIO;
+
+		ret = E1000_POLL_REG(hw, FLSWCTL,
+				     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
+				     SECOND);
+		if (ret < 0) {
+			dev_err(hw->dev,
+				"Timeout waiting for FLSWCTL.DONE to be set\n");
+			return ret;
+		}
+
+		data += chunk;
+		residue -= chunk;
+
+	} while (residue);
+
+	return E1000_SUCCESS;
+}
+
+
+static int e1000_flash_mode_erase_chunk(struct e1000_hw *hw, loff_t offset,
+					size_t size)
+{
+	int ret;
+
+	ret = e1000_flash_mode_wait_for_idle(hw);
+	if (ret < 0)
+		return ret;
+
+	if (!size && !offset)
+		E1000_FLASH_CMD(hw, ERASE_DEVICE, 0);
+	else
+		E1000_FLASH_CMD(hw, ERASE_SECTOR, offset);
+
+	ret = e1000_flash_mode_check_command_valid(hw);
+	if (ret < 0)
+		return -EIO;
+
+	ret = E1000_POLL_REG(hw, FLSWCTL,
+			     E1000_FLSWCTL_DONE | E1000_FLSWCTL_FLBUSY,
+			     E1000_FLSWCTL_DONE,
+			     SECOND);
+	if (ret < 0) {
+		dev_err(hw->dev,
+			"Timeout waiting for FLSWCTL.DONE to be set\n");
+		return ret;
+	}
+
+	return E1000_SUCCESS;
+}
+
+enum {
+	E1000_FLASH_MODE_OP_READ = 0,
+	E1000_FLASH_MODE_OP_WRITE = 1,
+	E1000_FLASH_MODE_OP_ERASE = 2,
+};
+
+
+static int e1000_flash_mode_io(struct e1000_hw *hw, int op, size_t granularity,
+			       loff_t offset, size_t size, void *data)
+{
+	int ret;
+	size_t residue = size;
+
+	do {
+		const size_t chunk = min(granularity, residue);
+
+		switch (op) {
+		case E1000_FLASH_MODE_OP_READ:
+			ret = e1000_flash_mode_read_chunk(hw, offset,
+							  chunk, data);
+			break;
+		case E1000_FLASH_MODE_OP_WRITE:
+			ret = e1000_flash_mode_write_chunk(hw, offset,
+							   chunk, data);
+			break;
+		case E1000_FLASH_MODE_OP_ERASE:
+			ret = e1000_flash_mode_erase_chunk(hw, offset,
+							   chunk);
+			break;
+		default:
+			return -ENOTSUPP;
+		}
+
+		if (ret < 0)
+			return ret;
+
+		offset += chunk;
+		residue -= chunk;
+		data += chunk;
+	} while (residue);
+
+	return E1000_SUCCESS;
+}
+
+
+static int e1000_flash_mode_read(struct e1000_hw *hw, loff_t offset,
+				 size_t size, void *data)
+{
+	return e1000_flash_mode_io(hw,
+				   E1000_FLASH_MODE_OP_READ, SZ_4K,
+				   offset, size, data);
+}
+
+static int e1000_flash_mode_write(struct e1000_hw *hw, loff_t offset,
+				  size_t size, const void *data)
+{
+	int ret;
+
+	ret = e1000_flash_mode_io(hw,
+				  E1000_FLASH_MODE_OP_WRITE, 256,
+				  offset, size, (void *)data);
+	if (ret < 0)
+		return ret;
+
+	ret = E1000_POLL_REG(hw, FLSWCTL, E1000_FLSWCTL_FLBUSY,
+			     0,  SECOND);
+	if (ret < 0)
+		dev_err(hw->dev, "Timout while waiting for FLSWCTL.FLBUSY\n");
+
+	return ret;
+}
+
+static int e1000_flash_mode_erase(struct e1000_hw *hw, loff_t offset,
+				  size_t size)
+{
+	return e1000_flash_mode_io(hw,
+				   E1000_FLASH_MODE_OP_ERASE, SZ_4K,
+				   offset, size, NULL);
+}
+
+
 /******************************************************************************
  * Reads a 16 bit word from the EEPROM.
  *
@@ -774,3 +1047,124 @@ int e1000_validate_eeprom_checksum(struct e1000_hw *hw)

 	return -E1000_ERR_EEPROM;
 }
+
+static int e1000_mtd_read_or_write(bool read,
+				   struct mtd_info *mtd, loff_t off, size_t len,
+				   size_t *retlen, u_char *buf)
+{
+	int ret;
+	struct e1000_hw *hw = container_of(mtd, struct e1000_hw, mtd);
+
+	DEBUGFUNC();
+
+	if (e1000_acquire_eeprom(hw) == E1000_SUCCESS) {
+		if (read)
+			ret = e1000_flash_mode_read(hw, off,
+						    len, buf);
+		else
+			ret = e1000_flash_mode_write(hw, off,
+						     len, buf);
+		if (ret == E1000_SUCCESS)
+			*retlen = len;
+
+		e1000_release_eeprom(hw);
+	} else {
+		ret = -E1000_ERR_EEPROM;
+	}
+
+	return ret;
+
+}
+
+static int e1000_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
+				 size_t *retlen, u_char *buf)
+{
+	return e1000_mtd_read_or_write(true,
+				       mtd, from, len, retlen, buf);
+}
+
+static int e1000_mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
+			   size_t *retlen, const u_char *buf)
+{
+	return e1000_mtd_read_or_write(false,
+				       mtd, to, len, retlen, (u_char *)buf);
+}
+
+static int e1000_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
+{
+	uint32_t rem;
+	struct e1000_hw *hw = container_of(mtd, struct e1000_hw, mtd);
+	int ret;
+
+	div_u64_rem(instr->len, mtd->erasesize, &rem);
+	if (rem)
+		return -EINVAL;
+
+	ret = e1000_acquire_eeprom(hw);
+	if (ret != E1000_SUCCESS)
+		goto fail;
+
+	/*
+	 * If mtd->size is 4096 it means we are dealing with
+	 * unprogrammed flash and we don't really know its size to
+	 * make an informed decision wheither to erase the whole chip or
+	 * just a number of its sectors
+	 */
+	if (mtd->size > SZ_4K &&
+	    instr->len == mtd->size)
+		ret = e1000_flash_mode_erase(hw, 0, 0);
+	else
+		ret = e1000_flash_mode_erase(hw,
+					     instr->addr, instr->len);
+
+	e1000_release_eeprom(hw);
+
+	if (ret < 0)
+		goto fail;
+
+	instr->state = MTD_ERASE_DONE;
+	mtd_erase_callback(instr);
+
+	return 0;
+
+fail:
+	instr->state = MTD_ERASE_FAILED;
+	return ret;
+}
+
+int e1000_register_eeprom(struct e1000_hw *hw)
+{
+	int ret = E1000_SUCCESS;
+	struct e1000_eeprom_info *eeprom = &hw->eeprom;
+
+	switch (eeprom->type) {
+	case e1000_eeprom_flash:
+		if (hw->mac_type != e1000_igb)
+			break;
+
+		hw->mtd.parent = hw->dev;
+		hw->mtd.read = e1000_mtd_read;
+		hw->mtd.write = e1000_mtd_write;
+		hw->mtd.erase = e1000_mtd_erase;
+		hw->mtd.size = eeprom->word_size * 2;
+		hw->mtd.writesize = 1;
+		hw->mtd.subpage_sft = 0;
+
+		hw->mtd.eraseregions = xzalloc(sizeof(struct mtd_erase_region_info));
+		hw->mtd.erasesize = SZ_4K;
+		hw->mtd.eraseregions[0].erasesize = SZ_4K;
+		hw->mtd.eraseregions[0].numblocks = hw->mtd.size / SZ_4K;
+		hw->mtd.numeraseregions = 1;
+
+		hw->mtd.flags = MTD_CAP_NORFLASH;
+		hw->mtd.type = MTD_NORFLASH;
+
+		ret = add_mtd_device(&hw->mtd, "e1000-nor",
+				     DEVICE_ID_DYNAMIC);
+		break;
+	default:
+		break;
+	}
+
+	return ret;
+}
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 05d38ac..473d121 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3588,6 +3588,13 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		dev_err(&pdev->dev, "EEPROM is invalid!\n");
 		return -EINVAL;
 	}
+
+	ret = e1000_register_eeprom(hw);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "failed to register EEPROM devices!\n");
+		return ret;
+	}
+
 	if (e1000_validate_eeprom_checksum(hw))
 		return -EINVAL;

--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
