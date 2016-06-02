Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjD-000230-F3
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 05:01:01 +0000
Received: by mail-pf0-x242.google.com with SMTP id b124so6535060pfb.0
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:30 -0700
Message-Id: <1464843531-1824-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 01/22] e1000: Split driver into multiple files
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The driver has a number of not very tightly coupled subsystems and at
4K+ lines e1000.c is getting rather hard to wrangle, so let's move
EEPROM handling code (very self contained susbsystem) into a separate
file and put all of the driver into a dedicated subdirectory.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/Makefile       |    2 +-
 drivers/net/e1000.c        | 4455 --------------------------------------------
 drivers/net/e1000.h        | 2093 ---------------------
 drivers/net/e1000/e1000.h  | 2139 +++++++++++++++++++++
 drivers/net/e1000/eeprom.c |  747 ++++++++
 drivers/net/e1000/main.c   | 3681 ++++++++++++++++++++++++++++++++++++
 6 files changed, 6568 insertions(+), 6549 deletions(-)
 delete mode 100644 drivers/net/e1000.c
 delete mode 100644 drivers/net/e1000.h
 create mode 100644 drivers/net/e1000/e1000.h
 create mode 100644 drivers/net/e1000/eeprom.c
 create mode 100644 drivers/net/e1000/main.c

diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index f53cb80..08166d2 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -10,7 +10,7 @@ obj-$(CONFIG_DRIVER_NET_CPSW)		+= cpsw.o
 obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
-obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000.o
+obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/main.o e1000/eeprom.o
 obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
diff --git a/drivers/net/e1000.c b/drivers/net/e1000.c
deleted file mode 100644
index a7acfd0..0000000
--- a/drivers/net/e1000.c
+++ /dev/null
@@ -1,4455 +0,0 @@
-/**************************************************************************
-Intel Pro 1000 for ppcboot/das-u-boot
-Drivers are port from Intel's Linux driver e1000-4.3.15
-and from Etherboot pro 1000 driver by mrakes at vivato dot net
-tested on both gig copper and gig fiber boards
-***************************************************************************/
-/*******************************************************************************
-
-
-  Copyright(c) 1999 - 2002 Intel Corporation. All rights reserved.
-
- * SPDX-License-Identifier:	GPL-2.0+
-
-  Contact Information:
-  Linux NICS <linux.nics@intel.com>
-  Intel Corporation, 5200 N.E. Elam Young Parkway, Hillsboro, OR 97124-6497
-
-*******************************************************************************/
-/*
- *  Copyright (C) Archway Digital Solutions.
- *
- *  written by Chrsitopher Li <cli at arcyway dot com> or <chrisl at gnuchina dot org>
- *  2/9/2002
- *
- *  Copyright (C) Linux Networx.
- *  Massive upgrade to work with the new intel gigabit NICs.
- *  <ebiederman at lnxi dot com>
- *
- *  Copyright 2011 Freescale Semiconductor, Inc.
- */
-
-#include <common.h>
-#include <init.h>
-#include <net.h>
-#include <malloc.h>
-#include <linux/pci.h>
-#include <dma.h>
-#include "e1000.h"
-
-static u32 inline virt_to_bus(struct pci_dev *pdev, void *adr)
-{
-	return (u32)adr;
-}
-
-#define PCI_VENDOR_ID_INTEL	0x8086
-
-struct e1000_hw {
-	struct eth_device edev;
-
-	struct pci_dev *pdev;
-	struct device_d *dev;
-
-	void __iomem *hw_addr;
-
-	e1000_mac_type mac_type;
-	e1000_phy_type phy_type;
-	uint32_t txd_cmd;
-	e1000_media_type media_type;
-	e1000_fc_type fc;
-	struct e1000_eeprom_info eeprom;
-	uint32_t phy_id;
-	uint32_t phy_revision;
-	uint32_t original_fc;
-	uint32_t autoneg_failed;
-	uint16_t autoneg_advertised;
-	uint16_t pci_cmd_word;
-	uint16_t device_id;
-	uint16_t vendor_id;
-	uint8_t revision_id;
-	struct mii_bus miibus;
-
-	struct e1000_tx_desc *tx_base;
-	struct e1000_rx_desc *rx_base;
-	unsigned char *packet;
-
-	int tx_tail;
-	int rx_tail, rx_last;
-};
-
-/* Function forward declarations */
-static int e1000_setup_link(struct e1000_hw *hw);
-static int e1000_setup_fiber_link(struct e1000_hw *hw);
-static int e1000_setup_copper_link(struct e1000_hw *hw);
-static int e1000_phy_setup_autoneg(struct e1000_hw *hw);
-static void e1000_config_collision_dist(struct e1000_hw *hw);
-static int e1000_config_mac_to_phy(struct e1000_hw *hw);
-static int e1000_config_fc_after_link_up(struct e1000_hw *hw);
-static int e1000_wait_autoneg(struct e1000_hw *hw);
-static int e1000_get_speed_and_duplex(struct e1000_hw *hw, uint16_t *speed,
-				       uint16_t *duplex);
-static int e1000_read_phy_reg(struct e1000_hw *hw, uint32_t reg_addr,
-			      uint16_t *phy_data);
-static int e1000_write_phy_reg(struct e1000_hw *hw, uint32_t reg_addr,
-			       uint16_t phy_data);
-static int32_t e1000_phy_hw_reset(struct e1000_hw *hw);
-static int e1000_phy_reset(struct e1000_hw *hw);
-static int e1000_detect_gig_phy(struct e1000_hw *hw);
-static void e1000_set_media_type(struct e1000_hw *hw);
-
-static int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask);
-static int32_t e1000_check_phy_reset_block(struct e1000_hw *hw);
-
-static void e1000_put_hw_eeprom_semaphore(struct e1000_hw *hw);
-static int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
-		uint16_t words,
-		uint16_t *data);
-
-static bool e1000_media_copper(struct e1000_hw *hw)
-{
-	if (!IS_ENABLED(CONFIG_DRIVER_NET_E1000_FIBER))
-		return 1;
-
-	return hw->media_type == e1000_media_type_copper;
-}
-
-static bool e1000_media_fiber(struct e1000_hw *hw)
-{
-	if (!IS_ENABLED(CONFIG_DRIVER_NET_E1000_FIBER))
-		return 0;
-
-	return hw->media_type == e1000_media_type_fiber;
-}
-
-static bool e1000_media_fiber_serdes(struct e1000_hw *hw)
-{
-	if (!IS_ENABLED(CONFIG_DRIVER_NET_E1000_FIBER))
-		return 0;
-
-	return hw->media_type == e1000_media_type_fiber ||
-		hw->media_type == e1000_media_type_internal_serdes;
-}
-
-/******************************************************************************
- * Raises the EEPROM's clock input.
- *
- * hw - Struct containing variables accessed by shared code
- * eecd - EECD's current value
- *****************************************************************************/
-static void e1000_raise_ee_clk(struct e1000_hw *hw, uint32_t *eecd)
-{
-	/* Raise the clock input to the EEPROM (by setting the SK bit), and then
-	 * wait 50 microseconds.
-	 */
-	*eecd = *eecd | E1000_EECD_SK;
-	E1000_WRITE_REG(hw, EECD, *eecd);
-	E1000_WRITE_FLUSH(hw);
-	udelay(50);
-}
-
-/******************************************************************************
- * Lowers the EEPROM's clock input.
- *
- * hw - Struct containing variables accessed by shared code
- * eecd - EECD's current value
- *****************************************************************************/
-static void e1000_lower_ee_clk(struct e1000_hw *hw, uint32_t *eecd)
-{
-	/* Lower the clock input to the EEPROM (by clearing the SK bit), and then
-	 * wait 50 microseconds.
-	 */
-	*eecd = *eecd & ~E1000_EECD_SK;
-	E1000_WRITE_REG(hw, EECD, *eecd);
-	E1000_WRITE_FLUSH(hw);
-	udelay(50);
-}
-
-/******************************************************************************
- * Shift data bits out to the EEPROM.
- *
- * hw - Struct containing variables accessed by shared code
- * data - data to send to the EEPROM
- * count - number of bits to shift out
- *****************************************************************************/
-static void e1000_shift_out_ee_bits(struct e1000_hw *hw, uint16_t data, uint16_t count)
-{
-	uint32_t eecd;
-	uint32_t mask;
-
-	/* We need to shift "count" bits out to the EEPROM. So, value in the
-	 * "data" parameter will be shifted out to the EEPROM one bit at a time.
-	 * In order to do this, "data" must be broken down into bits.
-	 */
-	mask = 0x01 << (count - 1);
-	eecd = E1000_READ_REG(hw, EECD);
-	eecd &= ~(E1000_EECD_DO | E1000_EECD_DI);
-	do {
-		/* A "1" is shifted out to the EEPROM by setting bit "DI" to a "1",
-		 * and then raising and then lowering the clock (the SK bit controls
-		 * the clock input to the EEPROM).  A "0" is shifted out to the EEPROM
-		 * by setting "DI" to "0" and then raising and then lowering the clock.
-		 */
-		eecd &= ~E1000_EECD_DI;
-
-		if (data & mask)
-			eecd |= E1000_EECD_DI;
-
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-
-		udelay(50);
-
-		e1000_raise_ee_clk(hw, &eecd);
-		e1000_lower_ee_clk(hw, &eecd);
-
-		mask = mask >> 1;
-
-	} while (mask);
-
-	/* We leave the "DI" bit set to "0" when we leave this routine. */
-	eecd &= ~E1000_EECD_DI;
-	E1000_WRITE_REG(hw, EECD, eecd);
-}
-
-/******************************************************************************
- * Shift data bits in from the EEPROM
- *
- * hw - Struct containing variables accessed by shared code
- *****************************************************************************/
-static uint16_t e1000_shift_in_ee_bits(struct e1000_hw *hw, uint16_t count)
-{
-	uint32_t eecd;
-	uint32_t i;
-	uint16_t data;
-
-	/* In order to read a register from the EEPROM, we need to shift 'count'
-	 * bits in from the EEPROM. Bits are "shifted in" by raising the clock
-	 * input to the EEPROM (setting the SK bit), and then reading the
-	 * value of the "DO" bit.  During this "shifting in" process the
-	 * "DI" bit should always be clear.
-	 */
-
-	eecd = E1000_READ_REG(hw, EECD);
-
-	eecd &= ~(E1000_EECD_DO | E1000_EECD_DI);
-	data = 0;
-
-	for (i = 0; i < count; i++) {
-		data = data << 1;
-		e1000_raise_ee_clk(hw, &eecd);
-
-		eecd = E1000_READ_REG(hw, EECD);
-
-		eecd &= ~(E1000_EECD_DI);
-		if (eecd & E1000_EECD_DO)
-			data |= 1;
-
-		e1000_lower_ee_clk(hw, &eecd);
-	}
-
-	return data;
-}
-
-/******************************************************************************
- * Returns EEPROM to a "standby" state
- *
- * hw - Struct containing variables accessed by shared code
- *****************************************************************************/
-static void e1000_standby_eeprom(struct e1000_hw *hw)
-{
-	struct e1000_eeprom_info *eeprom = &hw->eeprom;
-	uint32_t eecd;
-
-	eecd = E1000_READ_REG(hw, EECD);
-
-	if (eeprom->type == e1000_eeprom_microwire) {
-		eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(eeprom->delay_usec);
-
-		/* Clock high */
-		eecd |= E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(eeprom->delay_usec);
-
-		/* Select EEPROM */
-		eecd |= E1000_EECD_CS;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(eeprom->delay_usec);
-
-		/* Clock low */
-		eecd &= ~E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(eeprom->delay_usec);
-	} else if (eeprom->type == e1000_eeprom_spi) {
-		/* Toggle CS to flush commands */
-		eecd |= E1000_EECD_CS;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(eeprom->delay_usec);
-		eecd &= ~E1000_EECD_CS;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(eeprom->delay_usec);
-	}
-}
-
-/***************************************************************************
-* Description:     Determines if the onboard NVM is FLASH or EEPROM.
-*
-* hw - Struct containing variables accessed by shared code
-****************************************************************************/
-static bool e1000_is_onboard_nvm_eeprom(struct e1000_hw *hw)
-{
-	uint32_t eecd = 0;
-
-	DEBUGFUNC();
-
-	if (hw->mac_type == e1000_ich8lan)
-		return false;
-
-	if (hw->mac_type == e1000_82573 || hw->mac_type == e1000_82574) {
-		eecd = E1000_READ_REG(hw, EECD);
-
-		/* Isolate bits 15 & 16 */
-		eecd = ((eecd >> 15) & 0x03);
-
-		/* If both bits are set, device is Flash type */
-		if (eecd == 0x03)
-			return false;
-	}
-	return true;
-}
-
-/******************************************************************************
- * Prepares EEPROM for access
- *
- * hw - Struct containing variables accessed by shared code
- *
- * Lowers EEPROM clock. Clears input pin. Sets the chip select pin. This
- * function should be called before issuing a command to the EEPROM.
- *****************************************************************************/
-static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
-{
-	struct e1000_eeprom_info *eeprom = &hw->eeprom;
-	uint32_t eecd, i = 0;
-
-	DEBUGFUNC();
-
-	if (e1000_swfw_sync_acquire(hw, E1000_SWFW_EEP_SM))
-		return -E1000_ERR_SWFW_SYNC;
-	eecd = E1000_READ_REG(hw, EECD);
-
-	/* Request EEPROM Access */
-	if (hw->mac_type > e1000_82544 && hw->mac_type != e1000_82573 &&
-			hw->mac_type != e1000_82574) {
-		eecd |= E1000_EECD_REQ;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		eecd = E1000_READ_REG(hw, EECD);
-		while ((!(eecd & E1000_EECD_GNT)) &&
-			(i < E1000_EEPROM_GRANT_ATTEMPTS)) {
-			i++;
-			udelay(5);
-			eecd = E1000_READ_REG(hw, EECD);
-		}
-		if (!(eecd & E1000_EECD_GNT)) {
-			eecd &= ~E1000_EECD_REQ;
-			E1000_WRITE_REG(hw, EECD, eecd);
-			dev_dbg(hw->dev, "Could not acquire EEPROM grant\n");
-			return -E1000_ERR_EEPROM;
-		}
-	}
-
-	/* Setup EEPROM for Read/Write */
-
-	if (eeprom->type == e1000_eeprom_microwire) {
-		/* Clear SK and DI */
-		eecd &= ~(E1000_EECD_DI | E1000_EECD_SK);
-		E1000_WRITE_REG(hw, EECD, eecd);
-
-		/* Set CS */
-		eecd |= E1000_EECD_CS;
-		E1000_WRITE_REG(hw, EECD, eecd);
-	} else if (eeprom->type == e1000_eeprom_spi) {
-		/* Clear SK and CS */
-		eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
-		E1000_WRITE_REG(hw, EECD, eecd);
-		udelay(1);
-	}
-
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
- * Sets up eeprom variables in the hw struct.  Must be called after mac_type
- * is configured.  Additionally, if this is ICH8, the flash controller GbE
- * registers must be mapped, or this will crash.
- *
- * hw - Struct containing variables accessed by shared code
- *****************************************************************************/
-static int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
-{
-	struct e1000_eeprom_info *eeprom = &hw->eeprom;
-	uint32_t eecd;
-	int32_t ret_val = E1000_SUCCESS;
-	uint16_t eeprom_size;
-
-	if (hw->mac_type == e1000_igb)
-		eecd = E1000_READ_REG(hw, I210_EECD);
-	else
-		eecd = E1000_READ_REG(hw, EECD);
-
-	DEBUGFUNC();
-
-	switch (hw->mac_type) {
-	case e1000_82542_rev2_0:
-	case e1000_82542_rev2_1:
-	case e1000_82543:
-	case e1000_82544:
-		eeprom->type = e1000_eeprom_microwire;
-		eeprom->word_size = 64;
-		eeprom->opcode_bits = 3;
-		eeprom->address_bits = 6;
-		eeprom->delay_usec = 50;
-		eeprom->use_eerd = false;
-		eeprom->use_eewr = false;
-	break;
-	case e1000_82540:
-	case e1000_82545:
-	case e1000_82545_rev_3:
-	case e1000_82546:
-	case e1000_82546_rev_3:
-		eeprom->type = e1000_eeprom_microwire;
-		eeprom->opcode_bits = 3;
-		eeprom->delay_usec = 50;
-		if (eecd & E1000_EECD_SIZE) {
-			eeprom->word_size = 256;
-			eeprom->address_bits = 8;
-		} else {
-			eeprom->word_size = 64;
-			eeprom->address_bits = 6;
-		}
-		eeprom->use_eerd = false;
-		eeprom->use_eewr = false;
-		break;
-	case e1000_82541:
-	case e1000_82541_rev_2:
-	case e1000_82547:
-	case e1000_82547_rev_2:
-		if (eecd & E1000_EECD_TYPE) {
-			eeprom->type = e1000_eeprom_spi;
-			eeprom->opcode_bits = 8;
-			eeprom->delay_usec = 1;
-			if (eecd & E1000_EECD_ADDR_BITS) {
-				eeprom->page_size = 32;
-				eeprom->address_bits = 16;
-			} else {
-				eeprom->page_size = 8;
-				eeprom->address_bits = 8;
-			}
-		} else {
-			eeprom->type = e1000_eeprom_microwire;
-			eeprom->opcode_bits = 3;
-			eeprom->delay_usec = 50;
-			if (eecd & E1000_EECD_ADDR_BITS) {
-				eeprom->word_size = 256;
-				eeprom->address_bits = 8;
-			} else {
-				eeprom->word_size = 64;
-				eeprom->address_bits = 6;
-			}
-		}
-		eeprom->use_eerd = false;
-		eeprom->use_eewr = false;
-		break;
-	case e1000_82571:
-	case e1000_82572:
-		eeprom->type = e1000_eeprom_spi;
-		eeprom->opcode_bits = 8;
-		eeprom->delay_usec = 1;
-		if (eecd & E1000_EECD_ADDR_BITS) {
-			eeprom->page_size = 32;
-			eeprom->address_bits = 16;
-		} else {
-			eeprom->page_size = 8;
-			eeprom->address_bits = 8;
-		}
-		eeprom->use_eerd = false;
-		eeprom->use_eewr = false;
-		break;
-	case e1000_82573:
-	case e1000_82574:
-		eeprom->type = e1000_eeprom_spi;
-		eeprom->opcode_bits = 8;
-		eeprom->delay_usec = 1;
-		if (eecd & E1000_EECD_ADDR_BITS) {
-			eeprom->page_size = 32;
-			eeprom->address_bits = 16;
-		} else {
-			eeprom->page_size = 8;
-			eeprom->address_bits = 8;
-		}
-		if (e1000_is_onboard_nvm_eeprom(hw) == false) {
-			eeprom->use_eerd = true;
-			eeprom->use_eewr = true;
-
-			eeprom->type = e1000_eeprom_flash;
-			eeprom->word_size = 2048;
-
-		/* Ensure that the Autonomous FLASH update bit is cleared due to
-		 * Flash update issue on parts which use a FLASH for NVM. */
-			eecd &= ~E1000_EECD_AUPDEN;
-			E1000_WRITE_REG(hw, EECD, eecd);
-		}
-		break;
-	case e1000_80003es2lan:
-		eeprom->type = e1000_eeprom_spi;
-		eeprom->opcode_bits = 8;
-		eeprom->delay_usec = 1;
-		if (eecd & E1000_EECD_ADDR_BITS) {
-			eeprom->page_size = 32;
-			eeprom->address_bits = 16;
-		} else {
-			eeprom->page_size = 8;
-			eeprom->address_bits = 8;
-		}
-		eeprom->use_eerd = true;
-		eeprom->use_eewr = false;
-		break;
-	case e1000_igb:
-		/* i210 has 4k of iNVM mapped as EEPROM */
-		eeprom->type = e1000_eeprom_invm;
-		eeprom->opcode_bits = 8;
-		eeprom->delay_usec = 1;
-		eeprom->page_size = 32;
-		eeprom->address_bits = 16;
-		eeprom->use_eerd = true;
-		eeprom->use_eewr = false;
-		break;
-	default:
-		break;
-	}
-
-	if (eeprom->type == e1000_eeprom_spi ||
-	    eeprom->type == e1000_eeprom_invm) {
-		/* eeprom_size will be an enum [0..8] that maps
-		 * to eeprom sizes 128B to
-		 * 32KB (incremented by powers of 2).
-		 */
-		if (hw->mac_type <= e1000_82547_rev_2) {
-			/* Set to default value for initial eeprom read. */
-			eeprom->word_size = 64;
-			ret_val = e1000_read_eeprom(hw, EEPROM_CFG, 1,
-					&eeprom_size);
-			if (ret_val)
-				return ret_val;
-			eeprom_size = (eeprom_size & EEPROM_SIZE_MASK)
-				>> EEPROM_SIZE_SHIFT;
-			/* 256B eeprom size was not supported in earlier
-			 * hardware, so we bump eeprom_size up one to
-			 * ensure that "1" (which maps to 256B) is never
-			 * the result used in the shifting logic below. */
-			if (eeprom_size)
-				eeprom_size++;
-		} else {
-			eeprom_size = (uint16_t)((eecd &
-				E1000_EECD_SIZE_EX_MASK) >>
-				E1000_EECD_SIZE_EX_SHIFT);
-		}
-
-		eeprom->word_size = 1 << (eeprom_size + EEPROM_WORD_SIZE_SHIFT);
-	}
-	return ret_val;
-}
-
-/******************************************************************************
- * Polls the status bit (bit 1) of the EERD to determine when the read is done.
- *
- * hw - Struct containing variables accessed by shared code
- *****************************************************************************/
-static int32_t e1000_poll_eerd_eewr_done(struct e1000_hw *hw, int eerd)
-{
-	uint32_t attempts = 100000;
-	uint32_t i, reg = 0;
-	int32_t done = E1000_ERR_EEPROM;
-
-	for (i = 0; i < attempts; i++) {
-		if (eerd == E1000_EEPROM_POLL_READ) {
-			if (hw->mac_type == e1000_igb)
-				reg = E1000_READ_REG(hw, I210_EERD);
-			else
-				reg = E1000_READ_REG(hw, EERD);
-		} else {
-			if (hw->mac_type == e1000_igb)
-				reg = E1000_READ_REG(hw, I210_EEWR);
-			else
-				reg = E1000_READ_REG(hw, EEWR);
-		}
-
-		if (reg & E1000_EEPROM_RW_REG_DONE) {
-			done = E1000_SUCCESS;
-			break;
-		}
-		udelay(5);
-	}
-
-	return done;
-}
-
-/******************************************************************************
- * Reads a 16 bit word from the EEPROM using the EERD register.
- *
- * hw - Struct containing variables accessed by shared code
- * offset - offset of  word in the EEPROM to read
- * data - word read from the EEPROM
- * words - number of words to read
- *****************************************************************************/
-static int32_t e1000_read_eeprom_eerd(struct e1000_hw *hw,
-			uint16_t offset,
-			uint16_t words,
-			uint16_t *data)
-{
-	uint32_t i, eerd = 0;
-	int32_t error = 0;
-
-	for (i = 0; i < words; i++) {
-		eerd = ((offset+i) << E1000_EEPROM_RW_ADDR_SHIFT) +
-			E1000_EEPROM_RW_REG_START;
-
-		if (hw->mac_type == e1000_igb)
-			E1000_WRITE_REG(hw, I210_EERD, eerd);
-		else
-			E1000_WRITE_REG(hw, EERD, eerd);
-
-		error = e1000_poll_eerd_eewr_done(hw, E1000_EEPROM_POLL_READ);
-
-		if (error)
-			break;
-
-		if (hw->mac_type == e1000_igb) {
-			data[i] = (E1000_READ_REG(hw, I210_EERD) >>
-				E1000_EEPROM_RW_REG_DATA);
-		} else {
-			data[i] = (E1000_READ_REG(hw, EERD) >>
-				E1000_EEPROM_RW_REG_DATA);
-		}
-
-	}
-
-	return error;
-}
-
-static void e1000_release_eeprom(struct e1000_hw *hw)
-{
-	uint32_t eecd;
-
-	DEBUGFUNC();
-
-	eecd = E1000_READ_REG(hw, EECD);
-
-	if (hw->eeprom.type == e1000_eeprom_spi) {
-		eecd |= E1000_EECD_CS;  /* Pull CS high */
-		eecd &= ~E1000_EECD_SK; /* Lower SCK */
-
-		E1000_WRITE_REG(hw, EECD, eecd);
-
-		udelay(hw->eeprom.delay_usec);
-	} else if (hw->eeprom.type == e1000_eeprom_microwire) {
-		/* cleanup eeprom */
-
-		/* CS on Microwire is active-high */
-		eecd &= ~(E1000_EECD_CS | E1000_EECD_DI);
-
-		E1000_WRITE_REG(hw, EECD, eecd);
-
-		/* Rising edge of clock */
-		eecd |= E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(hw->eeprom.delay_usec);
-
-		/* Falling edge of clock */
-		eecd &= ~E1000_EECD_SK;
-		E1000_WRITE_REG(hw, EECD, eecd);
-		E1000_WRITE_FLUSH(hw);
-		udelay(hw->eeprom.delay_usec);
-	}
-
-	/* Stop requesting EEPROM access */
-	if (hw->mac_type > e1000_82544) {
-		eecd &= ~E1000_EECD_REQ;
-		E1000_WRITE_REG(hw, EECD, eecd);
-	}
-}
-/******************************************************************************
- * Reads a 16 bit word from the EEPROM.
- *
- * hw - Struct containing variables accessed by shared code
- *****************************************************************************/
-static int32_t e1000_spi_eeprom_ready(struct e1000_hw *hw)
-{
-	uint16_t retry_count = 0;
-	uint8_t spi_stat_reg;
-
-	DEBUGFUNC();
-
-	/* Read "Status Register" repeatedly until the LSB is cleared.  The
-	 * EEPROM will signal that the command has been completed by clearing
-	 * bit 0 of the internal status register.  If it's not cleared within
-	 * 5 milliseconds, then error out.
-	 */
-	retry_count = 0;
-	do {
-		e1000_shift_out_ee_bits(hw, EEPROM_RDSR_OPCODE_SPI,
-			hw->eeprom.opcode_bits);
-		spi_stat_reg = (uint8_t)e1000_shift_in_ee_bits(hw, 8);
-		if (!(spi_stat_reg & EEPROM_STATUS_RDY_SPI))
-			break;
-
-		udelay(5);
-		retry_count += 5;
-
-		e1000_standby_eeprom(hw);
-	} while (retry_count < EEPROM_MAX_RETRY_SPI);
-
-	/* ATMEL SPI write time could vary from 0-20mSec on 3.3V devices (and
-	 * only 0-5mSec on 5V devices)
-	 */
-	if (retry_count >= EEPROM_MAX_RETRY_SPI) {
-		dev_dbg(hw->dev, "SPI EEPROM Status error\n");
-		return -E1000_ERR_EEPROM;
-	}
-
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
- * Reads a 16 bit word from the EEPROM.
- *
- * hw - Struct containing variables accessed by shared code
- * offset - offset of  word in the EEPROM to read
- * data - word read from the EEPROM
- *****************************************************************************/
-static int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
-		uint16_t words, uint16_t *data)
-{
-	struct e1000_eeprom_info *eeprom = &hw->eeprom;
-	uint32_t i = 0;
-
-	DEBUGFUNC();
-
-	/* If eeprom is not yet detected, do so now */
-	if (eeprom->word_size == 0)
-		e1000_init_eeprom_params(hw);
-
-	/* A check for invalid values:  offset too large, too many words,
-	 * and not enough words.
-	 */
-	if ((offset >= eeprom->word_size) ||
-		(words > eeprom->word_size - offset) ||
-		(words == 0)) {
-		dev_dbg(hw->dev, "\"words\" parameter out of bounds."
-			"Words = %d, size = %d\n", offset, eeprom->word_size);
-		return -E1000_ERR_EEPROM;
-	}
-
-	/* EEPROM's that don't use EERD to read require us to bit-bang the SPI
-	 * directly. In this case, we need to acquire the EEPROM so that
-	 * FW or other port software does not interrupt.
-	 */
-	if (e1000_is_onboard_nvm_eeprom(hw) == true &&
-		hw->eeprom.use_eerd == false) {
-
-		/* Prepare the EEPROM for bit-bang reading */
-		if (e1000_acquire_eeprom(hw) != E1000_SUCCESS)
-			return -E1000_ERR_EEPROM;
-	}
-
-	/* Eerd register EEPROM access requires no eeprom aquire/release */
-	if (eeprom->use_eerd == true)
-		return e1000_read_eeprom_eerd(hw, offset, words, data);
-
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
-	}
-
-	/* End this read operation */
-	e1000_release_eeprom(hw);
-
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
- * Verifies that the EEPROM has a valid checksum
- *
- * hw - Struct containing variables accessed by shared code
- *
- * Reads the first 64 16 bit words of the EEPROM and sums the values read.
- * If the the sum of the 64 16 bit words is 0xBABA, the EEPROM's checksum is
- * valid.
- *****************************************************************************/
-static int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
-{
-	uint16_t i, checksum, checksum_reg;
-	uint16_t buf[EEPROM_CHECKSUM_REG + 1];
-
-	DEBUGFUNC();
-
-	/* Read the EEPROM */
-	if (e1000_read_eeprom(hw, 0, EEPROM_CHECKSUM_REG + 1, buf) < 0) {
-		dev_err(&hw->edev.dev, "Unable to read EEPROM!\n");
-		return -E1000_ERR_EEPROM;
-	}
-
-	/* Compute the checksum */
-	checksum = 0;
-	for (i = 0; i < EEPROM_CHECKSUM_REG; i++)
-		checksum += buf[i];
-	checksum = ((uint16_t)EEPROM_SUM) - checksum;
-	checksum_reg = buf[i];
-
-	/* Verify it! */
-	if (checksum == checksum_reg)
-		return 0;
-
-	/* Hrm, verification failed, print an error */
-	dev_err(&hw->edev.dev, "EEPROM checksum is incorrect!\n");
-	dev_err(&hw->edev.dev, "  ...register was 0x%04hx, calculated 0x%04hx\n",
-			checksum_reg, checksum);
-
-	return -E1000_ERR_EEPROM;
-}
-
-/*****************************************************************************
- * Set PHY to class A mode
- * Assumes the following operations will follow to enable the new class mode.
- *  1. Do a PHY soft reset
- *  2. Restart auto-negotiation or force link.
- *
- * hw - Struct containing variables accessed by shared code
- ****************************************************************************/
-static int32_t e1000_set_phy_mode(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	uint16_t eeprom_data;
-
-	DEBUGFUNC();
-
-	if ((hw->mac_type == e1000_82545_rev_3) && e1000_media_copper(hw)) {
-		ret_val = e1000_read_eeprom(hw, EEPROM_PHY_CLASS_WORD,
-				1, &eeprom_data);
-		if (ret_val)
-			return ret_val;
-
-		if ((eeprom_data != EEPROM_RESERVED_WORD) &&
-			(eeprom_data & EEPROM_PHY_CLASS_A)) {
-			ret_val = e1000_write_phy_reg(hw,
-					M88E1000_PHY_PAGE_SELECT, 0x000B);
-			if (ret_val)
-				return ret_val;
-			ret_val = e1000_write_phy_reg(hw,
-					M88E1000_PHY_GEN_CONTROL, 0x8104);
-			if (ret_val)
-				return ret_val;
-		}
-	}
-	return E1000_SUCCESS;
-}
-
-/***************************************************************************
- *
- * Obtaining software semaphore bit (SMBI) before resetting PHY.
- *
- * hw: Struct containing variables accessed by shared code
- *
- * returns: - E1000_ERR_RESET if fail to obtain semaphore.
- *            E1000_SUCCESS at any other case.
- *
- ***************************************************************************/
-static int32_t e1000_get_software_semaphore(struct e1000_hw *hw)
-{
-	 int32_t timeout = hw->eeprom.word_size + 1;
-	 uint32_t swsm;
-
-	DEBUGFUNC();
-
-	swsm = E1000_READ_REG(hw, SWSM);
-	swsm &= ~E1000_SWSM_SMBI;
-	E1000_WRITE_REG(hw, SWSM, swsm);
-
-	if (hw->mac_type != e1000_80003es2lan)
-		return E1000_SUCCESS;
-
-	while (timeout) {
-		swsm = E1000_READ_REG(hw, SWSM);
-		/* If SMBI bit cleared, it is now set and we hold
-		 * the semaphore */
-		if (!(swsm & E1000_SWSM_SMBI))
-			return 0;
-		mdelay(1);
-		timeout--;
-	}
-
-	dev_dbg(hw->dev, "Driver can't access device - SMBI bit is set.\n");
-	return -E1000_ERR_RESET;
-}
-
-/***************************************************************************
- * This function clears HW semaphore bits.
- *
- * hw: Struct containing variables accessed by shared code
- *
- * returns: - None.
- *
- ***************************************************************************/
-static void e1000_put_hw_eeprom_semaphore(struct e1000_hw *hw)
-{
-	uint32_t swsm;
-
-	swsm = E1000_READ_REG(hw, SWSM);
-
-	if (hw->mac_type == e1000_80003es2lan)
-		/* Release both semaphores. */
-		swsm &= ~(E1000_SWSM_SMBI | E1000_SWSM_SWESMBI);
-	else
-		swsm &= ~(E1000_SWSM_SWESMBI);
-
-	E1000_WRITE_REG(hw, SWSM, swsm);
-}
-
-/***************************************************************************
- *
- * Using the combination of SMBI and SWESMBI semaphore bits when resetting
- * adapter or Eeprom access.
- *
- * hw: Struct containing variables accessed by shared code
- *
- * returns: - E1000_ERR_EEPROM if fail to access EEPROM.
- *            E1000_SUCCESS at any other case.
- *
- ***************************************************************************/
-static int32_t e1000_get_hw_eeprom_semaphore(struct e1000_hw *hw)
-{
-	int32_t timeout;
-	uint32_t swsm;
-
-	if (hw->mac_type == e1000_80003es2lan) {
-		/* Get the SW semaphore. */
-		if (e1000_get_software_semaphore(hw) != E1000_SUCCESS)
-			return -E1000_ERR_EEPROM;
-	}
-
-	/* Get the FW semaphore. */
-	timeout = hw->eeprom.word_size + 1;
-	while (timeout) {
-		swsm = E1000_READ_REG(hw, SWSM);
-		swsm |= E1000_SWSM_SWESMBI;
-		E1000_WRITE_REG(hw, SWSM, swsm);
-		/* if we managed to set the bit we got the semaphore. */
-		swsm = E1000_READ_REG(hw, SWSM);
-		if (swsm & E1000_SWSM_SWESMBI)
-			break;
-
-		udelay(50);
-		timeout--;
-	}
-
-	if (!timeout) {
-		/* Release semaphores */
-		e1000_put_hw_eeprom_semaphore(hw);
-		dev_dbg(hw->dev, "Driver can't access the Eeprom - "
-				"SWESMBI bit is set.\n");
-		return -E1000_ERR_EEPROM;
-	}
-	return E1000_SUCCESS;
-}
-
-static int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask)
-{
-	uint32_t swfw_sync = 0;
-	uint32_t swmask = mask;
-	uint32_t fwmask = mask << 16;
-	int32_t timeout = 200;
-
-	DEBUGFUNC();
-	while (timeout) {
-		if (e1000_get_hw_eeprom_semaphore(hw))
-			return -E1000_ERR_SWFW_SYNC;
-
-		swfw_sync = E1000_READ_REG(hw, SW_FW_SYNC);
-		if (!(swfw_sync & (fwmask | swmask)))
-			break;
-
-		/* firmware currently using resource (fwmask) */
-		/* or other software thread currently using resource (swmask) */
-		e1000_put_hw_eeprom_semaphore(hw);
-		mdelay(5);
-		timeout--;
-	}
-
-	if (!timeout) {
-		dev_dbg(hw->dev, "Driver can't access resource, SW_FW_SYNC timeout.\n");
-		return -E1000_ERR_SWFW_SYNC;
-	}
-
-	swfw_sync |= swmask;
-	E1000_WRITE_REG(hw, SW_FW_SYNC, swfw_sync);
-
-	e1000_put_hw_eeprom_semaphore(hw);
-	return E1000_SUCCESS;
-}
-
-static bool e1000_is_second_port(struct e1000_hw *hw)
-{
-	switch (hw->mac_type) {
-	case e1000_80003es2lan:
-	case e1000_82546:
-	case e1000_82571:
-		if (E1000_READ_REG(hw, STATUS) & E1000_STATUS_FUNC_1)
-			return true;
-		/* Fallthrough */
-	default:
-		return false;
-	}
-}
-
-/******************************************************************************
- * Reads the adapter's MAC address from the EEPROM and inverts the LSB for the
- * second function of dual function devices
- *
- * edev - Struct containing variables accessed by shared code
- *****************************************************************************/
-static int e1000_get_ethaddr(struct eth_device *edev, unsigned char *adr)
-{
-	struct e1000_hw *hw = edev->priv;
-	uint16_t eeprom_data;
-	uint32_t reg_data = 0;
-	int i;
-
-	DEBUGFUNC();
-
-	if (hw->mac_type == e1000_igb) {
-		/* i210 preloads MAC address into RAL/RAH registers */
-		reg_data = E1000_READ_REG_ARRAY(hw, RA, 0);
-		adr[0] = reg_data & 0xff;
-		adr[1] = (reg_data >> 8) & 0xff;
-		adr[2] = (reg_data >> 16) & 0xff;
-		adr[3] = (reg_data >> 24) & 0xff;
-		reg_data = E1000_READ_REG_ARRAY(hw, RA, 1);
-		adr[4] = reg_data & 0xff;
-		adr[5] = (reg_data >> 8) & 0xff;
-		return 0;
-	}
-
-	for (i = 0; i < NODE_ADDRESS_SIZE; i += 2) {
-		if (e1000_read_eeprom(hw, i >> 1, 1, &eeprom_data) < 0) {
-			dev_dbg(hw->dev, "EEPROM Read Error\n");
-			return -E1000_ERR_EEPROM;
-		}
-		adr[i] = eeprom_data & 0xff;
-		adr[i + 1] = (eeprom_data >> 8) & 0xff;
-	}
-
-	/* Invert the last bit if this is the second device */
-	if (e1000_is_second_port(hw))
-		adr[5] ^= 1;
-
-	return 0;
-}
-
-static int e1000_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
-{
-	struct e1000_hw *hw = edev->priv;
-	uint32_t addr_low;
-	uint32_t addr_high;
-
-	DEBUGFUNC();
-
-	dev_dbg(hw->dev, "Programming MAC Address into RAR[0]\n");
-
-	addr_low = (adr[0] | (adr[1] << 8) | (adr[2] << 16) | (adr[3] << 24));
-	addr_high = (adr[4] | (adr[5] << 8) | E1000_RAH_AV);
-
-	E1000_WRITE_REG_ARRAY(hw, RA, 0, addr_low);
-	E1000_WRITE_REG_ARRAY(hw, RA, 1, addr_high);
-
-	return 0;
-}
-
-/******************************************************************************
- * Clears the VLAN filter table
- *
- * hw - Struct containing variables accessed by shared code
- *****************************************************************************/
-static void e1000_clear_vfta(struct e1000_hw *hw)
-{
-	uint32_t offset;
-
-	for (offset = 0; offset < E1000_VLAN_FILTER_TBL_SIZE; offset++)
-		E1000_WRITE_REG_ARRAY(hw, VFTA, offset, 0);
-}
-
-/******************************************************************************
- * Set the mac type member in the hw struct.
- *
- * hw - Struct containing variables accessed by shared code
- *****************************************************************************/
-static int32_t e1000_set_mac_type(struct e1000_hw *hw)
-{
-	DEBUGFUNC();
-
-	switch (hw->device_id) {
-	case E1000_DEV_ID_82542:
-		switch (hw->revision_id) {
-		case E1000_82542_2_0_REV_ID:
-			hw->mac_type = e1000_82542_rev2_0;
-			break;
-		case E1000_82542_2_1_REV_ID:
-			hw->mac_type = e1000_82542_rev2_1;
-			break;
-		default:
-			/* Invalid 82542 revision ID */
-			return -E1000_ERR_MAC_TYPE;
-		}
-		break;
-	case E1000_DEV_ID_82543GC_FIBER:
-	case E1000_DEV_ID_82543GC_COPPER:
-		hw->mac_type = e1000_82543;
-		break;
-	case E1000_DEV_ID_82544EI_COPPER:
-	case E1000_DEV_ID_82544EI_FIBER:
-	case E1000_DEV_ID_82544GC_COPPER:
-	case E1000_DEV_ID_82544GC_LOM:
-		hw->mac_type = e1000_82544;
-		break;
-	case E1000_DEV_ID_82540EM:
-	case E1000_DEV_ID_82540EM_LOM:
-	case E1000_DEV_ID_82540EP:
-	case E1000_DEV_ID_82540EP_LOM:
-	case E1000_DEV_ID_82540EP_LP:
-		hw->mac_type = e1000_82540;
-		break;
-	case E1000_DEV_ID_82545EM_COPPER:
-	case E1000_DEV_ID_82545EM_FIBER:
-		hw->mac_type = e1000_82545;
-		break;
-	case E1000_DEV_ID_82545GM_COPPER:
-	case E1000_DEV_ID_82545GM_FIBER:
-	case E1000_DEV_ID_82545GM_SERDES:
-		hw->mac_type = e1000_82545_rev_3;
-		break;
-	case E1000_DEV_ID_82546EB_COPPER:
-	case E1000_DEV_ID_82546EB_FIBER:
-	case E1000_DEV_ID_82546EB_QUAD_COPPER:
-		hw->mac_type = e1000_82546;
-		break;
-	case E1000_DEV_ID_82546GB_COPPER:
-	case E1000_DEV_ID_82546GB_FIBER:
-	case E1000_DEV_ID_82546GB_SERDES:
-	case E1000_DEV_ID_82546GB_PCIE:
-	case E1000_DEV_ID_82546GB_QUAD_COPPER:
-	case E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3:
-		hw->mac_type = e1000_82546_rev_3;
-		break;
-	case E1000_DEV_ID_82541EI:
-	case E1000_DEV_ID_82541EI_MOBILE:
-	case E1000_DEV_ID_82541ER_LOM:
-		hw->mac_type = e1000_82541;
-		break;
-	case E1000_DEV_ID_82541ER:
-	case E1000_DEV_ID_82541GI:
-	case E1000_DEV_ID_82541GI_LF:
-	case E1000_DEV_ID_82541GI_MOBILE:
-		hw->mac_type = e1000_82541_rev_2;
-		break;
-	case E1000_DEV_ID_82547EI:
-	case E1000_DEV_ID_82547EI_MOBILE:
-		hw->mac_type = e1000_82547;
-		break;
-	case E1000_DEV_ID_82547GI:
-		hw->mac_type = e1000_82547_rev_2;
-		break;
-	case E1000_DEV_ID_82571EB_COPPER:
-	case E1000_DEV_ID_82571EB_FIBER:
-	case E1000_DEV_ID_82571EB_SERDES:
-	case E1000_DEV_ID_82571EB_SERDES_DUAL:
-	case E1000_DEV_ID_82571EB_SERDES_QUAD:
-	case E1000_DEV_ID_82571EB_QUAD_COPPER:
-	case E1000_DEV_ID_82571PT_QUAD_COPPER:
-	case E1000_DEV_ID_82571EB_QUAD_FIBER:
-	case E1000_DEV_ID_82571EB_QUAD_COPPER_LOWPROFILE:
-		hw->mac_type = e1000_82571;
-		break;
-	case E1000_DEV_ID_82572EI_COPPER:
-	case E1000_DEV_ID_82572EI_FIBER:
-	case E1000_DEV_ID_82572EI_SERDES:
-	case E1000_DEV_ID_82572EI:
-		hw->mac_type = e1000_82572;
-		break;
-	case E1000_DEV_ID_82573E:
-	case E1000_DEV_ID_82573E_IAMT:
-	case E1000_DEV_ID_82573L:
-		hw->mac_type = e1000_82573;
-		break;
-	case E1000_DEV_ID_82574L:
-		hw->mac_type = e1000_82574;
-		break;
-	case E1000_DEV_ID_80003ES2LAN_COPPER_SPT:
-	case E1000_DEV_ID_80003ES2LAN_SERDES_SPT:
-	case E1000_DEV_ID_80003ES2LAN_COPPER_DPT:
-	case E1000_DEV_ID_80003ES2LAN_SERDES_DPT:
-		hw->mac_type = e1000_80003es2lan;
-		break;
-	case E1000_DEV_ID_ICH8_IGP_M_AMT:
-	case E1000_DEV_ID_ICH8_IGP_AMT:
-	case E1000_DEV_ID_ICH8_IGP_C:
-	case E1000_DEV_ID_ICH8_IFE:
-	case E1000_DEV_ID_ICH8_IFE_GT:
-	case E1000_DEV_ID_ICH8_IFE_G:
-	case E1000_DEV_ID_ICH8_IGP_M:
-		hw->mac_type = e1000_ich8lan;
-		break;
-	case E1000_DEV_ID_I350_COPPER:
-	case E1000_DEV_ID_I210_UNPROGRAMMED:
-	case E1000_DEV_ID_I211_UNPROGRAMMED:
-	case E1000_DEV_ID_I210_COPPER:
-	case E1000_DEV_ID_I211_COPPER:
-	case E1000_DEV_ID_I210_COPPER_FLASHLESS:
-	case E1000_DEV_ID_I210_SERDES:
-	case E1000_DEV_ID_I210_SERDES_FLASHLESS:
-	case E1000_DEV_ID_I210_1000BASEKX:
-		hw->mac_type = e1000_igb;
-		break;
-	default:
-		/* Should never have loaded on this device */
-		return -E1000_ERR_MAC_TYPE;
-	}
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
- * Reset the transmit and receive units; mask and clear all interrupts.
- *
- * hw - Struct containing variables accessed by shared code
- *****************************************************************************/
-static void e1000_reset_hw(struct e1000_hw *hw)
-{
-	uint32_t ctrl;
-	uint32_t reg;
-
-	DEBUGFUNC();
-
-	/* For 82542 (rev 2.0), disable MWI before issuing a device reset */
-	if (hw->mac_type == e1000_82542_rev2_0) {
-		dev_dbg(hw->dev, "Disabling MWI on 82542 rev 2.0\n");
-		pci_write_config_word(hw->pdev, PCI_COMMAND,
-				hw->pci_cmd_word & ~PCI_COMMAND_INVALIDATE);
-	}
-
-	/* Disable the Transmit and Receive units.  Then delay to allow
-	 * any pending transactions to complete before we hit the MAC with
-	 * the global reset.
-	 */
-	E1000_WRITE_REG(hw, RCTL, 0);
-	E1000_WRITE_REG(hw, TCTL, E1000_TCTL_PSP);
-	E1000_WRITE_FLUSH(hw);
-
-	/* Delay to allow any outstanding PCI transactions to complete before
-	 * resetting the device
-	 */
-	mdelay(10);
-
-	/* Issue a global reset to the MAC.  This will reset the chip's
-	 * transmit, receive, DMA, and link units.  It will not effect
-	 * the current PCI configuration.  The global reset bit is self-
-	 * clearing, and should clear within a microsecond.
-	 */
-	dev_dbg(hw->dev, "Issuing a global reset to MAC\n");
-	ctrl = E1000_READ_REG(hw, CTRL);
-
-	E1000_WRITE_REG(hw, CTRL, (ctrl | E1000_CTRL_RST));
-
-	/* Force a reload from the EEPROM if necessary */
-	if (hw->mac_type == e1000_igb) {
-		mdelay(20);
-		reg = E1000_READ_REG(hw, STATUS);
-		if (reg & E1000_STATUS_PF_RST_DONE)
-			dev_dbg(hw->dev, "PF OK\n");
-		reg = E1000_READ_REG(hw, I210_EECD);
-		if (reg & E1000_EECD_AUTO_RD)
-			dev_dbg(hw->dev, "EEC OK\n");
-	} else if (hw->mac_type < e1000_82540) {
-		uint32_t ctrl_ext;
-
-		/* Wait for reset to complete */
-		udelay(10);
-		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
-		ctrl_ext |= E1000_CTRL_EXT_EE_RST;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-		E1000_WRITE_FLUSH(hw);
-		/* Wait for EEPROM reload */
-		mdelay(2);
-	} else {
-		uint32_t manc;
-
-		/* Wait for EEPROM reload (it happens automatically) */
-		mdelay(4);
-		/* Dissable HW ARPs on ASF enabled adapters */
-		manc = E1000_READ_REG(hw, MANC);
-		manc &= ~(E1000_MANC_ARP_EN);
-		E1000_WRITE_REG(hw, MANC, manc);
-	}
-
-	/* Clear interrupt mask to stop board from generating interrupts */
-	if (hw->mac_type == e1000_igb)
-		E1000_WRITE_REG(hw, I210_IAM, 0);
-
-	E1000_WRITE_REG(hw, IMC, 0xffffffff);
-
-	/* Clear any pending interrupt events. */
-	E1000_READ_REG(hw, ICR);
-
-	/* If MWI was previously enabled, reenable it. */
-	if (hw->mac_type == e1000_82542_rev2_0)
-		pci_write_config_word(hw->pdev, PCI_COMMAND, hw->pci_cmd_word);
-
-	if (hw->mac_type != e1000_igb) {
-		if (hw->mac_type < e1000_82571)
-			E1000_WRITE_REG(hw, PBA, 0x00000030);
-		else
-			E1000_WRITE_REG(hw, PBA, 0x000a0026);
-	}
-}
-
-/******************************************************************************
- *
- * Initialize a number of hardware-dependent bits
- *
- * hw: Struct containing variables accessed by shared code
- *
- * This function contains hardware limitation workarounds for PCI-E adapters
- *
- *****************************************************************************/
-static void e1000_initialize_hardware_bits(struct e1000_hw *hw)
-{
-	uint32_t reg_ctrl, reg_ctrl_ext;
-	uint32_t reg_tarc0, reg_tarc1;
-	uint32_t reg_txdctl, reg_txdctl1;
-
-	if (hw->mac_type < e1000_82571)
-		return;
-
-	/* Settings common to all PCI-express silicon */
-
-	/* link autonegotiation/sync workarounds */
-	reg_tarc0 = E1000_READ_REG(hw, TARC0);
-	reg_tarc0 &= ~((1 << 30) | (1 << 29) | (1 << 28) | (1 << 27));
-
-	/* Enable not-done TX descriptor counting */
-	reg_txdctl = E1000_READ_REG(hw, TXDCTL);
-	reg_txdctl |= E1000_TXDCTL_COUNT_DESC;
-	E1000_WRITE_REG(hw, TXDCTL, reg_txdctl);
-
-	reg_txdctl1 = E1000_READ_REG(hw, TXDCTL1);
-	reg_txdctl1 |= E1000_TXDCTL_COUNT_DESC;
-	E1000_WRITE_REG(hw, TXDCTL1, reg_txdctl1);
-
-	switch (hw->mac_type) {
-	case e1000_82571:
-	case e1000_82572:
-		/* Clear PHY TX compatible mode bits */
-		reg_tarc1 = E1000_READ_REG(hw, TARC1);
-		reg_tarc1 &= ~((1 << 30) | (1 << 29));
-
-		/* link autonegotiation/sync workarounds */
-		reg_tarc0 |= (1 << 26) | (1 << 25) | (1 << 24) | (1 << 23);
-
-		/* TX ring control fixes */
-		reg_tarc1 |= (1 << 26) | (1 << 25) | (1 << 24);
-
-		/* Multiple read bit is reversed polarity */
-		if (E1000_READ_REG(hw, TCTL) & E1000_TCTL_MULR)
-			reg_tarc1 &= ~(1 << 28);
-		else
-			reg_tarc1 |= (1 << 28);
-
-		E1000_WRITE_REG(hw, TARC1, reg_tarc1);
-		break;
-	case e1000_82573:
-	case e1000_82574:
-		reg_ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
-		reg_ctrl_ext &= ~(1 << 23);
-		reg_ctrl_ext |= (1 << 22);
-
-		/* TX byte count fix */
-		reg_ctrl = E1000_READ_REG(hw, CTRL);
-		reg_ctrl &= ~(1 << 29);
-
-		E1000_WRITE_REG(hw, CTRL_EXT, reg_ctrl_ext);
-		E1000_WRITE_REG(hw, CTRL, reg_ctrl);
-		break;
-	case e1000_80003es2lan:
-		/* improve small packet performace for fiber/serdes */
-		if (e1000_media_fiber_serdes(hw))
-			reg_tarc0 &= ~(1 << 20);
-
-		/* Multiple read bit is reversed polarity */
-		reg_tarc1 = E1000_READ_REG(hw, TARC1);
-		if (E1000_READ_REG(hw, TCTL) & E1000_TCTL_MULR)
-			reg_tarc1 &= ~(1 << 28);
-		else
-			reg_tarc1 |= (1 << 28);
-
-		E1000_WRITE_REG(hw, TARC1, reg_tarc1);
-		break;
-	case e1000_ich8lan:
-		/* Reduce concurrent DMA requests to 3 from 4 */
-		if ((hw->revision_id < 3) ||
-		   ((hw->device_id != E1000_DEV_ID_ICH8_IGP_M_AMT) &&
-		    (hw->device_id != E1000_DEV_ID_ICH8_IGP_M)))
-			reg_tarc0 |= (1 << 29) | (1 << 28);
-
-		reg_ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
-		reg_ctrl_ext |= (1 << 22);
-		E1000_WRITE_REG(hw, CTRL_EXT, reg_ctrl_ext);
-
-		/* workaround TX hang with TSO=on */
-		reg_tarc0 |= (1 << 27) | (1 << 26) | (1 << 24) | (1 << 23);
-
-		/* Multiple read bit is reversed polarity */
-		reg_tarc1 = E1000_READ_REG(hw, TARC1);
-		if (E1000_READ_REG(hw, TCTL) & E1000_TCTL_MULR)
-			reg_tarc1 &= ~(1 << 28);
-		else
-			reg_tarc1 |= (1 << 28);
-
-		/* workaround TX hang with TSO=on */
-		reg_tarc1 |= (1 << 30) | (1 << 26) | (1 << 24);
-
-		E1000_WRITE_REG(hw, TARC1, reg_tarc1);
-		break;
-	case e1000_igb:
-		return;
-	default:
-		break;
-	}
-
-	E1000_WRITE_REG(hw, TARC0, reg_tarc0);
-}
-
-static int e1000_open(struct eth_device *edev)
-{
-	struct e1000_hw *hw = edev->priv;
-	uint32_t ctrl_ext;
-	int32_t ret_val;
-	uint32_t ctrl;
-	uint32_t reg_data;
-
-	/* Call a subroutine to configure the link and setup flow control. */
-	ret_val = e1000_setup_link(hw);
-	if (ret_val)
-		return ret_val;
-
-	/* Set the transmit descriptor write-back policy */
-	if (hw->mac_type > e1000_82544) {
-		ctrl = E1000_READ_REG(hw, TXDCTL);
-		ctrl &= ~E1000_TXDCTL_WTHRESH;
-		ctrl |= E1000_TXDCTL_FULL_TX_DESC_WB;
-		E1000_WRITE_REG(hw, TXDCTL, ctrl);
-	}
-
-	/* Set the receive descriptor write back policy */
-	if (hw->mac_type >= e1000_82571) {
-		ctrl = E1000_READ_REG(hw, RXDCTL);
-		ctrl &= ~E1000_RXDCTL_WTHRESH;
-		ctrl |= E1000_RXDCTL_FULL_RX_DESC_WB;
-		E1000_WRITE_REG(hw, RXDCTL, ctrl);
-	}
-
-	switch (hw->mac_type) {
-	case e1000_80003es2lan:
-		/* Enable retransmit on late collisions */
-		reg_data = E1000_READ_REG(hw, TCTL);
-		reg_data |= E1000_TCTL_RTLC;
-		E1000_WRITE_REG(hw, TCTL, reg_data);
-
-		/* Configure Gigabit Carry Extend Padding */
-		reg_data = E1000_READ_REG(hw, TCTL_EXT);
-		reg_data &= ~E1000_TCTL_EXT_GCEX_MASK;
-		reg_data |= DEFAULT_80003ES2LAN_TCTL_EXT_GCEX;
-		E1000_WRITE_REG(hw, TCTL_EXT, reg_data);
-
-		/* Configure Transmit Inter-Packet Gap */
-		reg_data = E1000_READ_REG(hw, TIPG);
-		reg_data &= ~E1000_TIPG_IPGT_MASK;
-		reg_data |= DEFAULT_80003ES2LAN_TIPG_IPGT_1000;
-		E1000_WRITE_REG(hw, TIPG, reg_data);
-
-		reg_data = E1000_READ_REG_ARRAY(hw, FFLT, 0x0001);
-		reg_data &= ~0x00100000;
-		E1000_WRITE_REG_ARRAY(hw, FFLT, 0x0001, reg_data);
-		/* Fall through */
-	case e1000_82571:
-	case e1000_82572:
-	case e1000_ich8lan:
-		ctrl = E1000_READ_REG(hw, TXDCTL1);
-		ctrl &= ~E1000_TXDCTL_WTHRESH;
-		ctrl |= E1000_TXDCTL_FULL_TX_DESC_WB;
-		E1000_WRITE_REG(hw, TXDCTL1, ctrl);
-		break;
-	case e1000_82573:
-	case e1000_82574:
-		reg_data = E1000_READ_REG(hw, GCR);
-		reg_data |= E1000_GCR_L1_ACT_WITHOUT_L0S_RX;
-		E1000_WRITE_REG(hw, GCR, reg_data);
-	case e1000_igb:
-	default:
-		break;
-	}
-
-	if (hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER ||
-	    hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3) {
-		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
-		/* Relaxed ordering must be disabled to avoid a parity
-		 * error crash in a PCI slot. */
-		ctrl_ext |= E1000_CTRL_EXT_RO_DIS;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-	}
-
-	return 0;
-}
-
-/******************************************************************************
- * Configures flow control and link settings.
- *
- * hw - Struct containing variables accessed by shared code
- *
- * Determines which flow control settings to use. Calls the apropriate media-
- * specific link configuration function. Configures the flow control settings.
- * Assuming the adapter has a valid link partner, a valid link should be
- * established. Assumes the hardware has previously been reset and the
- * transmitter and receiver are not enabled.
- *****************************************************************************/
-static int e1000_setup_link(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	uint32_t ctrl_ext;
-	uint16_t eeprom_data;
-
-	DEBUGFUNC();
-
-	/* In the case of the phy reset being blocked, we already have a link.
-	 * We do not have to set it up again. */
-	if (e1000_check_phy_reset_block(hw))
-		return E1000_SUCCESS;
-
-	/* Read and store word 0x0F of the EEPROM. This word contains bits
-	 * that determine the hardware's default PAUSE (flow control) mode,
-	 * a bit that determines whether the HW defaults to enabling or
-	 * disabling auto-negotiation, and the direction of the
-	 * SW defined pins. If there is no SW over-ride of the flow
-	 * control setting, then the variable hw->fc will
-	 * be initialized based on a value in the EEPROM.
-	 */
-	if (e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1,
-				&eeprom_data) < 0) {
-		dev_dbg(hw->dev, "EEPROM Read Error\n");
-		return -E1000_ERR_EEPROM;
-	}
-
-	switch (hw->mac_type) {
-	case e1000_ich8lan:
-	case e1000_82573:
-	case e1000_82574:
-	case e1000_igb:
-		hw->fc = e1000_fc_full;
-		break;
-	default:
-		ret_val = e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1, &eeprom_data);
-		if (ret_val) {
-			dev_dbg(hw->dev, "EEPROM Read Error\n");
-			return -E1000_ERR_EEPROM;
-		}
-
-		if ((eeprom_data & EEPROM_WORD0F_PAUSE_MASK) == 0)
-			hw->fc = e1000_fc_none;
-		else if ((eeprom_data & EEPROM_WORD0F_PAUSE_MASK) == EEPROM_WORD0F_ASM_DIR)
-			hw->fc = e1000_fc_tx_pause;
-		else
-			hw->fc = e1000_fc_full;
-		break;
-	}
-
-	/* We want to save off the original Flow Control configuration just
-	 * in case we get disconnected and then reconnected into a different
-	 * hub or switch with different Flow Control capabilities.
-	 */
-	if (hw->mac_type == e1000_82542_rev2_0)
-		hw->fc &= ~e1000_fc_tx_pause;
-
-	hw->original_fc = hw->fc;
-
-	dev_dbg(hw->dev, "After fix-ups FlowControl is now = %x\n", hw->fc);
-
-	/* Take the 4 bits from EEPROM word 0x0F that determine the initial
-	 * polarity value for the SW controlled pins, and setup the
-	 * Extended Device Control reg with that info.
-	 * This is needed because one of the SW controlled pins is used for
-	 * signal detection.  So this should be done before e1000_setup_pcs_link()
-	 * or e1000_phy_setup() is called.
-	 */
-	if (hw->mac_type == e1000_82543) {
-		ctrl_ext = ((eeprom_data & EEPROM_WORD0F_SWPDIO_EXT) <<
-			    SWDPIO__EXT_SHIFT);
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-	}
-
-	/* Call the necessary subroutine to configure the link. */
-	if (e1000_media_fiber(hw))
-		ret_val = e1000_setup_fiber_link(hw);
-	else
-		ret_val = e1000_setup_copper_link(hw);
-
-	if (ret_val < 0)
-		return ret_val;
-
-	/* Initialize the flow control address, type, and PAUSE timer
-	 * registers to their default values.  This is done even if flow
-	 * control is disabled, because it does not hurt anything to
-	 * initialize these registers.
-	 */
-	dev_dbg(hw->dev, "Initializing Flow Control address, type and timer regs\n");
-
-	/* FCAL/H and FCT are hardcoded to standard values in e1000_ich8lan. */
-	if (hw->mac_type != e1000_ich8lan) {
-		E1000_WRITE_REG(hw, FCT, FLOW_CONTROL_TYPE);
-		E1000_WRITE_REG(hw, FCAH, FLOW_CONTROL_ADDRESS_HIGH);
-		E1000_WRITE_REG(hw, FCAL, FLOW_CONTROL_ADDRESS_LOW);
-	}
-
-	E1000_WRITE_REG(hw, FCTTV, E1000_FC_PAUSE_TIME);
-
-	/* Set the flow control receive threshold registers.  Normally,
-	 * these registers will be set to a default threshold that may be
-	 * adjusted later by the driver's runtime code.  However, if the
-	 * ability to transmit pause frames in not enabled, then these
-	 * registers will be set to 0.
-	 */
-	if (hw->fc & e1000_fc_tx_pause) {
-		/* We need to set up the Receive Threshold high and low water marks
-		 * as well as (optionally) enabling the transmission of XON frames.
-		 */
-		E1000_WRITE_REG(hw, FCRTL, E1000_FC_LOW_THRESH | E1000_FCRTL_XONE);
-		E1000_WRITE_REG(hw, FCRTH, E1000_FC_HIGH_THRESH);
-	} else {
-		E1000_WRITE_REG(hw, FCRTL, 0);
-		E1000_WRITE_REG(hw, FCRTH, 0);
-	}
-
-	return ret_val;
-}
-
-/******************************************************************************
- * Sets up link for a fiber based adapter
- *
- * hw - Struct containing variables accessed by shared code
- *
- * Manipulates Physical Coding Sublayer functions in order to configure
- * link. Assumes the hardware has been previously reset and the transmitter
- * and receiver are not enabled.
- *****************************************************************************/
-static int e1000_setup_fiber_link(struct e1000_hw *hw)
-{
-	uint32_t ctrl;
-	uint32_t status;
-	uint32_t txcw = 0;
-	uint32_t i;
-	uint32_t signal;
-
-	DEBUGFUNC();
-
-	/* On adapters with a MAC newer that 82544, SW Defineable pin 1 will be
-	 * set when the optics detect a signal. On older adapters, it will be
-	 * cleared when there is a signal
-	 */
-	ctrl = E1000_READ_REG(hw, CTRL);
-	if ((hw->mac_type > e1000_82544) && !(ctrl & E1000_CTRL_ILOS))
-		signal = E1000_CTRL_SWDPIN1;
-	else
-		signal = 0;
-
-	/* Take the link out of reset */
-	ctrl &= ~E1000_CTRL_LRST;
-
-	e1000_config_collision_dist(hw);
-
-	/* Check for a software override of the flow control settings, and setup
-	 * the device accordingly.  If auto-negotiation is enabled, then software
-	 * will have to set the "PAUSE" bits to the correct value in the Tranmsit
-	 * Config Word Register (TXCW) and re-start auto-negotiation.  However, if
-	 * auto-negotiation is disabled, then software will have to manually
-	 * configure the two flow control enable bits in the CTRL register.
-	 *
-	 * The possible values of the "fc" parameter are:
-	 *	0:  Flow control is completely disabled
-	 *	1:  Rx flow control is enabled (we can receive pause frames, but
-	 *	    not send pause frames).
-	 *	2:  Tx flow control is enabled (we can send pause frames but we do
-	 *	    not support receiving pause frames).
-	 *	3:  Both Rx and TX flow control (symmetric) are enabled.
-	 */
-	switch (hw->fc) {
-	case e1000_fc_none:
-		/* Flow control is completely disabled by a software over-ride. */
-		txcw = E1000_TXCW_ANE | E1000_TXCW_FD;
-		break;
-	case e1000_fc_rx_pause:
-		/* RX Flow control is enabled and TX Flow control is disabled by a
-		 * software over-ride. Since there really isn't a way to advertise
-		 * that we are capable of RX Pause ONLY, we will advertise that we
-		 * support both symmetric and asymmetric RX PAUSE. Later, we will
-		 *  disable the adapter's ability to send PAUSE frames.
-		 */
-		txcw = E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_PAUSE_MASK;
-		break;
-	case e1000_fc_tx_pause:
-		/* TX Flow control is enabled, and RX Flow control is disabled, by a
-		 * software over-ride.
-		 */
-		txcw = E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_ASM_DIR;
-		break;
-	case e1000_fc_full:
-		/* Flow control (both RX and TX) is enabled by a software over-ride. */
-		txcw = E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_PAUSE_MASK;
-		break;
-	default:
-		dev_dbg(hw->dev, "Flow control param set incorrectly\n");
-		return -E1000_ERR_CONFIG;
-		break;
-	}
-
-	/* Since auto-negotiation is enabled, take the link out of reset (the link
-	 * will be in reset, because we previously reset the chip). This will
-	 * restart auto-negotiation.  If auto-neogtiation is successful then the
-	 * link-up status bit will be set and the flow control enable bits (RFCE
-	 * and TFCE) will be set according to their negotiated value.
-	 */
-	dev_dbg(hw->dev, "Auto-negotiation enabled (%#x)\n", txcw);
-
-	E1000_WRITE_REG(hw, TXCW, txcw);
-	E1000_WRITE_REG(hw, CTRL, ctrl);
-	E1000_WRITE_FLUSH(hw);
-
-	mdelay(1);
-
-	/* If we have a signal (the cable is plugged in) then poll for a "Link-Up"
-	 * indication in the Device Status Register.  Time-out if a link isn't
-	 * seen in 500 milliseconds seconds (Auto-negotiation should complete in
-	 * less than 500 milliseconds even if the other end is doing it in SW).
-	 */
-	if ((E1000_READ_REG(hw, CTRL) & E1000_CTRL_SWDPIN1) == signal) {
-		dev_dbg(hw->dev, "Looking for Link\n");
-		for (i = 0; i < (LINK_UP_TIMEOUT / 10); i++) {
-			mdelay(10);
-			status = E1000_READ_REG(hw, STATUS);
-			if (status & E1000_STATUS_LU)
-				break;
-		}
-		if (i == (LINK_UP_TIMEOUT / 10)) {
-			/* AutoNeg failed to achieve a link, so we'll call
-			 * e1000_check_for_link. This routine will force the link up if we
-			 * detect a signal. This will allow us to communicate with
-			 * non-autonegotiating link partners.
-			 */
-			dev_dbg(hw->dev, "Never got a valid link from auto-neg!!!\n");
-			hw->autoneg_failed = 1;
-			return -E1000_ERR_NOLINK;
-		} else {
-			hw->autoneg_failed = 0;
-			dev_dbg(hw->dev, "Valid Link Found\n");
-		}
-	} else {
-		dev_dbg(hw->dev, "No Signal Detected\n");
-		return -E1000_ERR_NOLINK;
-	}
-	return 0;
-}
-
-/******************************************************************************
-* Make sure we have a valid PHY and change PHY mode before link setup.
-*
-* hw - Struct containing variables accessed by shared code
-******************************************************************************/
-static int32_t e1000_copper_link_preconfig(struct e1000_hw *hw)
-{
-	uint32_t ctrl;
-	int32_t ret_val;
-	uint16_t phy_data;
-
-	DEBUGFUNC();
-
-	ctrl = E1000_READ_REG(hw, CTRL);
-	/* With 82543, we need to force speed and duplex on the MAC equal to what
-	 * the PHY speed and duplex configuration is. In addition, we need to
-	 * perform a hardware reset on the PHY to take it out of reset.
-	 */
-	if (hw->mac_type > e1000_82543) {
-		ctrl |= E1000_CTRL_SLU;
-		ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
-		E1000_WRITE_REG(hw, CTRL, ctrl);
-	} else {
-		ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX
-				| E1000_CTRL_SLU);
-		E1000_WRITE_REG(hw, CTRL, ctrl);
-		ret_val = e1000_phy_hw_reset(hw);
-		if (ret_val)
-			return ret_val;
-	}
-
-	/* Make sure we have a valid PHY */
-	ret_val = e1000_detect_gig_phy(hw);
-	if (ret_val) {
-		dev_dbg(hw->dev, "Error, did not detect valid phy.\n");
-		return ret_val;
-	}
-	dev_dbg(hw->dev, "Phy ID = %x \n", hw->phy_id);
-
-	/* Set PHY to class A mode (if necessary) */
-	ret_val = e1000_set_phy_mode(hw);
-	if (ret_val)
-		return ret_val;
-
-	if ((hw->mac_type == e1000_82545_rev_3) ||
-	    (hw->mac_type == e1000_82546_rev_3)) {
-		ret_val = e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
-		phy_data |= 0x00000008;
-		ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);
-	}
-
-	return E1000_SUCCESS;
-}
-
-/*****************************************************************************
- *
- * This function sets the lplu state according to the active flag.  When
- * activating lplu this function also disables smart speed and vise versa.
- * lplu will not be activated unless the device autonegotiation advertisment
- * meets standards of either 10 or 10/100 or 10/100/1000 at all duplexes.
- * hw: Struct containing variables accessed by shared code
- * active - true to enable lplu false to disable lplu.
- *
- * returns: - E1000_ERR_PHY if fail to read/write the PHY
- *            E1000_SUCCESS at any other case.
- *
- ****************************************************************************/
-
-static int32_t e1000_set_d3_lplu_state_off(struct e1000_hw *hw)
-{
-	uint32_t phy_ctrl = 0;
-	int32_t ret_val;
-	uint16_t phy_data;
-	DEBUGFUNC();
-
-	/* During driver activity LPLU should not be used or it will attain link
-	 * from the lowest speeds starting from 10Mbps. The capability is used
-	 * for Dx transitions and states */
-	if (hw->mac_type == e1000_82541_rev_2
-			|| hw->mac_type == e1000_82547_rev_2) {
-		ret_val = e1000_read_phy_reg(hw, IGP01E1000_GMII_FIFO,
-				&phy_data);
-		if (ret_val)
-			return ret_val;
-	} else if (hw->mac_type == e1000_ich8lan) {
-		/* MAC writes into PHY register based on the state transition
-		 * and start auto-negotiation. SW driver can overwrite the
-		 * settings in CSR PHY power control E1000_PHY_CTRL register. */
-		phy_ctrl = E1000_READ_REG(hw, PHY_CTRL);
-	} else {
-		ret_val = e1000_read_phy_reg(hw, IGP02E1000_PHY_POWER_MGMT, &phy_data);
-		if (ret_val)
-			return ret_val;
-	}
-
-	if (hw->mac_type == e1000_82541_rev_2 ||
-	    hw->mac_type == e1000_82547_rev_2) {
-		phy_data &= ~IGP01E1000_GMII_FLEX_SPD;
-		ret_val = e1000_write_phy_reg(hw, IGP01E1000_GMII_FIFO, phy_data);
-		if (ret_val)
-			return ret_val;
-	} else {
-		if (hw->mac_type == e1000_ich8lan) {
-			phy_ctrl &= ~E1000_PHY_CTRL_NOND0A_LPLU;
-			E1000_WRITE_REG(hw, PHY_CTRL, phy_ctrl);
-		} else {
-			phy_data &= ~IGP02E1000_PM_D3_LPLU;
-			ret_val = e1000_write_phy_reg(hw,
-				IGP02E1000_PHY_POWER_MGMT, phy_data);
-			if (ret_val)
-				return ret_val;
-		}
-	}
-
-	return E1000_SUCCESS;
-}
-
-/*****************************************************************************
- *
- * This function sets the lplu d0 state according to the active flag.  When
- * activating lplu this function also disables smart speed and vise versa.
- * lplu will not be activated unless the device autonegotiation advertisment
- * meets standards of either 10 or 10/100 or 10/100/1000 at all duplexes.
- * hw: Struct containing variables accessed by shared code
- * active - true to enable lplu false to disable lplu.
- *
- * returns: - E1000_ERR_PHY if fail to read/write the PHY
- *            E1000_SUCCESS at any other case.
- *
- ****************************************************************************/
-
-static int32_t e1000_set_d0_lplu_state_off(struct e1000_hw *hw)
-{
-	uint32_t phy_ctrl = 0;
-	int32_t ret_val;
-	uint16_t phy_data;
-	DEBUGFUNC();
-
-	if (hw->mac_type <= e1000_82547_rev_2)
-		return E1000_SUCCESS;
-
-	if (hw->mac_type == e1000_ich8lan) {
-		phy_ctrl = E1000_READ_REG(hw, PHY_CTRL);
-		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
-		E1000_WRITE_REG(hw, PHY_CTRL, phy_ctrl);
-	} else if (hw->mac_type == e1000_igb) {
-		phy_ctrl = E1000_READ_REG(hw, I210_PHY_CTRL);
-		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
-		E1000_WRITE_REG(hw, I210_PHY_CTRL, phy_ctrl);
-	} else {
-		ret_val = e1000_read_phy_reg(hw, IGP02E1000_PHY_POWER_MGMT,
-				&phy_data);
-		if (ret_val)
-			return ret_val;
-
-		phy_data &= ~IGP02E1000_PM_D0_LPLU;
-
-		ret_val = e1000_write_phy_reg(hw,
-				IGP02E1000_PHY_POWER_MGMT, phy_data);
-		if (ret_val)
-			return ret_val;
-	}
-
-	return E1000_SUCCESS;
-}
-
-/********************************************************************
-* Copper link setup for e1000_phy_igp series.
-*
-* hw - Struct containing variables accessed by shared code
-*********************************************************************/
-static int32_t e1000_copper_link_igp_setup(struct e1000_hw *hw)
-{
-	uint32_t led_ctrl;
-	int32_t ret_val;
-	uint16_t phy_data;
-
-	DEBUGFUNC();
-
-	ret_val = e1000_phy_reset(hw);
-	if (ret_val) {
-		dev_dbg(hw->dev, "Error Resetting the PHY\n");
-		return ret_val;
-	}
-
-	/* Wait 15ms for MAC to configure PHY from eeprom settings */
-	mdelay(15);
-	if (hw->mac_type != e1000_ich8lan) {
-		/* Configure activity LED after PHY reset */
-		led_ctrl = E1000_READ_REG(hw, LEDCTL);
-		led_ctrl &= IGP_ACTIVITY_LED_MASK;
-		led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
-		E1000_WRITE_REG(hw, LEDCTL, led_ctrl);
-	}
-
-	/* The NVM settings will configure LPLU in D3 for IGP2 and IGP3 PHYs */
-	if (hw->phy_type == e1000_phy_igp) {
-		/* disable lplu d3 during driver init */
-		ret_val = e1000_set_d3_lplu_state_off(hw);
-		if (ret_val) {
-			dev_dbg(hw->dev, "Error Disabling LPLU D3\n");
-			return ret_val;
-		}
-	}
-
-	/* disable lplu d0 during driver init */
-	ret_val = e1000_set_d0_lplu_state_off(hw);
-	if (ret_val) {
-		dev_dbg(hw->dev, "Error Disabling LPLU D0\n");
-		return ret_val;
-	}
-
-	/* Configure mdi-mdix settings */
-	ret_val = e1000_read_phy_reg(hw, IGP01E1000_PHY_PORT_CTRL, &phy_data);
-	if (ret_val)
-		return ret_val;
-
-	if ((hw->mac_type == e1000_82541) || (hw->mac_type == e1000_82547)) {
-		/* Force MDI for earlier revs of the IGP PHY */
-		phy_data &= ~(IGP01E1000_PSCR_AUTO_MDIX
-				| IGP01E1000_PSCR_FORCE_MDI_MDIX);
-	} else {
-		phy_data |= IGP01E1000_PSCR_AUTO_MDIX;
-	}
-	ret_val = e1000_write_phy_reg(hw, IGP01E1000_PHY_PORT_CTRL, phy_data);
-	if (ret_val)
-		return ret_val;
-
-	/* set auto-master slave resolution settings */
-	/* when autonegotiation advertisment is only 1000Mbps then we
-	  * should disable SmartSpeed and enable Auto MasterSlave
-	  * resolution as hardware default. */
-	if (hw->autoneg_advertised == ADVERTISE_1000_FULL) {
-		/* Disable SmartSpeed */
-		ret_val = e1000_read_phy_reg(hw,
-				IGP01E1000_PHY_PORT_CONFIG, &phy_data);
-		if (ret_val)
-			return ret_val;
-		phy_data &= ~IGP01E1000_PSCFR_SMART_SPEED;
-		ret_val = e1000_write_phy_reg(hw,
-				IGP01E1000_PHY_PORT_CONFIG, phy_data);
-		if (ret_val)
-			return ret_val;
-		/* Set auto Master/Slave resolution process */
-		ret_val = e1000_read_phy_reg(hw, PHY_1000T_CTRL,
-				&phy_data);
-		if (ret_val)
-			return ret_val;
-		phy_data &= ~CR_1000T_MS_ENABLE;
-		ret_val = e1000_write_phy_reg(hw, PHY_1000T_CTRL,
-				phy_data);
-		if (ret_val)
-			return ret_val;
-	}
-
-	ret_val = e1000_read_phy_reg(hw, PHY_1000T_CTRL, &phy_data);
-	if (ret_val)
-		return ret_val;
-
-	ret_val = e1000_write_phy_reg(hw, PHY_1000T_CTRL, phy_data);
-	if (ret_val)
-		return ret_val;
-
-	return E1000_SUCCESS;
-}
-
-/*****************************************************************************
- * This function checks the mode of the firmware.
- *
- * returns  - true when the mode is IAMT or false.
- ****************************************************************************/
-static bool e1000_check_mng_mode(struct e1000_hw *hw)
-{
-	uint32_t fwsm;
-
-	DEBUGFUNC();
-
-	fwsm = E1000_READ_REG(hw, FWSM);
-
-	if (hw->mac_type == e1000_ich8lan) {
-		if ((fwsm & E1000_FWSM_MODE_MASK) ==
-		    (E1000_MNG_ICH_IAMT_MODE << E1000_FWSM_MODE_SHIFT))
-			return true;
-	} else if ((fwsm & E1000_FWSM_MODE_MASK) ==
-			(E1000_MNG_IAMT_MODE << E1000_FWSM_MODE_SHIFT))
-			return true;
-
-	return false;
-}
-
-static int32_t e1000_write_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint16_t data)
-{
-	uint16_t swfw = E1000_SWFW_PHY0_SM;
-	uint32_t reg_val;
-	DEBUGFUNC();
-
-	if (e1000_is_second_port(hw))
-		swfw = E1000_SWFW_PHY1_SM;
-
-	if (e1000_swfw_sync_acquire(hw, swfw))
-		return -E1000_ERR_SWFW_SYNC;
-
-	reg_val = ((reg_addr << E1000_KUMCTRLSTA_OFFSET_SHIFT)
-			& E1000_KUMCTRLSTA_OFFSET) | data;
-	E1000_WRITE_REG(hw, KUMCTRLSTA, reg_val);
-	udelay(2);
-
-	return E1000_SUCCESS;
-}
-
-static int32_t e1000_read_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint16_t *data)
-{
-	uint16_t swfw = E1000_SWFW_PHY0_SM;
-	uint32_t reg_val;
-	DEBUGFUNC();
-
-	if (e1000_is_second_port(hw))
-		swfw = E1000_SWFW_PHY1_SM;
-
-	if (e1000_swfw_sync_acquire(hw, swfw)) {
-		debug("%s[%i]\n", __func__, __LINE__);
-		return -E1000_ERR_SWFW_SYNC;
-	}
-
-	/* Write register address */
-	reg_val = ((reg_addr << E1000_KUMCTRLSTA_OFFSET_SHIFT) &
-			E1000_KUMCTRLSTA_OFFSET) | E1000_KUMCTRLSTA_REN;
-	E1000_WRITE_REG(hw, KUMCTRLSTA, reg_val);
-	udelay(2);
-
-	/* Read the data returned */
-	reg_val = E1000_READ_REG(hw, KUMCTRLSTA);
-	*data = (uint16_t)reg_val;
-
-	return E1000_SUCCESS;
-}
-
-/********************************************************************
-* Copper link setup for e1000_phy_gg82563 series.
-*
-* hw - Struct containing variables accessed by shared code
-*********************************************************************/
-static int32_t e1000_copper_link_ggp_setup(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	uint16_t phy_data;
-	uint32_t reg_data;
-
-	DEBUGFUNC();
-
-	/* Enable CRS on TX for half-duplex operation. */
-	ret_val = e1000_read_phy_reg(hw,
-			GG82563_PHY_MAC_SPEC_CTRL, &phy_data);
-	if (ret_val)
-		return ret_val;
-
-	phy_data |= GG82563_MSCR_ASSERT_CRS_ON_TX;
-	/* Use 25MHz for both link down and 1000BASE-T for Tx clock */
-	phy_data |= GG82563_MSCR_TX_CLK_1000MBPS_25MHZ;
-
-	ret_val = e1000_write_phy_reg(hw,
-			GG82563_PHY_MAC_SPEC_CTRL, phy_data);
-	if (ret_val)
-		return ret_val;
-
-	/* Options:
-	 *   MDI/MDI-X = 0 (default)
-	 *   0 - Auto for all speeds
-	 *   1 - MDI mode
-	 *   2 - MDI-X mode
-	 *   3 - Auto for 1000Base-T only (MDI-X for 10/100Base-T modes)
-	 */
-	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_SPEC_CTRL, &phy_data);
-	if (ret_val)
-		return ret_val;
-
-	phy_data |= GG82563_PSCR_CROSSOVER_MODE_AUTO;
-
-	/* Options:
-	 *   disable_polarity_correction = 0 (default)
-	 *       Automatic Correction for Reversed Cable Polarity
-	 *   0 - Disabled
-	 *   1 - Enabled
-	 */
-	phy_data &= ~GG82563_PSCR_POLARITY_REVERSAL_DISABLE;
-	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_SPEC_CTRL, phy_data);
-	if (ret_val)
-		return ret_val;
-
-	/* SW Reset the PHY so all changes take effect */
-	ret_val = e1000_phy_reset(hw);
-	if (ret_val) {
-		dev_dbg(hw->dev, "Error Resetting the PHY\n");
-		return ret_val;
-	}
-
-	/* Bypass RX and TX FIFO's */
-	ret_val = e1000_write_kmrn_reg(hw,
-			E1000_KUMCTRLSTA_OFFSET_FIFO_CTRL,
-			E1000_KUMCTRLSTA_FIFO_CTRL_RX_BYPASS
-			| E1000_KUMCTRLSTA_FIFO_CTRL_TX_BYPASS);
-	if (ret_val)
-		return ret_val;
-
-	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_SPEC_CTRL_2, &phy_data);
-	if (ret_val)
-		return ret_val;
-
-	phy_data &= ~GG82563_PSCR2_REVERSE_AUTO_NEG;
-	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_SPEC_CTRL_2, phy_data);
-	if (ret_val)
-		return ret_val;
-
-	reg_data = E1000_READ_REG(hw, CTRL_EXT);
-	reg_data &= ~(E1000_CTRL_EXT_LINK_MODE_MASK);
-	E1000_WRITE_REG(hw, CTRL_EXT, reg_data);
-
-	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_PWR_MGMT_CTRL, &phy_data);
-	if (ret_val)
-		return ret_val;
-
-	/* Do not init these registers when the HW is in IAMT mode, since the
-	 * firmware will have already initialized them.  We only initialize
-	 * them if the HW is not in IAMT mode.
-	 */
-	if (e1000_check_mng_mode(hw) == false) {
-		/* Enable Electrical Idle on the PHY */
-		phy_data |= GG82563_PMCR_ENABLE_ELECTRICAL_IDLE;
-		ret_val = e1000_write_phy_reg(hw,
-				GG82563_PHY_PWR_MGMT_CTRL, phy_data);
-		if (ret_val)
-			return ret_val;
-
-		ret_val = e1000_read_phy_reg(hw,
-				GG82563_PHY_KMRN_MODE_CTRL, &phy_data);
-		if (ret_val)
-			return ret_val;
-
-		phy_data &= ~GG82563_KMCR_PASS_FALSE_CARRIER;
-		ret_val = e1000_write_phy_reg(hw,
-				GG82563_PHY_KMRN_MODE_CTRL, phy_data);
-
-		if (ret_val)
-			return ret_val;
-	}
-
-	/* Workaround: Disable padding in Kumeran interface in the MAC
-	 * and in the PHY to avoid CRC errors.
-	 */
-	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_INBAND_CTRL, &phy_data);
-	if (ret_val)
-		return ret_val;
-	phy_data |= GG82563_ICR_DIS_PADDING;
-	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_INBAND_CTRL, phy_data);
-	if (ret_val)
-		return ret_val;
-
-	return E1000_SUCCESS;
-}
-
-/********************************************************************
-* Copper link setup for e1000_phy_m88 series.
-*
-* hw - Struct containing variables accessed by shared code
-*********************************************************************/
-static int32_t e1000_copper_link_mgp_setup(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	uint16_t phy_data;
-
-	DEBUGFUNC();
-
-	/* Enable CRS on TX. This must be set for half-duplex operation. */
-	ret_val = e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
-	if (ret_val)
-		return ret_val;
-
-	phy_data |= M88E1000_PSCR_ASSERT_CRS_ON_TX;
-	phy_data |= M88E1000_PSCR_AUTO_X_MODE;
-	phy_data &= ~M88E1000_PSCR_POLARITY_REVERSAL;
-
-	ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);
-	if (ret_val)
-		return ret_val;
-
-	if (hw->phy_revision < M88E1011_I_REV_4) {
-		/* Force TX_CLK in the Extended PHY Specific Control Register
-		 * to 25MHz clock.
-		 */
-		ret_val = e1000_read_phy_reg(hw,
-				M88E1000_EXT_PHY_SPEC_CTRL, &phy_data);
-		if (ret_val)
-			return ret_val;
-
-		phy_data |= M88E1000_EPSCR_TX_CLK_25;
-
-		if ((hw->phy_revision == E1000_REVISION_2) &&
-			(hw->phy_id == M88E1111_I_PHY_ID)) {
-			/* Vidalia Phy, set the downshift counter to 5x */
-			phy_data &= ~(M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK);
-			phy_data |= M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X;
-			ret_val = e1000_write_phy_reg(hw,
-					M88E1000_EXT_PHY_SPEC_CTRL, phy_data);
-			if (ret_val)
-				return ret_val;
-		} else {
-			/* Configure Master and Slave downshift values */
-			phy_data &= ~(M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK
-					| M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK);
-			phy_data |= (M88E1000_EPSCR_MASTER_DOWNSHIFT_1X
-					| M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X);
-			ret_val = e1000_write_phy_reg(hw,
-					M88E1000_EXT_PHY_SPEC_CTRL, phy_data);
-			if (ret_val)
-				return ret_val;
-		}
-	}
-
-	/* SW Reset the PHY so all changes take effect */
-	ret_val = e1000_phy_reset(hw);
-	if (ret_val) {
-		dev_dbg(hw->dev, "Error Resetting the PHY\n");
-		return ret_val;
-	}
-
-	return E1000_SUCCESS;
-}
-
-/********************************************************************
-* Setup auto-negotiation and flow control advertisements,
-* and then perform auto-negotiation.
-*
-* hw - Struct containing variables accessed by shared code
-*********************************************************************/
-static int32_t e1000_copper_link_autoneg(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	uint16_t phy_data;
-
-	DEBUGFUNC();
-
-	hw->autoneg_advertised = AUTONEG_ADVERTISE_SPEED_DEFAULT;
-
-	/* IFE phy only supports 10/100 */
-	if (hw->phy_type == e1000_phy_ife)
-		hw->autoneg_advertised &= AUTONEG_ADVERTISE_10_100_ALL;
-
-	dev_dbg(hw->dev, "Reconfiguring auto-neg advertisement params\n");
-	ret_val = e1000_phy_setup_autoneg(hw);
-	if (ret_val) {
-		dev_dbg(hw->dev, "Error Setting up Auto-Negotiation\n");
-		return ret_val;
-	}
-	dev_dbg(hw->dev, "Restarting Auto-Neg\n");
-
-	/* Restart auto-negotiation by setting the Auto Neg Enable bit and
-	 * the Auto Neg Restart bit in the PHY control register.
-	 */
-	ret_val = e1000_read_phy_reg(hw, PHY_CTRL, &phy_data);
-	if (ret_val)
-		return ret_val;
-
-	phy_data |= (MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG);
-	ret_val = e1000_write_phy_reg(hw, PHY_CTRL, phy_data);
-	if (ret_val)
-		return ret_val;
-
-	ret_val = e1000_wait_autoneg(hw);
-	if (ret_val) {
-		dev_dbg(hw->dev, "Error while waiting for autoneg to complete\n");
-		return ret_val;
-	}
-
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
-* Config the MAC and the PHY after link is up.
-*   1) Set up the MAC to the current PHY speed/duplex
-*      if we are on 82543.  If we
-*      are on newer silicon, we only need to configure
-*      collision distance in the Transmit Control Register.
-*   2) Set up flow control on the MAC to that established with
-*      the link partner.
-*   3) Config DSP to improve Gigabit link quality for some PHY revisions.
-*
-* hw - Struct containing variables accessed by shared code
-******************************************************************************/
-static int32_t e1000_copper_link_postconfig(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	DEBUGFUNC();
-
-	if (hw->mac_type >= e1000_82544) {
-		e1000_config_collision_dist(hw);
-	} else {
-		ret_val = e1000_config_mac_to_phy(hw);
-		if (ret_val) {
-			dev_dbg(hw->dev, "Error configuring MAC to PHY settings\n");
-			return ret_val;
-		}
-	}
-
-	ret_val = e1000_config_fc_after_link_up(hw);
-	if (ret_val) {
-		dev_dbg(hw->dev, "Error Configuring Flow Control\n");
-		return ret_val;
-	}
-
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
-* Detects which PHY is present and setup the speed and duplex
-*
-* hw - Struct containing variables accessed by shared code
-******************************************************************************/
-static int e1000_setup_copper_link(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	uint16_t i;
-	uint16_t phy_data;
-	uint16_t reg_data;
-
-	DEBUGFUNC();
-
-	switch (hw->mac_type) {
-	case e1000_80003es2lan:
-	case e1000_ich8lan:
-		/* Set the mac to wait the maximum time between each
-		 * iteration and increase the max iterations when
-		 * polling the phy; this fixes erroneous timeouts at 10Mbps. */
-		ret_val = e1000_write_kmrn_reg(hw, GG82563_REG(0x34, 4), 0xFFFF);
-		if (ret_val)
-			return ret_val;
-
-		ret_val = e1000_read_kmrn_reg(hw, GG82563_REG(0x34, 9), &reg_data);
-		if (ret_val)
-			return ret_val;
-
-		reg_data |= 0x3F;
-
-		ret_val = e1000_write_kmrn_reg(hw, GG82563_REG(0x34, 9), reg_data);
-		if (ret_val)
-			return ret_val;
-	default:
-		break;
-	}
-
-	/* Check if it is a valid PHY and set PHY mode if necessary. */
-	ret_val = e1000_copper_link_preconfig(hw);
-	if (ret_val)
-		return ret_val;
-
-	switch (hw->mac_type) {
-	case e1000_80003es2lan:
-		/* Kumeran registers are written-only */
-		reg_data = E1000_KUMCTRLSTA_INB_CTRL_LINK_STATUS_TX_TIMEOUT_DEFAULT;
-		reg_data |= E1000_KUMCTRLSTA_INB_CTRL_DIS_PADDING;
-		ret_val = e1000_write_kmrn_reg(hw, E1000_KUMCTRLSTA_OFFSET_INB_CTRL,
-				reg_data);
-		if (ret_val)
-			return ret_val;
-		break;
-	default:
-		break;
-	}
-
-	if (hw->phy_type == e1000_phy_igp || hw->phy_type == e1000_phy_igp_3 ||
-	    hw->phy_type == e1000_phy_igp_2) {
-		ret_val = e1000_copper_link_igp_setup(hw);
-		if (ret_val)
-			return ret_val;
-	} else if (hw->phy_type == e1000_phy_m88 || hw->phy_type == e1000_phy_igb) {
-		ret_val = e1000_copper_link_mgp_setup(hw);
-		if (ret_val)
-			return ret_val;
-	} else if (hw->phy_type == e1000_phy_gg82563) {
-		ret_val = e1000_copper_link_ggp_setup(hw);
-		if (ret_val)
-			return ret_val;
-	}
-
-	ret_val = e1000_copper_link_autoneg(hw);
-	if (ret_val)
-		return ret_val;
-
-	/* Check link status. Wait up to 100 microseconds for link to become
-	 * valid.
-	 */
-	for (i = 0; i < 10; i++) {
-		ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &phy_data);
-		if (ret_val)
-			return ret_val;
-		ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &phy_data);
-		if (ret_val)
-			return ret_val;
-
-		if (phy_data & MII_SR_LINK_STATUS) {
-			/* Config the MAC and PHY after link is up */
-			ret_val = e1000_copper_link_postconfig(hw);
-			if (ret_val)
-				return ret_val;
-
-			dev_dbg(hw->dev, "Valid link established!!!\n");
-			return E1000_SUCCESS;
-		}
-		udelay(10);
-	}
-
-	dev_dbg(hw->dev, "Unable to establish link!!!\n");
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
-* Configures PHY autoneg and flow control advertisement settings
-*
-* hw - Struct containing variables accessed by shared code
-******************************************************************************/
-static int32_t e1000_phy_setup_autoneg(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	uint16_t mii_autoneg_adv_reg;
-	uint16_t mii_1000t_ctrl_reg;
-
-	DEBUGFUNC();
-
-	/* Read the MII Auto-Neg Advertisement Register (Address 4). */
-	ret_val = e1000_read_phy_reg(hw, PHY_AUTONEG_ADV, &mii_autoneg_adv_reg);
-	if (ret_val)
-		return ret_val;
-
-	if (hw->phy_type != e1000_phy_ife) {
-		/* Read the MII 1000Base-T Control Register (Address 9). */
-		ret_val = e1000_read_phy_reg(hw, PHY_1000T_CTRL,
-				&mii_1000t_ctrl_reg);
-		if (ret_val)
-			return ret_val;
-	} else
-		mii_1000t_ctrl_reg = 0;
-
-	/* Need to parse both autoneg_advertised and fc and set up
-	 * the appropriate PHY registers.  First we will parse for
-	 * autoneg_advertised software override.  Since we can advertise
-	 * a plethora of combinations, we need to check each bit
-	 * individually.
-	 */
-
-	/* First we clear all the 10/100 mb speed bits in the Auto-Neg
-	 * Advertisement Register (Address 4) and the 1000 mb speed bits in
-	 * the  1000Base-T Control Register (Address 9).
-	 */
-	mii_autoneg_adv_reg &= ~REG4_SPEED_MASK;
-	mii_1000t_ctrl_reg &= ~REG9_SPEED_MASK;
-
-	dev_dbg(hw->dev, "autoneg_advertised %x\n", hw->autoneg_advertised);
-
-	/* Do we want to advertise 10 Mb Half Duplex? */
-	if (hw->autoneg_advertised & ADVERTISE_10_HALF) {
-		dev_dbg(hw->dev, "Advertise 10mb Half duplex\n");
-		mii_autoneg_adv_reg |= NWAY_AR_10T_HD_CAPS;
-	}
-
-	/* Do we want to advertise 10 Mb Full Duplex? */
-	if (hw->autoneg_advertised & ADVERTISE_10_FULL) {
-		dev_dbg(hw->dev, "Advertise 10mb Full duplex\n");
-		mii_autoneg_adv_reg |= NWAY_AR_10T_FD_CAPS;
-	}
-
-	/* Do we want to advertise 100 Mb Half Duplex? */
-	if (hw->autoneg_advertised & ADVERTISE_100_HALF) {
-		dev_dbg(hw->dev, "Advertise 100mb Half duplex\n");
-		mii_autoneg_adv_reg |= NWAY_AR_100TX_HD_CAPS;
-	}
-
-	/* Do we want to advertise 100 Mb Full Duplex? */
-	if (hw->autoneg_advertised & ADVERTISE_100_FULL) {
-		dev_dbg(hw->dev, "Advertise 100mb Full duplex\n");
-		mii_autoneg_adv_reg |= NWAY_AR_100TX_FD_CAPS;
-	}
-
-	/* We do not allow the Phy to advertise 1000 Mb Half Duplex */
-	if (hw->autoneg_advertised & ADVERTISE_1000_HALF) {
-		pr_debug
-		    ("Advertise 1000mb Half duplex requested, request denied!\n");
-	}
-
-	/* Do we want to advertise 1000 Mb Full Duplex? */
-	if (hw->autoneg_advertised & ADVERTISE_1000_FULL) {
-		dev_dbg(hw->dev, "Advertise 1000mb Full duplex\n");
-		mii_1000t_ctrl_reg |= CR_1000T_FD_CAPS;
-	}
-
-	/* Check for a software override of the flow control settings, and
-	 * setup the PHY advertisement registers accordingly.  If
-	 * auto-negotiation is enabled, then software will have to set the
-	 * "PAUSE" bits to the correct value in the Auto-Negotiation
-	 * Advertisement Register (PHY_AUTONEG_ADV) and re-start auto-negotiation.
-	 *
-	 * The possible values of the "fc" parameter are:
-	 *	0:  Flow control is completely disabled
-	 *	1:  Rx flow control is enabled (we can receive pause frames
-	 *	    but not send pause frames).
-	 *	2:  Tx flow control is enabled (we can send pause frames
-	 *	    but we do not support receiving pause frames).
-	 *	3:  Both Rx and TX flow control (symmetric) are enabled.
-	 *  other:  No software override.  The flow control configuration
-	 *	    in the EEPROM is used.
-	 */
-	switch (hw->fc) {
-	case e1000_fc_none:	/* 0 */
-		/* Flow control (RX & TX) is completely disabled by a
-		 * software over-ride.
-		 */
-		mii_autoneg_adv_reg &= ~(NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
-		break;
-	case e1000_fc_rx_pause:	/* 1 */
-		/* RX Flow control is enabled, and TX Flow control is
-		 * disabled, by a software over-ride.
-		 */
-		/* Since there really isn't a way to advertise that we are
-		 * capable of RX Pause ONLY, we will advertise that we
-		 * support both symmetric and asymmetric RX PAUSE.  Later
-		 * (in e1000_config_fc_after_link_up) we will disable the
-		 *hw's ability to send PAUSE frames.
-		 */
-		mii_autoneg_adv_reg |= (NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
-		break;
-	case e1000_fc_tx_pause:	/* 2 */
-		/* TX Flow control is enabled, and RX Flow control is
-		 * disabled, by a software over-ride.
-		 */
-		mii_autoneg_adv_reg |= NWAY_AR_ASM_DIR;
-		mii_autoneg_adv_reg &= ~NWAY_AR_PAUSE;
-		break;
-	case e1000_fc_full:	/* 3 */
-		/* Flow control (both RX and TX) is enabled by a software
-		 * over-ride.
-		 */
-		mii_autoneg_adv_reg |= (NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
-		break;
-	default:
-		dev_dbg(hw->dev, "Flow control param set incorrectly\n");
-		return -E1000_ERR_CONFIG;
-	}
-
-	ret_val = e1000_write_phy_reg(hw, PHY_AUTONEG_ADV, mii_autoneg_adv_reg);
-	if (ret_val)
-		return ret_val;
-
-	dev_dbg(hw->dev, "Auto-Neg Advertising %x\n", mii_autoneg_adv_reg);
-
-	if (hw->phy_type != e1000_phy_ife) {
-		ret_val = e1000_write_phy_reg(hw, PHY_1000T_CTRL,
-				mii_1000t_ctrl_reg);
-		if (ret_val)
-			return ret_val;
-	}
-
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
-* Sets the collision distance in the Transmit Control register
-*
-* hw - Struct containing variables accessed by shared code
-*
-* Link should have been established previously. Reads the speed and duplex
-* information from the Device Status register.
-******************************************************************************/
-static void e1000_config_collision_dist(struct e1000_hw *hw)
-{
-	uint32_t tctl, coll_dist;
-
-	DEBUGFUNC();
-
-	if (hw->mac_type < e1000_82543)
-		coll_dist = E1000_COLLISION_DISTANCE_82542;
-	else
-		coll_dist = E1000_COLLISION_DISTANCE;
-
-	tctl = E1000_READ_REG(hw, TCTL);
-
-	tctl &= ~E1000_TCTL_COLD;
-	tctl |= coll_dist << E1000_COLD_SHIFT;
-
-	E1000_WRITE_REG(hw, TCTL, tctl);
-	E1000_WRITE_FLUSH(hw);
-}
-
-/******************************************************************************
-* Sets MAC speed and duplex settings to reflect the those in the PHY
-*
-* hw - Struct containing variables accessed by shared code
-* mii_reg - data to write to the MII control register
-*
-* The contents of the PHY register containing the needed information need to
-* be passed in.
-******************************************************************************/
-static int e1000_config_mac_to_phy(struct e1000_hw *hw)
-{
-	uint32_t ctrl;
-	uint16_t phy_data;
-
-	DEBUGFUNC();
-
-	/* Read the Device Control Register and set the bits to Force Speed
-	 * and Duplex.
-	 */
-	ctrl = E1000_READ_REG(hw, CTRL);
-	ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
-	ctrl &= ~(E1000_CTRL_ILOS);
-	ctrl |= (E1000_CTRL_SPD_SEL);
-
-	/* Set up duplex in the Device Control and Transmit Control
-	 * registers depending on negotiated values.
-	 */
-	if (e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_STATUS, &phy_data) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error\n");
-		return -E1000_ERR_PHY;
-	}
-	if (phy_data & M88E1000_PSSR_DPLX)
-		ctrl |= E1000_CTRL_FD;
-	else
-		ctrl &= ~E1000_CTRL_FD;
-
-	e1000_config_collision_dist(hw);
-
-	/* Set up speed in the Device Control register depending on
-	 * negotiated values.
-	 */
-	if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_1000MBS)
-		ctrl |= E1000_CTRL_SPD_1000;
-	else if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_100MBS)
-		ctrl |= E1000_CTRL_SPD_100;
-	/* Write the configured values back to the Device Control Reg. */
-	E1000_WRITE_REG(hw, CTRL, ctrl);
-	return 0;
-}
-
-/******************************************************************************
- * Forces the MAC's flow control settings.
- *
- * hw - Struct containing variables accessed by shared code
- *
- * Sets the TFCE and RFCE bits in the device control register to reflect
- * the adapter settings. TFCE and RFCE need to be explicitly set by
- * software when a Copper PHY is used because autonegotiation is managed
- * by the PHY rather than the MAC. Software must also configure these
- * bits when link is forced on a fiber connection.
- *****************************************************************************/
-static int e1000_force_mac_fc(struct e1000_hw *hw)
-{
-	uint32_t ctrl;
-
-	DEBUGFUNC();
-
-	/* Get the current configuration of the Device Control Register */
-	ctrl = E1000_READ_REG(hw, CTRL);
-
-	/* Because we didn't get link via the internal auto-negotiation
-	 * mechanism (we either forced link or we got link via PHY
-	 * auto-neg), we have to manually enable/disable transmit an
-	 * receive flow control.
-	 *
-	 * The "Case" statement below enables/disable flow control
-	 * according to the "hw->fc" parameter.
-	 *
-	 * The possible values of the "fc" parameter are:
-	 *	0:  Flow control is completely disabled
-	 *	1:  Rx flow control is enabled (we can receive pause
-	 *	    frames but not send pause frames).
-	 *	2:  Tx flow control is enabled (we can send pause frames
-	 *	    frames but we do not receive pause frames).
-	 *	3:  Both Rx and TX flow control (symmetric) is enabled.
-	 *  other:  No other values should be possible at this point.
-	 */
-
-	switch (hw->fc) {
-	case e1000_fc_none:
-		ctrl &= (~(E1000_CTRL_TFCE | E1000_CTRL_RFCE));
-		break;
-	case e1000_fc_rx_pause:
-		ctrl &= (~E1000_CTRL_TFCE);
-		ctrl |= E1000_CTRL_RFCE;
-		break;
-	case e1000_fc_tx_pause:
-		ctrl &= (~E1000_CTRL_RFCE);
-		ctrl |= E1000_CTRL_TFCE;
-		break;
-	case e1000_fc_full:
-		ctrl |= (E1000_CTRL_TFCE | E1000_CTRL_RFCE);
-		break;
-	default:
-		dev_dbg(hw->dev, "Flow control param set incorrectly\n");
-		return -E1000_ERR_CONFIG;
-	}
-
-	/* Disable TX Flow Control for 82542 (rev 2.0) */
-	if (hw->mac_type == e1000_82542_rev2_0)
-		ctrl &= (~E1000_CTRL_TFCE);
-
-	E1000_WRITE_REG(hw, CTRL, ctrl);
-	return 0;
-}
-
-/******************************************************************************
- * Configures flow control settings after link is established
- *
- * hw - Struct containing variables accessed by shared code
- *
- * Should be called immediately after a valid link has been established.
- * Forces MAC flow control settings if link was forced. When in MII/GMII mode
- * and autonegotiation is enabled, the MAC flow control settings will be set
- * based on the flow control negotiated by the PHY. In TBI mode, the TFCE
- * and RFCE bits will be automaticaly set to the negotiated flow control mode.
- *****************************************************************************/
-static int32_t e1000_config_fc_after_link_up(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	uint16_t mii_status_reg;
-	uint16_t mii_nway_adv_reg;
-	uint16_t mii_nway_lp_ability_reg;
-	uint16_t speed;
-	uint16_t duplex;
-
-	DEBUGFUNC();
-
-	/* Read the MII Status Register and check to see if AutoNeg
-	 * has completed.  We read this twice because this reg has
-	 * some "sticky" (latched) bits.
-	 */
-	if (e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error \n");
-		return -E1000_ERR_PHY;
-	}
-
-	if (e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error \n");
-		return -E1000_ERR_PHY;
-	}
-
-	if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
-		dev_dbg(hw->dev, "Copper PHY and Auto Neg has not completed.\n");
-		return 0;
-	}
-
-	/* The AutoNeg process has completed, so we now need to
-	 * read both the Auto Negotiation Advertisement Register
-	 * (Address 4) and the Auto_Negotiation Base Page Ability
-	 * Register (Address 5) to determine how flow control was
-	 * negotiated.
-	 */
-	if (e1000_read_phy_reg(hw, PHY_AUTONEG_ADV, &mii_nway_adv_reg) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error\n");
-		return -E1000_ERR_PHY;
-	}
-
-	if (e1000_read_phy_reg(hw, PHY_LP_ABILITY, &mii_nway_lp_ability_reg) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error\n");
-		return -E1000_ERR_PHY;
-	}
-
-	/* Two bits in the Auto Negotiation Advertisement Register
-	 * (Address 4) and two bits in the Auto Negotiation Base
-	 * Page Ability Register (Address 5) determine flow control
-	 * for both the PHY and the link partner.  The following
-	 * table, taken out of the IEEE 802.3ab/D6.0 dated March 25,
-	 * 1999, describes these PAUSE resolution bits and how flow
-	 * control is determined based upon these settings.
-	 * NOTE:  DC = Don't Care
-	 *
-	 *   LOCAL DEVICE  |   LINK PARTNER
-	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | NIC Resolution
-	 *-------|---------|-------|---------|--------------------
-	 *   0	 |    0    |  DC   |   DC    | e1000_fc_none
-	 *   0	 |    1    |   0   |   DC    | e1000_fc_none
-	 *   0	 |    1    |   1   |	0    | e1000_fc_none
-	 *   0	 |    1    |   1   |	1    | e1000_fc_tx_pause
-	 *   1	 |    0    |   0   |   DC    | e1000_fc_none
-	 *   1	 |   DC    |   1   |   DC    | e1000_fc_full
-	 *   1	 |    1    |   0   |	0    | e1000_fc_none
-	 *   1	 |    1    |   0   |	1    | e1000_fc_rx_pause
-	 *
-	 */
-	/* Are both PAUSE bits set to 1?  If so, this implies
-	 * Symmetric Flow Control is enabled at both ends.  The
-	 * ASM_DIR bits are irrelevant per the spec.
-	 *
-	 * For Symmetric Flow Control:
-	 *
-	 *   LOCAL DEVICE  |   LINK PARTNER
-	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
-	 *-------|---------|-------|---------|--------------------
-	 *   1	 |   DC    |   1   |   DC    | e1000_fc_full
-	 *
-	 */
-	if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
-	    (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE)) {
-		/* Now we need to check if the user selected RX ONLY
-		 * of pause frames.  In this case, we had to advertise
-		 * FULL flow control because we could not advertise RX
-		 * ONLY. Hence, we must now check to see if we need to
-		 * turn OFF  the TRANSMISSION of PAUSE frames.
-		 */
-		if (hw->original_fc == e1000_fc_full) {
-			hw->fc = e1000_fc_full;
-			dev_dbg(hw->dev, "Flow Control = FULL.\r\n");
-		} else {
-			hw->fc = e1000_fc_rx_pause;
-			dev_dbg(hw->dev, "Flow Control = RX PAUSE frames only.\r\n");
-		}
-	}
-	/* For receiving PAUSE frames ONLY.
-	 *
-	 *   LOCAL DEVICE  |   LINK PARTNER
-	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
-	 *-------|---------|-------|---------|--------------------
-	 *   0	 |    1    |   1   |	1    | e1000_fc_tx_pause
-	 *
-	 */
-	else if (!(mii_nway_adv_reg & NWAY_AR_PAUSE) &&
-		 (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
-		 (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
-		 (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR))
-	{
-		hw->fc = e1000_fc_tx_pause;
-		dev_dbg(hw->dev, "Flow Control = TX PAUSE frames only.\r\n");
-	}
-	/* For transmitting PAUSE frames ONLY.
-	 *
-	 *   LOCAL DEVICE  |   LINK PARTNER
-	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
-	 *-------|---------|-------|---------|--------------------
-	 *   1	 |    1    |   0   |	1    | e1000_fc_rx_pause
-	 *
-	 */
-	else if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
-		 (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
-		 !(mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
-		 (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR))
-	{
-		hw->fc = e1000_fc_rx_pause;
-		dev_dbg(hw->dev, "Flow Control = RX PAUSE frames only.\r\n");
-	}
-	/* Per the IEEE spec, at this point flow control should be
-	 * disabled.  However, we want to consider that we could
-	 * be connected to a legacy switch that doesn't advertise
-	 * desired flow control, but can be forced on the link
-	 * partner.  So if we advertised no flow control, that is
-	 * what we will resolve to.  If we advertised some kind of
-	 * receive capability (Rx Pause Only or Full Flow Control)
-	 * and the link partner advertised none, we will configure
-	 * ourselves to enable Rx Flow Control only.  We can do
-	 * this safely for two reasons:  If the link partner really
-	 * didn't want flow control enabled, and we enable Rx, no
-	 * harm done since we won't be receiving any PAUSE frames
-	 * anyway.  If the intent on the link partner was to have
-	 * flow control enabled, then by us enabling RX only, we
-	 * can at least receive pause frames and process them.
-	 * This is a good idea because in most cases, since we are
-	 * predominantly a server NIC, more times than not we will
-	 * be asked to delay transmission of packets than asking
-	 * our link partner to pause transmission of frames.
-	 */
-	else if (hw->original_fc == e1000_fc_none ||
-		 hw->original_fc == e1000_fc_tx_pause) {
-		hw->fc = e1000_fc_none;
-		dev_dbg(hw->dev, "Flow Control = NONE.\r\n");
-	} else {
-		hw->fc = e1000_fc_rx_pause;
-		dev_dbg(hw->dev, "Flow Control = RX PAUSE frames only.\r\n");
-	}
-	/* Now we need to do one last check...	If we auto-
-	 * negotiated to HALF DUPLEX, flow control should not be
-	 * enabled per IEEE 802.3 spec.
-	 */
-	e1000_get_speed_and_duplex(hw, &speed, &duplex);
-	if (duplex == HALF_DUPLEX)
-		hw->fc = e1000_fc_none;
-	/* Now we call a subroutine to actually force the MAC
-	 * controller to use the correct flow control settings.
-	 */
-	ret_val = e1000_force_mac_fc(hw);
-	if (ret_val < 0) {
-		dev_dbg(hw->dev, "Error forcing flow control settings\n");
-		return ret_val;
-	}
-
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
-* Configure the MAC-to-PHY interface for 10/100Mbps
-*
-* hw - Struct containing variables accessed by shared code
-******************************************************************************/
-static int32_t e1000_configure_kmrn_for_10_100(struct e1000_hw *hw, uint16_t duplex)
-{
-	int32_t ret_val = E1000_SUCCESS;
-	uint32_t tipg;
-	uint16_t reg_data;
-
-	DEBUGFUNC();
-
-	reg_data = E1000_KUMCTRLSTA_HD_CTRL_10_100_DEFAULT;
-	ret_val = e1000_write_kmrn_reg(hw,
-			E1000_KUMCTRLSTA_OFFSET_HD_CTRL, reg_data);
-	if (ret_val)
-		return ret_val;
-
-	/* Configure Transmit Inter-Packet Gap */
-	tipg = E1000_READ_REG(hw, TIPG);
-	tipg &= ~E1000_TIPG_IPGT_MASK;
-	tipg |= DEFAULT_80003ES2LAN_TIPG_IPGT_10_100;
-	E1000_WRITE_REG(hw, TIPG, tipg);
-
-	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, &reg_data);
-
-	if (ret_val)
-		return ret_val;
-
-	if (duplex == HALF_DUPLEX)
-		reg_data |= GG82563_KMCR_PASS_FALSE_CARRIER;
-	else
-		reg_data &= ~GG82563_KMCR_PASS_FALSE_CARRIER;
-
-	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, reg_data);
-
-	return ret_val;
-}
-
-static int32_t e1000_configure_kmrn_for_1000(struct e1000_hw *hw)
-{
-	int32_t ret_val = E1000_SUCCESS;
-	uint16_t reg_data;
-	uint32_t tipg;
-
-	DEBUGFUNC();
-
-	reg_data = E1000_KUMCTRLSTA_HD_CTRL_1000_DEFAULT;
-	ret_val = e1000_write_kmrn_reg(hw,
-			E1000_KUMCTRLSTA_OFFSET_HD_CTRL, reg_data);
-	if (ret_val)
-		return ret_val;
-
-	/* Configure Transmit Inter-Packet Gap */
-	tipg = E1000_READ_REG(hw, TIPG);
-	tipg &= ~E1000_TIPG_IPGT_MASK;
-	tipg |= DEFAULT_80003ES2LAN_TIPG_IPGT_1000;
-	E1000_WRITE_REG(hw, TIPG, tipg);
-
-	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, &reg_data);
-
-	if (ret_val)
-		return ret_val;
-
-	reg_data &= ~GG82563_KMCR_PASS_FALSE_CARRIER;
-	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, reg_data);
-
-	return ret_val;
-}
-
-/******************************************************************************
- * Detects the current speed and duplex settings of the hardware.
- *
- * hw - Struct containing variables accessed by shared code
- * speed - Speed of the connection
- * duplex - Duplex setting of the connection
- *****************************************************************************/
-static int e1000_get_speed_and_duplex(struct e1000_hw *hw, uint16_t *speed,
-		uint16_t *duplex)
-{
-	uint32_t status;
-	int32_t ret_val;
-
-	DEBUGFUNC();
-
-	if (hw->mac_type >= e1000_82543) {
-		status = E1000_READ_REG(hw, STATUS);
-		if (status & E1000_STATUS_SPEED_1000) {
-			*speed = SPEED_1000;
-			dev_dbg(hw->dev, "1000 Mbs, ");
-		} else if (status & E1000_STATUS_SPEED_100) {
-			*speed = SPEED_100;
-			dev_dbg(hw->dev, "100 Mbs, ");
-		} else {
-			*speed = SPEED_10;
-			dev_dbg(hw->dev, "10 Mbs, ");
-		}
-
-		if (status & E1000_STATUS_FD) {
-			*duplex = FULL_DUPLEX;
-			dev_dbg(hw->dev, "Full Duplex\r\n");
-		} else {
-			*duplex = HALF_DUPLEX;
-			dev_dbg(hw->dev, " Half Duplex\r\n");
-		}
-	} else {
-		dev_dbg(hw->dev, "1000 Mbs, Full Duplex\r\n");
-		*speed = SPEED_1000;
-		*duplex = FULL_DUPLEX;
-	}
-
-	if ((hw->mac_type == e1000_80003es2lan) && e1000_media_copper(hw)) {
-		if (*speed == SPEED_1000)
-			ret_val = e1000_configure_kmrn_for_1000(hw);
-		else
-			ret_val = e1000_configure_kmrn_for_10_100(hw, *duplex);
-		if (ret_val)
-			return ret_val;
-	}
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
-* Blocks until autoneg completes or times out (~4.5 seconds)
-*
-* hw - Struct containing variables accessed by shared code
-******************************************************************************/
-static int e1000_wait_autoneg(struct e1000_hw *hw)
-{
-	uint16_t i;
-	uint16_t phy_data;
-
-	DEBUGFUNC();
-	dev_dbg(hw->dev, "Waiting for Auto-Neg to complete.\n");
-
-	/* We will wait for autoneg to complete or 4.5 seconds to expire. */
-	for (i = PHY_AUTO_NEG_TIME; i > 0; i--) {
-		/* Read the MII Status Register and wait for Auto-Neg
-		 * Complete bit to be set.
-		 */
-		if (e1000_read_phy_reg(hw, PHY_STATUS, &phy_data) < 0) {
-			dev_dbg(hw->dev, "PHY Read Error\n");
-			return -E1000_ERR_PHY;
-		}
-		if (e1000_read_phy_reg(hw, PHY_STATUS, &phy_data) < 0) {
-			dev_dbg(hw->dev, "PHY Read Error\n");
-			return -E1000_ERR_PHY;
-		}
-		if (phy_data & MII_SR_AUTONEG_COMPLETE) {
-			dev_dbg(hw->dev, "Auto-Neg complete.\n");
-			return 0;
-		}
-		mdelay(100);
-	}
-	dev_dbg(hw->dev, "Auto-Neg timedout.\n");
-	return -E1000_ERR_TIMEOUT;
-}
-
-/******************************************************************************
-* Raises the Management Data Clock
-*
-* hw - Struct containing variables accessed by shared code
-* ctrl - Device control register's current value
-******************************************************************************/
-static void e1000_raise_mdi_clk(struct e1000_hw *hw, uint32_t * ctrl)
-{
-	/* Raise the clock input to the Management Data Clock (by setting the MDC
-	 * bit), and then delay 2 microseconds.
-	 */
-	E1000_WRITE_REG(hw, CTRL, (*ctrl | E1000_CTRL_MDC));
-	E1000_WRITE_FLUSH(hw);
-	udelay(2);
-}
-
-/******************************************************************************
-* Lowers the Management Data Clock
-*
-* hw - Struct containing variables accessed by shared code
-* ctrl - Device control register's current value
-******************************************************************************/
-static void e1000_lower_mdi_clk(struct e1000_hw *hw, uint32_t * ctrl)
-{
-	/* Lower the clock input to the Management Data Clock (by clearing the MDC
-	 * bit), and then delay 2 microseconds.
-	 */
-	E1000_WRITE_REG(hw, CTRL, (*ctrl & ~E1000_CTRL_MDC));
-	E1000_WRITE_FLUSH(hw);
-	udelay(2);
-}
-
-/******************************************************************************
-* Shifts data bits out to the PHY
-*
-* hw - Struct containing variables accessed by shared code
-* data - Data to send out to the PHY
-* count - Number of bits to shift out
-*
-* Bits are shifted out in MSB to LSB order.
-******************************************************************************/
-static void e1000_shift_out_mdi_bits(struct e1000_hw *hw, uint32_t data,
-		uint16_t count)
-{
-	uint32_t ctrl;
-	uint32_t mask;
-
-	/* We need to shift "count" number of bits out to the PHY. So, the value
-	 * in the "data" parameter will be shifted out to the PHY one bit at a
-	 * time. In order to do this, "data" must be broken down into bits.
-	 */
-	mask = 0x01;
-	mask <<= (count - 1);
-
-	ctrl = E1000_READ_REG(hw, CTRL);
-
-	/* Set MDIO_DIR and MDC_DIR direction bits to be used as output pins. */
-	ctrl |= (E1000_CTRL_MDIO_DIR | E1000_CTRL_MDC_DIR);
-
-	while (mask) {
-		/* A "1" is shifted out to the PHY by setting the MDIO bit to "1" and
-		 * then raising and lowering the Management Data Clock. A "0" is
-		 * shifted out to the PHY by setting the MDIO bit to "0" and then
-		 * raising and lowering the clock.
-		 */
-		if (data & mask)
-			ctrl |= E1000_CTRL_MDIO;
-		else
-			ctrl &= ~E1000_CTRL_MDIO;
-
-		E1000_WRITE_REG(hw, CTRL, ctrl);
-		E1000_WRITE_FLUSH(hw);
-
-		udelay(2);
-
-		e1000_raise_mdi_clk(hw, &ctrl);
-		e1000_lower_mdi_clk(hw, &ctrl);
-
-		mask = mask >> 1;
-	}
-}
-
-/******************************************************************************
-* Shifts data bits in from the PHY
-*
-* hw - Struct containing variables accessed by shared code
-*
-* Bits are shifted in in MSB to LSB order.
-******************************************************************************/
-static uint16_t e1000_shift_in_mdi_bits(struct e1000_hw *hw)
-{
-	uint32_t ctrl;
-	uint16_t data = 0;
-	uint8_t i;
-
-	/* In order to read a register from the PHY, we need to shift in a total
-	 * of 18 bits from the PHY. The first two bit (turnaround) times are used
-	 * to avoid contention on the MDIO pin when a read operation is performed.
-	 * These two bits are ignored by us and thrown away. Bits are "shifted in"
-	 * by raising the input to the Management Data Clock (setting the MDC bit),
-	 * and then reading the value of the MDIO bit.
-	 */
-	ctrl = E1000_READ_REG(hw, CTRL);
-
-	/* Clear MDIO_DIR (SWDPIO1) to indicate this bit is to be used as input. */
-	ctrl &= ~E1000_CTRL_MDIO_DIR;
-	ctrl &= ~E1000_CTRL_MDIO;
-
-	E1000_WRITE_REG(hw, CTRL, ctrl);
-	E1000_WRITE_FLUSH(hw);
-
-	/* Raise and Lower the clock before reading in the data. This accounts for
-	 * the turnaround bits. The first clock occurred when we clocked out the
-	 * last bit of the Register Address.
-	 */
-	e1000_raise_mdi_clk(hw, &ctrl);
-	e1000_lower_mdi_clk(hw, &ctrl);
-
-	for (data = 0, i = 0; i < 16; i++) {
-		data = data << 1;
-		e1000_raise_mdi_clk(hw, &ctrl);
-		ctrl = E1000_READ_REG(hw, CTRL);
-		/* Check to see if we shifted in a "1". */
-		if (ctrl & E1000_CTRL_MDIO)
-			data |= 1;
-		e1000_lower_mdi_clk(hw, &ctrl);
-	}
-
-	e1000_raise_mdi_clk(hw, &ctrl);
-	e1000_lower_mdi_clk(hw, &ctrl);
-
-	return data;
-}
-
-static int e1000_phy_read(struct mii_bus *bus, int phy_addr, int reg_addr)
-{
-	struct e1000_hw *hw = bus->priv;
-	uint32_t i;
-	uint32_t mdic = 0;
-
-	if (phy_addr != 1)
-		return -EIO;
-
-	if (hw->mac_type > e1000_82543) {
-		/* Set up Op-code, Phy Address, and register address in the MDI
-		 * Control register.  The MAC will take care of interfacing with the
-		 * PHY to retrieve the desired data.
-		 */
-		mdic = ((reg_addr << E1000_MDIC_REG_SHIFT) |
-			(phy_addr << E1000_MDIC_PHY_SHIFT) |
-			(E1000_MDIC_OP_READ));
-
-		E1000_WRITE_REG(hw, MDIC, mdic);
-
-		/* Poll the ready bit to see if the MDI read completed */
-		for (i = 0; i < 64; i++) {
-			udelay(10);
-			mdic = E1000_READ_REG(hw, MDIC);
-			if (mdic & E1000_MDIC_READY)
-				break;
-		}
-		if (!(mdic & E1000_MDIC_READY)) {
-			dev_dbg(hw->dev, "MDI Read did not complete\n");
-			return -E1000_ERR_PHY;
-		}
-		if (mdic & E1000_MDIC_ERROR) {
-			dev_dbg(hw->dev, "MDI Error\n");
-			return -E1000_ERR_PHY;
-		}
-		return mdic;
-	} else {
-		/* We must first send a preamble through the MDIO pin to signal the
-		 * beginning of an MII instruction.  This is done by sending 32
-		 * consecutive "1" bits.
-		 */
-		e1000_shift_out_mdi_bits(hw, PHY_PREAMBLE, PHY_PREAMBLE_SIZE);
-
-		/* Now combine the next few fields that are required for a read
-		 * operation.  We use this method instead of calling the
-		 * e1000_shift_out_mdi_bits routine five different times. The format of
-		 * a MII read instruction consists of a shift out of 14 bits and is
-		 * defined as follows:
-		 *    <Preamble><SOF><Op Code><Phy Addr><Reg Addr>
-		 * followed by a shift in of 18 bits.  This first two bits shifted in
-		 * are TurnAround bits used to avoid contention on the MDIO pin when a
-		 * READ operation is performed.  These two bits are thrown away
-		 * followed by a shift in of 16 bits which contains the desired data.
-		 */
-		mdic = ((reg_addr) | (phy_addr << 5) |
-			(PHY_OP_READ << 10) | (PHY_SOF << 12));
-
-		e1000_shift_out_mdi_bits(hw, mdic, 14);
-
-		/* Now that we've shifted out the read command to the MII, we need to
-		 * "shift in" the 16-bit value (18 total bits) of the requested PHY
-		 * register address.
-		 */
-		return e1000_shift_in_mdi_bits(hw);
-	}
-}
-
-/*****************************************************************************
-* Reads the value from a PHY register
-*
-* hw - Struct containing variables accessed by shared code
-* reg_addr - address of the PHY register to read
-******************************************************************************/
-static int e1000_read_phy_reg(struct e1000_hw *hw, uint32_t reg_addr,
-		uint16_t *phy_data)
-{
-	int ret;
-
-	ret = e1000_phy_read(&hw->miibus, 1, reg_addr);
-	if (ret < 0)
-		return ret;
-
-	*phy_data = ret;
-
-	return 0;
-}
-
-static int e1000_phy_write(struct mii_bus *bus, int phy_addr,
-	int reg_addr, u16 phy_data)
-{
-	struct e1000_hw *hw = bus->priv;
-	uint32_t i;
-	uint32_t mdic = 0;
-
-	if (phy_addr != 1)
-		return -EIO;
-
-	if (hw->mac_type > e1000_82543) {
-		/* Set up Op-code, Phy Address, register address, and data intended
-		 * for the PHY register in the MDI Control register.  The MAC will take
-		 * care of interfacing with the PHY to send the desired data.
-		 */
-		mdic = (((uint32_t) phy_data) |
-			(reg_addr << E1000_MDIC_REG_SHIFT) |
-			(phy_addr << E1000_MDIC_PHY_SHIFT) |
-			(E1000_MDIC_OP_WRITE));
-
-		E1000_WRITE_REG(hw, MDIC, mdic);
-
-		/* Poll the ready bit to see if the MDI read completed */
-		for (i = 0; i < 64; i++) {
-			udelay(10);
-			mdic = E1000_READ_REG(hw, MDIC);
-			if (mdic & E1000_MDIC_READY)
-				break;
-		}
-		if (!(mdic & E1000_MDIC_READY)) {
-			dev_dbg(hw->dev, "MDI Write did not complete\n");
-			return -E1000_ERR_PHY;
-		}
-	} else {
-		/* We'll need to use the SW defined pins to shift the write command
-		 * out to the PHY. We first send a preamble to the PHY to signal the
-		 * beginning of the MII instruction.  This is done by sending 32
-		 * consecutive "1" bits.
-		 */
-		e1000_shift_out_mdi_bits(hw, PHY_PREAMBLE, PHY_PREAMBLE_SIZE);
-
-		/* Now combine the remaining required fields that will indicate a
-		 * write operation. We use this method instead of calling the
-		 * e1000_shift_out_mdi_bits routine for each field in the command. The
-		 * format of a MII write instruction is as follows:
-		 * <Preamble><SOF><Op Code><Phy Addr><Reg Addr><Turnaround><Data>.
-		 */
-		mdic = ((PHY_TURNAROUND) | (reg_addr << 2) | (phy_addr << 7) |
-			(PHY_OP_WRITE << 12) | (PHY_SOF << 14));
-		mdic <<= 16;
-		mdic |= (uint32_t) phy_data;
-
-		e1000_shift_out_mdi_bits(hw, mdic, 32);
-	}
-	return 0;
-}
-
-/******************************************************************************
- * Writes a value to a PHY register
- *
- * hw - Struct containing variables accessed by shared code
- * reg_addr - address of the PHY register to write
- * data - data to write to the PHY
- ******************************************************************************/
-static int e1000_write_phy_reg(struct e1000_hw *hw, uint32_t reg_addr, uint16_t phy_data)
-{
-	return e1000_phy_write(&hw->miibus, 1, reg_addr, phy_data);
-}
-
-/******************************************************************************
- * Checks if PHY reset is blocked due to SOL/IDER session, for example.
- * Returning E1000_BLK_PHY_RESET isn't necessarily an error.  But it's up to
- * the caller to figure out how to deal with it.
- *
- * hw - Struct containing variables accessed by shared code
- *
- * returns: - E1000_BLK_PHY_RESET
- *            E1000_SUCCESS
- *
- *****************************************************************************/
-static int32_t e1000_check_phy_reset_block(struct e1000_hw *hw)
-{
-	if (hw->mac_type == e1000_ich8lan) {
-		if (E1000_READ_REG(hw, FWSM) & E1000_FWSM_RSPCIPHY)
-			return E1000_SUCCESS;
-		else
-			return E1000_BLK_PHY_RESET;
-	}
-
-	if (hw->mac_type > e1000_82547_rev_2) {
-		if (E1000_READ_REG(hw, MANC) & E1000_MANC_BLK_PHY_RST_ON_IDE)
-			return E1000_BLK_PHY_RESET;
-		else
-			return E1000_SUCCESS;
-	}
-
-	return E1000_SUCCESS;
-}
-
-/***************************************************************************
- * Checks if the PHY configuration is done
- *
- * hw: Struct containing variables accessed by shared code
- *
- * returns: - E1000_ERR_RESET if fail to reset MAC
- *            E1000_SUCCESS at any other case.
- *
- ***************************************************************************/
-static int32_t e1000_get_phy_cfg_done(struct e1000_hw *hw)
-{
-	int32_t timeout = PHY_CFG_TIMEOUT;
-	uint32_t cfg_mask = E1000_EEPROM_CFG_DONE;
-
-	DEBUGFUNC();
-
-	switch (hw->mac_type) {
-	default:
-		mdelay(10);
-		break;
-
-	case e1000_80003es2lan:
-		/* Separate *_CFG_DONE_* bit for each port */
-		if (e1000_is_second_port(hw))
-			cfg_mask = E1000_EEPROM_CFG_DONE_PORT_1;
-		/* Fall Through */
-
-	case e1000_82571:
-	case e1000_82572:
-	case e1000_igb:
-		while (timeout) {
-			if (hw->mac_type == e1000_igb) {
-				if (E1000_READ_REG(hw, I210_EEMNGCTL) & cfg_mask)
-					break;
-			} else {
-				if (E1000_READ_REG(hw, EEMNGCTL) & cfg_mask)
-					break;
-			}
-			mdelay(1);
-			timeout--;
-		}
-		if (!timeout) {
-			dev_dbg(hw->dev, "MNG configuration cycle has not completed.\n");
-			return -E1000_ERR_RESET;
-		}
-		break;
-	}
-
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
-* Returns the PHY to the power-on reset state
-*
-* hw - Struct containing variables accessed by shared code
-******************************************************************************/
-static int32_t e1000_phy_hw_reset(struct e1000_hw *hw)
-{
-	uint16_t swfw = E1000_SWFW_PHY0_SM;
-	uint32_t ctrl, ctrl_ext;
-	uint32_t led_ctrl;
-	int32_t ret_val;
-
-	DEBUGFUNC();
-
-	/* In the case of the phy reset being blocked, it's not an error, we
-	 * simply return success without performing the reset. */
-	ret_val = e1000_check_phy_reset_block(hw);
-	if (ret_val)
-		return E1000_SUCCESS;
-
-	dev_dbg(hw->dev, "Resetting Phy...\n");
-
-	if (hw->mac_type > e1000_82543) {
-		if (e1000_is_second_port(hw))
-			swfw = E1000_SWFW_PHY1_SM;
-
-		if (e1000_swfw_sync_acquire(hw, swfw)) {
-			dev_dbg(hw->dev, "Unable to acquire swfw sync\n");
-			return -E1000_ERR_SWFW_SYNC;
-		}
-
-		/* Read the device control register and assert the E1000_CTRL_PHY_RST
-		 * bit. Then, take it out of reset.
-		 */
-		ctrl = E1000_READ_REG(hw, CTRL);
-		E1000_WRITE_REG(hw, CTRL, ctrl | E1000_CTRL_PHY_RST);
-		E1000_WRITE_FLUSH(hw);
-
-		udelay(100);
-
-		E1000_WRITE_REG(hw, CTRL, ctrl);
-		E1000_WRITE_FLUSH(hw);
-
-		if (hw->mac_type >= e1000_82571)
-			mdelay(10);
-	} else {
-		/* Read the Extended Device Control Register, assert the PHY_RESET_DIR
-		 * bit to put the PHY into reset. Then, take it out of reset.
-		 */
-		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
-		ctrl_ext |= E1000_CTRL_EXT_SDP4_DIR;
-		ctrl_ext &= ~E1000_CTRL_EXT_SDP4_DATA;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-		E1000_WRITE_FLUSH(hw);
-		mdelay(10);
-		ctrl_ext |= E1000_CTRL_EXT_SDP4_DATA;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-		E1000_WRITE_FLUSH(hw);
-	}
-	udelay(150);
-
-	if ((hw->mac_type == e1000_82541) || (hw->mac_type == e1000_82547)) {
-		/* Configure activity LED after PHY reset */
-		led_ctrl = E1000_READ_REG(hw, LEDCTL);
-		led_ctrl &= IGP_ACTIVITY_LED_MASK;
-		led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
-		E1000_WRITE_REG(hw, LEDCTL, led_ctrl);
-	}
-
-	/* Wait for FW to finish PHY configuration. */
-	return e1000_get_phy_cfg_done(hw);
-}
-
-/******************************************************************************
- * IGP phy init script - initializes the GbE PHY
- *
- * hw - Struct containing variables accessed by shared code
- *****************************************************************************/
-static void e1000_phy_init_script(struct e1000_hw *hw)
-{
-	uint32_t ret_val;
-	uint16_t phy_saved_data;
-
-	DEBUGFUNC();
-
-	switch (hw->mac_type) {
-	case e1000_82541:
-	case e1000_82547:
-	case e1000_82541_rev_2:
-	case e1000_82547_rev_2:
-		break;
-	default:
-		return;
-	}
-
-	mdelay(20);
-
-	/* Save off the current value of register 0x2F5B to be
-	 * restored at the end of this routine. */
-	ret_val = e1000_read_phy_reg(hw, 0x2F5B, &phy_saved_data);
-
-	/* Disabled the PHY transmitter */
-	e1000_write_phy_reg(hw, 0x2F5B, 0x0003);
-
-	mdelay(20);
-
-	e1000_write_phy_reg(hw, 0x0000, 0x0140);
-
-	mdelay(5);
-
-	switch (hw->mac_type) {
-	case e1000_82541:
-	case e1000_82547:
-		e1000_write_phy_reg(hw, 0x1F95, 0x0001);
-
-		e1000_write_phy_reg(hw, 0x1F71, 0xBD21);
-
-		e1000_write_phy_reg(hw, 0x1F79, 0x0018);
-
-		e1000_write_phy_reg(hw, 0x1F30, 0x1600);
-
-		e1000_write_phy_reg(hw, 0x1F31, 0x0014);
-
-		e1000_write_phy_reg(hw, 0x1F32, 0x161C);
-
-		e1000_write_phy_reg(hw, 0x1F94, 0x0003);
-
-		e1000_write_phy_reg(hw, 0x1F96, 0x003F);
-
-		e1000_write_phy_reg(hw, 0x2010, 0x0008);
-		break;
-
-	case e1000_82541_rev_2:
-	case e1000_82547_rev_2:
-		e1000_write_phy_reg(hw, 0x1F73, 0x0099);
-		break;
-	default:
-		break;
-	}
-
-	e1000_write_phy_reg(hw, 0x0000, 0x3300);
-
-	mdelay(20);
-
-	/* Now enable the transmitter */
-	if (!ret_val)
-		e1000_write_phy_reg(hw, 0x2F5B, phy_saved_data);
-
-	if (hw->mac_type == e1000_82547) {
-		uint16_t fused, fine, coarse;
-
-		/* Move to analog registers page */
-		e1000_read_phy_reg(hw, IGP01E1000_ANALOG_SPARE_FUSE_STATUS, &fused);
-
-		if (!(fused & IGP01E1000_ANALOG_SPARE_FUSE_ENABLED)) {
-			e1000_read_phy_reg(hw, IGP01E1000_ANALOG_FUSE_STATUS, &fused);
-
-			fine = fused & IGP01E1000_ANALOG_FUSE_FINE_MASK;
-			coarse = fused & IGP01E1000_ANALOG_FUSE_COARSE_MASK;
-
-			if (coarse >
-				IGP01E1000_ANALOG_FUSE_COARSE_THRESH) {
-				coarse -=
-				IGP01E1000_ANALOG_FUSE_COARSE_10;
-				fine -= IGP01E1000_ANALOG_FUSE_FINE_1;
-			} else if (coarse
-				== IGP01E1000_ANALOG_FUSE_COARSE_THRESH)
-				fine -= IGP01E1000_ANALOG_FUSE_FINE_10;
-
-			fused = (fused & IGP01E1000_ANALOG_FUSE_POLY_MASK) |
-				(fine & IGP01E1000_ANALOG_FUSE_FINE_MASK) |
-				(coarse & IGP01E1000_ANALOG_FUSE_COARSE_MASK);
-
-			e1000_write_phy_reg(hw, IGP01E1000_ANALOG_FUSE_CONTROL, fused);
-			e1000_write_phy_reg(hw, IGP01E1000_ANALOG_FUSE_BYPASS,
-					IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL);
-		}
-	}
-}
-
-/******************************************************************************
-* Resets the PHY
-*
-* hw - Struct containing variables accessed by shared code
-*
-* Sets bit 15 of the MII Control register
-******************************************************************************/
-static int32_t e1000_phy_reset(struct e1000_hw *hw)
-{
-	uint16_t phy_data;
-	int ret;
-
-	DEBUGFUNC();
-
-	/*
-	 * In the case of the phy reset being blocked, it's not an error, we
-	 * simply return success without performing the reset.
-	 */
-	if (e1000_check_phy_reset_block(hw))
-		return E1000_SUCCESS;
-
-	switch (hw->phy_type) {
-	case e1000_phy_igp:
-	case e1000_phy_igp_2:
-	case e1000_phy_igp_3:
-	case e1000_phy_ife:
-	case e1000_phy_igb:
-		ret = e1000_phy_hw_reset(hw);
-		if (ret)
-			return ret;
-		break;
-	default:
-		ret = e1000_read_phy_reg(hw, PHY_CTRL, &phy_data);
-		if (ret)
-			return ret;
-
-		phy_data |= MII_CR_RESET;
-		ret = e1000_write_phy_reg(hw, PHY_CTRL, phy_data);
-		if (ret)
-			return ret;
-
-		udelay(1);
-		break;
-	}
-
-	if (hw->phy_type == e1000_phy_igp || hw->phy_type == e1000_phy_igp_2)
-		e1000_phy_init_script(hw);
-
-	return E1000_SUCCESS;
-}
-
-/******************************************************************************
-* Probes the expected PHY address for known PHY IDs
-*
-* hw - Struct containing variables accessed by shared code
-******************************************************************************/
-static int32_t e1000_detect_gig_phy(struct e1000_hw *hw)
-{
-	int32_t ret_val;
-	uint16_t phy_id_high, phy_id_low;
-	e1000_phy_type phy_type = e1000_phy_undefined;
-
-	DEBUGFUNC();
-
-	/* The 82571 firmware may still be configuring the PHY.  In this
-	 * case, we cannot access the PHY until the configuration is done.  So
-	 * we explicitly set the PHY values. */
-	if (hw->mac_type == e1000_82571 || hw->mac_type == e1000_82572) {
-		hw->phy_id = IGP01E1000_I_PHY_ID;
-		hw->phy_type = e1000_phy_igp_2;
-		return E1000_SUCCESS;
-	}
-
-	/* Read the PHY ID Registers to identify which PHY is onboard. */
-	ret_val = e1000_read_phy_reg(hw, PHY_ID1, &phy_id_high);
-	if (ret_val)
-		return ret_val;
-
-	hw->phy_id = (uint32_t) (phy_id_high << 16);
-	udelay(20);
-	ret_val = e1000_read_phy_reg(hw, PHY_ID2, &phy_id_low);
-	if (ret_val)
-		return ret_val;
-
-	hw->phy_id |= (uint32_t) (phy_id_low & PHY_REVISION_MASK);
-	hw->phy_revision = (uint32_t) phy_id_low & ~PHY_REVISION_MASK;
-
-	switch (hw->mac_type) {
-	case e1000_82543:
-		if (hw->phy_id == M88E1000_E_PHY_ID)
-			phy_type = e1000_phy_m88;
-		break;
-	case e1000_82544:
-		if (hw->phy_id == M88E1000_I_PHY_ID)
-			phy_type = e1000_phy_m88;
-		break;
-	case e1000_82540:
-	case e1000_82545:
-	case e1000_82545_rev_3:
-	case e1000_82546:
-	case e1000_82546_rev_3:
-		if (hw->phy_id == M88E1011_I_PHY_ID)
-			phy_type = e1000_phy_m88;
-		break;
-	case e1000_82541:
-	case e1000_82541_rev_2:
-	case e1000_82547:
-	case e1000_82547_rev_2:
-		if (hw->phy_id == IGP01E1000_I_PHY_ID)
-			phy_type = e1000_phy_igp;
-
-		break;
-	case e1000_82573:
-		if (hw->phy_id == M88E1111_I_PHY_ID)
-			phy_type = e1000_phy_m88;
-		break;
-	case e1000_82574:
-		if (hw->phy_id == BME1000_E_PHY_ID)
-			phy_type = e1000_phy_bm;
-		break;
-	case e1000_80003es2lan:
-		if (hw->phy_id == GG82563_E_PHY_ID)
-			phy_type = e1000_phy_gg82563;
-		break;
-	case e1000_ich8lan:
-		if (hw->phy_id == IGP03E1000_E_PHY_ID)
-			phy_type = e1000_phy_igp_3;
-		if (hw->phy_id == IFE_E_PHY_ID)
-			phy_type = e1000_phy_ife;
-		if (hw->phy_id == IFE_PLUS_E_PHY_ID)
-			phy_type = e1000_phy_ife;
-		if (hw->phy_id == IFE_C_E_PHY_ID)
-			phy_type = e1000_phy_ife;
-		break;
-	case e1000_igb:
-		if (hw->phy_id == I210_I_PHY_ID)
-			phy_type = e1000_phy_igb;
-		if (hw->phy_id == I350_I_PHY_ID)
-			phy_type = e1000_phy_igb;
-		break;
-	default:
-		dev_dbg(hw->dev, "Invalid MAC type %d\n", hw->mac_type);
-		return -E1000_ERR_CONFIG;
-	}
-
-	if (!phy_type == e1000_phy_undefined) {
-		dev_dbg(hw->dev, "Invalid PHY ID 0x%X\n", hw->phy_id);
-		return -EINVAL;
-	}
-
-	hw->phy_type = phy_type;
-
-	return 0;
-}
-
-/*****************************************************************************
- * Set media type and TBI compatibility.
- *
- * hw - Struct containing variables accessed by shared code
- * **************************************************************************/
-static void e1000_set_media_type(struct e1000_hw *hw)
-{
-	DEBUGFUNC();
-
-	switch (hw->device_id) {
-	case E1000_DEV_ID_82545GM_SERDES:
-	case E1000_DEV_ID_82546GB_SERDES:
-	case E1000_DEV_ID_82571EB_SERDES:
-	case E1000_DEV_ID_82571EB_SERDES_DUAL:
-	case E1000_DEV_ID_82571EB_SERDES_QUAD:
-	case E1000_DEV_ID_82572EI_SERDES:
-	case E1000_DEV_ID_80003ES2LAN_SERDES_DPT:
-		hw->media_type = e1000_media_type_internal_serdes;
-		return;
-	default:
-		break;
-	}
-
-	switch (hw->mac_type) {
-	case e1000_82542_rev2_0:
-	case e1000_82542_rev2_1:
-		hw->media_type = e1000_media_type_fiber;
-		return;
-	case e1000_ich8lan:
-	case e1000_82573:
-	case e1000_82574:
-	case e1000_igb:
-		/* The STATUS_TBIMODE bit is reserved or reused
-		 * for the this device.
-		 */
-		hw->media_type = e1000_media_type_copper;
-		return;
-	default:
-		break;
-	}
-
-	if (E1000_READ_REG(hw, STATUS) & E1000_STATUS_TBIMODE)
-		hw->media_type = e1000_media_type_fiber;
-	else
-		hw->media_type = e1000_media_type_copper;
-}
-
-/**
- * e1000_sw_init - Initialize general software structures (struct e1000_adapter)
- *
- * e1000_sw_init initializes the Adapter private data structure.
- * Fields are initialized based on PCI device information and
- * OS network device settings (MTU size).
- **/
-
-static int e1000_sw_init(struct eth_device *edev)
-{
-	struct e1000_hw *hw = edev->priv;
-	int result;
-
-	/* PCI config space info */
-	pci_read_config_word(hw->pdev, PCI_VENDOR_ID, &hw->vendor_id);
-	pci_read_config_word(hw->pdev, PCI_DEVICE_ID, &hw->device_id);
-	pci_read_config_byte(hw->pdev, PCI_REVISION_ID, &hw->revision_id);
-	pci_read_config_word(hw->pdev, PCI_COMMAND, &hw->pci_cmd_word);
-
-	/* identify the MAC */
-	result = e1000_set_mac_type(hw);
-	if (result) {
-		dev_err(&hw->edev.dev, "Unknown MAC Type\n");
-		return result;
-	}
-
-	return E1000_SUCCESS;
-}
-
-static void fill_rx(struct e1000_hw *hw)
-{
-	volatile struct e1000_rx_desc *rd;
-	volatile u32 *bla;
-	int i;
-
-	hw->rx_last = hw->rx_tail;
-	rd = hw->rx_base + hw->rx_tail;
-	hw->rx_tail = (hw->rx_tail + 1) % 8;
-
-	bla = (void *)rd;
-	for (i = 0; i < 4; i++)
-		*bla++ = 0;
-
-	rd->buffer_addr = cpu_to_le64((unsigned long)hw->packet);
-
-	E1000_WRITE_REG(hw, RDT, hw->rx_tail);
-}
-
-/**
- * e1000_configure_tx - Configure 8254x Transmit Unit after Reset
- * @adapter: board private structure
- *
- * Configure the Tx unit of the MAC after a reset.
- **/
-
-static void e1000_configure_tx(struct e1000_hw *hw)
-{
-	unsigned long tctl;
-	unsigned long tipg, tarc;
-	uint32_t ipgr1, ipgr2;
-
-	E1000_WRITE_REG(hw, TDBAL, (unsigned long)hw->tx_base);
-	E1000_WRITE_REG(hw, TDBAH, 0);
-
-	E1000_WRITE_REG(hw, TDLEN, 128);
-
-	/* Setup the HW Tx Head and Tail descriptor pointers */
-	E1000_WRITE_REG(hw, TDH, 0);
-	E1000_WRITE_REG(hw, TDT, 0);
-	hw->tx_tail = 0;
-
-	/* Set the default values for the Tx Inter Packet Gap timer */
-	if (hw->mac_type <= e1000_82547_rev_2 &&
-	    (hw->media_type == e1000_media_type_fiber ||
-	     hw->media_type == e1000_media_type_internal_serdes))
-		tipg = DEFAULT_82543_TIPG_IPGT_FIBER;
-	else
-		tipg = DEFAULT_82543_TIPG_IPGT_COPPER;
-
-	/* Set the default values for the Tx Inter Packet Gap timer */
-	switch (hw->mac_type) {
-	case e1000_82542_rev2_0:
-	case e1000_82542_rev2_1:
-		tipg = DEFAULT_82542_TIPG_IPGT;
-		ipgr1 = DEFAULT_82542_TIPG_IPGR1;
-		ipgr2 = DEFAULT_82542_TIPG_IPGR2;
-		break;
-	case e1000_80003es2lan:
-		ipgr1 = DEFAULT_82543_TIPG_IPGR1;
-		ipgr2 = DEFAULT_80003ES2LAN_TIPG_IPGR2;
-		break;
-	default:
-		ipgr1 = DEFAULT_82543_TIPG_IPGR1;
-		ipgr2 = DEFAULT_82543_TIPG_IPGR2;
-		break;
-	}
-	tipg |= ipgr1 << E1000_TIPG_IPGR1_SHIFT;
-	tipg |= ipgr2 << E1000_TIPG_IPGR2_SHIFT;
-	E1000_WRITE_REG(hw, TIPG, tipg);
-	/* Program the Transmit Control Register */
-	tctl = E1000_READ_REG(hw, TCTL);
-	tctl &= ~E1000_TCTL_CT;
-	tctl |= E1000_TCTL_EN | E1000_TCTL_PSP |
-	    (E1000_COLLISION_THRESHOLD << E1000_CT_SHIFT);
-
-	if (hw->mac_type == e1000_82571 || hw->mac_type == e1000_82572) {
-		tarc = E1000_READ_REG(hw, TARC0);
-		/* set the speed mode bit, we'll clear it if we're not at
-		 * gigabit link later */
-		/* git bit can be set to 1*/
-	} else if (hw->mac_type == e1000_80003es2lan) {
-		tarc = E1000_READ_REG(hw, TARC0);
-		tarc |= 1;
-		E1000_WRITE_REG(hw, TARC0, tarc);
-		tarc = E1000_READ_REG(hw, TARC1);
-		tarc |= 1;
-		E1000_WRITE_REG(hw, TARC1, tarc);
-	}
-
-
-	e1000_config_collision_dist(hw);
-	/* Setup Transmit Descriptor Settings for eop descriptor */
-	hw->txd_cmd = E1000_TXD_CMD_EOP | E1000_TXD_CMD_IFCS;
-
-	/* Need to set up RS bit */
-	if (hw->mac_type < e1000_82543)
-		hw->txd_cmd |= E1000_TXD_CMD_RPS;
-	else
-		hw->txd_cmd |= E1000_TXD_CMD_RS;
-
-
-	if (hw->mac_type == e1000_igb) {
-		uint32_t reg_txdctl;
-
-		E1000_WRITE_REG(hw, TCTL_EXT, 0x42 << 10);
-
-		reg_txdctl = E1000_READ_REG(hw, TXDCTL);
-		reg_txdctl |= 1 << 25;
-		E1000_WRITE_REG(hw, TXDCTL, reg_txdctl);
-		mdelay(20);
-	}
-
-	E1000_WRITE_REG(hw, TCTL, tctl);
-}
-
-/**
- * e1000_setup_rctl - configure the receive control register
- * @adapter: Board private structure
- **/
-static void e1000_setup_rctl(struct e1000_hw *hw)
-{
-	uint32_t rctl;
-
-	rctl = E1000_READ_REG(hw, RCTL);
-
-	rctl &= ~(3 << E1000_RCTL_MO_SHIFT);
-
-	rctl |= E1000_RCTL_EN | E1000_RCTL_BAM | E1000_RCTL_LBM_NO
-		| E1000_RCTL_RDMTS_HALF;	/* |
-			(hw.mc_filter_type << E1000_RCTL_MO_SHIFT); */
-
-	rctl &= ~E1000_RCTL_SBP;
-
-	rctl &= ~(E1000_RCTL_SZ_4096);
-		rctl |= E1000_RCTL_SZ_2048;
-		rctl &= ~(E1000_RCTL_BSEX | E1000_RCTL_LPE);
-	E1000_WRITE_REG(hw, RCTL, rctl);
-}
-
-/**
- * e1000_configure_rx - Configure 8254x Receive Unit after Reset
- * @adapter: board private structure
- *
- * Configure the Rx unit of the MAC after a reset.
- **/
-static void e1000_configure_rx(struct e1000_hw *hw)
-{
-	unsigned long rctl, ctrl_ext;
-
-	hw->rx_tail = 0;
-	/* make sure receives are disabled while setting up the descriptors */
-	rctl = E1000_READ_REG(hw, RCTL);
-	E1000_WRITE_REG(hw, RCTL, rctl & ~E1000_RCTL_EN);
-	if (hw->mac_type >= e1000_82540) {
-		/* Set the interrupt throttling rate.  Value is calculated
-		 * as DEFAULT_ITR = 1/(MAX_INTS_PER_SEC * 256ns) */
-#define MAX_INTS_PER_SEC	8000
-#define DEFAULT_ITR		1000000000/(MAX_INTS_PER_SEC * 256)
-		E1000_WRITE_REG(hw, ITR, DEFAULT_ITR);
-	}
-
-	if (hw->mac_type >= e1000_82571) {
-		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
-		/* Reset delay timers after every interrupt */
-		ctrl_ext |= E1000_CTRL_EXT_INT_TIMER_CLR;
-		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
-		E1000_WRITE_FLUSH(hw);
-	}
-	/* Setup the Base and Length of the Rx Descriptor Ring */
-	E1000_WRITE_REG(hw, RDBAL, (unsigned long)hw->rx_base);
-	E1000_WRITE_REG(hw, RDBAH, 0);
-
-	E1000_WRITE_REG(hw, RDLEN, 128);
-
-	/* Setup the HW Rx Head and Tail Descriptor Pointers */
-	E1000_WRITE_REG(hw, RDH, 0);
-	E1000_WRITE_REG(hw, RDT, 0);
-	/* Enable Receives */
-
-	if (hw->mac_type == e1000_igb) {
-		uint32_t reg_rxdctl = E1000_READ_REG(hw, RXDCTL);
-		reg_rxdctl |= 1 << 25;
-		E1000_WRITE_REG(hw, RXDCTL, reg_rxdctl);
-		mdelay(20);
-	}
-
-	E1000_WRITE_REG(hw, RCTL, rctl);
-
-	fill_rx(hw);
-}
-
-static int e1000_poll(struct eth_device *edev)
-{
-	struct e1000_hw *hw = edev->priv;
-	volatile struct e1000_rx_desc *rd;
-	uint32_t len;
-
-	rd = hw->rx_base + hw->rx_last;
-
-	if (!(le32_to_cpu(rd->status)) & E1000_RXD_STAT_DD)
-		return 0;
-
-	len = le32_to_cpu(rd->length);
-
-	dma_sync_single_for_cpu((unsigned long)hw->packet, len, DMA_FROM_DEVICE);
-
-	net_receive(edev, (uchar *)hw->packet, len);
-	fill_rx(hw);
-	return 1;
-}
-
-static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
-{
-	void *nv_packet = (void *)txpacket;
-	struct e1000_hw *hw = edev->priv;
-	volatile struct e1000_tx_desc *txp;
-	uint64_t to;
-
-	txp = hw->tx_base + hw->tx_tail;
-	hw->tx_tail = (hw->tx_tail + 1) % 8;
-
-	txp->buffer_addr = cpu_to_le64(virt_to_bus(hw->pdev, nv_packet));
-	txp->lower.data = cpu_to_le32(hw->txd_cmd | length);
-	txp->upper.data = 0;
-
-	dma_sync_single_for_device((unsigned long)txpacket, length, DMA_TO_DEVICE);
-
-	E1000_WRITE_REG(hw, TDT, hw->tx_tail);
-
-	E1000_WRITE_FLUSH(hw);
-
-	to = get_time_ns();
-	while (1) {
-		if (le32_to_cpu(txp->upper.data) & E1000_TXD_STAT_DD)
-			break;
-		if (is_timeout(to, MSECOND)) {
-			dev_dbg(hw->dev, "e1000: tx timeout\n");
-			return -ETIMEDOUT;
-		}
-	}
-
-	return 0;
-}
-
-static void e1000_disable(struct eth_device *edev)
-{
-	struct e1000_hw *hw = edev->priv;
-
-	/* Turn off the ethernet interface */
-	E1000_WRITE_REG(hw, RCTL, 0);
-	E1000_WRITE_REG(hw, TCTL, 0);
-
-	/* Clear the transmit ring */
-	E1000_WRITE_REG(hw, TDH, 0);
-	E1000_WRITE_REG(hw, TDT, 0);
-
-	/* Clear the receive ring */
-	E1000_WRITE_REG(hw, RDH, 0);
-	E1000_WRITE_REG(hw, RDT, 0);
-
-	mdelay(10);
-}
-
-static int e1000_init(struct eth_device *edev)
-{
-	struct e1000_hw *hw = edev->priv;
-	uint32_t i;
-	uint32_t mta_size;
-	uint32_t reg_data;
-
-	DEBUGFUNC();
-
-	if (hw->mac_type >= e1000_82544)
-		E1000_WRITE_REG(hw, WUC, 0);
-
-	/* force full DMA clock frequency for 10/100 on ICH8 A0-B0 */
-	if ((hw->mac_type == e1000_ich8lan) && ((hw->revision_id < 3) ||
-	    ((hw->device_id != E1000_DEV_ID_ICH8_IGP_M_AMT) &&
-	     (hw->device_id != E1000_DEV_ID_ICH8_IGP_M)))) {
-		reg_data = E1000_READ_REG(hw, STATUS);
-		reg_data &= ~0x80000000;
-		E1000_WRITE_REG(hw, STATUS, reg_data);
-	}
-
-	/* Set the media type and TBI compatibility */
-	e1000_set_media_type(hw);
-
-	/* Must be called after e1000_set_media_type
-	 * because media_type is used */
-	e1000_initialize_hardware_bits(hw);
-
-	/* Disabling VLAN filtering. */
-	/* VET hardcoded to standard value and VFTA removed in ICH8 LAN */
-	if (hw->mac_type != e1000_ich8lan) {
-		if (hw->mac_type < e1000_82545_rev_3)
-			E1000_WRITE_REG(hw, VET, 0);
-		e1000_clear_vfta(hw);
-	}
-
-	/* For 82542 (rev 2.0), disable MWI and put the receiver into reset */
-	if (hw->mac_type == e1000_82542_rev2_0) {
-		dev_dbg(hw->dev, "Disabling MWI on 82542 rev 2.0\n");
-		pci_write_config_word(hw->pdev, PCI_COMMAND,
-				      hw->pci_cmd_word & ~PCI_COMMAND_INVALIDATE);
-		E1000_WRITE_REG(hw, RCTL, E1000_RCTL_RST);
-		E1000_WRITE_FLUSH(hw);
-		mdelay(5);
-	}
-
-	for (i = 1; i < E1000_RAR_ENTRIES; i++) {
-		E1000_WRITE_REG_ARRAY(hw, RA, (i << 1), 0);
-		E1000_WRITE_REG_ARRAY(hw, RA, ((i << 1) + 1), 0);
-	}
-
-	/* For 82542 (rev 2.0), take the receiver out of reset and enable MWI */
-	if (hw->mac_type == e1000_82542_rev2_0) {
-		E1000_WRITE_REG(hw, RCTL, 0);
-		E1000_WRITE_FLUSH(hw);
-		mdelay(1);
-		pci_write_config_word(hw->pdev, PCI_COMMAND, hw->pci_cmd_word);
-	}
-
-	/* Zero out the Multicast HASH table */
-	mta_size = E1000_MC_TBL_SIZE;
-	if (hw->mac_type == e1000_ich8lan)
-		mta_size = E1000_MC_TBL_SIZE_ICH8LAN;
-
-	for (i = 0; i < mta_size; i++) {
-		E1000_WRITE_REG_ARRAY(hw, MTA, i, 0);
-		/* use write flush to prevent Memory Write Block (MWB) from
-		 * occuring when accessing our register space */
-		E1000_WRITE_FLUSH(hw);
-	}
-
-	/* More time needed for PHY to initialize */
-	if (hw->mac_type == e1000_ich8lan)
-		mdelay(15);
-	if (hw->mac_type == e1000_igb)
-		mdelay(15);
-
-	e1000_configure_tx(hw);
-	e1000_configure_rx(hw);
-	e1000_setup_rctl(hw);
-
-	return 0;
-}
-
-static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
-{
-	struct e1000_hw *hw;
-	struct eth_device *edev;
-	int ret;
-
-	pci_enable_device(pdev);
-	pci_set_master(pdev);
-
-	hw = xzalloc(sizeof(*hw));
-
-	hw->tx_base = dma_alloc_coherent(16 * sizeof(*hw->tx_base), DMA_ADDRESS_BROKEN);
-	hw->rx_base = dma_alloc_coherent(16 * sizeof(*hw->rx_base), DMA_ADDRESS_BROKEN);
-	hw->packet = dma_alloc_coherent(4096, DMA_ADDRESS_BROKEN);
-
-	edev = &hw->edev;
-
-	hw->pdev = pdev;
-	hw->dev = &pdev->dev;
-	pdev->dev.priv = hw;
-	edev->priv = hw;
-
-	hw->hw_addr = pci_iomap(pdev, 0);
-
-	/* MAC and Phy settings */
-	if (e1000_sw_init(edev) < 0) {
-		dev_err(&pdev->dev, "Software init failed\n");
-		return -EINVAL;
-	}
-
-	if (e1000_check_phy_reset_block(hw))
-		dev_err(&pdev->dev, "PHY Reset is blocked!\n");
-
-	/* Basic init was OK, reset the hardware and allow SPI access */
-	e1000_reset_hw(hw);
-
-	/* Validate the EEPROM and get chipset information */
-	if (e1000_init_eeprom_params(hw)) {
-		dev_err(&pdev->dev, "EEPROM is invalid!\n");
-		return -EINVAL;
-	}
-	if ((E1000_READ_REG(hw, I210_EECD) & E1000_EECD_FLUPD) &&
-	    e1000_validate_eeprom_checksum(hw))
-		return -EINVAL;
-
-	e1000_get_ethaddr(edev, edev->ethaddr);
-
-	/* Set up the function pointers and register the device */
-	edev->init = e1000_init;
-	edev->recv = e1000_poll;
-	edev->send = e1000_transmit;
-	edev->halt = e1000_disable;
-	edev->open = e1000_open;
-	edev->get_ethaddr = e1000_get_ethaddr;
-	edev->set_ethaddr = e1000_set_ethaddr;
-
-	hw->miibus.read = e1000_phy_read;
-	hw->miibus.write = e1000_phy_write;
-	hw->miibus.priv = hw;
-	hw->miibus.parent = &edev->dev;
-
-	ret = eth_register(edev);
-	if (ret)
-		return ret;
-
-	/*
-	 * The e1000 driver does its own phy handling, but registering
-	 * the phy allows to show the phy registers for debugging purposes.
-	 */
-	ret = mdiobus_register(&hw->miibus);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static void e1000_remove(struct pci_dev *pdev)
-{
-	struct e1000_hw *hw = pdev->dev.priv;
-
-	e1000_disable(&hw->edev);
-}
-
-static DEFINE_PCI_DEVICE_TABLE(e1000_pci_tbl) = {
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82542), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82543GC_FIBER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82543GC_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82544EI_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82544EI_FIBER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82544GC_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82544GC_LOM), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82540EM), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82545EM_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82545GM_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82546EB_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82545EM_FIBER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82546EB_FIBER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82546GB_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82540EM_LOM), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82541ER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82541GI_LF), },
-	/* E1000 PCIe card */
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_FIBER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_SERDES), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_QUAD_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571PT_QUAD_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_QUAD_FIBER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_QUAD_COPPER_LOWPROFILE), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_SERDES_DUAL), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_SERDES_QUAD), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82572EI_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82572EI_FIBER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82572EI_SERDES), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82572EI), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82573E), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82573E_IAMT), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82573L), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82574L), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_80003ES2LAN_COPPER_DPT), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_80003ES2LAN_SERDES_DPT), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_80003ES2LAN_COPPER_SPT), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_80003ES2LAN_SERDES_SPT), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_UNPROGRAMMED), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I211_UNPROGRAMMED), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I211_COPPER), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_COPPER_FLASHLESS), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_SERDES), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_SERDES_FLASHLESS), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_1000BASEKX), },
-	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I350_COPPER), },
-	{ /* sentinel */ }
-};
-
-static struct pci_driver e1000_eth_driver = {
-	.name = "e1000",
-	.id_table = e1000_pci_tbl,
-	.probe = e1000_probe,
-	.remove = e1000_remove,
-};
-
-static int e1000_driver_init(void)
-{
-	return pci_register_driver(&e1000_eth_driver);
-}
-device_initcall(e1000_driver_init);
diff --git a/drivers/net/e1000.h b/drivers/net/e1000.h
deleted file mode 100644
index 9fb0cb7..0000000
--- a/drivers/net/e1000.h
+++ /dev/null
@@ -1,2093 +0,0 @@
-/*******************************************************************************
-
-
-  Copyright(c) 1999 - 2002 Intel Corporation. All rights reserved.
-  Copyright 2011 Freescale Semiconductor, Inc.
-
- * SPDX-License-Identifier:	GPL-2.0+
-
-  Contact Information:
-  Linux NICS <linux.nics@intel.com>
-  Intel Corporation, 5200 N.E. Elam Young Parkway, Hillsboro, OR 97124-6497
-
-*******************************************************************************/
-
-/* e1000_hw.h
- * Structures, enums, and macros for the MAC
- */
-
-#ifndef _E1000_HW_H_
-#define _E1000_HW_H_
-
-#ifdef E1000_DEBUG
-#define DEBUGFUNC()		printf("%s\n", __func__);
-#else
-#define DEBUGFUNC()		do { } while (0)
-#endif
-
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
-/* Enumerated types specific to the e1000 hardware */
-/* Media Access Controlers */
-typedef enum {
-	e1000_undefined = 0,
-	e1000_82542_rev2_0,
-	e1000_82542_rev2_1,
-	e1000_82543,
-	e1000_82544,
-	e1000_82540,
-	e1000_82545,
-	e1000_82545_rev_3,
-	e1000_82546,
-	e1000_82546_rev_3,
-	e1000_82541,
-	e1000_82541_rev_2,
-	e1000_82547,
-	e1000_82547_rev_2,
-	e1000_82571,
-	e1000_82572,
-	e1000_82573,
-	e1000_82574,
-	e1000_80003es2lan,
-	e1000_ich8lan,
-	e1000_igb,
-	e1000_num_macs
-} e1000_mac_type;
-
-/* Media Types */
-typedef enum {
-	e1000_media_type_copper = 0,
-	e1000_media_type_fiber = 1,
-	e1000_media_type_internal_serdes = 2,
-	e1000_num_media_types
-} e1000_media_type;
-
-typedef enum {
-	e1000_eeprom_uninitialized = 0,
-	e1000_eeprom_spi,
-	e1000_eeprom_microwire,
-	e1000_eeprom_flash,
-	e1000_eeprom_ich8,
-	e1000_eeprom_none, /* No NVM support */
-	e1000_eeprom_invm,
-	e1000_num_eeprom_types
-} e1000_eeprom_type;
-
-/* Flow Control Settings */
-typedef enum {
-	e1000_fc_none = 0,
-	e1000_fc_rx_pause = 1,
-	e1000_fc_tx_pause = 2,
-	e1000_fc_full = 3,
-	e1000_fc_default = 0xFF
-} e1000_fc_type;
-
-typedef enum {
-	e1000_phy_m88 = 0,
-	e1000_phy_igp,
-	e1000_phy_igp_2,
-	e1000_phy_gg82563,
-	e1000_phy_igp_3,
-	e1000_phy_ife,
-	e1000_phy_igb,
-	e1000_phy_bm,
-	e1000_phy_82580,
-	e1000_phy_undefined = 0xFF
-} e1000_phy_type;
-
-/* Error Codes */
-#define E1000_SUCCESS				0
-#define E1000_ERR_EEPROM			1
-#define E1000_ERR_PHY				2
-#define E1000_ERR_CONFIG			3
-#define E1000_ERR_PARAM				4
-#define E1000_ERR_MAC_TYPE			5
-#define E1000_ERR_PHY_TYPE			6
-#define E1000_ERR_NOLINK			7
-#define E1000_ERR_TIMEOUT			8
-#define E1000_ERR_RESET				9
-#define E1000_ERR_MASTER_REQUESTS_PENDING	10
-#define E1000_ERR_HOST_INTERFACE_COMMAND	11
-#define E1000_BLK_PHY_RESET			12
-#define E1000_ERR_SWFW_SYNC 			13
-
-/* PCI Device IDs */
-#define E1000_DEV_ID_82542			0x1000
-#define E1000_DEV_ID_82543GC_FIBER		0x1001
-#define E1000_DEV_ID_82543GC_COPPER		0x1004
-#define E1000_DEV_ID_82544EI_COPPER		0x1008
-#define E1000_DEV_ID_82544EI_FIBER		0x1009
-#define E1000_DEV_ID_82544GC_COPPER		0x100C
-#define E1000_DEV_ID_82544GC_LOM		0x100D
-#define E1000_DEV_ID_82540EM			0x100E
-#define E1000_DEV_ID_82540EM_LOM		0x1015
-#define E1000_DEV_ID_82540EP_LOM		0x1016
-#define E1000_DEV_ID_82540EP			0x1017
-#define E1000_DEV_ID_82540EP_LP			0x101E
-#define E1000_DEV_ID_82545EM_COPPER		0x100F
-#define E1000_DEV_ID_82545EM_FIBER		0x1011
-#define E1000_DEV_ID_82545GM_COPPER		0x1026
-#define E1000_DEV_ID_82545GM_FIBER		0x1027
-#define E1000_DEV_ID_82545GM_SERDES		0x1028
-#define E1000_DEV_ID_82546EB_COPPER		0x1010
-#define E1000_DEV_ID_82546EB_FIBER		0x1012
-#define E1000_DEV_ID_82546EB_QUAD_COPPER	0x101D
-#define E1000_DEV_ID_82541EI			0x1013
-#define E1000_DEV_ID_82541EI_MOBILE		0x1018
-#define E1000_DEV_ID_82541ER_LOM		0x1014
-#define E1000_DEV_ID_82541ER			0x1078
-#define E1000_DEV_ID_82547GI			0x1075
-#define E1000_DEV_ID_82541GI			0x1076
-#define E1000_DEV_ID_82541GI_MOBILE		0x1077
-#define E1000_DEV_ID_82541GI_LF			0x107C
-#define E1000_DEV_ID_82546GB_COPPER		0x1079
-#define E1000_DEV_ID_82546GB_FIBER		0x107A
-#define E1000_DEV_ID_82546GB_SERDES		0x107B
-#define E1000_DEV_ID_82546GB_PCIE		0x108A
-#define E1000_DEV_ID_82546GB_QUAD_COPPER	0x1099
-#define E1000_DEV_ID_82547EI			0x1019
-#define E1000_DEV_ID_82547EI_MOBILE		0x101A
-#define E1000_DEV_ID_82571EB_COPPER		0x105E
-#define E1000_DEV_ID_82571EB_FIBER		0x105F
-#define E1000_DEV_ID_82571EB_SERDES		0x1060
-#define E1000_DEV_ID_82571EB_QUAD_COPPER	0x10A4
-#define E1000_DEV_ID_82571PT_QUAD_COPPER	0x10D5
-#define E1000_DEV_ID_82571EB_QUAD_FIBER		0x10A5
-#define E1000_DEV_ID_82571EB_QUAD_COPPER_LOWPROFILE	0x10BC
-#define E1000_DEV_ID_82571EB_SERDES_DUAL	0x10D9
-#define E1000_DEV_ID_82571EB_SERDES_QUAD	0x10DA
-#define E1000_DEV_ID_82572EI_COPPER		0x107D
-#define E1000_DEV_ID_82572EI_FIBER		0x107E
-#define E1000_DEV_ID_82572EI_SERDES		0x107F
-#define E1000_DEV_ID_82572EI			0x10B9
-#define E1000_DEV_ID_82573E			0x108B
-#define E1000_DEV_ID_82573E_IAMT		0x108C
-#define E1000_DEV_ID_82573L			0x109A
-#define E1000_DEV_ID_82574L			0x10D3
-#define E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3	0x10B5
-#define E1000_DEV_ID_80003ES2LAN_COPPER_DPT     0x1096
-#define E1000_DEV_ID_80003ES2LAN_SERDES_DPT     0x1098
-#define E1000_DEV_ID_80003ES2LAN_COPPER_SPT     0x10BA
-#define E1000_DEV_ID_80003ES2LAN_SERDES_SPT     0x10BB
-
-#define E1000_DEV_ID_I350_COPPER		0x1521
-#define E1000_DEV_ID_I210_UNPROGRAMMED		0x1531
-#define E1000_DEV_ID_I211_UNPROGRAMMED		0x1532
-#define E1000_DEV_ID_I210_COPPER		0x1533
-#define E1000_DEV_ID_I210_SERDES		0x1536
-#define E1000_DEV_ID_I210_1000BASEKX		0x1537
-#define E1000_DEV_ID_I210_EXTPHY		0x1538
-#define E1000_DEV_ID_I211_COPPER		0x1539
-#define E1000_DEV_ID_I210_COPPER_FLASHLESS	0x157b
-#define E1000_DEV_ID_I210_SERDES_FLASHLESS	0x157c
-
-#define E1000_DEV_ID_ICH8_IGP_M_AMT      0x1049
-#define E1000_DEV_ID_ICH8_IGP_AMT        0x104A
-#define E1000_DEV_ID_ICH8_IGP_C          0x104B
-#define E1000_DEV_ID_ICH8_IFE            0x104C
-#define E1000_DEV_ID_ICH8_IFE_GT         0x10C4
-#define E1000_DEV_ID_ICH8_IFE_G          0x10C5
-#define E1000_DEV_ID_ICH8_IGP_M          0x104D
-
-#define IGP03E1000_E_PHY_ID  0x02A80390
-#define IFE_E_PHY_ID         0x02A80330 /* 10/100 PHY */
-#define IFE_PLUS_E_PHY_ID    0x02A80320
-#define IFE_C_E_PHY_ID       0x02A80310
-
-#define IFE_PHY_EXTENDED_STATUS_CONTROL   0x10  /* 100BaseTx Extended Status,
-						   Control and Address */
-#define IFE_PHY_SPECIAL_CONTROL           0x11  /* 100BaseTx PHY special
-						   control register */
-#define IFE_PHY_RCV_FALSE_CARRIER         0x13  /* 100BaseTx Receive false
-						   Carrier Counter */
-#define IFE_PHY_RCV_DISCONNECT            0x14  /* 100BaseTx Receive Disconnet
-						   Counter */
-#define IFE_PHY_RCV_ERROT_FRAME           0x15  /* 100BaseTx Receive Error
-						   Frame Counter */
-#define IFE_PHY_RCV_SYMBOL_ERR            0x16  /* Receive Symbol Error
-						   Counter */
-#define IFE_PHY_PREM_EOF_ERR              0x17  /* 100BaseTx Receive
-						   Premature End Of Frame
-						   Error Counter */
-#define IFE_PHY_RCV_EOF_ERR               0x18  /* 10BaseT Receive End Of
-						   Frame Error Counter */
-#define IFE_PHY_TX_JABBER_DETECT          0x19  /* 10BaseT Transmit Jabber
-						   Detect Counter */
-#define IFE_PHY_EQUALIZER                 0x1A  /* PHY Equalizer Control and
-						   Status */
-#define IFE_PHY_SPECIAL_CONTROL_LED       0x1B  /* PHY special control and
-						   LED configuration */
-#define IFE_PHY_MDIX_CONTROL              0x1C  /* MDI/MDI-X Control register */
-#define IFE_PHY_HWI_CONTROL               0x1D  /* Hardware Integrity Control
-						   (HWI) */
-
-#define IFE_PESC_REDUCED_POWER_DOWN_DISABLE  0x2000  /* Defaut 1 = Disable auto
-							reduced power down */
-#define IFE_PESC_100BTX_POWER_DOWN           0x0400  /* Indicates the power
-							state of 100BASE-TX */
-#define IFE_PESC_10BTX_POWER_DOWN            0x0200  /* Indicates the power
-							state of 10BASE-T */
-#define IFE_PESC_POLARITY_REVERSED           0x0100  /* Indicates 10BASE-T
-							polarity */
-#define IFE_PESC_PHY_ADDR_MASK               0x007C  /* Bit 6:2 for sampled PHY
-							address */
-#define IFE_PESC_SPEED                       0x0002  /* Auto-negotiation speed
-						result 1=100Mbs, 0=10Mbs */
-#define IFE_PESC_DUPLEX                      0x0001  /* Auto-negotiation
-						duplex result 1=Full, 0=Half */
-#define IFE_PESC_POLARITY_REVERSED_SHIFT     8
-
-#define IFE_PSC_DISABLE_DYNAMIC_POWER_DOWN   0x0100  /* 1 = Dyanmic Power Down
-							disabled */
-#define IFE_PSC_FORCE_POLARITY               0x0020  /* 1=Reversed Polarity,
-							0=Normal */
-#define IFE_PSC_AUTO_POLARITY_DISABLE        0x0010  /* 1=Auto Polarity
-							Disabled, 0=Enabled */
-#define IFE_PSC_JABBER_FUNC_DISABLE          0x0001  /* 1=Jabber Disabled,
-						0=Normal Jabber Operation */
-#define IFE_PSC_FORCE_POLARITY_SHIFT         5
-#define IFE_PSC_AUTO_POLARITY_DISABLE_SHIFT  4
-
-#define IFE_PMC_AUTO_MDIX                    0x0080  /* 1=enable MDI/MDI-X
-						feature, default 0=disabled */
-#define IFE_PMC_FORCE_MDIX                   0x0040  /* 1=force MDIX-X,
-							0=force MDI */
-#define IFE_PMC_MDIX_STATUS                  0x0020  /* 1=MDI-X, 0=MDI */
-#define IFE_PMC_AUTO_MDIX_COMPLETE           0x0010  /* Resolution algorithm
-							is completed */
-#define IFE_PMC_MDIX_MODE_SHIFT              6
-#define IFE_PHC_MDIX_RESET_ALL_MASK          0x0000  /* Disable auto MDI-X */
-
-#define IFE_PHC_HWI_ENABLE                   0x8000  /* Enable the HWI
-							feature */
-#define IFE_PHC_ABILITY_CHECK                0x4000  /* 1= Test Passed,
-							0=failed */
-#define IFE_PHC_TEST_EXEC                    0x2000  /* PHY launch test pulses
-							on the wire */
-#define IFE_PHC_HIGHZ                        0x0200  /* 1 = Open Circuit */
-#define IFE_PHC_LOWZ                         0x0400  /* 1 = Short Circuit */
-#define IFE_PHC_LOW_HIGH_Z_MASK              0x0600  /* Mask for indication
-						type of problem on the line */
-#define IFE_PHC_DISTANCE_MASK                0x01FF  /* Mask for distance to
-				the cable problem, in 80cm granularity */
-#define IFE_PHC_RESET_ALL_MASK               0x0000  /* Disable HWI */
-#define IFE_PSCL_PROBE_MODE                  0x0020  /* LED Probe mode */
-#define IFE_PSCL_PROBE_LEDS_OFF              0x0006  /* Force LEDs 0 and 2
-							off */
-#define IFE_PSCL_PROBE_LEDS_ON               0x0007  /* Force LEDs 0 and 2 on */
-
-#define NODE_ADDRESS_SIZE 6
-
-#define E1000_82542_2_0_REV_ID 2
-#define E1000_82542_2_1_REV_ID 3
-#define E1000_REVISION_0       0
-#define E1000_REVISION_1       1
-#define E1000_REVISION_2       2
-#define E1000_REVISION_3       3
-
-#define SPEED_10    10
-#define SPEED_100   100
-#define SPEED_1000  1000
-#define HALF_DUPLEX 1
-#define FULL_DUPLEX 2
-
-/* The number of high/low register pairs in the RAR. The RAR (Receive Address
- * Registers) holds the directed and multicast addresses that we monitor. We
- * reserve one of these spots for our directed address, allowing us room for
- * E1000_RAR_ENTRIES - 1 multicast addresses.
- */
-#define E1000_RAR_ENTRIES 16
-
-#define MIN_NUMBER_OF_DESCRIPTORS 8
-#define MAX_NUMBER_OF_DESCRIPTORS 0xFFF8
-
-/* Receive Descriptor */
-struct e1000_rx_desc {
-	uint64_t buffer_addr;	/* Address of the descriptor's data buffer */
-	uint16_t length;	/* Length of data DMAed into data buffer */
-	uint16_t csum;		/* Packet checksum */
-	uint8_t status;		/* Descriptor status */
-	uint8_t errors;		/* Descriptor Errors */
-	uint16_t special;
-};
-
-/* Receive Decriptor bit definitions */
-#define E1000_RXD_STAT_DD	0x01	/* Descriptor Done */
-#define E1000_RXD_STAT_EOP	0x02	/* End of Packet */
-#define E1000_RXD_STAT_IXSM	0x04	/* Ignore checksum */
-#define E1000_RXD_STAT_VP	0x08	/* IEEE VLAN Packet */
-#define E1000_RXD_STAT_TCPCS	0x20	/* TCP xsum calculated */
-#define E1000_RXD_STAT_IPCS	0x40	/* IP xsum calculated */
-#define E1000_RXD_STAT_PIF	0x80	/* passed in-exact filter */
-#define E1000_RXD_ERR_CE	0x01	/* CRC Error */
-#define E1000_RXD_ERR_SE	0x02	/* Symbol Error */
-#define E1000_RXD_ERR_SEQ	0x04	/* Sequence Error */
-#define E1000_RXD_ERR_CXE	0x10	/* Carrier Extension Error */
-#define E1000_RXD_ERR_TCPE	0x20	/* TCP/UDP Checksum Error */
-#define E1000_RXD_ERR_IPE	0x40	/* IP Checksum Error */
-#define E1000_RXD_ERR_RXE	0x80	/* Rx Data Error */
-#define E1000_RXD_SPC_VLAN_MASK 0x0FFF	/* VLAN ID is in lower 12 bits */
-#define E1000_RXD_SPC_PRI_MASK	0xE000	/* Priority is in upper 3 bits */
-#define E1000_RXD_SPC_PRI_SHIFT 0x000D	/* Priority is in upper 3 of 16 */
-#define E1000_RXD_SPC_CFI_MASK	0x1000	/* CFI is bit 12 */
-#define E1000_RXD_SPC_CFI_SHIFT 0x000C	/* CFI is bit 12 */
-
-/* mask to determine if packets should be dropped due to frame errors */
-#define E1000_RXD_ERR_FRAME_ERR_MASK ( \
-    E1000_RXD_ERR_CE  |		       \
-    E1000_RXD_ERR_SE  |		       \
-    E1000_RXD_ERR_SEQ |		       \
-    E1000_RXD_ERR_CXE |		       \
-    E1000_RXD_ERR_RXE)
-
-/* Transmit Descriptor */
-struct e1000_tx_desc {
-	uint64_t buffer_addr;	/* Address of the descriptor's data buffer */
-	union {
-		uint32_t data;
-		struct {
-			uint16_t length;	/* Data buffer length */
-			uint8_t cso;	/* Checksum offset */
-			uint8_t cmd;	/* Descriptor control */
-		} flags;
-	} lower;
-	union {
-		uint32_t data;
-		struct {
-			uint8_t status;	/* Descriptor status */
-			uint8_t css;	/* Checksum start */
-			uint16_t special;
-		} fields;
-	} upper;
-};
-
-/* Transmit Descriptor bit definitions */
-#define E1000_TXD_DTYP_D     0x00100000	/* Data Descriptor */
-#define E1000_TXD_DTYP_C     0x00000000	/* Context Descriptor */
-#define E1000_TXD_POPTS_IXSM 0x01	/* Insert IP checksum */
-#define E1000_TXD_POPTS_TXSM 0x02	/* Insert TCP/UDP checksum */
-#define E1000_TXD_CMD_EOP    0x01000000	/* End of Packet */
-#define E1000_TXD_CMD_IFCS   0x02000000	/* Insert FCS (Ethernet CRC) */
-#define E1000_TXD_CMD_IC     0x04000000	/* Insert Checksum */
-#define E1000_TXD_CMD_RS     0x08000000	/* Report Status */
-#define E1000_TXD_CMD_RPS    0x10000000	/* Report Packet Sent */
-#define E1000_TXD_CMD_DEXT   0x20000000	/* Descriptor extension (0 = legacy) */
-#define E1000_TXD_CMD_VLE    0x40000000	/* Add VLAN tag */
-#define E1000_TXD_CMD_IDE    0x80000000	/* Enable Tidv register */
-#define E1000_TXD_STAT_DD    0x00000001	/* Descriptor Done */
-#define E1000_TXD_STAT_EC    0x00000002	/* Excess Collisions */
-#define E1000_TXD_STAT_LC    0x00000004	/* Late Collisions */
-#define E1000_TXD_STAT_TU    0x00000008	/* Transmit underrun */
-#define E1000_TXD_CMD_TCP    0x01000000	/* TCP packet */
-#define E1000_TXD_CMD_IP     0x02000000	/* IP packet */
-#define E1000_TXD_CMD_TSE    0x04000000	/* TCP Seg enable */
-#define E1000_TXD_STAT_TC    0x00000004	/* Tx Underrun */
-
-/* Filters */
-#define E1000_NUM_UNICAST	   16	/* Unicast filter entries */
-#define E1000_MC_TBL_SIZE	   128	/* Multicast Filter Table (4096 bits) */
-#define E1000_VLAN_FILTER_TBL_SIZE 128	/* VLAN Filter Table (4096 bits) */
-
-/* Register Set. (82543, 82544)
- *
- * Registers are defined to be 32 bits and  should be accessed as 32 bit values.
- * These registers are physically located on the NIC, but are mapped into the
- * host memory address space.
- *
- * RW - register is both readable and writable
- * RO - register is read only
- * WO - register is write only
- * R/clr - register is read only and is cleared when read
- * A - register array
- */
-#define E1000_CTRL     0x00000	/* Device Control - RW */
-#define E1000_STATUS   0x00008	/* Device Status - RO */
-#define E1000_EECD     0x00010	/* EEPROM/Flash Control - RW */
-#define E1000_I210_EECD     0x12010	/* EEPROM/Flash Control - RW */
-#define E1000_EERD     0x00014	/* EEPROM Read - RW */
-#define E1000_I210_EERD     0x12014	/* EEPROM Read - RW */
-#define E1000_CTRL_EXT 0x00018	/* Extended Device Control - RW */
-#define E1000_MDIC     0x00020	/* MDI Control - RW */
-#define E1000_FCAL     0x00028	/* Flow Control Address Low - RW */
-#define E1000_FCAH     0x0002C	/* Flow Control Address High -RW */
-#define E1000_FCT      0x00030	/* Flow Control Type - RW */
-#define E1000_VET      0x00038	/* VLAN Ether Type - RW */
-#define E1000_ICR      0x000C0	/* Interrupt Cause Read - R/clr */
-#define E1000_ITR      0x000C4	/* Interrupt Throttling Rate - RW */
-#define E1000_ICS      0x000C8	/* Interrupt Cause Set - WO */
-#define E1000_IMS      0x000D0	/* Interrupt Mask Set - RW */
-#define E1000_IMC      0x000D8	/* Interrupt Mask Clear - WO */
-#define E1000_I210_IAM      0x000E0	/* Interrupt Ack Auto Mask - RW */
-#define E1000_RCTL     0x00100	/* RX Control - RW */
-#define E1000_FCTTV    0x00170	/* Flow Control Transmit Timer Value - RW */
-#define E1000_TXCW     0x00178	/* TX Configuration Word - RW */
-#define E1000_RXCW     0x00180	/* RX Configuration Word - RO */
-#define E1000_TCTL     0x00400	/* TX Control - RW */
-#define E1000_TCTL_EXT 0x00404  /* Extended TX Control - RW */
-#define E1000_TIPG     0x00410	/* TX Inter-packet gap -RW */
-#define E1000_TBT      0x00448	/* TX Burst Timer - RW */
-#define E1000_AIT      0x00458	/* Adaptive Interframe Spacing Throttle - RW */
-#define E1000_LEDCTL   0x00E00	/* LED Control - RW */
-#define E1000_EXTCNF_CTRL  0x00F00  /* Extended Configuration Control */
-#define E1000_EXTCNF_SIZE  0x00F08  /* Extended Configuration Size */
-#define E1000_PHY_CTRL     0x00F10  /* PHY Control Register in CSR */
-#define E1000_I210_PHY_CTRL     0x00E14  /* PHY Control Register in CSR */
-#define FEXTNVM_SW_CONFIG  0x0001
-#define E1000_PBA      0x01000	/* Packet Buffer Allocation - RW */
-#define E1000_PBS      0x01008  /* Packet Buffer Size */
-#define E1000_EEMNGCTL 0x01010  /* MNG EEprom Control */
-#define E1000_I210_EEMNGCTL 0x12030  /* MNG EEprom Control */
-#define E1000_FLASH_UPDATES 1000
-#define E1000_EEARBC   0x01024  /* EEPROM Auto Read Bus Control */
-#define E1000_FLASHT   0x01028  /* FLASH Timer Register */
-#define E1000_EEWR     0x0102C  /* EEPROM Write Register - RW */
-#define E1000_I210_EEWR     0x12018  /* EEPROM Write Register - RW */
-#define E1000_FLSWCTL  0x01030  /* FLASH control register */
-#define E1000_FLSWDATA 0x01034  /* FLASH data register */
-#define E1000_FLSWCNT  0x01038  /* FLASH Access Counter */
-#define E1000_FLOP     0x0103C  /* FLASH Opcode Register */
-#define E1000_ERT      0x02008  /* Early Rx Threshold - RW */
-#define E1000_FCRTL    0x02160	/* Flow Control Receive Threshold Low - RW */
-#define E1000_FCRTH    0x02168	/* Flow Control Receive Threshold High - RW */
-#define E1000_RDBAL    0x02800	/* RX Descriptor Base Address Low - RW */
-#define E1000_RDBAH    0x02804	/* RX Descriptor Base Address High - RW */
-#define E1000_RDLEN    0x02808	/* RX Descriptor Length - RW */
-#define E1000_RDH      0x02810	/* RX Descriptor Head - RW */
-#define E1000_RDT      0x02818	/* RX Descriptor Tail - RW */
-#define E1000_RDTR     0x02820	/* RX Delay Timer - RW */
-#define E1000_RXDCTL   0x02828	/* RX Descriptor Control - RW */
-#define E1000_RADV     0x0282C	/* RX Interrupt Absolute Delay Timer - RW */
-#define E1000_RSRPD    0x02C00	/* RX Small Packet Detect - RW */
-#define E1000_TXDMAC   0x03000	/* TX DMA Control - RW */
-#define E1000_TDFH     0x03410  /* TX Data FIFO Head - RW */
-#define E1000_TDFT     0x03418  /* TX Data FIFO Tail - RW */
-#define E1000_TDFHS    0x03420  /* TX Data FIFO Head Saved - RW */
-#define E1000_TDFTS    0x03428  /* TX Data FIFO Tail Saved - RW */
-#define E1000_TDFPC    0x03430  /* TX Data FIFO Packet Count - RW */
-#define E1000_TDBAL    0x03800	/* TX Descriptor Base Address Low - RW */
-#define E1000_TDBAH    0x03804	/* TX Descriptor Base Address High - RW */
-#define E1000_TDLEN    0x03808	/* TX Descriptor Length - RW */
-#define E1000_TDH      0x03810	/* TX Descriptor Head - RW */
-#define E1000_TDT      0x03818	/* TX Descripotr Tail - RW */
-#define E1000_TIDV     0x03820	/* TX Interrupt Delay Value - RW */
-#define E1000_TXDCTL   0x03828	/* TX Descriptor Control - RW */
-#define E1000_TADV     0x0382C	/* TX Interrupt Absolute Delay Val - RW */
-#define E1000_TSPMT    0x03830	/* TCP Segmentation PAD & Min Threshold - RW */
-#define E1000_TARC0    0x03840  /* TX Arbitration Count (0) */
-#define E1000_TDBAL1   0x03900  /* TX Desc Base Address Low (1) - RW */
-#define E1000_TDBAH1   0x03904  /* TX Desc Base Address High (1) - RW */
-#define E1000_TDLEN1   0x03908  /* TX Desc Length (1) - RW */
-#define E1000_TDH1     0x03910  /* TX Desc Head (1) - RW */
-#define E1000_TDT1     0x03918  /* TX Desc Tail (1) - RW */
-#define E1000_TXDCTL1  0x03928  /* TX Descriptor Control (1) - RW */
-#define E1000_TARC1    0x03940  /* TX Arbitration Count (1) */
-#define E1000_CRCERRS  0x04000	/* CRC Error Count - R/clr */
-#define E1000_ALGNERRC 0x04004	/* Alignment Error Count - R/clr */
-#define E1000_SYMERRS  0x04008	/* Symbol Error Count - R/clr */
-#define E1000_RXERRC   0x0400C	/* Receive Error Count - R/clr */
-#define E1000_MPC      0x04010	/* Missed Packet Count - R/clr */
-#define E1000_SCC      0x04014	/* Single Collision Count - R/clr */
-#define E1000_ECOL     0x04018	/* Excessive Collision Count - R/clr */
-#define E1000_MCC      0x0401C	/* Multiple Collision Count - R/clr */
-#define E1000_LATECOL  0x04020	/* Late Collision Count - R/clr */
-#define E1000_COLC     0x04028	/* Collision Count - R/clr */
-#define E1000_DC       0x04030	/* Defer Count - R/clr */
-#define E1000_TNCRS    0x04034	/* TX-No CRS - R/clr */
-#define E1000_SEC      0x04038	/* Sequence Error Count - R/clr */
-#define E1000_CEXTERR  0x0403C	/* Carrier Extension Error Count - R/clr */
-#define E1000_RLEC     0x04040	/* Receive Length Error Count - R/clr */
-#define E1000_XONRXC   0x04048	/* XON RX Count - R/clr */
-#define E1000_XONTXC   0x0404C	/* XON TX Count - R/clr */
-#define E1000_XOFFRXC  0x04050	/* XOFF RX Count - R/clr */
-#define E1000_XOFFTXC  0x04054	/* XOFF TX Count - R/clr */
-#define E1000_FCRUC    0x04058	/* Flow Control RX Unsupported Count- R/clr */
-#define E1000_PRC64    0x0405C	/* Packets RX (64 bytes) - R/clr */
-#define E1000_PRC127   0x04060	/* Packets RX (65-127 bytes) - R/clr */
-#define E1000_PRC255   0x04064	/* Packets RX (128-255 bytes) - R/clr */
-#define E1000_PRC511   0x04068	/* Packets RX (255-511 bytes) - R/clr */
-#define E1000_PRC1023  0x0406C	/* Packets RX (512-1023 bytes) - R/clr */
-#define E1000_PRC1522  0x04070	/* Packets RX (1024-1522 bytes) - R/clr */
-#define E1000_GPRC     0x04074	/* Good Packets RX Count - R/clr */
-#define E1000_BPRC     0x04078	/* Broadcast Packets RX Count - R/clr */
-#define E1000_MPRC     0x0407C	/* Multicast Packets RX Count - R/clr */
-#define E1000_GPTC     0x04080	/* Good Packets TX Count - R/clr */
-#define E1000_GORCL    0x04088	/* Good Octets RX Count Low - R/clr */
-#define E1000_GORCH    0x0408C	/* Good Octets RX Count High - R/clr */
-#define E1000_GOTCL    0x04090	/* Good Octets TX Count Low - R/clr */
-#define E1000_GOTCH    0x04094	/* Good Octets TX Count High - R/clr */
-#define E1000_RNBC     0x040A0	/* RX No Buffers Count - R/clr */
-#define E1000_RUC      0x040A4	/* RX Undersize Count - R/clr */
-#define E1000_RFC      0x040A8	/* RX Fragment Count - R/clr */
-#define E1000_ROC      0x040AC	/* RX Oversize Count - R/clr */
-#define E1000_RJC      0x040B0	/* RX Jabber Count - R/clr */
-#define E1000_MGTPRC   0x040B4	/* Management Packets RX Count - R/clr */
-#define E1000_MGTPDC   0x040B8	/* Management Packets Dropped Count - R/clr */
-#define E1000_MGTPTC   0x040BC	/* Management Packets TX Count - R/clr */
-#define E1000_TORL     0x040C0	/* Total Octets RX Low - R/clr */
-#define E1000_TORH     0x040C4	/* Total Octets RX High - R/clr */
-#define E1000_TOTL     0x040C8	/* Total Octets TX Low - R/clr */
-#define E1000_TOTH     0x040CC	/* Total Octets TX High - R/clr */
-#define E1000_TPR      0x040D0	/* Total Packets RX - R/clr */
-#define E1000_TPT      0x040D4	/* Total Packets TX - R/clr */
-#define E1000_PTC64    0x040D8	/* Packets TX (64 bytes) - R/clr */
-#define E1000_PTC127   0x040DC	/* Packets TX (65-127 bytes) - R/clr */
-#define E1000_PTC255   0x040E0	/* Packets TX (128-255 bytes) - R/clr */
-#define E1000_PTC511   0x040E4	/* Packets TX (256-511 bytes) - R/clr */
-#define E1000_PTC1023  0x040E8	/* Packets TX (512-1023 bytes) - R/clr */
-#define E1000_PTC1522  0x040EC	/* Packets TX (1024-1522 Bytes) - R/clr */
-#define E1000_MPTC     0x040F0	/* Multicast Packets TX Count - R/clr */
-#define E1000_BPTC     0x040F4	/* Broadcast Packets TX Count - R/clr */
-#define E1000_TSCTC    0x040F8	/* TCP Segmentation Context TX - R/clr */
-#define E1000_TSCTFC   0x040FC	/* TCP Segmentation Context TX Fail - R/clr */
-#define E1000_RXCSUM   0x05000	/* RX Checksum Control - RW */
-#define E1000_MTA      0x05200	/* Multicast Table Array - RW Array */
-#define E1000_RA       0x05400	/* Receive Address - RW Array */
-#define E1000_VFTA     0x05600	/* VLAN Filter Table Array - RW Array */
-#define E1000_WUC      0x05800	/* Wakeup Control - RW */
-#define E1000_WUFC     0x05808	/* Wakeup Filter Control - RW */
-#define E1000_WUS      0x05810	/* Wakeup Status - RO */
-#define E1000_MANC     0x05820	/* Management Control - RW */
-#define E1000_IPAV     0x05838	/* IP Address Valid - RW */
-#define E1000_IP4AT    0x05840	/* IPv4 Address Table - RW Array */
-#define E1000_IP6AT    0x05880	/* IPv6 Address Table - RW Array */
-#define E1000_WUPL     0x05900	/* Wakeup Packet Length - RW */
-#define E1000_WUPM     0x05A00	/* Wakeup Packet Memory - RO A */
-#define E1000_FFLT     0x05F00	/* Flexible Filter Length Table - RW Array */
-#define E1000_FFMT     0x09000	/* Flexible Filter Mask Table - RW Array */
-#define E1000_FFVT     0x09800	/* Flexible Filter Value Table - RW Array */
-
-/* Register Set (82542)
- *
- * Some of the 82542 registers are located at different offsets than they are
- * in more current versions of the 8254x. Despite the difference in location,
- * the registers function in the same manner.
- */
-#define E1000_82542_CTRL     E1000_CTRL
-#define E1000_82542_STATUS   E1000_STATUS
-#define E1000_82542_EECD     E1000_EECD
-#define E1000_82542_EERD     E1000_EERD
-#define E1000_82542_CTRL_EXT E1000_CTRL_EXT
-#define E1000_82542_MDIC     E1000_MDIC
-#define E1000_82542_FCAL     E1000_FCAL
-#define E1000_82542_FCAH     E1000_FCAH
-#define E1000_82542_FCT      E1000_FCT
-#define E1000_82542_VET      E1000_VET
-#define E1000_82542_RA	     0x00040
-#define E1000_82542_ICR      E1000_ICR
-#define E1000_82542_ITR      E1000_ITR
-#define E1000_82542_ICS      E1000_ICS
-#define E1000_82542_IMS      E1000_IMS
-#define E1000_82542_IMC      E1000_IMC
-#define E1000_82542_RCTL     E1000_RCTL
-#define E1000_82542_RDTR     0x00108
-#define E1000_82542_RDBAL    0x00110
-#define E1000_82542_RDBAH    0x00114
-#define E1000_82542_RDLEN    0x00118
-#define E1000_82542_RDH      0x00120
-#define E1000_82542_RDT      0x00128
-#define E1000_82542_FCRTH    0x00160
-#define E1000_82542_FCRTL    0x00168
-#define E1000_82542_FCTTV    E1000_FCTTV
-#define E1000_82542_TXCW     E1000_TXCW
-#define E1000_82542_RXCW     E1000_RXCW
-#define E1000_82542_MTA      0x00200
-#define E1000_82542_TCTL     E1000_TCTL
-#define E1000_82542_TIPG     E1000_TIPG
-#define E1000_82542_TDBAL    0x00420
-#define E1000_82542_TDBAH    0x00424
-#define E1000_82542_TDLEN    0x00428
-#define E1000_82542_TDH      0x00430
-#define E1000_82542_TDT      0x00438
-#define E1000_82542_TIDV     0x00440
-#define E1000_82542_TBT      E1000_TBT
-#define E1000_82542_AIT      E1000_AIT
-#define E1000_82542_VFTA     0x00600
-#define E1000_82542_LEDCTL   E1000_LEDCTL
-#define E1000_82542_PBA      E1000_PBA
-#define E1000_82542_RXDCTL   E1000_RXDCTL
-#define E1000_82542_RADV     E1000_RADV
-#define E1000_82542_RSRPD    E1000_RSRPD
-#define E1000_82542_TXDMAC   E1000_TXDMAC
-#define E1000_82542_TXDCTL   E1000_TXDCTL
-#define E1000_82542_TADV     E1000_TADV
-#define E1000_82542_TSPMT    E1000_TSPMT
-#define E1000_82542_CRCERRS  E1000_CRCERRS
-#define E1000_82542_ALGNERRC E1000_ALGNERRC
-#define E1000_82542_SYMERRS  E1000_SYMERRS
-#define E1000_82542_RXERRC   E1000_RXERRC
-#define E1000_82542_MPC      E1000_MPC
-#define E1000_82542_SCC      E1000_SCC
-#define E1000_82542_ECOL     E1000_ECOL
-#define E1000_82542_MCC      E1000_MCC
-#define E1000_82542_LATECOL  E1000_LATECOL
-#define E1000_82542_COLC     E1000_COLC
-#define E1000_82542_DC	     E1000_DC
-#define E1000_82542_TNCRS    E1000_TNCRS
-#define E1000_82542_SEC      E1000_SEC
-#define E1000_82542_CEXTERR  E1000_CEXTERR
-#define E1000_82542_RLEC     E1000_RLEC
-#define E1000_82542_XONRXC   E1000_XONRXC
-#define E1000_82542_XONTXC   E1000_XONTXC
-#define E1000_82542_XOFFRXC  E1000_XOFFRXC
-#define E1000_82542_XOFFTXC  E1000_XOFFTXC
-#define E1000_82542_FCRUC    E1000_FCRUC
-#define E1000_82542_PRC64    E1000_PRC64
-#define E1000_82542_PRC127   E1000_PRC127
-#define E1000_82542_PRC255   E1000_PRC255
-#define E1000_82542_PRC511   E1000_PRC511
-#define E1000_82542_PRC1023  E1000_PRC1023
-#define E1000_82542_PRC1522  E1000_PRC1522
-#define E1000_82542_GPRC     E1000_GPRC
-#define E1000_82542_BPRC     E1000_BPRC
-#define E1000_82542_MPRC     E1000_MPRC
-#define E1000_82542_GPTC     E1000_GPTC
-#define E1000_82542_GORCL    E1000_GORCL
-#define E1000_82542_GORCH    E1000_GORCH
-#define E1000_82542_GOTCL    E1000_GOTCL
-#define E1000_82542_GOTCH    E1000_GOTCH
-#define E1000_82542_RNBC     E1000_RNBC
-#define E1000_82542_RUC      E1000_RUC
-#define E1000_82542_RFC      E1000_RFC
-#define E1000_82542_ROC      E1000_ROC
-#define E1000_82542_RJC      E1000_RJC
-#define E1000_82542_MGTPRC   E1000_MGTPRC
-#define E1000_82542_MGTPDC   E1000_MGTPDC
-#define E1000_82542_MGTPTC   E1000_MGTPTC
-#define E1000_82542_TORL     E1000_TORL
-#define E1000_82542_TORH     E1000_TORH
-#define E1000_82542_TOTL     E1000_TOTL
-#define E1000_82542_TOTH     E1000_TOTH
-#define E1000_82542_TPR      E1000_TPR
-#define E1000_82542_TPT      E1000_TPT
-#define E1000_82542_PTC64    E1000_PTC64
-#define E1000_82542_PTC127   E1000_PTC127
-#define E1000_82542_PTC255   E1000_PTC255
-#define E1000_82542_PTC511   E1000_PTC511
-#define E1000_82542_PTC1023  E1000_PTC1023
-#define E1000_82542_PTC1522  E1000_PTC1522
-#define E1000_82542_MPTC     E1000_MPTC
-#define E1000_82542_BPTC     E1000_BPTC
-#define E1000_82542_TSCTC    E1000_TSCTC
-#define E1000_82542_TSCTFC   E1000_TSCTFC
-#define E1000_82542_RXCSUM   E1000_RXCSUM
-#define E1000_82542_WUC      E1000_WUC
-#define E1000_82542_WUFC     E1000_WUFC
-#define E1000_82542_WUS      E1000_WUS
-#define E1000_82542_MANC     E1000_MANC
-#define E1000_82542_IPAV     E1000_IPAV
-#define E1000_82542_IP4AT    E1000_IP4AT
-#define E1000_82542_IP6AT    E1000_IP6AT
-#define E1000_82542_WUPL     E1000_WUPL
-#define E1000_82542_WUPM     E1000_WUPM
-#define E1000_82542_FFLT     E1000_FFLT
-#define E1000_82542_FFMT     E1000_FFMT
-#define E1000_82542_FFVT     E1000_FFVT
-
-struct e1000_eeprom_info {
-	e1000_eeprom_type type;
-	uint16_t word_size;
-	uint16_t opcode_bits;
-	uint16_t address_bits;
-	uint16_t delay_usec;
-	uint16_t page_size;
-	bool use_eerd;
-	bool use_eewr;
-};
-
-#define E1000_EEPROM_SWDPIN0   0x0001	/* SWDPIN 0 EEPROM Value */
-#define E1000_EEPROM_LED_LOGIC 0x0020	/* Led Logic Word */
-#define E1000_EEPROM_RW_REG_DATA   16   /* Offset to data in EEPROM
-					   read/write registers */
-#define E1000_EEPROM_RW_REG_DONE   2    /* Offset to READ/WRITE done bit */
-#define E1000_EEPROM_RW_REG_START  1    /* First bit for telling part to start
-					   operation */
-#define E1000_EEPROM_RW_ADDR_SHIFT 2    /* Shift to the address bits */
-#define E1000_EEPROM_POLL_WRITE    1    /* Flag for polling for write
-					   complete */
-#define E1000_EEPROM_POLL_READ     0    /* Flag for polling for read complete */
-#define EEPROM_RESERVED_WORD          0xFFFF
-
-/* Register Bit Masks */
-/* Device Control */
-#define E1000_CTRL_FD	    0x00000001	/* Full duplex.0=half; 1=full */
-#define E1000_CTRL_BEM	    0x00000002	/* Endian Mode.0=little,1=big */
-#define E1000_CTRL_PRIOR    0x00000004	/* Priority on PCI. 0=rx,1=fair */
-#define E1000_CTRL_LRST     0x00000008	/* Link reset. 0=normal,1=reset */
-#define E1000_CTRL_TME	    0x00000010	/* Test mode. 0=normal,1=test */
-#define E1000_CTRL_SLE	    0x00000020	/* Serial Link on 0=dis,1=en */
-#define E1000_CTRL_ASDE     0x00000020	/* Auto-speed detect enable */
-#define E1000_CTRL_SLU	    0x00000040	/* Set link up (Force Link) */
-#define E1000_CTRL_ILOS     0x00000080	/* Invert Loss-Of Signal */
-#define E1000_CTRL_SPD_SEL  0x00000300	/* Speed Select Mask */
-#define E1000_CTRL_SPD_10   0x00000000	/* Force 10Mb */
-#define E1000_CTRL_SPD_100  0x00000100	/* Force 100Mb */
-#define E1000_CTRL_SPD_1000 0x00000200	/* Force 1Gb */
-#define E1000_CTRL_BEM32    0x00000400	/* Big Endian 32 mode */
-#define E1000_CTRL_FRCSPD   0x00000800	/* Force Speed */
-#define E1000_CTRL_FRCDPX   0x00001000	/* Force Duplex */
-#define E1000_CTRL_SWDPIN0  0x00040000	/* SWDPIN 0 value */
-#define E1000_CTRL_SWDPIN1  0x00080000	/* SWDPIN 1 value */
-#define E1000_CTRL_SWDPIN2  0x00100000	/* SWDPIN 2 value */
-#define E1000_CTRL_SWDPIN3  0x00200000	/* SWDPIN 3 value */
-#define E1000_CTRL_SWDPIO0  0x00400000	/* SWDPIN 0 Input or output */
-#define E1000_CTRL_SWDPIO1  0x00800000	/* SWDPIN 1 input or output */
-#define E1000_CTRL_SWDPIO2  0x01000000	/* SWDPIN 2 input or output */
-#define E1000_CTRL_SWDPIO3  0x02000000	/* SWDPIN 3 input or output */
-#define E1000_CTRL_RST	    0x04000000	/* Global reset */
-#define E1000_CTRL_RFCE     0x08000000	/* Receive Flow Control enable */
-#define E1000_CTRL_TFCE     0x10000000	/* Transmit flow control enable */
-#define E1000_CTRL_RTE	    0x20000000	/* Routing tag enable */
-#define E1000_CTRL_VME	    0x40000000	/* IEEE VLAN mode enable */
-#define E1000_CTRL_PHY_RST  0x80000000	/* PHY Reset */
-
-/* Device Status */
-#define E1000_STATUS_FD		0x00000001	/* Full duplex.0=half,1=full */
-#define E1000_STATUS_LU		0x00000002	/* Link up.0=no,1=link */
-#define E1000_STATUS_FUNC_MASK	0x0000000C	/* PCI Function Mask */
-#define E1000_STATUS_FUNC_0	0x00000000	/* Function 0 */
-#define E1000_STATUS_FUNC_1	0x00000004	/* Function 1 */
-#define E1000_STATUS_TXOFF	0x00000010	/* transmission paused */
-#define E1000_STATUS_TBIMODE	0x00000020	/* TBI mode */
-#define E1000_STATUS_SPEED_MASK 0x000000C0
-#define E1000_STATUS_SPEED_10	0x00000000	/* Speed 10Mb/s */
-#define E1000_STATUS_SPEED_100	0x00000040	/* Speed 100Mb/s */
-#define E1000_STATUS_SPEED_1000 0x00000080	/* Speed 1000Mb/s */
-#define E1000_STATUS_ASDV	0x00000300	/* Auto speed detect value */
-#define E1000_STATUS_MTXCKOK	0x00000400	/* MTX clock running OK */
-#define E1000_STATUS_PCI66	0x00000800	/* In 66Mhz slot */
-#define E1000_STATUS_BUS64	0x00001000	/* In 64 bit slot */
-#define E1000_STATUS_PCIX_MODE	0x00002000	/* PCI-X mode */
-#define E1000_STATUS_PCIX_SPEED 0x0000C000	/* PCI-X bus speed */
-#define E1000_STATUS_PF_RST_DONE 0x00200000	/* PCI-X bus speed */
-
-/* Constants used to intrepret the masked PCI-X bus speed. */
-#define E1000_STATUS_PCIX_SPEED_66  0x00000000	/* PCI-X bus speed  50-66 MHz */
-#define E1000_STATUS_PCIX_SPEED_100 0x00004000	/* PCI-X bus speed  66-100 MHz */
-#define E1000_STATUS_PCIX_SPEED_133 0x00008000	/* PCI-X bus speed 100-133 MHz */
-
-/* EEPROM/Flash Control */
-#define E1000_EECD_SK	     0x00000001	/* EEPROM Clock */
-#define E1000_EECD_CS	     0x00000002	/* EEPROM Chip Select */
-#define E1000_EECD_DI	     0x00000004	/* EEPROM Data In */
-#define E1000_EECD_DO	     0x00000008	/* EEPROM Data Out */
-#define E1000_EECD_FWE_MASK  0x00000030
-#define E1000_EECD_FWE_DIS   0x00000010	/* Disable FLASH writes */
-#define E1000_EECD_FWE_EN    0x00000020	/* Enable FLASH writes */
-#define E1000_EECD_FWE_SHIFT 4
-#define E1000_EECD_SIZE      0x00000200	/* EEPROM Size (0=64 word 1=256 word) */
-#define E1000_EECD_REQ	     0x00000040	/* EEPROM Access Request */
-#define E1000_EECD_GNT	     0x00000080	/* EEPROM Access Grant */
-#define E1000_EECD_PRES      0x00000100	/* EEPROM Present */
-#define E1000_EECD_ADDR_BITS 0x00000400 /* EEPROM Addressing bits based on type
-					 * (0-small, 1-large) */
-
-#define E1000_EECD_TYPE      0x00002000 /* EEPROM Type (1-SPI, 0-Microwire) */
-#ifndef E1000_EEPROM_GRANT_ATTEMPTS
-#define E1000_EEPROM_GRANT_ATTEMPTS 1000 /* EEPROM # attempts to gain grant */
-#endif
-#define E1000_EECD_AUTO_RD          0x00000200  /* EEPROM Auto Read done */
-#define E1000_EECD_SIZE_EX_MASK     0x00007800  /* EEprom Size */
-#define E1000_EECD_SIZE_EX_SHIFT    11
-#define E1000_EECD_NVADDS    0x00018000 /* NVM Address Size */
-#define E1000_EECD_SELSHAD   0x00020000 /* Select Shadow RAM */
-#define E1000_EECD_INITSRAM  0x00040000 /* Initialize Shadow RAM */
-#define E1000_EECD_FLUPD     0x00080000 /* Update FLASH */
-#define E1000_EECD_AUPDEN    0x00100000 /* Enable Autonomous FLASH update */
-#define E1000_EECD_SHADV     0x00200000 /* Shadow RAM Data Valid */
-#define E1000_EECD_SEC1VAL   0x00400000 /* Sector One Valid */
-#define E1000_EECD_SECVAL_SHIFT      22
-#define E1000_STM_OPCODE     0xDB00
-#define E1000_HICR_FW_RESET  0xC0
-
-#define E1000_SHADOW_RAM_WORDS     2048
-#define E1000_ICH_NVM_SIG_WORD     0x13
-#define E1000_ICH_NVM_SIG_MASK     0xC0
-
-/* EEPROM Read */
-#define E1000_EERD_START      0x00000001	/* Start Read */
-#define E1000_EERD_DONE       0x00000010	/* Read Done */
-#define E1000_EERD_ADDR_SHIFT 8
-#define E1000_EERD_ADDR_MASK  0x0000FF00	/* Read Address */
-#define E1000_EERD_DATA_SHIFT 16
-#define E1000_EERD_DATA_MASK  0xFFFF0000	/* Read Data */
-
-/* EEPROM Commands - Microwire */
-#define EEPROM_READ_OPCODE_MICROWIRE  0x6  /* EEPROM read opcode */
-#define EEPROM_WRITE_OPCODE_MICROWIRE 0x5  /* EEPROM write opcode */
-#define EEPROM_ERASE_OPCODE_MICROWIRE 0x7  /* EEPROM erase opcode */
-#define EEPROM_EWEN_OPCODE_MICROWIRE  0x13 /* EEPROM erase/write enable */
-#define EEPROM_EWDS_OPCODE_MICROWIRE  0x10 /* EEPROM erast/write disable */
-
-/* EEPROM Commands - SPI */
-#define EEPROM_MAX_RETRY_SPI        5000 /* Max wait of 5ms, for RDY signal */
-#define EEPROM_READ_OPCODE_SPI      0x03  /* EEPROM read opcode */
-#define EEPROM_WRITE_OPCODE_SPI     0x02  /* EEPROM write opcode */
-#define EEPROM_A8_OPCODE_SPI        0x08  /* opcode bit-3 = address bit-8 */
-#define EEPROM_WREN_OPCODE_SPI      0x06  /* EEPROM set Write Enable latch */
-#define EEPROM_WRDI_OPCODE_SPI      0x04  /* EEPROM reset Write Enable latch */
-#define EEPROM_RDSR_OPCODE_SPI      0x05  /* EEPROM read Status register */
-#define EEPROM_WRSR_OPCODE_SPI      0x01  /* EEPROM write Status register */
-#define EEPROM_ERASE4K_OPCODE_SPI   0x20  /* EEPROM ERASE 4KB */
-#define EEPROM_ERASE64K_OPCODE_SPI  0xD8  /* EEPROM ERASE 64KB */
-#define EEPROM_ERASE256_OPCODE_SPI  0xDB  /* EEPROM ERASE 256B */
-
-/* EEPROM Size definitions */
-#define EEPROM_WORD_SIZE_SHIFT  6
-#define EEPROM_SIZE_SHIFT       10
-#define EEPROM_SIZE_MASK        0x1C00
-
-/* EEPROM Word Offsets */
-#define EEPROM_COMPAT                 0x0003
-#define EEPROM_ID_LED_SETTINGS        0x0004
-#define EEPROM_VERSION                0x0005
-#define EEPROM_SERDES_AMPLITUDE       0x0006 /* For SERDES output amplitude
-						adjustment. */
-#define EEPROM_PHY_CLASS_WORD         0x0007
-#define EEPROM_INIT_CONTROL1_REG      0x000A
-#define EEPROM_INIT_CONTROL2_REG      0x000F
-#define EEPROM_SWDEF_PINS_CTRL_PORT_1 0x0010
-#define EEPROM_INIT_CONTROL3_PORT_B   0x0014
-#define EEPROM_INIT_3GIO_3            0x001A
-#define EEPROM_SWDEF_PINS_CTRL_PORT_0 0x0020
-#define EEPROM_INIT_CONTROL3_PORT_A   0x0024
-#define EEPROM_CFG                    0x0012
-#define EEPROM_FLASH_VERSION          0x0032
-#define EEPROM_CHECKSUM_REG           0x003F
-
-#define E1000_EEPROM_CFG_DONE         0x00040000   /* MNG config cycle done */
-#define E1000_EEPROM_CFG_DONE_PORT_1  0x00080000   /* ...for second port */
-
-/* Extended Device Control */
-#define E1000_CTRL_EXT_GPI0_EN	 0x00000001	/* Maps SDP4 to GPI0 */
-#define E1000_CTRL_EXT_GPI1_EN	 0x00000002	/* Maps SDP5 to GPI1 */
-#define E1000_CTRL_EXT_PHYINT_EN E1000_CTRL_EXT_GPI1_EN
-#define E1000_CTRL_EXT_GPI2_EN	 0x00000004	/* Maps SDP6 to GPI2 */
-#define E1000_CTRL_EXT_GPI3_EN	 0x00000008	/* Maps SDP7 to GPI3 */
-#define E1000_CTRL_EXT_SDP4_DATA 0x00000010	/* Value of SW Defineable
-						   Pin 4 */
-#define E1000_CTRL_EXT_SDP5_DATA 0x00000020	/* Value of SW Defineable
-						   Pin 5 */
-#define E1000_CTRL_EXT_PHY_INT	 E1000_CTRL_EXT_SDP5_DATA
-#define E1000_CTRL_EXT_SDP6_DATA 0x00000040	/* Value of SW Defineable Pin 6 */
-#define E1000_CTRL_EXT_SWDPIN6	 0x00000040	/* SWDPIN 6 value */
-#define E1000_CTRL_EXT_SDP7_DATA 0x00000080	/* Value of SW Defineable Pin 7 */
-#define E1000_CTRL_EXT_SWDPIN7	 0x00000080	/* SWDPIN 7 value */
-#define E1000_CTRL_EXT_SDP4_DIR  0x00000100	/* Direction of SDP4 0=in 1=out */
-#define E1000_CTRL_EXT_SDP5_DIR  0x00000200	/* Direction of SDP5 0=in 1=out */
-#define E1000_CTRL_EXT_SDP6_DIR  0x00000400	/* Direction of SDP6 0=in 1=out */
-#define E1000_CTRL_EXT_SWDPIO6	 0x00000400	/* SWDPIN 6 Input or output */
-#define E1000_CTRL_EXT_SDP7_DIR  0x00000800	/* Direction of SDP7 0=in 1=out */
-#define E1000_CTRL_EXT_SWDPIO7	 0x00000800	/* SWDPIN 7 Input or output */
-#define E1000_CTRL_EXT_ASDCHK	 0x00001000	/* Initiate an ASD sequence */
-#define E1000_CTRL_EXT_EE_RST	 0x00002000	/* Reinitialize from EEPROM */
-#define E1000_CTRL_EXT_IPS	 0x00004000	/* Invert Power State */
-#define E1000_CTRL_EXT_SPD_BYPS  0x00008000	/* Speed Select Bypass */
-#define E1000_CTRL_EXT_RO_DIS    0x00020000 /* Relaxed Ordering disable */
-#define E1000_CTRL_EXT_LINK_MODE_MASK 0x00C00000
-#define E1000_CTRL_EXT_LINK_MODE_GMII 0x00000000
-#define E1000_CTRL_EXT_LINK_MODE_TBI  0x00C00000
-#define E1000_CTRL_EXT_WR_WMARK_MASK  0x03000000
-#define E1000_CTRL_EXT_WR_WMARK_256   0x00000000
-#define E1000_CTRL_EXT_WR_WMARK_320   0x01000000
-#define E1000_CTRL_EXT_WR_WMARK_384   0x02000000
-#define E1000_CTRL_EXT_WR_WMARK_448   0x03000000
-
-/* MDI Control */
-#define E1000_MDIC_DATA_MASK 0x0000FFFF
-#define E1000_MDIC_REG_MASK  0x001F0000
-#define E1000_MDIC_REG_SHIFT 16
-#define E1000_MDIC_PHY_MASK  0x03E00000
-#define E1000_MDIC_PHY_SHIFT 21
-#define E1000_MDIC_OP_WRITE  0x04000000
-#define E1000_MDIC_OP_READ   0x08000000
-#define E1000_MDIC_READY     0x10000000
-#define E1000_MDIC_INT_EN    0x20000000
-#define E1000_MDIC_ERROR     0x40000000
-
-#define E1000_PHY_CTRL_SPD_EN                  0x00000001
-#define E1000_PHY_CTRL_D0A_LPLU                0x00000002
-#define E1000_PHY_CTRL_NOND0A_LPLU             0x00000004
-#define E1000_PHY_CTRL_NOND0A_GBE_DISABLE      0x00000008
-#define E1000_PHY_CTRL_GBE_DISABLE             0x00000040
-#define E1000_PHY_CTRL_B2B_EN                  0x00000080
-/* LED Control */
-#define E1000_LEDCTL_LED0_MODE_MASK  0x0000000F
-#define E1000_LEDCTL_LED0_MODE_SHIFT 0
-#define E1000_LEDCTL_LED0_IVRT	     0x00000040
-#define E1000_LEDCTL_LED0_BLINK      0x00000080
-#define E1000_LEDCTL_LED1_MODE_MASK  0x00000F00
-#define E1000_LEDCTL_LED1_MODE_SHIFT 8
-#define E1000_LEDCTL_LED1_IVRT	     0x00004000
-#define E1000_LEDCTL_LED1_BLINK      0x00008000
-#define E1000_LEDCTL_LED2_MODE_MASK  0x000F0000
-#define E1000_LEDCTL_LED2_MODE_SHIFT 16
-#define E1000_LEDCTL_LED2_IVRT	     0x00400000
-#define E1000_LEDCTL_LED2_BLINK      0x00800000
-#define E1000_LEDCTL_LED3_MODE_MASK  0x0F000000
-#define E1000_LEDCTL_LED3_MODE_SHIFT 24
-#define E1000_LEDCTL_LED3_IVRT	     0x40000000
-#define E1000_LEDCTL_LED3_BLINK      0x80000000
-
-#define E1000_LEDCTL_MODE_LINK_10_1000	0x0
-#define E1000_LEDCTL_MODE_LINK_100_1000 0x1
-#define E1000_LEDCTL_MODE_LINK_UP	0x2
-#define E1000_LEDCTL_MODE_ACTIVITY	0x3
-#define E1000_LEDCTL_MODE_LINK_ACTIVITY 0x4
-#define E1000_LEDCTL_MODE_LINK_10	0x5
-#define E1000_LEDCTL_MODE_LINK_100	0x6
-#define E1000_LEDCTL_MODE_LINK_1000	0x7
-#define E1000_LEDCTL_MODE_PCIX_MODE	0x8
-#define E1000_LEDCTL_MODE_FULL_DUPLEX	0x9
-#define E1000_LEDCTL_MODE_COLLISION	0xA
-#define E1000_LEDCTL_MODE_BUS_SPEED	0xB
-#define E1000_LEDCTL_MODE_BUS_SIZE	0xC
-#define E1000_LEDCTL_MODE_PAUSED	0xD
-#define E1000_LEDCTL_MODE_LED_ON	0xE
-#define E1000_LEDCTL_MODE_LED_OFF	0xF
-
-/* Receive Address */
-#define E1000_RAH_AV  0x80000000	/* Receive descriptor valid */
-
-/* Interrupt Cause Read */
-#define E1000_ICR_TXDW	  0x00000001	/* Transmit desc written back */
-#define E1000_ICR_TXQE	  0x00000002	/* Transmit Queue empty */
-#define E1000_ICR_LSC	  0x00000004	/* Link Status Change */
-#define E1000_ICR_RXSEQ   0x00000008	/* rx sequence error */
-#define E1000_ICR_RXDMT0  0x00000010	/* rx desc min. threshold (0) */
-#define E1000_ICR_RXO	  0x00000040	/* rx overrun */
-#define E1000_ICR_RXT0	  0x00000080	/* rx timer intr (ring 0) */
-#define E1000_ICR_MDAC	  0x00000200	/* MDIO access complete */
-#define E1000_ICR_RXCFG   0x00000400	/* RX /c/ ordered set */
-#define E1000_ICR_GPI_EN0 0x00000800	/* GP Int 0 */
-#define E1000_ICR_GPI_EN1 0x00001000	/* GP Int 1 */
-#define E1000_ICR_GPI_EN2 0x00002000	/* GP Int 2 */
-#define E1000_ICR_GPI_EN3 0x00004000	/* GP Int 3 */
-#define E1000_ICR_TXD_LOW 0x00008000
-#define E1000_ICR_SRPD	  0x00010000
-
-/* Interrupt Cause Set */
-#define E1000_ICS_TXDW	  E1000_ICR_TXDW	/* Transmit desc written back */
-#define E1000_ICS_TXQE	  E1000_ICR_TXQE	/* Transmit Queue empty */
-#define E1000_ICS_LSC	  E1000_ICR_LSC	/* Link Status Change */
-#define E1000_ICS_RXSEQ   E1000_ICR_RXSEQ	/* rx sequence error */
-#define E1000_ICS_RXDMT0  E1000_ICR_RXDMT0	/* rx desc min. threshold */
-#define E1000_ICS_RXO	  E1000_ICR_RXO	/* rx overrun */
-#define E1000_ICS_RXT0	  E1000_ICR_RXT0	/* rx timer intr */
-#define E1000_ICS_MDAC	  E1000_ICR_MDAC	/* MDIO access complete */
-#define E1000_ICS_RXCFG   E1000_ICR_RXCFG	/* RX /c/ ordered set */
-#define E1000_ICS_GPI_EN0 E1000_ICR_GPI_EN0	/* GP Int 0 */
-#define E1000_ICS_GPI_EN1 E1000_ICR_GPI_EN1	/* GP Int 1 */
-#define E1000_ICS_GPI_EN2 E1000_ICR_GPI_EN2	/* GP Int 2 */
-#define E1000_ICS_GPI_EN3 E1000_ICR_GPI_EN3	/* GP Int 3 */
-#define E1000_ICS_TXD_LOW E1000_ICR_TXD_LOW
-#define E1000_ICS_SRPD	  E1000_ICR_SRPD
-
-/* Interrupt Mask Set */
-#define E1000_IMS_TXDW	  E1000_ICR_TXDW	/* Transmit desc written back */
-#define E1000_IMS_TXQE	  E1000_ICR_TXQE	/* Transmit Queue empty */
-#define E1000_IMS_LSC	  E1000_ICR_LSC	/* Link Status Change */
-#define E1000_IMS_RXSEQ   E1000_ICR_RXSEQ	/* rx sequence error */
-#define E1000_IMS_RXDMT0  E1000_ICR_RXDMT0	/* rx desc min. threshold */
-#define E1000_IMS_RXO	  E1000_ICR_RXO	/* rx overrun */
-#define E1000_IMS_RXT0	  E1000_ICR_RXT0	/* rx timer intr */
-#define E1000_IMS_MDAC	  E1000_ICR_MDAC	/* MDIO access complete */
-#define E1000_IMS_RXCFG   E1000_ICR_RXCFG	/* RX /c/ ordered set */
-#define E1000_IMS_GPI_EN0 E1000_ICR_GPI_EN0	/* GP Int 0 */
-#define E1000_IMS_GPI_EN1 E1000_ICR_GPI_EN1	/* GP Int 1 */
-#define E1000_IMS_GPI_EN2 E1000_ICR_GPI_EN2	/* GP Int 2 */
-#define E1000_IMS_GPI_EN3 E1000_ICR_GPI_EN3	/* GP Int 3 */
-#define E1000_IMS_TXD_LOW E1000_ICR_TXD_LOW
-#define E1000_IMS_SRPD	  E1000_ICR_SRPD
-
-/* Interrupt Mask Clear */
-#define E1000_IMC_TXDW	  E1000_ICR_TXDW	/* Transmit desc written back */
-#define E1000_IMC_TXQE	  E1000_ICR_TXQE	/* Transmit Queue empty */
-#define E1000_IMC_LSC	  E1000_ICR_LSC	/* Link Status Change */
-#define E1000_IMC_RXSEQ   E1000_ICR_RXSEQ	/* rx sequence error */
-#define E1000_IMC_RXDMT0  E1000_ICR_RXDMT0	/* rx desc min. threshold */
-#define E1000_IMC_RXO	  E1000_ICR_RXO	/* rx overrun */
-#define E1000_IMC_RXT0	  E1000_ICR_RXT0	/* rx timer intr */
-#define E1000_IMC_MDAC	  E1000_ICR_MDAC	/* MDIO access complete */
-#define E1000_IMC_RXCFG   E1000_ICR_RXCFG	/* RX /c/ ordered set */
-#define E1000_IMC_GPI_EN0 E1000_ICR_GPI_EN0	/* GP Int 0 */
-#define E1000_IMC_GPI_EN1 E1000_ICR_GPI_EN1	/* GP Int 1 */
-#define E1000_IMC_GPI_EN2 E1000_ICR_GPI_EN2	/* GP Int 2 */
-#define E1000_IMC_GPI_EN3 E1000_ICR_GPI_EN3	/* GP Int 3 */
-#define E1000_IMC_TXD_LOW E1000_ICR_TXD_LOW
-#define E1000_IMC_SRPD	  E1000_ICR_SRPD
-
-/* Receive Control */
-#define E1000_RCTL_RST		0x00000001	/* Software reset */
-#define E1000_RCTL_EN		0x00000002	/* enable */
-#define E1000_RCTL_SBP		0x00000004	/* store bad packet */
-#define E1000_RCTL_UPE		0x00000008	/* unicast promiscuous enable */
-#define E1000_RCTL_MPE		0x00000010	/* multicast promiscuous enab */
-#define E1000_RCTL_LPE		0x00000020	/* long packet enable */
-#define E1000_RCTL_LBM_NO	0x00000000	/* no loopback mode */
-#define E1000_RCTL_LBM_MAC	0x00000040	/* MAC loopback mode */
-#define E1000_RCTL_LBM_SLP	0x00000080	/* serial link loopback mode */
-#define E1000_RCTL_LBM_TCVR	0x000000C0	/* tcvr loopback mode */
-#define E1000_RCTL_RDMTS_HALF	0x00000000	/* rx desc min threshold size */
-#define E1000_RCTL_RDMTS_QUAT	0x00000100	/* rx desc min threshold size */
-#define E1000_RCTL_RDMTS_EIGTH	0x00000200	/* rx desc min threshold size */
-#define E1000_RCTL_MO_SHIFT	12	/* multicast offset shift */
-#define E1000_RCTL_MO_0		0x00000000	/* multicast offset 11:0 */
-#define E1000_RCTL_MO_1		0x00001000	/* multicast offset 12:1 */
-#define E1000_RCTL_MO_2		0x00002000	/* multicast offset 13:2 */
-#define E1000_RCTL_MO_3		0x00003000	/* multicast offset 15:4 */
-#define E1000_RCTL_MDR		0x00004000	/* multicast desc ring 0 */
-#define E1000_RCTL_BAM		0x00008000	/* broadcast enable */
-/* these buffer sizes are valid if E1000_RCTL_BSEX is 0 */
-#define E1000_RCTL_SZ_2048	0x00000000	/* rx buffer size 2048 */
-#define E1000_RCTL_SZ_1024	0x00010000	/* rx buffer size 1024 */
-#define E1000_RCTL_SZ_512	0x00020000	/* rx buffer size 512 */
-#define E1000_RCTL_SZ_256	0x00030000	/* rx buffer size 256 */
-/* these buffer sizes are valid if E1000_RCTL_BSEX is 1 */
-#define E1000_RCTL_SZ_16384	0x00010000	/* rx buffer size 16384 */
-#define E1000_RCTL_SZ_8192	0x00020000	/* rx buffer size 8192 */
-#define E1000_RCTL_SZ_4096	0x00030000	/* rx buffer size 4096 */
-#define E1000_RCTL_VFE		0x00040000	/* vlan filter enable */
-#define E1000_RCTL_CFIEN	0x00080000	/* canonical form enable */
-#define E1000_RCTL_CFI		0x00100000	/* canonical form indicator */
-#define E1000_RCTL_DPF		0x00400000	/* discard pause frames */
-#define E1000_RCTL_PMCF		0x00800000	/* pass MAC control frames */
-#define E1000_RCTL_BSEX		0x02000000	/* Buffer size extension */
-
-/* SW_W_SYNC definitions */
-#define E1000_SWFW_EEP_SM     0x0001
-#define E1000_SWFW_PHY0_SM    0x0002
-#define E1000_SWFW_PHY1_SM    0x0004
-#define E1000_SWFW_MAC_CSR_SM 0x0008
-
-/* Receive Descriptor */
-#define E1000_RDT_DELAY 0x0000ffff	/* Delay timer (1=1024us) */
-#define E1000_RDT_FPDB	0x80000000	/* Flush descriptor block */
-#define E1000_RDLEN_LEN 0x0007ff80	/* descriptor length */
-#define E1000_RDH_RDH	0x0000ffff	/* receive descriptor head */
-#define E1000_RDT_RDT	0x0000ffff	/* receive descriptor tail */
-
-/* Flow Control */
-#define E1000_FCRTH_RTH  0x0000FFF8	/* Mask Bits[15:3] for RTH */
-#define E1000_FCRTH_XFCE 0x80000000	/* External Flow Control Enable */
-#define E1000_FCRTL_RTL  0x0000FFF8	/* Mask Bits[15:3] for RTL */
-#define E1000_FCRTL_XONE 0x80000000	/* Enable XON frame transmission */
-
-/* Receive Descriptor Control */
-#define E1000_RXDCTL_PTHRESH 0x0000003F	/* RXDCTL Prefetch Threshold */
-#define E1000_RXDCTL_HTHRESH 0x00003F00	/* RXDCTL Host Threshold */
-#define E1000_RXDCTL_WTHRESH 0x003F0000	/* RXDCTL Writeback Threshold */
-#define E1000_RXDCTL_GRAN    0x01000000	/* RXDCTL Granularity */
-#define E1000_RXDCTL_FULL_RX_DESC_WB 0x01010000	/* GRAN=1, WTHRESH=1 */
-
-/* Transmit Descriptor Control */
-#define E1000_TXDCTL_PTHRESH 0x0000003F	/* TXDCTL Prefetch Threshold */
-#define E1000_TXDCTL_HTHRESH 0x00003F00	/* TXDCTL Host Threshold */
-#define E1000_TXDCTL_WTHRESH 0x003F0000	/* TXDCTL Writeback Threshold */
-#define E1000_TXDCTL_GRAN    0x01000000	/* TXDCTL Granularity */
-#define E1000_TXDCTL_LWTHRESH 0xFE000000	/* TXDCTL Low Threshold */
-#define E1000_TXDCTL_FULL_TX_DESC_WB 0x01010000	/* GRAN=1, WTHRESH=1 */
-#define E1000_TXDCTL_COUNT_DESC 0x00400000 /* Enable the counting of desc.
-					      still to be processed. */
-
-/* Transmit Configuration Word */
-#define E1000_TXCW_FD	      0x00000020	/* TXCW full duplex */
-#define E1000_TXCW_HD	      0x00000040	/* TXCW half duplex */
-#define E1000_TXCW_PAUSE      0x00000080	/* TXCW sym pause request */
-#define E1000_TXCW_ASM_DIR    0x00000100	/* TXCW astm pause direction */
-#define E1000_TXCW_PAUSE_MASK 0x00000180	/* TXCW pause request mask */
-#define E1000_TXCW_RF	      0x00003000	/* TXCW remote fault */
-#define E1000_TXCW_NP	      0x00008000	/* TXCW next page */
-#define E1000_TXCW_CW	      0x0000ffff	/* TxConfigWord mask */
-#define E1000_TXCW_TXC	      0x40000000	/* Transmit Config control */
-#define E1000_TXCW_ANE	      0x80000000	/* Auto-neg enable */
-
-/* Receive Configuration Word */
-#define E1000_RXCW_CW	 0x0000ffff	/* RxConfigWord mask */
-#define E1000_RXCW_NC	 0x04000000	/* Receive config no carrier */
-#define E1000_RXCW_IV	 0x08000000	/* Receive config invalid */
-#define E1000_RXCW_CC	 0x10000000	/* Receive config change */
-#define E1000_RXCW_C	 0x20000000	/* Receive config */
-#define E1000_RXCW_SYNCH 0x40000000	/* Receive config synch */
-#define E1000_RXCW_ANC	 0x80000000	/* Auto-neg complete */
-
-/* Transmit Control */
-#define E1000_TCTL_RST	  0x00000001	/* software reset */
-#define E1000_TCTL_EN	  0x00000002	/* enable tx */
-#define E1000_TCTL_BCE	  0x00000004	/* busy check enable */
-#define E1000_TCTL_PSP	  0x00000008	/* pad short packets */
-#define E1000_TCTL_CT	  0x00000ff0	/* collision threshold */
-#define E1000_TCTL_COLD   0x003ff000	/* collision distance */
-#define E1000_TCTL_SWXOFF 0x00400000	/* SW Xoff transmission */
-#define E1000_TCTL_PBE	  0x00800000	/* Packet Burst Enable */
-#define E1000_TCTL_RTLC   0x01000000	/* Re-transmit on late collision */
-#define E1000_TCTL_NRTU   0x02000000	/* No Re-transmit on underrun */
-#define E1000_TCTL_MULR   0x10000000    /* Multiple request support */
-
-/* Receive Checksum Control */
-#define E1000_RXCSUM_PCSS_MASK 0x000000FF	/* Packet Checksum Start */
-#define E1000_RXCSUM_IPOFL     0x00000100	/* IPv4 checksum offload */
-#define E1000_RXCSUM_TUOFL     0x00000200	/* TCP / UDP checksum offload */
-#define E1000_RXCSUM_IPV6OFL   0x00000400	/* IPv6 checksum offload */
-
-/* Definitions for power management and wakeup registers */
-/* Wake Up Control */
-#define E1000_WUC_APME	     0x00000001	/* APM Enable */
-#define E1000_WUC_PME_EN     0x00000002	/* PME Enable */
-#define E1000_WUC_PME_STATUS 0x00000004	/* PME Status */
-#define E1000_WUC_APMPME     0x00000008	/* Assert PME on APM Wakeup */
-
-/* Wake Up Filter Control */
-#define E1000_WUFC_LNKC 0x00000001	/* Link Status Change Wakeup Enable */
-#define E1000_WUFC_MAG	0x00000002	/* Magic Packet Wakeup Enable */
-#define E1000_WUFC_EX	0x00000004	/* Directed Exact Wakeup Enable */
-#define E1000_WUFC_MC	0x00000008	/* Directed Multicast Wakeup Enable */
-#define E1000_WUFC_BC	0x00000010	/* Broadcast Wakeup Enable */
-#define E1000_WUFC_ARP	0x00000020	/* ARP Request Packet Wakeup Enable */
-#define E1000_WUFC_IPV4 0x00000040	/* Directed IPv4 Packet Wakeup Enable */
-#define E1000_WUFC_IPV6 0x00000080	/* Directed IPv6 Packet Wakeup Enable */
-#define E1000_WUFC_FLX0 0x00010000	/* Flexible Filter 0 Enable */
-#define E1000_WUFC_FLX1 0x00020000	/* Flexible Filter 1 Enable */
-#define E1000_WUFC_FLX2 0x00040000	/* Flexible Filter 2 Enable */
-#define E1000_WUFC_FLX3 0x00080000	/* Flexible Filter 3 Enable */
-#define E1000_WUFC_ALL_FILTERS 0x000F00FF	/* Mask for all wakeup filters */
-#define E1000_WUFC_FLX_OFFSET 16	/* Offset to the Flexible Filters bits */
-#define E1000_WUFC_FLX_FILTERS 0x000F0000	/* Mask for the 4 flexible filters */
-
-/* Wake Up Status */
-#define E1000_WUS_LNKC 0x00000001	/* Link Status Changed */
-#define E1000_WUS_MAG  0x00000002	/* Magic Packet Received */
-#define E1000_WUS_EX   0x00000004	/* Directed Exact Received */
-#define E1000_WUS_MC   0x00000008	/* Directed Multicast Received */
-#define E1000_WUS_BC   0x00000010	/* Broadcast Received */
-#define E1000_WUS_ARP  0x00000020	/* ARP Request Packet Received */
-#define E1000_WUS_IPV4 0x00000040	/* Directed IPv4 Packet Wakeup Received */
-#define E1000_WUS_IPV6 0x00000080	/* Directed IPv6 Packet Wakeup Received */
-#define E1000_WUS_FLX0 0x00010000	/* Flexible Filter 0 Match */
-#define E1000_WUS_FLX1 0x00020000	/* Flexible Filter 1 Match */
-#define E1000_WUS_FLX2 0x00040000	/* Flexible Filter 2 Match */
-#define E1000_WUS_FLX3 0x00080000	/* Flexible Filter 3 Match */
-#define E1000_WUS_FLX_FILTERS 0x000F0000	/* Mask for the 4 flexible filters */
-
-/* Management Control */
-#define E1000_MANC_SMBUS_EN	 0x00000001	/* SMBus Enabled - RO */
-#define E1000_MANC_ASF_EN	 0x00000002	/* ASF Enabled - RO */
-#define E1000_MANC_R_ON_FORCE	 0x00000004	/* Reset on Force TCO - RO */
-#define E1000_MANC_RMCP_EN	 0x00000100	/* Enable RCMP 026Fh Filtering */
-#define E1000_MANC_0298_EN	 0x00000200	/* Enable RCMP 0298h Filtering */
-#define E1000_MANC_IPV4_EN	 0x00000400	/* Enable IPv4 */
-#define E1000_MANC_IPV6_EN	 0x00000800	/* Enable IPv6 */
-#define E1000_MANC_SNAP_EN	 0x00001000	/* Accept LLC/SNAP */
-#define E1000_MANC_ARP_EN	 0x00002000	/* Enable ARP Request Filtering */
-#define E1000_MANC_NEIGHBOR_EN	 0x00004000	/* Enable Neighbor Discovery
-						 * Filtering */
-#define E1000_MANC_TCO_RESET	 0x00010000	/* TCO Reset Occurred */
-#define E1000_MANC_RCV_TCO_EN	 0x00020000	/* Receive TCO Packets Enabled */
-#define E1000_MANC_REPORT_STATUS 0x00040000	/* Status Reporting Enabled */
-#define E1000_MANC_SMB_REQ	 0x01000000	/* SMBus Request */
-#define E1000_MANC_SMB_GNT	 0x02000000	/* SMBus Grant */
-#define E1000_MANC_SMB_CLK_IN	 0x04000000	/* SMBus Clock In */
-#define E1000_MANC_SMB_DATA_IN	 0x08000000	/* SMBus Data In */
-#define E1000_MANC_SMB_DATA_OUT  0x10000000	/* SMBus Data Out */
-#define E1000_MANC_SMB_CLK_OUT	 0x20000000	/* SMBus Clock Out */
-
-#define E1000_MANC_SMB_DATA_OUT_SHIFT  28	/* SMBus Data Out Shift */
-#define E1000_MANC_SMB_CLK_OUT_SHIFT   29	/* SMBus Clock Out Shift */
-
-/* Wake Up Packet Length */
-#define E1000_WUPL_LENGTH_MASK 0x0FFF	/* Only the lower 12 bits are valid */
-
-#define E1000_MDALIGN	       4096
-
-/* EEPROM Commands */
-#define EEPROM_READ_OPCODE  0x6	/* EERPOM read opcode */
-#define EEPROM_WRITE_OPCODE 0x5	/* EERPOM write opcode */
-#define EEPROM_ERASE_OPCODE 0x7	/* EERPOM erase opcode */
-#define EEPROM_EWEN_OPCODE  0x13	/* EERPOM erase/write enable */
-#define EEPROM_EWDS_OPCODE  0x10	/* EERPOM erast/write disable */
-
-/* Word definitions for ID LED Settings */
-#define ID_LED_RESERVED_0000 0x0000
-#define ID_LED_RESERVED_FFFF 0xFFFF
-#define ID_LED_DEFAULT	     ((ID_LED_OFF1_ON2 << 12) | \
-			      (ID_LED_OFF1_OFF2 << 8) | \
-			      (ID_LED_DEF1_DEF2 << 4) | \
-			      (ID_LED_DEF1_DEF2))
-#define ID_LED_DEF1_DEF2     0x1
-#define ID_LED_DEF1_ON2      0x2
-#define ID_LED_DEF1_OFF2     0x3
-#define ID_LED_ON1_DEF2      0x4
-#define ID_LED_ON1_ON2	     0x5
-#define ID_LED_ON1_OFF2      0x6
-#define ID_LED_OFF1_DEF2     0x7
-#define ID_LED_OFF1_ON2      0x8
-#define ID_LED_OFF1_OFF2     0x9
-
-/* Mask bits for fields in Word 0x03 of the EEPROM */
-#define EEPROM_COMPAT_SERVER 0x0400
-#define EEPROM_COMPAT_CLIENT 0x0200
-
-/* Mask bits for fields in Word 0x0a of the EEPROM */
-#define EEPROM_WORD0A_ILOS   0x0010
-#define EEPROM_WORD0A_SWDPIO 0x01E0
-#define EEPROM_WORD0A_LRST   0x0200
-#define EEPROM_WORD0A_FD     0x0400
-#define EEPROM_WORD0A_66MHZ  0x0800
-
-/* Mask bits for fields in Word 0x0f of the EEPROM */
-#define EEPROM_WORD0F_PAUSE_MASK 0x3000
-#define EEPROM_WORD0F_PAUSE	 0x1000
-#define EEPROM_WORD0F_ASM_DIR	 0x2000
-#define EEPROM_WORD0F_ANE	 0x0800
-#define EEPROM_WORD0F_SWPDIO_EXT 0x00F0
-
-/* For checksumming, the sum of all words in the EEPROM should equal 0xBABA. */
-#define EEPROM_SUM 0xBABA
-
-/* EEPROM Map defines (WORD OFFSETS)*/
-#define EEPROM_NODE_ADDRESS_BYTE_0 0
-#define EEPROM_PBA_BYTE_1	   8
-
-/* EEPROM Map Sizes (Byte Counts) */
-#define PBA_SIZE 4
-
-/* Collision related configuration parameters */
-#define E1000_COLLISION_THRESHOLD	0xF
-#define E1000_CT_SHIFT			4
-#define E1000_COLLISION_DISTANCE        63
-#define E1000_COLLISION_DISTANCE_82542  64
-#define E1000_FDX_COLLISION_DISTANCE	E1000_COLLISION_DISTANCE
-#define E1000_HDX_COLLISION_DISTANCE	E1000_COLLISION_DISTANCE
-#define E1000_GB_HDX_COLLISION_DISTANCE 512
-#define E1000_COLD_SHIFT		12
-
-/* The number of Transmit and Receive Descriptors must be a multiple of 8 */
-#define REQ_TX_DESCRIPTOR_MULTIPLE  8
-#define REQ_RX_DESCRIPTOR_MULTIPLE  8
-
-/* Default values for the transmit IPG register */
-#define DEFAULT_82542_TIPG_IPGT        10
-#define DEFAULT_82543_TIPG_IPGT_FIBER  9
-#define DEFAULT_82543_TIPG_IPGT_COPPER 8
-
-#define E1000_TIPG_IPGT_MASK  0x000003FF
-#define E1000_TIPG_IPGR1_MASK 0x000FFC00
-#define E1000_TIPG_IPGR2_MASK 0x3FF00000
-
-#define DEFAULT_82542_TIPG_IPGR1 2
-#define DEFAULT_82543_TIPG_IPGR1 8
-#define E1000_TIPG_IPGR1_SHIFT	10
-
-#define DEFAULT_82542_TIPG_IPGR2 10
-#define DEFAULT_82543_TIPG_IPGR2 6
-#define DEFAULT_80003ES2LAN_TIPG_IPGR2 7
-#define E1000_TIPG_IPGR2_SHIFT	20
-
-#define E1000_TXDMAC_DPP 0x00000001
-
-/* Adaptive IFS defines */
-#define TX_THRESHOLD_START     8
-#define TX_THRESHOLD_INCREMENT 10
-#define TX_THRESHOLD_DECREMENT 1
-#define TX_THRESHOLD_STOP      190
-#define TX_THRESHOLD_DISABLE   0
-#define TX_THRESHOLD_TIMER_MS  10000
-#define MIN_NUM_XMITS	       1000
-#define IFS_MAX		       80
-#define IFS_STEP	       10
-#define IFS_MIN		       40
-#define IFS_RATIO	       4
-
-/* PBA constants */
-#define E1000_PBA_16K 0x0010	/* 16KB, default TX allocation */
-#define E1000_PBA_24K 0x0018
-#define E1000_PBA_38K 0x0026
-#define E1000_PBA_40K 0x0028
-#define E1000_PBA_48K 0x0030	/* 48KB, default RX allocation */
-
-/* Flow Control Constants */
-#define FLOW_CONTROL_ADDRESS_LOW  0x00C28001
-#define FLOW_CONTROL_ADDRESS_HIGH 0x00000100
-#define FLOW_CONTROL_TYPE	  0x8808
-
-/* The historical defaults for the flow control values are given below. */
-#define FC_DEFAULT_HI_THRESH	    (0x8000)	/* 32KB */
-#define FC_DEFAULT_LO_THRESH	    (0x4000)	/* 16KB */
-#define FC_DEFAULT_TX_TIMER	    (0x100)	/* ~130 us */
-
-/* Flow Control High-Watermark: 43464 bytes */
-#define E1000_FC_HIGH_THRESH 0xA9C8
-/* Flow Control Low-Watermark: 43456 bytes */
-#define E1000_FC_LOW_THRESH 0xA9C0
-/* Flow Control Pause Time: 858 usec */
-#define E1000_FC_PAUSE_TIME 0x0680
-
-/* The number of bits that we need to shift right to move the "pause"
- * bits from the EEPROM (bits 13:12) to the "pause" (bits 8:7) field
- * in the TXCW register
- */
-#define PAUSE_SHIFT 5
-
-/* The number of bits that we need to shift left to move the "SWDPIO"
- * bits from the EEPROM (bits 8:5) to the "SWDPIO" (bits 25:22) field
- * in the CTRL register
- */
-#define SWDPIO_SHIFT 17
-
-/* The number of bits that we need to shift left to move the "SWDPIO_EXT"
- * bits from the EEPROM word F (bits 7:4) to the bits 11:8 of The
- * Extended CTRL register.
- * in the CTRL register
- */
-#define SWDPIO__EXT_SHIFT 4
-
-#define RECEIVE_BUFFER_ALIGN_SIZE  (256)
-
-/* The number of milliseconds we wait for auto-negotiation to complete */
-#define LINK_UP_TIMEOUT		    500
-
-#define E1000_TX_BUFFER_SIZE ((uint32_t)1514)
-
-/* Structures, enums, and macros for the PHY */
-
-/* Bit definitions for the Management Data IO (MDIO) and Management Data
- * Clock (MDC) pins in the Device Control Register.
- */
-#define E1000_CTRL_PHY_RESET_DIR	E1000_CTRL_SWDPIO0
-#define E1000_CTRL_PHY_RESET		E1000_CTRL_SWDPIN0
-#define E1000_CTRL_MDIO_DIR		E1000_CTRL_SWDPIO2
-#define E1000_CTRL_MDIO			E1000_CTRL_SWDPIN2
-#define E1000_CTRL_MDC_DIR		E1000_CTRL_SWDPIO3
-#define E1000_CTRL_MDC			E1000_CTRL_SWDPIN3
-#define E1000_CTRL_PHY_RESET_DIR4	E1000_CTRL_EXT_SDP4_DIR
-#define E1000_CTRL_PHY_RESET4		E1000_CTRL_EXT_SDP4_DATA
-
-/* PHY 1000 MII Register/Bit Definitions */
-/* PHY Registers defined by IEEE */
-#define PHY_CTRL			0x00	/* Control Register */
-#define PHY_STATUS			0x01	/* Status Regiser */
-#define PHY_ID1				0x02	/* Phy Id Reg (word 1) */
-#define PHY_ID2				0x03	/* Phy Id Reg (word 2) */
-#define PHY_AUTONEG_ADV		0x04	/* Autoneg Advertisement */
-#define PHY_LP_ABILITY			0x05	/* Link Partner Ability (Base Page) */
-#define PHY_AUTONEG_EXP		0x06	/* Autoneg Expansion Reg */
-#define PHY_NEXT_PAGE_TX		0x07	/* Next Page TX */
-#define PHY_LP_NEXT_PAGE		0x08	/* Link Partner Next Page */
-#define PHY_1000T_CTRL			0x09	/* 1000Base-T Control Reg */
-#define PHY_1000T_STATUS		0x0A	/* 1000Base-T Status Reg */
-#define PHY_EXT_STATUS			0x0F	/* Extended Status Reg */
-
-/* M88E1000 Specific Registers */
-#define M88E1000_PHY_SPEC_CTRL		0x10	/* PHY Specific Control Register */
-#define M88E1000_PHY_SPEC_STATUS	0x11	/* PHY Specific Status Register */
-#define M88E1000_INT_ENABLE		0x12	/* Interrupt Enable Register */
-#define M88E1000_INT_STATUS		0x13	/* Interrupt Status Register */
-#define M88E1000_EXT_PHY_SPEC_CTRL	0x14	/* Extended PHY Specific Control */
-#define M88E1000_RX_ERR_CNTR		0x15	/* Receive Error Counter */
-
-#define M88E1000_PHY_PAGE_SELECT   0x1D  /* Reg 29 for page number setting */
-#define M88E1000_PHY_GEN_CONTROL   0x1E  /* Its meaning depends on reg 29 */
-
-#define MAX_PHY_REG_ADDRESS		0x1F	/* 5 bit address bus (0-0x1F) */
-
-/* M88EC018 Rev 2 specific DownShift settings */
-#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK  0x0E00
-#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_1X    0x0000
-#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_2X    0x0200
-#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_3X    0x0400
-#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_4X    0x0600
-#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X    0x0800
-#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_6X    0x0A00
-#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_7X    0x0C00
-#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_8X    0x0E00
-
-/* IGP01E1000 specifics */
-#define IGP01E1000_IEEE_REGS_PAGE	0x0000
-#define IGP01E1000_IEEE_RESTART_AUTONEG 0x3300
-#define IGP01E1000_IEEE_FORCE_GIGA	0x0140
-
-/* IGP01E1000 Specific Registers */
-#define IGP01E1000_PHY_PORT_CONFIG	0x10 /* PHY Specific Port Config Register */
-#define IGP01E1000_PHY_PORT_STATUS	0x11 /* PHY Specific Status Register */
-#define IGP01E1000_PHY_PORT_CTRL	0x12 /* PHY Specific Control Register */
-#define IGP01E1000_PHY_LINK_HEALTH	0x13 /* PHY Link Health Register */
-#define IGP01E1000_GMII_FIFO		0x14 /* GMII FIFO Register */
-#define IGP01E1000_PHY_CHANNEL_QUALITY	0x15 /* PHY Channel Quality Register */
-#define IGP02E1000_PHY_POWER_MGMT	0x19
-#define IGP01E1000_PHY_PAGE_SELECT	0x1F /* PHY Page Select Core Register */
-
-/* IGP01E1000 AGC Registers - stores the cable length values*/
-#define IGP01E1000_PHY_AGC_A        0x1172
-#define IGP01E1000_PHY_AGC_B        0x1272
-#define IGP01E1000_PHY_AGC_C        0x1472
-#define IGP01E1000_PHY_AGC_D        0x1872
-
-/* IGP01E1000 Specific Port Config Register - R/W */
-#define IGP01E1000_PSCFR_AUTO_MDIX_PAR_DETECT  0x0010
-#define IGP01E1000_PSCFR_PRE_EN                0x0020
-#define IGP01E1000_PSCFR_SMART_SPEED           0x0080
-#define IGP01E1000_PSCFR_DISABLE_TPLOOPBACK    0x0100
-#define IGP01E1000_PSCFR_DISABLE_JABBER        0x0400
-#define IGP01E1000_PSCFR_DISABLE_TRANSMIT      0x2000
-/* IGP02E1000 AGC Registers for cable length values */
-#define IGP02E1000_PHY_AGC_A        0x11B1
-#define IGP02E1000_PHY_AGC_B        0x12B1
-#define IGP02E1000_PHY_AGC_C        0x14B1
-#define IGP02E1000_PHY_AGC_D        0x18B1
-
-#define IGP02E1000_PM_SPD                         0x0001  /* Smart Power Down */
-#define IGP02E1000_PM_D3_LPLU                     0x0004  /* Enable LPLU in
-							     non-D0a modes */
-#define IGP02E1000_PM_D0_LPLU                     0x0002  /* Enable LPLU in
-							     D0a mode */
-
-/* IGP01E1000 DSP Reset Register */
-#define IGP01E1000_PHY_DSP_RESET   0x1F33
-#define IGP01E1000_PHY_DSP_SET     0x1F71
-#define IGP01E1000_PHY_DSP_FFE     0x1F35
-
-#define IGP01E1000_PHY_CHANNEL_NUM    4
-#define IGP02E1000_PHY_CHANNEL_NUM    4
-
-#define IGP01E1000_PHY_AGC_PARAM_A    0x1171
-#define IGP01E1000_PHY_AGC_PARAM_B    0x1271
-#define IGP01E1000_PHY_AGC_PARAM_C    0x1471
-#define IGP01E1000_PHY_AGC_PARAM_D    0x1871
-
-#define IGP01E1000_PHY_EDAC_MU_INDEX        0xC000
-#define IGP01E1000_PHY_EDAC_SIGN_EXT_9_BITS 0x8000
-
-#define IGP01E1000_PHY_ANALOG_TX_STATE      0x2890
-#define IGP01E1000_PHY_ANALOG_CLASS_A       0x2000
-#define IGP01E1000_PHY_FORCE_ANALOG_ENABLE  0x0004
-#define IGP01E1000_PHY_DSP_FFE_CM_CP        0x0069
-
-#define IGP01E1000_PHY_DSP_FFE_DEFAULT      0x002A
-/* IGP01E1000 PCS Initialization register - stores the polarity status when
- * speed = 1000 Mbps. */
-#define IGP01E1000_PHY_PCS_INIT_REG  0x00B4
-#define IGP01E1000_PHY_PCS_CTRL_REG  0x00B5
-
-#define IGP01E1000_ANALOG_REGS_PAGE  0x20C0
-
-/* IGP01E1000 GMII FIFO Register */
-#define IGP01E1000_GMII_FLEX_SPD               0x10 /* Enable flexible speed
-							* on Link-Up */
-#define IGP01E1000_GMII_SPD                    0x20 /* Enable SPD */
-
-/* IGP01E1000 Analog Register */
-#define IGP01E1000_ANALOG_SPARE_FUSE_STATUS       0x20D1
-#define IGP01E1000_ANALOG_FUSE_STATUS             0x20D0
-#define IGP01E1000_ANALOG_FUSE_CONTROL            0x20DC
-#define IGP01E1000_ANALOG_FUSE_BYPASS             0x20DE
-
-#define IGP01E1000_ANALOG_FUSE_POLY_MASK            0xF000
-#define IGP01E1000_ANALOG_FUSE_FINE_MASK            0x0F80
-#define IGP01E1000_ANALOG_FUSE_COARSE_MASK          0x0070
-#define IGP01E1000_ANALOG_SPARE_FUSE_ENABLED        0x0100
-#define IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL    0x0002
-
-#define IGP01E1000_ANALOG_FUSE_COARSE_THRESH        0x0040
-#define IGP01E1000_ANALOG_FUSE_COARSE_10            0x0010
-#define IGP01E1000_ANALOG_FUSE_FINE_1               0x0080
-#define IGP01E1000_ANALOG_FUSE_FINE_10              0x0500
-
-/* IGP01E1000 Specific Port Control Register - R/W */
-#define IGP01E1000_PSCR_TP_LOOPBACK            0x0010
-#define IGP01E1000_PSCR_CORRECT_NC_SCMBLR      0x0200
-#define IGP01E1000_PSCR_TEN_CRS_SELECT         0x0400
-#define IGP01E1000_PSCR_FLIP_CHIP              0x0800
-#define IGP01E1000_PSCR_AUTO_MDIX              0x1000
-#define IGP01E1000_PSCR_FORCE_MDI_MDIX         0x2000 /* 0-MDI, 1-MDIX */
-/* GG82563 PHY Specific Status Register (Page 0, Register 16 */
-#define GG82563_PSCR_DISABLE_JABBER             0x0001 /* 1=Disable Jabber */
-#define GG82563_PSCR_POLARITY_REVERSAL_DISABLE  0x0002 /* 1=Polarity Reversal
-							  Disabled */
-#define GG82563_PSCR_POWER_DOWN                 0x0004 /* 1=Power Down */
-#define GG82563_PSCR_COPPER_TRANSMITER_DISABLE  0x0008 /* 1=Transmitter
-							  Disabled */
-#define GG82563_PSCR_CROSSOVER_MODE_MASK        0x0060
-#define GG82563_PSCR_CROSSOVER_MODE_MDI         0x0000 /* 00=Manual MDI
-							  configuration */
-#define GG82563_PSCR_CROSSOVER_MODE_MDIX        0x0020 /* 01=Manual MDIX
-							  configuration */
-#define GG82563_PSCR_CROSSOVER_MODE_AUTO        0x0060 /* 11=Automatic
-							  crossover */
-#define GG82563_PSCR_ENALBE_EXTENDED_DISTANCE   0x0080 /* 1=Enable Extended
-							  Distance */
-#define GG82563_PSCR_ENERGY_DETECT_MASK         0x0300
-#define GG82563_PSCR_ENERGY_DETECT_OFF          0x0000 /* 00,01=Off */
-#define GG82563_PSCR_ENERGY_DETECT_RX           0x0200 /* 10=Sense on Rx only
-							  (Energy Detect) */
-#define GG82563_PSCR_ENERGY_DETECT_RX_TM        0x0300 /* 11=Sense and Tx NLP */
-#define GG82563_PSCR_FORCE_LINK_GOOD            0x0400 /* 1=Force Link Good */
-#define GG82563_PSCR_DOWNSHIFT_ENABLE           0x0800 /* 1=Enable Downshift */
-#define GG82563_PSCR_DOWNSHIFT_COUNTER_MASK     0x7000
-#define GG82563_PSCR_DOWNSHIFT_COUNTER_SHIFT    12
-
-/* PHY Specific Status Register (Page 0, Register 17) */
-#define GG82563_PSSR_JABBER                0x0001 /* 1=Jabber */
-#define GG82563_PSSR_POLARITY              0x0002 /* 1=Polarity Reversed */
-#define GG82563_PSSR_LINK                  0x0008 /* 1=Link is Up */
-#define GG82563_PSSR_ENERGY_DETECT         0x0010 /* 1=Sleep, 0=Active */
-#define GG82563_PSSR_DOWNSHIFT             0x0020 /* 1=Downshift */
-#define GG82563_PSSR_CROSSOVER_STATUS      0x0040 /* 1=MDIX, 0=MDI */
-#define GG82563_PSSR_RX_PAUSE_ENABLED      0x0100 /* 1=Receive Pause Enabled */
-#define GG82563_PSSR_TX_PAUSE_ENABLED      0x0200 /* 1=Transmit Pause Enabled */
-#define GG82563_PSSR_LINK_UP               0x0400 /* 1=Link Up */
-#define GG82563_PSSR_SPEED_DUPLEX_RESOLVED 0x0800 /* 1=Resolved */
-#define GG82563_PSSR_PAGE_RECEIVED         0x1000 /* 1=Page Received */
-#define GG82563_PSSR_DUPLEX                0x2000 /* 1-Full-Duplex */
-#define GG82563_PSSR_SPEED_MASK            0xC000
-#define GG82563_PSSR_SPEED_10MBPS          0x0000 /* 00=10Mbps */
-#define GG82563_PSSR_SPEED_100MBPS         0x4000 /* 01=100Mbps */
-#define GG82563_PSSR_SPEED_1000MBPS        0x8000 /* 10=1000Mbps */
-
-/* PHY Specific Status Register 2 (Page 0, Register 19) */
-#define GG82563_PSSR2_JABBER                0x0001 /* 1=Jabber */
-#define GG82563_PSSR2_POLARITY_CHANGED      0x0002 /* 1=Polarity Changed */
-#define GG82563_PSSR2_ENERGY_DETECT_CHANGED 0x0010 /* 1=Energy Detect Changed */
-#define GG82563_PSSR2_DOWNSHIFT_INTERRUPT   0x0020 /* 1=Downshift Detected */
-#define GG82563_PSSR2_MDI_CROSSOVER_CHANGE  0x0040 /* 1=Crossover Changed */
-#define GG82563_PSSR2_FALSE_CARRIER         0x0100 /* 1=false Carrier */
-#define GG82563_PSSR2_SYMBOL_ERROR          0x0200 /* 1=Symbol Error */
-#define GG82563_PSSR2_LINK_STATUS_CHANGED   0x0400 /* 1=Link Status Changed */
-#define GG82563_PSSR2_AUTO_NEG_COMPLETED    0x0800 /* 1=Auto-Neg Completed */
-#define GG82563_PSSR2_PAGE_RECEIVED         0x1000 /* 1=Page Received */
-#define GG82563_PSSR2_DUPLEX_CHANGED        0x2000 /* 1=Duplex Changed */
-#define GG82563_PSSR2_SPEED_CHANGED         0x4000 /* 1=Speed Changed */
-#define GG82563_PSSR2_AUTO_NEG_ERROR        0x8000 /* 1=Auto-Neg Error */
-
-/* PHY Specific Control Register 2 (Page 0, Register 26) */
-#define GG82563_PSCR2_10BT_POLARITY_FORCE           0x0002 /* 1=Force Negative
-							      Polarity */
-#define GG82563_PSCR2_1000MB_TEST_SELECT_MASK       0x000C
-#define GG82563_PSCR2_1000MB_TEST_SELECT_NORMAL     0x0000 /* 00,01=Normal
-							      Operation */
-#define GG82563_PSCR2_1000MB_TEST_SELECT_112NS      0x0008 /* 10=Select 112ns
-							      Sequence */
-#define GG82563_PSCR2_1000MB_TEST_SELECT_16NS       0x000C /* 11=Select 16ns
-							      Sequence */
-#define GG82563_PSCR2_REVERSE_AUTO_NEG              0x2000 /* 1=Reverse
-							Auto-Negotiation */
-#define GG82563_PSCR2_1000BT_DISABLE                0x4000 /* 1=Disable
-							      1000BASE-T */
-#define GG82563_PSCR2_TRANSMITER_TYPE_MASK          0x8000
-#define GG82563_PSCR2_TRANSMITTER_TYPE_CLASS_B      0x0000 /* 0=Class B */
-#define GG82563_PSCR2_TRANSMITTER_TYPE_CLASS_A      0x8000 /* 1=Class A */
-
-/* MAC Specific Control Register (Page 2, Register 21) */
-/* Tx clock speed for Link Down and 1000BASE-T for the following speeds */
-#define GG82563_MSCR_TX_CLK_MASK                    0x0007
-#define GG82563_MSCR_TX_CLK_10MBPS_2_5MHZ           0x0004
-#define GG82563_MSCR_TX_CLK_100MBPS_25MHZ           0x0005
-#define GG82563_MSCR_TX_CLK_1000MBPS_2_5MHZ         0x0006
-#define GG82563_MSCR_TX_CLK_1000MBPS_25MHZ          0x0007
-
-#define GG82563_MSCR_ASSERT_CRS_ON_TX               0x0010 /* 1=Assert */
-
-/* DSP Distance Register (Page 5, Register 26) */
-#define GG82563_DSPD_CABLE_LENGTH               0x0007 /* 0 = <50M;
-							  1 = 50-80M;
-							  2 = 80-110M;
-							  3 = 110-140M;
-							  4 = >140M */
-
-/* Kumeran Mode Control Register (Page 193, Register 16) */
-#define GG82563_KMCR_PHY_LEDS_EN                    0x0020 /* 1=PHY LEDs,
-							0=Kumeran Inband LEDs */
-#define GG82563_KMCR_FORCE_LINK_UP                  0x0040 /* 1=Force Link Up */
-#define GG82563_KMCR_SUPPRESS_SGMII_EPD_EXT         0x0080
-#define GG82563_KMCR_MDIO_BUS_SPEED_SELECT_MASK     0x0400
-#define GG82563_KMCR_MDIO_BUS_SPEED_SELECT          0x0400 /* 1=6.25MHz,
-							      0=0.8MHz */
-#define GG82563_KMCR_PASS_FALSE_CARRIER             0x0800
-
-/* Power Management Control Register (Page 193, Register 20) */
-#define GG82563_PMCR_ENABLE_ELECTRICAL_IDLE    0x0001 /* 1=Enalbe SERDES
-						Electrical Idle */
-#define GG82563_PMCR_DISABLE_PORT              0x0002 /* 1=Disable Port */
-#define GG82563_PMCR_DISABLE_SERDES            0x0004 /* 1=Disable SERDES */
-#define GG82563_PMCR_REVERSE_AUTO_NEG          0x0008 /* 1=Enable Reverse
-						Auto-Negotiation */
-#define GG82563_PMCR_DISABLE_1000_NON_D0       0x0010 /* 1=Disable 1000Mbps
-							 Auto-Neg in non D0 */
-#define GG82563_PMCR_DISABLE_1000              0x0020 /* 1=Disable 1000Mbps
-							 Auto-Neg Always */
-#define GG82563_PMCR_REVERSE_AUTO_NEG_D0A      0x0040 /* 1=Enable D0a
-						Reverse Auto-Negotiation */
-#define GG82563_PMCR_FORCE_POWER_STATE         0x0080 /* 1=Force Power State */
-#define GG82563_PMCR_PROGRAMMED_POWER_STATE_MASK    0x0300
-#define GG82563_PMCR_PROGRAMMED_POWER_STATE_DR      0x0000 /* 00=Dr */
-#define GG82563_PMCR_PROGRAMMED_POWER_STATE_D0U     0x0100 /* 01=D0u */
-#define GG82563_PMCR_PROGRAMMED_POWER_STATE_D0A     0x0200 /* 10=D0a */
-#define GG82563_PMCR_PROGRAMMED_POWER_STATE_D3      0x0300 /* 11=D3 */
-
-/* In-Band Control Register (Page 194, Register 18) */
-#define GG82563_ICR_DIS_PADDING		0x0010 /* Disable Padding Use */
-
-
-/* Bits...
- * 15-5: page
- * 4-0: register offset
- */
-#define GG82563_PAGE_SHIFT        5
-#define GG82563_REG(page, reg)    \
-	(((page) << GG82563_PAGE_SHIFT) | ((reg) & MAX_PHY_REG_ADDRESS))
-#define GG82563_MIN_ALT_REG       30
-
-/* GG82563 Specific Registers */
-#define GG82563_PHY_SPEC_CTRL           \
-	GG82563_REG(0, 16) /* PHY Specific Control */
-#define GG82563_PHY_SPEC_STATUS         \
-	GG82563_REG(0, 17) /* PHY Specific Status */
-#define GG82563_PHY_INT_ENABLE          \
-	GG82563_REG(0, 18) /* Interrupt Enable */
-#define GG82563_PHY_SPEC_STATUS_2       \
-	GG82563_REG(0, 19) /* PHY Specific Status 2 */
-#define GG82563_PHY_RX_ERR_CNTR         \
-	GG82563_REG(0, 21) /* Receive Error Counter */
-#define GG82563_PHY_PAGE_SELECT         \
-	GG82563_REG(0, 22) /* Page Select */
-#define GG82563_PHY_SPEC_CTRL_2         \
-	GG82563_REG(0, 26) /* PHY Specific Control 2 */
-#define GG82563_PHY_PAGE_SELECT_ALT     \
-	GG82563_REG(0, 29) /* Alternate Page Select */
-#define GG82563_PHY_TEST_CLK_CTRL       \
-	GG82563_REG(0, 30) /* Test Clock Control (use reg. 29 to select) */
-
-#define GG82563_PHY_MAC_SPEC_CTRL       \
-	GG82563_REG(2, 21) /* MAC Specific Control Register */
-#define GG82563_PHY_MAC_SPEC_CTRL_2     \
-	GG82563_REG(2, 26) /* MAC Specific Control 2 */
-
-#define GG82563_PHY_DSP_DISTANCE    \
-	GG82563_REG(5, 26) /* DSP Distance */
-
-/* Page 193 - Port Control Registers */
-#define GG82563_PHY_KMRN_MODE_CTRL   \
-	GG82563_REG(193, 16) /* Kumeran Mode Control */
-#define GG82563_PHY_PORT_RESET          \
-	GG82563_REG(193, 17) /* Port Reset */
-#define GG82563_PHY_REVISION_ID         \
-	GG82563_REG(193, 18) /* Revision ID */
-#define GG82563_PHY_DEVICE_ID           \
-	GG82563_REG(193, 19) /* Device ID */
-#define GG82563_PHY_PWR_MGMT_CTRL       \
-	GG82563_REG(193, 20) /* Power Management Control */
-#define GG82563_PHY_RATE_ADAPT_CTRL     \
-	GG82563_REG(193, 25) /* Rate Adaptation Control */
-
-/* Page 194 - KMRN Registers */
-#define GG82563_PHY_KMRN_FIFO_CTRL_STAT \
-	GG82563_REG(194, 16) /* FIFO's Control/Status */
-#define GG82563_PHY_KMRN_CTRL           \
-	GG82563_REG(194, 17) /* Control */
-#define GG82563_PHY_INBAND_CTRL         \
-	GG82563_REG(194, 18) /* Inband Control */
-#define GG82563_PHY_KMRN_DIAGNOSTIC     \
-	GG82563_REG(194, 19) /* Diagnostic */
-#define GG82563_PHY_ACK_TIMEOUTS        \
-	GG82563_REG(194, 20) /* Acknowledge Timeouts */
-#define GG82563_PHY_ADV_ABILITY         \
-	GG82563_REG(194, 21) /* Advertised Ability */
-#define GG82563_PHY_LINK_PARTNER_ADV_ABILITY \
-	GG82563_REG(194, 23) /* Link Partner Advertised Ability */
-#define GG82563_PHY_ADV_NEXT_PAGE       \
-	GG82563_REG(194, 24) /* Advertised Next Page */
-#define GG82563_PHY_LINK_PARTNER_ADV_NEXT_PAGE \
-	GG82563_REG(194, 25) /* Link Partner Advertised Next page */
-#define GG82563_PHY_KMRN_MISC           \
-	GG82563_REG(194, 26) /* Misc. */
-
-/* PHY Control Register */
-#define MII_CR_SPEED_SELECT_MSB		0x0040	/* bits 6,13: 10=1000, 01=100, 00=10 */
-#define MII_CR_COLL_TEST_ENABLE		0x0080	/* Collision test enable */
-#define MII_CR_FULL_DUPLEX		0x0100	/* FDX =1, half duplex =0 */
-#define MII_CR_RESTART_AUTO_NEG		0x0200	/* Restart auto negotiation */
-#define MII_CR_ISOLATE			0x0400	/* Isolate PHY from MII */
-#define MII_CR_POWER_DOWN		0x0800	/* Power down */
-#define MII_CR_AUTO_NEG_EN		0x1000	/* Auto Neg Enable */
-#define MII_CR_SPEED_SELECT_LSB		0x2000	/* bits 6,13: 10=1000, 01=100, 00=10 */
-#define MII_CR_LOOPBACK			0x4000	/* 0 = normal, 1 = loopback */
-#define MII_CR_RESET			0x8000	/* 0 = normal, 1 = PHY reset */
-
-/* PHY Status Register */
-#define MII_SR_EXTENDED_CAPS		0x0001	/* Extended register capabilities */
-#define MII_SR_JABBER_DETECT		0x0002	/* Jabber Detected */
-#define MII_SR_LINK_STATUS		0x0004	/* Link Status 1 = link */
-#define MII_SR_AUTONEG_CAPS		0x0008	/* Auto Neg Capable */
-#define MII_SR_REMOTE_FAULT		0x0010	/* Remote Fault Detect */
-#define MII_SR_AUTONEG_COMPLETE		0x0020	/* Auto Neg Complete */
-#define MII_SR_PREAMBLE_SUPPRESS	0x0040	/* Preamble may be suppressed */
-#define MII_SR_EXTENDED_STATUS		0x0100	/* Ext. status info in Reg 0x0F */
-#define MII_SR_100T2_HD_CAPS		0x0200	/* 100T2 Half Duplex Capable */
-#define MII_SR_100T2_FD_CAPS		0x0400	/* 100T2 Full Duplex Capable */
-#define MII_SR_10T_HD_CAPS		0x0800	/* 10T	 Half Duplex Capable */
-#define MII_SR_10T_FD_CAPS		0x1000	/* 10T	 Full Duplex Capable */
-#define MII_SR_100X_HD_CAPS		0x2000	/* 100X  Half Duplex Capable */
-#define MII_SR_100X_FD_CAPS		0x4000	/* 100X  Full Duplex Capable */
-#define MII_SR_100T4_CAPS		0x8000	/* 100T4 Capable */
-
-/* Autoneg Advertisement Register */
-#define NWAY_AR_SELECTOR_FIELD		0x0001	/* indicates IEEE 802.3 CSMA/CD */
-#define NWAY_AR_10T_HD_CAPS		0x0020	/* 10T	 Half Duplex Capable */
-#define NWAY_AR_10T_FD_CAPS		0x0040	/* 10T	 Full Duplex Capable */
-#define NWAY_AR_100TX_HD_CAPS		0x0080	/* 100TX Half Duplex Capable */
-#define NWAY_AR_100TX_FD_CAPS		0x0100	/* 100TX Full Duplex Capable */
-#define NWAY_AR_100T4_CAPS		0x0200	/* 100T4 Capable */
-#define NWAY_AR_PAUSE			0x0400	/* Pause operation desired */
-#define NWAY_AR_ASM_DIR		0x0800	/* Asymmetric Pause Direction bit */
-#define NWAY_AR_REMOTE_FAULT		0x2000	/* Remote Fault detected */
-#define NWAY_AR_NEXT_PAGE		0x8000	/* Next Page ability supported */
-
-/* Link Partner Ability Register (Base Page) */
-#define NWAY_LPAR_SELECTOR_FIELD	0x0000	/* LP protocol selector field */
-#define NWAY_LPAR_10T_HD_CAPS		0x0020	/* LP is 10T   Half Duplex Capable */
-#define NWAY_LPAR_10T_FD_CAPS		0x0040	/* LP is 10T   Full Duplex Capable */
-#define NWAY_LPAR_100TX_HD_CAPS	0x0080	/* LP is 100TX Half Duplex Capable */
-#define NWAY_LPAR_100TX_FD_CAPS	0x0100	/* LP is 100TX Full Duplex Capable */
-#define NWAY_LPAR_100T4_CAPS		0x0200	/* LP is 100T4 Capable */
-#define NWAY_LPAR_PAUSE			0x0400	/* LP Pause operation desired */
-#define NWAY_LPAR_ASM_DIR		0x0800	/* LP Asymmetric Pause Direction bit */
-#define NWAY_LPAR_REMOTE_FAULT		0x2000	/* LP has detected Remote Fault */
-#define NWAY_LPAR_ACKNOWLEDGE		0x4000	/* LP has rx'd link code word */
-#define NWAY_LPAR_NEXT_PAGE		0x8000	/* Next Page ability supported */
-
-/* Autoneg Expansion Register */
-#define NWAY_ER_LP_NWAY_CAPS		0x0001	/* LP has Auto Neg Capability */
-#define NWAY_ER_PAGE_RXD		0x0002	/* LP is 10T   Half Duplex Capable */
-#define NWAY_ER_NEXT_PAGE_CAPS		0x0004	/* LP is 10T   Full Duplex Capable */
-#define NWAY_ER_LP_NEXT_PAGE_CAPS	0x0008	/* LP is 100TX Half Duplex Capable */
-#define NWAY_ER_PAR_DETECT_FAULT	0x0100	/* LP is 100TX Full Duplex Capable */
-
-/* Next Page TX Register */
-#define NPTX_MSG_CODE_FIELD		0x0001	/* NP msg code or unformatted data */
-#define NPTX_TOGGLE			0x0800	/* Toggles between exchanges
-						 * of different NP
-						 */
-#define NPTX_ACKNOWLDGE2		0x1000	/* 1 = will comply with msg
-						 * 0 = cannot comply with msg
-						 */
-#define NPTX_MSG_PAGE			0x2000	/* formatted(1)/unformatted(0) pg */
-#define NPTX_NEXT_PAGE			0x8000	/* 1 = addition NP will follow
-						 * 0 = sending last NP
-						 */
-
-/* Link Partner Next Page Register */
-#define LP_RNPR_MSG_CODE_FIELD		0x0001	/* NP msg code or unformatted data */
-#define LP_RNPR_TOGGLE			0x0800	/* Toggles between exchanges
-						 * of different NP
-						 */
-#define LP_RNPR_ACKNOWLDGE2		0x1000	/* 1 = will comply with msg
-						 * 0 = cannot comply with msg
-						 */
-#define LP_RNPR_MSG_PAGE		0x2000	/* formatted(1)/unformatted(0) pg */
-#define LP_RNPR_ACKNOWLDGE		0x4000	/* 1 = ACK / 0 = NO ACK */
-#define LP_RNPR_NEXT_PAGE		0x8000	/* 1 = addition NP will follow
-						 * 0 = sending last NP
-						 */
-
-/* 1000BASE-T Control Register */
-#define CR_1000T_ASYM_PAUSE		0x0080	/* Advertise asymmetric pause bit */
-#define CR_1000T_HD_CAPS		0x0100	/* Advertise 1000T HD capability */
-#define CR_1000T_FD_CAPS		0x0200	/* Advertise 1000T FD capability  */
-#define CR_1000T_REPEATER_DTE		0x0400	/* 1=Repeater/switch device port */
-						/* 0=DTE device */
-#define CR_1000T_MS_VALUE		0x0800	/* 1=Configure PHY as Master */
-						/* 0=Configure PHY as Slave */
-#define CR_1000T_MS_ENABLE		0x1000	/* 1=Master/Slave manual config value */
-						/* 0=Automatic Master/Slave config */
-#define CR_1000T_TEST_MODE_NORMAL	0x0000	/* Normal Operation */
-#define CR_1000T_TEST_MODE_1		0x2000	/* Transmit Waveform test */
-#define CR_1000T_TEST_MODE_2		0x4000	/* Master Transmit Jitter test */
-#define CR_1000T_TEST_MODE_3		0x6000	/* Slave Transmit Jitter test */
-#define CR_1000T_TEST_MODE_4		0x8000	/* Transmitter Distortion test */
-
-/* 1000BASE-T Status Register */
-#define SR_1000T_IDLE_ERROR_CNT	0x00FF	/* Num idle errors since last read */
-#define SR_1000T_ASYM_PAUSE_DIR	0x0100	/* LP asymmetric pause direction bit */
-#define SR_1000T_LP_HD_CAPS		0x0400	/* LP is 1000T HD capable */
-#define SR_1000T_LP_FD_CAPS		0x0800	/* LP is 1000T FD capable */
-#define SR_1000T_REMOTE_RX_STATUS	0x1000	/* Remote receiver OK */
-#define SR_1000T_LOCAL_RX_STATUS	0x2000	/* Local receiver OK */
-#define SR_1000T_MS_CONFIG_RES		0x4000	/* 1=Local TX is Master, 0=Slave */
-#define SR_1000T_MS_CONFIG_FAULT	0x8000	/* Master/Slave config fault */
-#define SR_1000T_REMOTE_RX_STATUS_SHIFT 12
-#define SR_1000T_LOCAL_RX_STATUS_SHIFT	13
-
-/* Extended Status Register */
-#define IEEE_ESR_1000T_HD_CAPS		0x1000	/* 1000T HD capable */
-#define IEEE_ESR_1000T_FD_CAPS		0x2000	/* 1000T FD capable */
-#define IEEE_ESR_1000X_HD_CAPS		0x4000	/* 1000X HD capable */
-#define IEEE_ESR_1000X_FD_CAPS		0x8000	/* 1000X FD capable */
-
-#define PHY_TX_POLARITY_MASK		0x0100	/* register 10h bit 8 (polarity bit) */
-#define PHY_TX_NORMAL_POLARITY		0	/* register 10h bit 8 (normal polarity) */
-
-#define AUTO_POLARITY_DISABLE		0x0010	/* register 11h bit 4 */
-						/* (0=enable, 1=disable) */
-
-/* M88E1000 PHY Specific Control Register */
-#define M88E1000_PSCR_JABBER_DISABLE	0x0001	/* 1=Jabber Function disabled */
-#define M88E1000_PSCR_POLARITY_REVERSAL 0x0002	/* 1=Polarity Reversal enabled */
-#define M88E1000_PSCR_SQE_TEST		0x0004	/* 1=SQE Test enabled */
-#define M88E1000_PSCR_CLK125_DISABLE	0x0010	/* 1=CLK125 low,
-						 * 0=CLK125 toggling
-						 */
-#define M88E1000_PSCR_MDI_MANUAL_MODE	0x0000	/* MDI Crossover Mode bits 6:5 */
-						/* Manual MDI configuration */
-#define M88E1000_PSCR_MDIX_MANUAL_MODE	0x0020	/* Manual MDIX configuration */
-#define M88E1000_PSCR_AUTO_X_1000T	0x0040	/* 1000BASE-T: Auto crossover,
-						 *  100BASE-TX/10BASE-T:
-						 *  MDI Mode
-						 */
-#define M88E1000_PSCR_AUTO_X_MODE	0x0060	/* Auto crossover enabled
-						 * all speeds.
-						 */
-#define M88E1000_PSCR_10BT_EXT_DIST_ENABLE 0x0080
-						/* 1=Enable Extended 10BASE-T distance
-						 * (Lower 10BASE-T RX Threshold)
-						 * 0=Normal 10BASE-T RX Threshold */
-#define M88E1000_PSCR_MII_5BIT_ENABLE	0x0100
-						/* 1=5-Bit interface in 100BASE-TX
-						 * 0=MII interface in 100BASE-TX */
-#define M88E1000_PSCR_SCRAMBLER_DISABLE 0x0200	/* 1=Scrambler disable */
-#define M88E1000_PSCR_FORCE_LINK_GOOD	0x0400	/* 1=Force link good */
-#define M88E1000_PSCR_ASSERT_CRS_ON_TX	0x0800	/* 1=Assert CRS on Transmit */
-
-#define M88E1000_PSCR_POLARITY_REVERSAL_SHIFT	 1
-#define M88E1000_PSCR_AUTO_X_MODE_SHIFT		 5
-#define M88E1000_PSCR_10BT_EXT_DIST_ENABLE_SHIFT 7
-
-/* M88E1000 PHY Specific Status Register */
-#define M88E1000_PSSR_JABBER		0x0001	/* 1=Jabber */
-#define M88E1000_PSSR_REV_POLARITY	0x0002	/* 1=Polarity reversed */
-#define M88E1000_PSSR_MDIX		0x0040	/* 1=MDIX; 0=MDI */
-#define M88E1000_PSSR_CABLE_LENGTH	0x0380	/* 0=<50M;1=50-80M;2=80-110M;
-						 * 3=110-140M;4=>140M */
-#define M88E1000_PSSR_LINK		0x0400	/* 1=Link up, 0=Link down */
-#define M88E1000_PSSR_SPD_DPLX_RESOLVED 0x0800	/* 1=Speed & Duplex resolved */
-#define M88E1000_PSSR_PAGE_RCVD		0x1000	/* 1=Page received */
-#define M88E1000_PSSR_DPLX		0x2000	/* 1=Duplex 0=Half Duplex */
-#define M88E1000_PSSR_SPEED		0xC000	/* Speed, bits 14:15 */
-#define M88E1000_PSSR_10MBS		0x0000	/* 00=10Mbs */
-#define M88E1000_PSSR_100MBS		0x4000	/* 01=100Mbs */
-#define M88E1000_PSSR_1000MBS		0x8000	/* 10=1000Mbs */
-
-#define M88E1000_PSSR_REV_POLARITY_SHIFT 1
-#define M88E1000_PSSR_MDIX_SHIFT	 6
-#define M88E1000_PSSR_CABLE_LENGTH_SHIFT 7
-
-/* M88E1000 Extended PHY Specific Control Register */
-#define M88E1000_EPSCR_FIBER_LOOPBACK	0x4000	/* 1=Fiber loopback */
-#define M88E1000_EPSCR_DOWN_NO_IDLE	0x8000	/* 1=Lost lock detect enabled.
-						 * Will assert lost lock and bring
-						 * link down if idle not seen
-						 * within 1ms in 1000BASE-T
-						 */
-/* Number of times we will attempt to autonegotiate before downshifting if we
- * are the master */
-#define M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK 0x0C00
-#define M88E1000_EPSCR_MASTER_DOWNSHIFT_1X   0x0000
-#define M88E1000_EPSCR_MASTER_DOWNSHIFT_2X   0x0400
-#define M88E1000_EPSCR_MASTER_DOWNSHIFT_3X   0x0800
-#define M88E1000_EPSCR_MASTER_DOWNSHIFT_4X   0x0C00
-/* Number of times we will attempt to autonegotiate before downshifting if we
- * are the slave */
-#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK  0x0300
-#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_DIS   0x0000
-#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X    0x0100
-#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_2X    0x0200
-#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_3X    0x0300
-#define M88E1000_EPSCR_TX_CLK_2_5	0x0060	/* 2.5 MHz TX_CLK */
-#define M88E1000_EPSCR_TX_CLK_25	0x0070	/* 25  MHz TX_CLK */
-#define M88E1000_EPSCR_TX_CLK_0	0x0000	/* NO  TX_CLK */
-
-/* Bit definitions for valid PHY IDs. */
-#define M88E1000_E_PHY_ID		0x01410C50
-#define M88E1000_I_PHY_ID		0x01410C30
-#define M88E1011_I_PHY_ID		0x01410C20
-#define M88E1000_12_PHY_ID		M88E1000_E_PHY_ID
-#define M88E1000_14_PHY_ID		M88E1000_E_PHY_ID
-#define IGP01E1000_I_PHY_ID		0x02A80380
-#define M88E1011_I_REV_4   0x04
-#define M88E1111_I_PHY_ID  0x01410CC0
-#define L1LXT971A_PHY_ID   0x001378E0
-#define GG82563_E_PHY_ID   0x01410CA0
-#define I350_I_PHY_ID			0x015403B0
-
-#define BME1000_E_PHY_ID     0x01410CB0
-
-#define I210_I_PHY_ID		0x01410C00
-
-/* Miscellaneous PHY bit definitions. */
-#define PHY_PREAMBLE			0xFFFFFFFF
-#define PHY_SOF				0x01
-#define PHY_OP_READ			0x02
-#define PHY_OP_WRITE			0x01
-#define PHY_TURNAROUND			0x02
-#define PHY_PREAMBLE_SIZE		32
-#define MII_CR_SPEED_1000		0x0040
-#define MII_CR_SPEED_100		0x2000
-#define MII_CR_SPEED_10		0x0000
-#define E1000_PHY_ADDRESS		0x01
-#define PHY_AUTO_NEG_TIME		45	/* 4.5 Seconds */
-#define PHY_FORCE_TIME			20	/* 2.0 Seconds */
-#define PHY_REVISION_MASK		0xFFFFFFF0
-#define DEVICE_SPEED_MASK		0x00000300	/* Device Ctrl Reg Speed Mask */
-#define REG4_SPEED_MASK		0x01E0
-#define REG9_SPEED_MASK		0x0300
-#define ADVERTISE_10_HALF		0x0001
-#define ADVERTISE_10_FULL		0x0002
-#define ADVERTISE_100_HALF		0x0004
-#define ADVERTISE_100_FULL		0x0008
-#define ADVERTISE_1000_HALF		0x0010
-#define ADVERTISE_1000_FULL		0x0020
-
-#define ICH_FLASH_GFPREG   0x0000
-#define ICH_FLASH_HSFSTS   0x0004
-#define ICH_FLASH_HSFCTL   0x0006
-#define ICH_FLASH_FADDR    0x0008
-#define ICH_FLASH_FDATA0   0x0010
-#define ICH_FLASH_FRACC    0x0050
-#define ICH_FLASH_FREG0    0x0054
-#define ICH_FLASH_FREG1    0x0058
-#define ICH_FLASH_FREG2    0x005C
-#define ICH_FLASH_FREG3    0x0060
-#define ICH_FLASH_FPR0     0x0074
-#define ICH_FLASH_FPR1     0x0078
-#define ICH_FLASH_SSFSTS   0x0090
-#define ICH_FLASH_SSFCTL   0x0092
-#define ICH_FLASH_PREOP    0x0094
-#define ICH_FLASH_OPTYPE   0x0096
-#define ICH_FLASH_OPMENU   0x0098
-
-#define ICH_FLASH_REG_MAPSIZE      0x00A0
-#define ICH_FLASH_SECTOR_SIZE      4096
-#define ICH_GFPREG_BASE_MASK       0x1FFF
-#define ICH_FLASH_LINEAR_ADDR_MASK 0x00FFFFFF
-
-#define E1000_SW_FW_SYNC 0x05B5C /* Software-Firmware Synchronization - RW */
-
-/* SPI EEPROM Status Register */
-#define EEPROM_STATUS_RDY_SPI  0x01
-#define EEPROM_STATUS_WEN_SPI  0x02
-#define EEPROM_STATUS_BP0_SPI  0x04
-#define EEPROM_STATUS_BP1_SPI  0x08
-#define EEPROM_STATUS_WPEN_SPI 0x80
-
-/* SW Semaphore Register */
-#define E1000_SWSM_SMBI		0x00000001 /* Driver Semaphore bit */
-#define E1000_SWSM_SWESMBI	0x00000002 /* FW Semaphore bit */
-#define E1000_SWSM_WMNG		0x00000004 /* Wake MNG Clock */
-#define E1000_SWSM_DRV_LOAD	0x00000008 /* Driver Loaded Bit */
-
-/* FW Semaphore Register */
-#define E1000_FWSM_MODE_MASK    0x0000000E /* FW mode */
-#define E1000_FWSM_MODE_SHIFT            1
-#define E1000_FWSM_FW_VALID     0x00008000 /* FW established a valid mode */
-
-#define E1000_FWSM_RSPCIPHY        0x00000040 /* Reset PHY on PCI reset */
-#define E1000_FWSM_DISSW           0x10000000 /* FW disable SW Write Access */
-#define E1000_FWSM_SKUSEL_MASK     0x60000000 /* LAN SKU select */
-#define E1000_FWSM_SKUEL_SHIFT     29
-#define E1000_FWSM_SKUSEL_EMB      0x0 /* Embedded SKU */
-#define E1000_FWSM_SKUSEL_CONS     0x1 /* Consumer SKU */
-#define E1000_FWSM_SKUSEL_PERF_100 0x2 /* Perf & Corp 10/100 SKU */
-#define E1000_FWSM_SKUSEL_PERF_GBE 0x3 /* Perf & Copr GbE SKU */
-
-#define E1000_GCR       0x05B00 /* PCI-Ex Control */
-#define E1000_GSCL_1    0x05B10 /* PCI-Ex Statistic Control #1 */
-#define E1000_GSCL_2    0x05B14 /* PCI-Ex Statistic Control #2 */
-#define E1000_GSCL_3    0x05B18 /* PCI-Ex Statistic Control #3 */
-#define E1000_GSCL_4    0x05B1C /* PCI-Ex Statistic Control #4 */
-#define E1000_FACTPS    0x05B30 /* Function Active and Power State to MNG */
-#define E1000_SWSM      0x05B50 /* SW Semaphore */
-#define E1000_FWSM      0x05B54 /* FW Semaphore */
-#define E1000_FFLT_DBG  0x05F04 /* Debug Register */
-#define E1000_HICR      0x08F00 /* Host Inteface Control */
-
-#define IGP_ACTIVITY_LED_MASK   0xFFFFF0FF
-#define IGP_ACTIVITY_LED_ENABLE 0x0300
-#define IGP_LED3_MODE           0x07000000
-
-/* Mask bit for PHY class in Word 7 of the EEPROM */
-#define EEPROM_PHY_CLASS_A   0x8000
-#define AUTONEG_ADVERTISE_SPEED_DEFAULT 0x002F  /* Everything but 1000-Half */
-#define AUTONEG_ADVERTISE_10_100_ALL    0x000F /* All 10/100 speeds*/
-#define AUTONEG_ADVERTISE_10_ALL        0x0003 /* 10Mbps Full & Half speeds*/
-
-#define E1000_KUMCTRLSTA_MASK           0x0000FFFF
-#define E1000_KUMCTRLSTA_OFFSET         0x001F0000
-#define E1000_KUMCTRLSTA_OFFSET_SHIFT   16
-#define E1000_KUMCTRLSTA_REN            0x00200000
-
-#define E1000_KUMCTRLSTA_OFFSET_FIFO_CTRL      0x00000000
-#define E1000_KUMCTRLSTA_OFFSET_CTRL           0x00000001
-#define E1000_KUMCTRLSTA_OFFSET_INB_CTRL       0x00000002
-#define E1000_KUMCTRLSTA_OFFSET_DIAG           0x00000003
-#define E1000_KUMCTRLSTA_OFFSET_TIMEOUTS       0x00000004
-#define E1000_KUMCTRLSTA_OFFSET_INB_PARAM      0x00000009
-#define E1000_KUMCTRLSTA_OFFSET_HD_CTRL        0x00000010
-#define E1000_KUMCTRLSTA_OFFSET_M2P_SERDES     0x0000001E
-#define E1000_KUMCTRLSTA_OFFSET_M2P_MODES      0x0000001F
-
-/* FIFO Control */
-#define E1000_KUMCTRLSTA_FIFO_CTRL_RX_BYPASS   0x00000008
-#define E1000_KUMCTRLSTA_FIFO_CTRL_TX_BYPASS   0x00000800
-
-/* In-Band Control */
-#define E1000_KUMCTRLSTA_INB_CTRL_LINK_STATUS_TX_TIMEOUT_DEFAULT    0x00000500
-#define E1000_KUMCTRLSTA_INB_CTRL_DIS_PADDING  0x00000010
-
-/* Half-Duplex Control */
-#define E1000_KUMCTRLSTA_HD_CTRL_10_100_DEFAULT 0x00000004
-#define E1000_KUMCTRLSTA_HD_CTRL_1000_DEFAULT  0x00000000
-
-#define E1000_KUMCTRLSTA_OFFSET_K0S_CTRL       0x0000001E
-
-#define E1000_KUMCTRLSTA_DIAG_FELPBK           0x2000
-#define E1000_KUMCTRLSTA_DIAG_NELPBK           0x1000
-
-#define E1000_KUMCTRLSTA_K0S_100_EN            0x2000
-#define E1000_KUMCTRLSTA_K0S_GBE_EN            0x1000
-#define E1000_KUMCTRLSTA_K0S_ENTRY_LATENCY_MASK   0x0003
-
-#define E1000_MNG_ICH_IAMT_MODE         0x2
-#define E1000_MNG_IAMT_MODE             0x3
-#define E1000_MANC_BLK_PHY_RST_ON_IDE   0x00040000 /* Block phy resets */
-#define E1000_KUMCTRLSTA 0x00034 /* MAC-PHY interface - RW */
-/* Number of milliseconds we wait for PHY configuration done after MAC reset */
-#define PHY_CFG_TIMEOUT             100
-#define DEFAULT_80003ES2LAN_TIPG_IPGT_10_100 0x00000009
-#define DEFAULT_80003ES2LAN_TIPG_IPGT_1000   0x00000008
-#define AUTO_ALL_MODES	0
-
-#ifndef E1000_MASTER_SLAVE
-/* Switch to override PHY master/slave setting */
-#define E1000_MASTER_SLAVE	e1000_ms_hw_default
-#endif
-/* Extended Transmit Control */
-#define E1000_TCTL_EXT_BST_MASK  0x000003FF /* Backoff Slot Time */
-#define E1000_TCTL_EXT_GCEX_MASK 0x000FFC00 /* Gigabit Carry Extend Padding */
-
-#define DEFAULT_80003ES2LAN_TCTL_EXT_GCEX   0x00010000
-
-#define PCI_EX_82566_SNOOP_ALL PCI_EX_NO_SNOOP_ALL
-
-#define E1000_GCR_L1_ACT_WITHOUT_L0S_RX 0x08000000
-#define E1000_MC_TBL_SIZE_ICH8LAN  32
-
-#define E1000_CTRL_EXT_INT_TIMER_CLR  0x20000000 /* Clear Interrupt timers
-							after IMS clear */
-#endif	/* _E1000_HW_H_ */
diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
new file mode 100644
index 0000000..82ff32e
--- /dev/null
+++ b/drivers/net/e1000/e1000.h
@@ -0,0 +1,2139 @@
+/*******************************************************************************
+
+
+  Copyright(c) 1999 - 2002 Intel Corporation. All rights reserved.
+  Copyright 2011 Freescale Semiconductor, Inc.
+
+ * SPDX-License-Identifier:	GPL-2.0+
+
+  Contact Information:
+  Linux NICS <linux.nics@intel.com>
+  Intel Corporation, 5200 N.E. Elam Young Parkway, Hillsboro, OR 97124-6497
+
+*******************************************************************************/
+
+/* e1000_hw.h
+ * Structures, enums, and macros for the MAC
+ */
+
+#include <io.h>
+
+#ifndef _E1000_HW_H_
+#define _E1000_HW_H_
+
+#ifdef E1000_DEBUG
+#define DEBUGFUNC()		printf("%s\n", __func__);
+#else
+#define DEBUGFUNC()		do { } while (0)
+#endif
+
+/* I/O wrapper functions */
+#define E1000_WRITE_REG(a, reg, value) \
+	writel((value), ((a)->hw_addr + E1000_##reg))
+#define E1000_READ_REG(a, reg) \
+	readl((a)->hw_addr + E1000_##reg)
+#define E1000_WRITE_REG_ARRAY(a, reg, offset, value) \
+	writel((value), ((a)->hw_addr + E1000_##reg + ((offset) << 2)))
+#define E1000_READ_REG_ARRAY(a, reg, offset) \
+	readl((a)->hw_addr + E1000_##reg + ((offset) << 2))
+#define E1000_WRITE_FLUSH(a) \
+	do { E1000_READ_REG(a, STATUS); } while (0)
+
+/* Enumerated types specific to the e1000 hardware */
+/* Media Access Controlers */
+typedef enum {
+	e1000_undefined = 0,
+	e1000_82542_rev2_0,
+	e1000_82542_rev2_1,
+	e1000_82543,
+	e1000_82544,
+	e1000_82540,
+	e1000_82545,
+	e1000_82545_rev_3,
+	e1000_82546,
+	e1000_82546_rev_3,
+	e1000_82541,
+	e1000_82541_rev_2,
+	e1000_82547,
+	e1000_82547_rev_2,
+	e1000_82571,
+	e1000_82572,
+	e1000_82573,
+	e1000_82574,
+	e1000_80003es2lan,
+	e1000_ich8lan,
+	e1000_igb,
+	e1000_num_macs
+} e1000_mac_type;
+
+/* Media Types */
+typedef enum {
+	e1000_media_type_copper = 0,
+	e1000_media_type_fiber = 1,
+	e1000_media_type_internal_serdes = 2,
+	e1000_num_media_types
+} e1000_media_type;
+
+typedef enum {
+	e1000_eeprom_uninitialized = 0,
+	e1000_eeprom_spi,
+	e1000_eeprom_microwire,
+	e1000_eeprom_flash,
+	e1000_eeprom_ich8,
+	e1000_eeprom_none, /* No NVM support */
+	e1000_eeprom_invm,
+	e1000_num_eeprom_types
+} e1000_eeprom_type;
+
+/* Flow Control Settings */
+typedef enum {
+	e1000_fc_none = 0,
+	e1000_fc_rx_pause = 1,
+	e1000_fc_tx_pause = 2,
+	e1000_fc_full = 3,
+	e1000_fc_default = 0xFF
+} e1000_fc_type;
+
+typedef enum {
+	e1000_phy_m88 = 0,
+	e1000_phy_igp,
+	e1000_phy_igp_2,
+	e1000_phy_gg82563,
+	e1000_phy_igp_3,
+	e1000_phy_ife,
+	e1000_phy_igb,
+	e1000_phy_bm,
+	e1000_phy_82580,
+	e1000_phy_undefined = 0xFF
+} e1000_phy_type;
+
+/* Error Codes */
+#define E1000_SUCCESS				0
+#define E1000_ERR_EEPROM			1
+#define E1000_ERR_PHY				2
+#define E1000_ERR_CONFIG			3
+#define E1000_ERR_PARAM				4
+#define E1000_ERR_MAC_TYPE			5
+#define E1000_ERR_PHY_TYPE			6
+#define E1000_ERR_NOLINK			7
+#define E1000_ERR_TIMEOUT			8
+#define E1000_ERR_RESET				9
+#define E1000_ERR_MASTER_REQUESTS_PENDING	10
+#define E1000_ERR_HOST_INTERFACE_COMMAND	11
+#define E1000_BLK_PHY_RESET			12
+#define E1000_ERR_SWFW_SYNC 			13
+
+/* PCI Device IDs */
+#define E1000_DEV_ID_82542			0x1000
+#define E1000_DEV_ID_82543GC_FIBER		0x1001
+#define E1000_DEV_ID_82543GC_COPPER		0x1004
+#define E1000_DEV_ID_82544EI_COPPER		0x1008
+#define E1000_DEV_ID_82544EI_FIBER		0x1009
+#define E1000_DEV_ID_82544GC_COPPER		0x100C
+#define E1000_DEV_ID_82544GC_LOM		0x100D
+#define E1000_DEV_ID_82540EM			0x100E
+#define E1000_DEV_ID_82540EM_LOM		0x1015
+#define E1000_DEV_ID_82540EP_LOM		0x1016
+#define E1000_DEV_ID_82540EP			0x1017
+#define E1000_DEV_ID_82540EP_LP			0x101E
+#define E1000_DEV_ID_82545EM_COPPER		0x100F
+#define E1000_DEV_ID_82545EM_FIBER		0x1011
+#define E1000_DEV_ID_82545GM_COPPER		0x1026
+#define E1000_DEV_ID_82545GM_FIBER		0x1027
+#define E1000_DEV_ID_82545GM_SERDES		0x1028
+#define E1000_DEV_ID_82546EB_COPPER		0x1010
+#define E1000_DEV_ID_82546EB_FIBER		0x1012
+#define E1000_DEV_ID_82546EB_QUAD_COPPER	0x101D
+#define E1000_DEV_ID_82541EI			0x1013
+#define E1000_DEV_ID_82541EI_MOBILE		0x1018
+#define E1000_DEV_ID_82541ER_LOM		0x1014
+#define E1000_DEV_ID_82541ER			0x1078
+#define E1000_DEV_ID_82547GI			0x1075
+#define E1000_DEV_ID_82541GI			0x1076
+#define E1000_DEV_ID_82541GI_MOBILE		0x1077
+#define E1000_DEV_ID_82541GI_LF			0x107C
+#define E1000_DEV_ID_82546GB_COPPER		0x1079
+#define E1000_DEV_ID_82546GB_FIBER		0x107A
+#define E1000_DEV_ID_82546GB_SERDES		0x107B
+#define E1000_DEV_ID_82546GB_PCIE		0x108A
+#define E1000_DEV_ID_82546GB_QUAD_COPPER	0x1099
+#define E1000_DEV_ID_82547EI			0x1019
+#define E1000_DEV_ID_82547EI_MOBILE		0x101A
+#define E1000_DEV_ID_82571EB_COPPER		0x105E
+#define E1000_DEV_ID_82571EB_FIBER		0x105F
+#define E1000_DEV_ID_82571EB_SERDES		0x1060
+#define E1000_DEV_ID_82571EB_QUAD_COPPER	0x10A4
+#define E1000_DEV_ID_82571PT_QUAD_COPPER	0x10D5
+#define E1000_DEV_ID_82571EB_QUAD_FIBER		0x10A5
+#define E1000_DEV_ID_82571EB_QUAD_COPPER_LOWPROFILE	0x10BC
+#define E1000_DEV_ID_82571EB_SERDES_DUAL	0x10D9
+#define E1000_DEV_ID_82571EB_SERDES_QUAD	0x10DA
+#define E1000_DEV_ID_82572EI_COPPER		0x107D
+#define E1000_DEV_ID_82572EI_FIBER		0x107E
+#define E1000_DEV_ID_82572EI_SERDES		0x107F
+#define E1000_DEV_ID_82572EI			0x10B9
+#define E1000_DEV_ID_82573E			0x108B
+#define E1000_DEV_ID_82573E_IAMT		0x108C
+#define E1000_DEV_ID_82573L			0x109A
+#define E1000_DEV_ID_82574L			0x10D3
+#define E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3	0x10B5
+#define E1000_DEV_ID_80003ES2LAN_COPPER_DPT     0x1096
+#define E1000_DEV_ID_80003ES2LAN_SERDES_DPT     0x1098
+#define E1000_DEV_ID_80003ES2LAN_COPPER_SPT     0x10BA
+#define E1000_DEV_ID_80003ES2LAN_SERDES_SPT     0x10BB
+
+#define E1000_DEV_ID_I350_COPPER		0x1521
+#define E1000_DEV_ID_I210_UNPROGRAMMED		0x1531
+#define E1000_DEV_ID_I211_UNPROGRAMMED		0x1532
+#define E1000_DEV_ID_I210_COPPER		0x1533
+#define E1000_DEV_ID_I210_SERDES		0x1536
+#define E1000_DEV_ID_I210_1000BASEKX		0x1537
+#define E1000_DEV_ID_I210_EXTPHY		0x1538
+#define E1000_DEV_ID_I211_COPPER		0x1539
+#define E1000_DEV_ID_I210_COPPER_FLASHLESS	0x157b
+#define E1000_DEV_ID_I210_SERDES_FLASHLESS	0x157c
+
+#define E1000_DEV_ID_ICH8_IGP_M_AMT      0x1049
+#define E1000_DEV_ID_ICH8_IGP_AMT        0x104A
+#define E1000_DEV_ID_ICH8_IGP_C          0x104B
+#define E1000_DEV_ID_ICH8_IFE            0x104C
+#define E1000_DEV_ID_ICH8_IFE_GT         0x10C4
+#define E1000_DEV_ID_ICH8_IFE_G          0x10C5
+#define E1000_DEV_ID_ICH8_IGP_M          0x104D
+
+#define IGP03E1000_E_PHY_ID  0x02A80390
+#define IFE_E_PHY_ID         0x02A80330 /* 10/100 PHY */
+#define IFE_PLUS_E_PHY_ID    0x02A80320
+#define IFE_C_E_PHY_ID       0x02A80310
+
+#define IFE_PHY_EXTENDED_STATUS_CONTROL   0x10  /* 100BaseTx Extended Status,
+						   Control and Address */
+#define IFE_PHY_SPECIAL_CONTROL           0x11  /* 100BaseTx PHY special
+						   control register */
+#define IFE_PHY_RCV_FALSE_CARRIER         0x13  /* 100BaseTx Receive false
+						   Carrier Counter */
+#define IFE_PHY_RCV_DISCONNECT            0x14  /* 100BaseTx Receive Disconnet
+						   Counter */
+#define IFE_PHY_RCV_ERROT_FRAME           0x15  /* 100BaseTx Receive Error
+						   Frame Counter */
+#define IFE_PHY_RCV_SYMBOL_ERR            0x16  /* Receive Symbol Error
+						   Counter */
+#define IFE_PHY_PREM_EOF_ERR              0x17  /* 100BaseTx Receive
+						   Premature End Of Frame
+						   Error Counter */
+#define IFE_PHY_RCV_EOF_ERR               0x18  /* 10BaseT Receive End Of
+						   Frame Error Counter */
+#define IFE_PHY_TX_JABBER_DETECT          0x19  /* 10BaseT Transmit Jabber
+						   Detect Counter */
+#define IFE_PHY_EQUALIZER                 0x1A  /* PHY Equalizer Control and
+						   Status */
+#define IFE_PHY_SPECIAL_CONTROL_LED       0x1B  /* PHY special control and
+						   LED configuration */
+#define IFE_PHY_MDIX_CONTROL              0x1C  /* MDI/MDI-X Control register */
+#define IFE_PHY_HWI_CONTROL               0x1D  /* Hardware Integrity Control
+						   (HWI) */
+
+#define IFE_PESC_REDUCED_POWER_DOWN_DISABLE  0x2000  /* Defaut 1 = Disable auto
+							reduced power down */
+#define IFE_PESC_100BTX_POWER_DOWN           0x0400  /* Indicates the power
+							state of 100BASE-TX */
+#define IFE_PESC_10BTX_POWER_DOWN            0x0200  /* Indicates the power
+							state of 10BASE-T */
+#define IFE_PESC_POLARITY_REVERSED           0x0100  /* Indicates 10BASE-T
+							polarity */
+#define IFE_PESC_PHY_ADDR_MASK               0x007C  /* Bit 6:2 for sampled PHY
+							address */
+#define IFE_PESC_SPEED                       0x0002  /* Auto-negotiation speed
+						result 1=100Mbs, 0=10Mbs */
+#define IFE_PESC_DUPLEX                      0x0001  /* Auto-negotiation
+						duplex result 1=Full, 0=Half */
+#define IFE_PESC_POLARITY_REVERSED_SHIFT     8
+
+#define IFE_PSC_DISABLE_DYNAMIC_POWER_DOWN   0x0100  /* 1 = Dyanmic Power Down
+							disabled */
+#define IFE_PSC_FORCE_POLARITY               0x0020  /* 1=Reversed Polarity,
+							0=Normal */
+#define IFE_PSC_AUTO_POLARITY_DISABLE        0x0010  /* 1=Auto Polarity
+							Disabled, 0=Enabled */
+#define IFE_PSC_JABBER_FUNC_DISABLE          0x0001  /* 1=Jabber Disabled,
+						0=Normal Jabber Operation */
+#define IFE_PSC_FORCE_POLARITY_SHIFT         5
+#define IFE_PSC_AUTO_POLARITY_DISABLE_SHIFT  4
+
+#define IFE_PMC_AUTO_MDIX                    0x0080  /* 1=enable MDI/MDI-X
+						feature, default 0=disabled */
+#define IFE_PMC_FORCE_MDIX                   0x0040  /* 1=force MDIX-X,
+							0=force MDI */
+#define IFE_PMC_MDIX_STATUS                  0x0020  /* 1=MDI-X, 0=MDI */
+#define IFE_PMC_AUTO_MDIX_COMPLETE           0x0010  /* Resolution algorithm
+							is completed */
+#define IFE_PMC_MDIX_MODE_SHIFT              6
+#define IFE_PHC_MDIX_RESET_ALL_MASK          0x0000  /* Disable auto MDI-X */
+
+#define IFE_PHC_HWI_ENABLE                   0x8000  /* Enable the HWI
+							feature */
+#define IFE_PHC_ABILITY_CHECK                0x4000  /* 1= Test Passed,
+							0=failed */
+#define IFE_PHC_TEST_EXEC                    0x2000  /* PHY launch test pulses
+							on the wire */
+#define IFE_PHC_HIGHZ                        0x0200  /* 1 = Open Circuit */
+#define IFE_PHC_LOWZ                         0x0400  /* 1 = Short Circuit */
+#define IFE_PHC_LOW_HIGH_Z_MASK              0x0600  /* Mask for indication
+						type of problem on the line */
+#define IFE_PHC_DISTANCE_MASK                0x01FF  /* Mask for distance to
+				the cable problem, in 80cm granularity */
+#define IFE_PHC_RESET_ALL_MASK               0x0000  /* Disable HWI */
+#define IFE_PSCL_PROBE_MODE                  0x0020  /* LED Probe mode */
+#define IFE_PSCL_PROBE_LEDS_OFF              0x0006  /* Force LEDs 0 and 2
+							off */
+#define IFE_PSCL_PROBE_LEDS_ON               0x0007  /* Force LEDs 0 and 2 on */
+
+#define NODE_ADDRESS_SIZE 6
+
+#define E1000_82542_2_0_REV_ID 2
+#define E1000_82542_2_1_REV_ID 3
+#define E1000_REVISION_0       0
+#define E1000_REVISION_1       1
+#define E1000_REVISION_2       2
+#define E1000_REVISION_3       3
+
+#define SPEED_10    10
+#define SPEED_100   100
+#define SPEED_1000  1000
+#define HALF_DUPLEX 1
+#define FULL_DUPLEX 2
+
+/* The number of high/low register pairs in the RAR. The RAR (Receive Address
+ * Registers) holds the directed and multicast addresses that we monitor. We
+ * reserve one of these spots for our directed address, allowing us room for
+ * E1000_RAR_ENTRIES - 1 multicast addresses.
+ */
+#define E1000_RAR_ENTRIES 16
+
+#define MIN_NUMBER_OF_DESCRIPTORS 8
+#define MAX_NUMBER_OF_DESCRIPTORS 0xFFF8
+
+/* Receive Descriptor */
+struct e1000_rx_desc {
+	uint64_t buffer_addr;	/* Address of the descriptor's data buffer */
+	uint16_t length;	/* Length of data DMAed into data buffer */
+	uint16_t csum;		/* Packet checksum */
+	uint8_t status;		/* Descriptor status */
+	uint8_t errors;		/* Descriptor Errors */
+	uint16_t special;
+};
+
+/* Receive Decriptor bit definitions */
+#define E1000_RXD_STAT_DD	0x01	/* Descriptor Done */
+#define E1000_RXD_STAT_EOP	0x02	/* End of Packet */
+#define E1000_RXD_STAT_IXSM	0x04	/* Ignore checksum */
+#define E1000_RXD_STAT_VP	0x08	/* IEEE VLAN Packet */
+#define E1000_RXD_STAT_TCPCS	0x20	/* TCP xsum calculated */
+#define E1000_RXD_STAT_IPCS	0x40	/* IP xsum calculated */
+#define E1000_RXD_STAT_PIF	0x80	/* passed in-exact filter */
+#define E1000_RXD_ERR_CE	0x01	/* CRC Error */
+#define E1000_RXD_ERR_SE	0x02	/* Symbol Error */
+#define E1000_RXD_ERR_SEQ	0x04	/* Sequence Error */
+#define E1000_RXD_ERR_CXE	0x10	/* Carrier Extension Error */
+#define E1000_RXD_ERR_TCPE	0x20	/* TCP/UDP Checksum Error */
+#define E1000_RXD_ERR_IPE	0x40	/* IP Checksum Error */
+#define E1000_RXD_ERR_RXE	0x80	/* Rx Data Error */
+#define E1000_RXD_SPC_VLAN_MASK 0x0FFF	/* VLAN ID is in lower 12 bits */
+#define E1000_RXD_SPC_PRI_MASK	0xE000	/* Priority is in upper 3 bits */
+#define E1000_RXD_SPC_PRI_SHIFT 0x000D	/* Priority is in upper 3 of 16 */
+#define E1000_RXD_SPC_CFI_MASK	0x1000	/* CFI is bit 12 */
+#define E1000_RXD_SPC_CFI_SHIFT 0x000C	/* CFI is bit 12 */
+
+/* mask to determine if packets should be dropped due to frame errors */
+#define E1000_RXD_ERR_FRAME_ERR_MASK ( \
+    E1000_RXD_ERR_CE  |		       \
+    E1000_RXD_ERR_SE  |		       \
+    E1000_RXD_ERR_SEQ |		       \
+    E1000_RXD_ERR_CXE |		       \
+    E1000_RXD_ERR_RXE)
+
+/* Transmit Descriptor */
+struct e1000_tx_desc {
+	uint64_t buffer_addr;	/* Address of the descriptor's data buffer */
+	union {
+		uint32_t data;
+		struct {
+			uint16_t length;	/* Data buffer length */
+			uint8_t cso;	/* Checksum offset */
+			uint8_t cmd;	/* Descriptor control */
+		} flags;
+	} lower;
+	union {
+		uint32_t data;
+		struct {
+			uint8_t status;	/* Descriptor status */
+			uint8_t css;	/* Checksum start */
+			uint16_t special;
+		} fields;
+	} upper;
+};
+
+/* Transmit Descriptor bit definitions */
+#define E1000_TXD_DTYP_D     0x00100000	/* Data Descriptor */
+#define E1000_TXD_DTYP_C     0x00000000	/* Context Descriptor */
+#define E1000_TXD_POPTS_IXSM 0x01	/* Insert IP checksum */
+#define E1000_TXD_POPTS_TXSM 0x02	/* Insert TCP/UDP checksum */
+#define E1000_TXD_CMD_EOP    0x01000000	/* End of Packet */
+#define E1000_TXD_CMD_IFCS   0x02000000	/* Insert FCS (Ethernet CRC) */
+#define E1000_TXD_CMD_IC     0x04000000	/* Insert Checksum */
+#define E1000_TXD_CMD_RS     0x08000000	/* Report Status */
+#define E1000_TXD_CMD_RPS    0x10000000	/* Report Packet Sent */
+#define E1000_TXD_CMD_DEXT   0x20000000	/* Descriptor extension (0 = legacy) */
+#define E1000_TXD_CMD_VLE    0x40000000	/* Add VLAN tag */
+#define E1000_TXD_CMD_IDE    0x80000000	/* Enable Tidv register */
+#define E1000_TXD_STAT_DD    0x00000001	/* Descriptor Done */
+#define E1000_TXD_STAT_EC    0x00000002	/* Excess Collisions */
+#define E1000_TXD_STAT_LC    0x00000004	/* Late Collisions */
+#define E1000_TXD_STAT_TU    0x00000008	/* Transmit underrun */
+#define E1000_TXD_CMD_TCP    0x01000000	/* TCP packet */
+#define E1000_TXD_CMD_IP     0x02000000	/* IP packet */
+#define E1000_TXD_CMD_TSE    0x04000000	/* TCP Seg enable */
+#define E1000_TXD_STAT_TC    0x00000004	/* Tx Underrun */
+
+/* Filters */
+#define E1000_NUM_UNICAST	   16	/* Unicast filter entries */
+#define E1000_MC_TBL_SIZE	   128	/* Multicast Filter Table (4096 bits) */
+#define E1000_VLAN_FILTER_TBL_SIZE 128	/* VLAN Filter Table (4096 bits) */
+
+/* Register Set. (82543, 82544)
+ *
+ * Registers are defined to be 32 bits and  should be accessed as 32 bit values.
+ * These registers are physically located on the NIC, but are mapped into the
+ * host memory address space.
+ *
+ * RW - register is both readable and writable
+ * RO - register is read only
+ * WO - register is write only
+ * R/clr - register is read only and is cleared when read
+ * A - register array
+ */
+#define E1000_CTRL     0x00000	/* Device Control - RW */
+#define E1000_STATUS   0x00008	/* Device Status - RO */
+#define E1000_EECD     0x00010	/* EEPROM/Flash Control - RW */
+#define E1000_I210_EECD     0x12010	/* EEPROM/Flash Control - RW */
+#define E1000_EERD     0x00014	/* EEPROM Read - RW */
+#define E1000_I210_EERD     0x12014	/* EEPROM Read - RW */
+#define E1000_CTRL_EXT 0x00018	/* Extended Device Control - RW */
+#define E1000_MDIC     0x00020	/* MDI Control - RW */
+#define E1000_FCAL     0x00028	/* Flow Control Address Low - RW */
+#define E1000_FCAH     0x0002C	/* Flow Control Address High -RW */
+#define E1000_FCT      0x00030	/* Flow Control Type - RW */
+#define E1000_VET      0x00038	/* VLAN Ether Type - RW */
+#define E1000_ICR      0x000C0	/* Interrupt Cause Read - R/clr */
+#define E1000_ITR      0x000C4	/* Interrupt Throttling Rate - RW */
+#define E1000_ICS      0x000C8	/* Interrupt Cause Set - WO */
+#define E1000_IMS      0x000D0	/* Interrupt Mask Set - RW */
+#define E1000_IMC      0x000D8	/* Interrupt Mask Clear - WO */
+#define E1000_I210_IAM      0x000E0	/* Interrupt Ack Auto Mask - RW */
+#define E1000_RCTL     0x00100	/* RX Control - RW */
+#define E1000_FCTTV    0x00170	/* Flow Control Transmit Timer Value - RW */
+#define E1000_TXCW     0x00178	/* TX Configuration Word - RW */
+#define E1000_RXCW     0x00180	/* RX Configuration Word - RO */
+#define E1000_TCTL     0x00400	/* TX Control - RW */
+#define E1000_TCTL_EXT 0x00404  /* Extended TX Control - RW */
+#define E1000_TIPG     0x00410	/* TX Inter-packet gap -RW */
+#define E1000_TBT      0x00448	/* TX Burst Timer - RW */
+#define E1000_AIT      0x00458	/* Adaptive Interframe Spacing Throttle - RW */
+#define E1000_LEDCTL   0x00E00	/* LED Control - RW */
+#define E1000_EXTCNF_CTRL  0x00F00  /* Extended Configuration Control */
+#define E1000_EXTCNF_SIZE  0x00F08  /* Extended Configuration Size */
+#define E1000_PHY_CTRL     0x00F10  /* PHY Control Register in CSR */
+#define E1000_I210_PHY_CTRL     0x00E14  /* PHY Control Register in CSR */
+#define FEXTNVM_SW_CONFIG  0x0001
+#define E1000_PBA      0x01000	/* Packet Buffer Allocation - RW */
+#define E1000_PBS      0x01008  /* Packet Buffer Size */
+#define E1000_EEMNGCTL 0x01010  /* MNG EEprom Control */
+#define E1000_I210_EEMNGCTL 0x12030  /* MNG EEprom Control */
+#define E1000_FLASH_UPDATES 1000
+#define E1000_EEARBC   0x01024  /* EEPROM Auto Read Bus Control */
+#define E1000_FLASHT   0x01028  /* FLASH Timer Register */
+#define E1000_EEWR     0x0102C  /* EEPROM Write Register - RW */
+#define E1000_I210_EEWR     0x12018  /* EEPROM Write Register - RW */
+#define E1000_FLSWCTL  0x01030  /* FLASH control register */
+#define E1000_FLSWDATA 0x01034  /* FLASH data register */
+#define E1000_FLSWCNT  0x01038  /* FLASH Access Counter */
+#define E1000_FLOP     0x0103C  /* FLASH Opcode Register */
+#define E1000_ERT      0x02008  /* Early Rx Threshold - RW */
+#define E1000_FCRTL    0x02160	/* Flow Control Receive Threshold Low - RW */
+#define E1000_FCRTH    0x02168	/* Flow Control Receive Threshold High - RW */
+#define E1000_RDBAL    0x02800	/* RX Descriptor Base Address Low - RW */
+#define E1000_RDBAH    0x02804	/* RX Descriptor Base Address High - RW */
+#define E1000_RDLEN    0x02808	/* RX Descriptor Length - RW */
+#define E1000_RDH      0x02810	/* RX Descriptor Head - RW */
+#define E1000_RDT      0x02818	/* RX Descriptor Tail - RW */
+#define E1000_RDTR     0x02820	/* RX Delay Timer - RW */
+#define E1000_RXDCTL   0x02828	/* RX Descriptor Control - RW */
+#define E1000_RADV     0x0282C	/* RX Interrupt Absolute Delay Timer - RW */
+#define E1000_RSRPD    0x02C00	/* RX Small Packet Detect - RW */
+#define E1000_TXDMAC   0x03000	/* TX DMA Control - RW */
+#define E1000_TDFH     0x03410  /* TX Data FIFO Head - RW */
+#define E1000_TDFT     0x03418  /* TX Data FIFO Tail - RW */
+#define E1000_TDFHS    0x03420  /* TX Data FIFO Head Saved - RW */
+#define E1000_TDFTS    0x03428  /* TX Data FIFO Tail Saved - RW */
+#define E1000_TDFPC    0x03430  /* TX Data FIFO Packet Count - RW */
+#define E1000_TDBAL    0x03800	/* TX Descriptor Base Address Low - RW */
+#define E1000_TDBAH    0x03804	/* TX Descriptor Base Address High - RW */
+#define E1000_TDLEN    0x03808	/* TX Descriptor Length - RW */
+#define E1000_TDH      0x03810	/* TX Descriptor Head - RW */
+#define E1000_TDT      0x03818	/* TX Descripotr Tail - RW */
+#define E1000_TIDV     0x03820	/* TX Interrupt Delay Value - RW */
+#define E1000_TXDCTL   0x03828	/* TX Descriptor Control - RW */
+#define E1000_TADV     0x0382C	/* TX Interrupt Absolute Delay Val - RW */
+#define E1000_TSPMT    0x03830	/* TCP Segmentation PAD & Min Threshold - RW */
+#define E1000_TARC0    0x03840  /* TX Arbitration Count (0) */
+#define E1000_TDBAL1   0x03900  /* TX Desc Base Address Low (1) - RW */
+#define E1000_TDBAH1   0x03904  /* TX Desc Base Address High (1) - RW */
+#define E1000_TDLEN1   0x03908  /* TX Desc Length (1) - RW */
+#define E1000_TDH1     0x03910  /* TX Desc Head (1) - RW */
+#define E1000_TDT1     0x03918  /* TX Desc Tail (1) - RW */
+#define E1000_TXDCTL1  0x03928  /* TX Descriptor Control (1) - RW */
+#define E1000_TARC1    0x03940  /* TX Arbitration Count (1) */
+#define E1000_CRCERRS  0x04000	/* CRC Error Count - R/clr */
+#define E1000_ALGNERRC 0x04004	/* Alignment Error Count - R/clr */
+#define E1000_SYMERRS  0x04008	/* Symbol Error Count - R/clr */
+#define E1000_RXERRC   0x0400C	/* Receive Error Count - R/clr */
+#define E1000_MPC      0x04010	/* Missed Packet Count - R/clr */
+#define E1000_SCC      0x04014	/* Single Collision Count - R/clr */
+#define E1000_ECOL     0x04018	/* Excessive Collision Count - R/clr */
+#define E1000_MCC      0x0401C	/* Multiple Collision Count - R/clr */
+#define E1000_LATECOL  0x04020	/* Late Collision Count - R/clr */
+#define E1000_COLC     0x04028	/* Collision Count - R/clr */
+#define E1000_DC       0x04030	/* Defer Count - R/clr */
+#define E1000_TNCRS    0x04034	/* TX-No CRS - R/clr */
+#define E1000_SEC      0x04038	/* Sequence Error Count - R/clr */
+#define E1000_CEXTERR  0x0403C	/* Carrier Extension Error Count - R/clr */
+#define E1000_RLEC     0x04040	/* Receive Length Error Count - R/clr */
+#define E1000_XONRXC   0x04048	/* XON RX Count - R/clr */
+#define E1000_XONTXC   0x0404C	/* XON TX Count - R/clr */
+#define E1000_XOFFRXC  0x04050	/* XOFF RX Count - R/clr */
+#define E1000_XOFFTXC  0x04054	/* XOFF TX Count - R/clr */
+#define E1000_FCRUC    0x04058	/* Flow Control RX Unsupported Count- R/clr */
+#define E1000_PRC64    0x0405C	/* Packets RX (64 bytes) - R/clr */
+#define E1000_PRC127   0x04060	/* Packets RX (65-127 bytes) - R/clr */
+#define E1000_PRC255   0x04064	/* Packets RX (128-255 bytes) - R/clr */
+#define E1000_PRC511   0x04068	/* Packets RX (255-511 bytes) - R/clr */
+#define E1000_PRC1023  0x0406C	/* Packets RX (512-1023 bytes) - R/clr */
+#define E1000_PRC1522  0x04070	/* Packets RX (1024-1522 bytes) - R/clr */
+#define E1000_GPRC     0x04074	/* Good Packets RX Count - R/clr */
+#define E1000_BPRC     0x04078	/* Broadcast Packets RX Count - R/clr */
+#define E1000_MPRC     0x0407C	/* Multicast Packets RX Count - R/clr */
+#define E1000_GPTC     0x04080	/* Good Packets TX Count - R/clr */
+#define E1000_GORCL    0x04088	/* Good Octets RX Count Low - R/clr */
+#define E1000_GORCH    0x0408C	/* Good Octets RX Count High - R/clr */
+#define E1000_GOTCL    0x04090	/* Good Octets TX Count Low - R/clr */
+#define E1000_GOTCH    0x04094	/* Good Octets TX Count High - R/clr */
+#define E1000_RNBC     0x040A0	/* RX No Buffers Count - R/clr */
+#define E1000_RUC      0x040A4	/* RX Undersize Count - R/clr */
+#define E1000_RFC      0x040A8	/* RX Fragment Count - R/clr */
+#define E1000_ROC      0x040AC	/* RX Oversize Count - R/clr */
+#define E1000_RJC      0x040B0	/* RX Jabber Count - R/clr */
+#define E1000_MGTPRC   0x040B4	/* Management Packets RX Count - R/clr */
+#define E1000_MGTPDC   0x040B8	/* Management Packets Dropped Count - R/clr */
+#define E1000_MGTPTC   0x040BC	/* Management Packets TX Count - R/clr */
+#define E1000_TORL     0x040C0	/* Total Octets RX Low - R/clr */
+#define E1000_TORH     0x040C4	/* Total Octets RX High - R/clr */
+#define E1000_TOTL     0x040C8	/* Total Octets TX Low - R/clr */
+#define E1000_TOTH     0x040CC	/* Total Octets TX High - R/clr */
+#define E1000_TPR      0x040D0	/* Total Packets RX - R/clr */
+#define E1000_TPT      0x040D4	/* Total Packets TX - R/clr */
+#define E1000_PTC64    0x040D8	/* Packets TX (64 bytes) - R/clr */
+#define E1000_PTC127   0x040DC	/* Packets TX (65-127 bytes) - R/clr */
+#define E1000_PTC255   0x040E0	/* Packets TX (128-255 bytes) - R/clr */
+#define E1000_PTC511   0x040E4	/* Packets TX (256-511 bytes) - R/clr */
+#define E1000_PTC1023  0x040E8	/* Packets TX (512-1023 bytes) - R/clr */
+#define E1000_PTC1522  0x040EC	/* Packets TX (1024-1522 Bytes) - R/clr */
+#define E1000_MPTC     0x040F0	/* Multicast Packets TX Count - R/clr */
+#define E1000_BPTC     0x040F4	/* Broadcast Packets TX Count - R/clr */
+#define E1000_TSCTC    0x040F8	/* TCP Segmentation Context TX - R/clr */
+#define E1000_TSCTFC   0x040FC	/* TCP Segmentation Context TX Fail - R/clr */
+#define E1000_RXCSUM   0x05000	/* RX Checksum Control - RW */
+#define E1000_MTA      0x05200	/* Multicast Table Array - RW Array */
+#define E1000_RA       0x05400	/* Receive Address - RW Array */
+#define E1000_VFTA     0x05600	/* VLAN Filter Table Array - RW Array */
+#define E1000_WUC      0x05800	/* Wakeup Control - RW */
+#define E1000_WUFC     0x05808	/* Wakeup Filter Control - RW */
+#define E1000_WUS      0x05810	/* Wakeup Status - RO */
+#define E1000_MANC     0x05820	/* Management Control - RW */
+#define E1000_IPAV     0x05838	/* IP Address Valid - RW */
+#define E1000_IP4AT    0x05840	/* IPv4 Address Table - RW Array */
+#define E1000_IP6AT    0x05880	/* IPv6 Address Table - RW Array */
+#define E1000_WUPL     0x05900	/* Wakeup Packet Length - RW */
+#define E1000_WUPM     0x05A00	/* Wakeup Packet Memory - RO A */
+#define E1000_FFLT     0x05F00	/* Flexible Filter Length Table - RW Array */
+#define E1000_FFMT     0x09000	/* Flexible Filter Mask Table - RW Array */
+#define E1000_FFVT     0x09800	/* Flexible Filter Value Table - RW Array */
+
+/* Register Set (82542)
+ *
+ * Some of the 82542 registers are located at different offsets than they are
+ * in more current versions of the 8254x. Despite the difference in location,
+ * the registers function in the same manner.
+ */
+#define E1000_82542_CTRL     E1000_CTRL
+#define E1000_82542_STATUS   E1000_STATUS
+#define E1000_82542_EECD     E1000_EECD
+#define E1000_82542_EERD     E1000_EERD
+#define E1000_82542_CTRL_EXT E1000_CTRL_EXT
+#define E1000_82542_MDIC     E1000_MDIC
+#define E1000_82542_FCAL     E1000_FCAL
+#define E1000_82542_FCAH     E1000_FCAH
+#define E1000_82542_FCT      E1000_FCT
+#define E1000_82542_VET      E1000_VET
+#define E1000_82542_RA	     0x00040
+#define E1000_82542_ICR      E1000_ICR
+#define E1000_82542_ITR      E1000_ITR
+#define E1000_82542_ICS      E1000_ICS
+#define E1000_82542_IMS      E1000_IMS
+#define E1000_82542_IMC      E1000_IMC
+#define E1000_82542_RCTL     E1000_RCTL
+#define E1000_82542_RDTR     0x00108
+#define E1000_82542_RDBAL    0x00110
+#define E1000_82542_RDBAH    0x00114
+#define E1000_82542_RDLEN    0x00118
+#define E1000_82542_RDH      0x00120
+#define E1000_82542_RDT      0x00128
+#define E1000_82542_FCRTH    0x00160
+#define E1000_82542_FCRTL    0x00168
+#define E1000_82542_FCTTV    E1000_FCTTV
+#define E1000_82542_TXCW     E1000_TXCW
+#define E1000_82542_RXCW     E1000_RXCW
+#define E1000_82542_MTA      0x00200
+#define E1000_82542_TCTL     E1000_TCTL
+#define E1000_82542_TIPG     E1000_TIPG
+#define E1000_82542_TDBAL    0x00420
+#define E1000_82542_TDBAH    0x00424
+#define E1000_82542_TDLEN    0x00428
+#define E1000_82542_TDH      0x00430
+#define E1000_82542_TDT      0x00438
+#define E1000_82542_TIDV     0x00440
+#define E1000_82542_TBT      E1000_TBT
+#define E1000_82542_AIT      E1000_AIT
+#define E1000_82542_VFTA     0x00600
+#define E1000_82542_LEDCTL   E1000_LEDCTL
+#define E1000_82542_PBA      E1000_PBA
+#define E1000_82542_RXDCTL   E1000_RXDCTL
+#define E1000_82542_RADV     E1000_RADV
+#define E1000_82542_RSRPD    E1000_RSRPD
+#define E1000_82542_TXDMAC   E1000_TXDMAC
+#define E1000_82542_TXDCTL   E1000_TXDCTL
+#define E1000_82542_TADV     E1000_TADV
+#define E1000_82542_TSPMT    E1000_TSPMT
+#define E1000_82542_CRCERRS  E1000_CRCERRS
+#define E1000_82542_ALGNERRC E1000_ALGNERRC
+#define E1000_82542_SYMERRS  E1000_SYMERRS
+#define E1000_82542_RXERRC   E1000_RXERRC
+#define E1000_82542_MPC      E1000_MPC
+#define E1000_82542_SCC      E1000_SCC
+#define E1000_82542_ECOL     E1000_ECOL
+#define E1000_82542_MCC      E1000_MCC
+#define E1000_82542_LATECOL  E1000_LATECOL
+#define E1000_82542_COLC     E1000_COLC
+#define E1000_82542_DC	     E1000_DC
+#define E1000_82542_TNCRS    E1000_TNCRS
+#define E1000_82542_SEC      E1000_SEC
+#define E1000_82542_CEXTERR  E1000_CEXTERR
+#define E1000_82542_RLEC     E1000_RLEC
+#define E1000_82542_XONRXC   E1000_XONRXC
+#define E1000_82542_XONTXC   E1000_XONTXC
+#define E1000_82542_XOFFRXC  E1000_XOFFRXC
+#define E1000_82542_XOFFTXC  E1000_XOFFTXC
+#define E1000_82542_FCRUC    E1000_FCRUC
+#define E1000_82542_PRC64    E1000_PRC64
+#define E1000_82542_PRC127   E1000_PRC127
+#define E1000_82542_PRC255   E1000_PRC255
+#define E1000_82542_PRC511   E1000_PRC511
+#define E1000_82542_PRC1023  E1000_PRC1023
+#define E1000_82542_PRC1522  E1000_PRC1522
+#define E1000_82542_GPRC     E1000_GPRC
+#define E1000_82542_BPRC     E1000_BPRC
+#define E1000_82542_MPRC     E1000_MPRC
+#define E1000_82542_GPTC     E1000_GPTC
+#define E1000_82542_GORCL    E1000_GORCL
+#define E1000_82542_GORCH    E1000_GORCH
+#define E1000_82542_GOTCL    E1000_GOTCL
+#define E1000_82542_GOTCH    E1000_GOTCH
+#define E1000_82542_RNBC     E1000_RNBC
+#define E1000_82542_RUC      E1000_RUC
+#define E1000_82542_RFC      E1000_RFC
+#define E1000_82542_ROC      E1000_ROC
+#define E1000_82542_RJC      E1000_RJC
+#define E1000_82542_MGTPRC   E1000_MGTPRC
+#define E1000_82542_MGTPDC   E1000_MGTPDC
+#define E1000_82542_MGTPTC   E1000_MGTPTC
+#define E1000_82542_TORL     E1000_TORL
+#define E1000_82542_TORH     E1000_TORH
+#define E1000_82542_TOTL     E1000_TOTL
+#define E1000_82542_TOTH     E1000_TOTH
+#define E1000_82542_TPR      E1000_TPR
+#define E1000_82542_TPT      E1000_TPT
+#define E1000_82542_PTC64    E1000_PTC64
+#define E1000_82542_PTC127   E1000_PTC127
+#define E1000_82542_PTC255   E1000_PTC255
+#define E1000_82542_PTC511   E1000_PTC511
+#define E1000_82542_PTC1023  E1000_PTC1023
+#define E1000_82542_PTC1522  E1000_PTC1522
+#define E1000_82542_MPTC     E1000_MPTC
+#define E1000_82542_BPTC     E1000_BPTC
+#define E1000_82542_TSCTC    E1000_TSCTC
+#define E1000_82542_TSCTFC   E1000_TSCTFC
+#define E1000_82542_RXCSUM   E1000_RXCSUM
+#define E1000_82542_WUC      E1000_WUC
+#define E1000_82542_WUFC     E1000_WUFC
+#define E1000_82542_WUS      E1000_WUS
+#define E1000_82542_MANC     E1000_MANC
+#define E1000_82542_IPAV     E1000_IPAV
+#define E1000_82542_IP4AT    E1000_IP4AT
+#define E1000_82542_IP6AT    E1000_IP6AT
+#define E1000_82542_WUPL     E1000_WUPL
+#define E1000_82542_WUPM     E1000_WUPM
+#define E1000_82542_FFLT     E1000_FFLT
+#define E1000_82542_FFMT     E1000_FFMT
+#define E1000_82542_FFVT     E1000_FFVT
+
+struct e1000_eeprom_info {
+	e1000_eeprom_type type;
+	uint16_t word_size;
+	uint16_t opcode_bits;
+	uint16_t address_bits;
+	uint16_t delay_usec;
+	uint16_t page_size;
+	bool use_eerd;
+	bool use_eewr;
+};
+
+#define E1000_EEPROM_SWDPIN0   0x0001	/* SWDPIN 0 EEPROM Value */
+#define E1000_EEPROM_LED_LOGIC 0x0020	/* Led Logic Word */
+#define E1000_EEPROM_RW_REG_DATA   16   /* Offset to data in EEPROM
+					   read/write registers */
+#define E1000_EEPROM_RW_REG_DONE   2    /* Offset to READ/WRITE done bit */
+#define E1000_EEPROM_RW_REG_START  1    /* First bit for telling part to start
+					   operation */
+#define E1000_EEPROM_RW_ADDR_SHIFT 2    /* Shift to the address bits */
+#define E1000_EEPROM_POLL_WRITE    1    /* Flag for polling for write
+					   complete */
+#define E1000_EEPROM_POLL_READ     0    /* Flag for polling for read complete */
+#define EEPROM_RESERVED_WORD          0xFFFF
+
+/* Register Bit Masks */
+/* Device Control */
+#define E1000_CTRL_FD	    0x00000001	/* Full duplex.0=half; 1=full */
+#define E1000_CTRL_BEM	    0x00000002	/* Endian Mode.0=little,1=big */
+#define E1000_CTRL_PRIOR    0x00000004	/* Priority on PCI. 0=rx,1=fair */
+#define E1000_CTRL_LRST     0x00000008	/* Link reset. 0=normal,1=reset */
+#define E1000_CTRL_TME	    0x00000010	/* Test mode. 0=normal,1=test */
+#define E1000_CTRL_SLE	    0x00000020	/* Serial Link on 0=dis,1=en */
+#define E1000_CTRL_ASDE     0x00000020	/* Auto-speed detect enable */
+#define E1000_CTRL_SLU	    0x00000040	/* Set link up (Force Link) */
+#define E1000_CTRL_ILOS     0x00000080	/* Invert Loss-Of Signal */
+#define E1000_CTRL_SPD_SEL  0x00000300	/* Speed Select Mask */
+#define E1000_CTRL_SPD_10   0x00000000	/* Force 10Mb */
+#define E1000_CTRL_SPD_100  0x00000100	/* Force 100Mb */
+#define E1000_CTRL_SPD_1000 0x00000200	/* Force 1Gb */
+#define E1000_CTRL_BEM32    0x00000400	/* Big Endian 32 mode */
+#define E1000_CTRL_FRCSPD   0x00000800	/* Force Speed */
+#define E1000_CTRL_FRCDPX   0x00001000	/* Force Duplex */
+#define E1000_CTRL_SWDPIN0  0x00040000	/* SWDPIN 0 value */
+#define E1000_CTRL_SWDPIN1  0x00080000	/* SWDPIN 1 value */
+#define E1000_CTRL_SWDPIN2  0x00100000	/* SWDPIN 2 value */
+#define E1000_CTRL_SWDPIN3  0x00200000	/* SWDPIN 3 value */
+#define E1000_CTRL_SWDPIO0  0x00400000	/* SWDPIN 0 Input or output */
+#define E1000_CTRL_SWDPIO1  0x00800000	/* SWDPIN 1 input or output */
+#define E1000_CTRL_SWDPIO2  0x01000000	/* SWDPIN 2 input or output */
+#define E1000_CTRL_SWDPIO3  0x02000000	/* SWDPIN 3 input or output */
+#define E1000_CTRL_RST	    0x04000000	/* Global reset */
+#define E1000_CTRL_RFCE     0x08000000	/* Receive Flow Control enable */
+#define E1000_CTRL_TFCE     0x10000000	/* Transmit flow control enable */
+#define E1000_CTRL_RTE	    0x20000000	/* Routing tag enable */
+#define E1000_CTRL_VME	    0x40000000	/* IEEE VLAN mode enable */
+#define E1000_CTRL_PHY_RST  0x80000000	/* PHY Reset */
+
+/* Device Status */
+#define E1000_STATUS_FD		0x00000001	/* Full duplex.0=half,1=full */
+#define E1000_STATUS_LU		0x00000002	/* Link up.0=no,1=link */
+#define E1000_STATUS_FUNC_MASK	0x0000000C	/* PCI Function Mask */
+#define E1000_STATUS_FUNC_0	0x00000000	/* Function 0 */
+#define E1000_STATUS_FUNC_1	0x00000004	/* Function 1 */
+#define E1000_STATUS_TXOFF	0x00000010	/* transmission paused */
+#define E1000_STATUS_TBIMODE	0x00000020	/* TBI mode */
+#define E1000_STATUS_SPEED_MASK 0x000000C0
+#define E1000_STATUS_SPEED_10	0x00000000	/* Speed 10Mb/s */
+#define E1000_STATUS_SPEED_100	0x00000040	/* Speed 100Mb/s */
+#define E1000_STATUS_SPEED_1000 0x00000080	/* Speed 1000Mb/s */
+#define E1000_STATUS_ASDV	0x00000300	/* Auto speed detect value */
+#define E1000_STATUS_MTXCKOK	0x00000400	/* MTX clock running OK */
+#define E1000_STATUS_PCI66	0x00000800	/* In 66Mhz slot */
+#define E1000_STATUS_BUS64	0x00001000	/* In 64 bit slot */
+#define E1000_STATUS_PCIX_MODE	0x00002000	/* PCI-X mode */
+#define E1000_STATUS_PCIX_SPEED 0x0000C000	/* PCI-X bus speed */
+#define E1000_STATUS_PF_RST_DONE 0x00200000	/* PCI-X bus speed */
+
+/* Constants used to intrepret the masked PCI-X bus speed. */
+#define E1000_STATUS_PCIX_SPEED_66  0x00000000	/* PCI-X bus speed  50-66 MHz */
+#define E1000_STATUS_PCIX_SPEED_100 0x00004000	/* PCI-X bus speed  66-100 MHz */
+#define E1000_STATUS_PCIX_SPEED_133 0x00008000	/* PCI-X bus speed 100-133 MHz */
+
+/* EEPROM/Flash Control */
+#define E1000_EECD_SK	     0x00000001	/* EEPROM Clock */
+#define E1000_EECD_CS	     0x00000002	/* EEPROM Chip Select */
+#define E1000_EECD_DI	     0x00000004	/* EEPROM Data In */
+#define E1000_EECD_DO	     0x00000008	/* EEPROM Data Out */
+#define E1000_EECD_FWE_MASK  0x00000030
+#define E1000_EECD_FWE_DIS   0x00000010	/* Disable FLASH writes */
+#define E1000_EECD_FWE_EN    0x00000020	/* Enable FLASH writes */
+#define E1000_EECD_FWE_SHIFT 4
+#define E1000_EECD_SIZE      0x00000200	/* EEPROM Size (0=64 word 1=256 word) */
+#define E1000_EECD_REQ	     0x00000040	/* EEPROM Access Request */
+#define E1000_EECD_GNT	     0x00000080	/* EEPROM Access Grant */
+#define E1000_EECD_PRES      0x00000100	/* EEPROM Present */
+#define E1000_EECD_ADDR_BITS 0x00000400 /* EEPROM Addressing bits based on type
+					 * (0-small, 1-large) */
+
+#define E1000_EECD_TYPE      0x00002000 /* EEPROM Type (1-SPI, 0-Microwire) */
+#ifndef E1000_EEPROM_GRANT_ATTEMPTS
+#define E1000_EEPROM_GRANT_ATTEMPTS 1000 /* EEPROM # attempts to gain grant */
+#endif
+#define E1000_EECD_AUTO_RD          0x00000200  /* EEPROM Auto Read done */
+#define E1000_EECD_SIZE_EX_MASK     0x00007800  /* EEprom Size */
+#define E1000_EECD_SIZE_EX_SHIFT    11
+#define E1000_EECD_NVADDS    0x00018000 /* NVM Address Size */
+#define E1000_EECD_SELSHAD   0x00020000 /* Select Shadow RAM */
+#define E1000_EECD_INITSRAM  0x00040000 /* Initialize Shadow RAM */
+#define E1000_EECD_FLUPD     0x00080000 /* Update FLASH */
+#define E1000_EECD_AUPDEN    0x00100000 /* Enable Autonomous FLASH update */
+#define E1000_EECD_SHADV     0x00200000 /* Shadow RAM Data Valid */
+#define E1000_EECD_SEC1VAL   0x00400000 /* Sector One Valid */
+#define E1000_EECD_SECVAL_SHIFT      22
+#define E1000_STM_OPCODE     0xDB00
+#define E1000_HICR_FW_RESET  0xC0
+
+#define E1000_SHADOW_RAM_WORDS     2048
+#define E1000_ICH_NVM_SIG_WORD     0x13
+#define E1000_ICH_NVM_SIG_MASK     0xC0
+
+/* EEPROM Read */
+#define E1000_EERD_START      0x00000001	/* Start Read */
+#define E1000_EERD_DONE       0x00000010	/* Read Done */
+#define E1000_EERD_ADDR_SHIFT 8
+#define E1000_EERD_ADDR_MASK  0x0000FF00	/* Read Address */
+#define E1000_EERD_DATA_SHIFT 16
+#define E1000_EERD_DATA_MASK  0xFFFF0000	/* Read Data */
+
+/* EEPROM Commands - Microwire */
+#define EEPROM_READ_OPCODE_MICROWIRE  0x6  /* EEPROM read opcode */
+#define EEPROM_WRITE_OPCODE_MICROWIRE 0x5  /* EEPROM write opcode */
+#define EEPROM_ERASE_OPCODE_MICROWIRE 0x7  /* EEPROM erase opcode */
+#define EEPROM_EWEN_OPCODE_MICROWIRE  0x13 /* EEPROM erase/write enable */
+#define EEPROM_EWDS_OPCODE_MICROWIRE  0x10 /* EEPROM erast/write disable */
+
+/* EEPROM Commands - SPI */
+#define EEPROM_MAX_RETRY_SPI        5000 /* Max wait of 5ms, for RDY signal */
+#define EEPROM_READ_OPCODE_SPI      0x03  /* EEPROM read opcode */
+#define EEPROM_WRITE_OPCODE_SPI     0x02  /* EEPROM write opcode */
+#define EEPROM_A8_OPCODE_SPI        0x08  /* opcode bit-3 = address bit-8 */
+#define EEPROM_WREN_OPCODE_SPI      0x06  /* EEPROM set Write Enable latch */
+#define EEPROM_WRDI_OPCODE_SPI      0x04  /* EEPROM reset Write Enable latch */
+#define EEPROM_RDSR_OPCODE_SPI      0x05  /* EEPROM read Status register */
+#define EEPROM_WRSR_OPCODE_SPI      0x01  /* EEPROM write Status register */
+#define EEPROM_ERASE4K_OPCODE_SPI   0x20  /* EEPROM ERASE 4KB */
+#define EEPROM_ERASE64K_OPCODE_SPI  0xD8  /* EEPROM ERASE 64KB */
+#define EEPROM_ERASE256_OPCODE_SPI  0xDB  /* EEPROM ERASE 256B */
+
+/* EEPROM Size definitions */
+#define EEPROM_WORD_SIZE_SHIFT  6
+#define EEPROM_SIZE_SHIFT       10
+#define EEPROM_SIZE_MASK        0x1C00
+
+/* EEPROM Word Offsets */
+#define EEPROM_COMPAT                 0x0003
+#define EEPROM_ID_LED_SETTINGS        0x0004
+#define EEPROM_VERSION                0x0005
+#define EEPROM_SERDES_AMPLITUDE       0x0006 /* For SERDES output amplitude
+						adjustment. */
+#define EEPROM_PHY_CLASS_WORD         0x0007
+#define EEPROM_INIT_CONTROL1_REG      0x000A
+#define EEPROM_INIT_CONTROL2_REG      0x000F
+#define EEPROM_SWDEF_PINS_CTRL_PORT_1 0x0010
+#define EEPROM_INIT_CONTROL3_PORT_B   0x0014
+#define EEPROM_INIT_3GIO_3            0x001A
+#define EEPROM_SWDEF_PINS_CTRL_PORT_0 0x0020
+#define EEPROM_INIT_CONTROL3_PORT_A   0x0024
+#define EEPROM_CFG                    0x0012
+#define EEPROM_FLASH_VERSION          0x0032
+#define EEPROM_CHECKSUM_REG           0x003F
+
+#define E1000_EEPROM_CFG_DONE         0x00040000   /* MNG config cycle done */
+#define E1000_EEPROM_CFG_DONE_PORT_1  0x00080000   /* ...for second port */
+
+/* Extended Device Control */
+#define E1000_CTRL_EXT_GPI0_EN	 0x00000001	/* Maps SDP4 to GPI0 */
+#define E1000_CTRL_EXT_GPI1_EN	 0x00000002	/* Maps SDP5 to GPI1 */
+#define E1000_CTRL_EXT_PHYINT_EN E1000_CTRL_EXT_GPI1_EN
+#define E1000_CTRL_EXT_GPI2_EN	 0x00000004	/* Maps SDP6 to GPI2 */
+#define E1000_CTRL_EXT_GPI3_EN	 0x00000008	/* Maps SDP7 to GPI3 */
+#define E1000_CTRL_EXT_SDP4_DATA 0x00000010	/* Value of SW Defineable
+						   Pin 4 */
+#define E1000_CTRL_EXT_SDP5_DATA 0x00000020	/* Value of SW Defineable
+						   Pin 5 */
+#define E1000_CTRL_EXT_PHY_INT	 E1000_CTRL_EXT_SDP5_DATA
+#define E1000_CTRL_EXT_SDP6_DATA 0x00000040	/* Value of SW Defineable Pin 6 */
+#define E1000_CTRL_EXT_SWDPIN6	 0x00000040	/* SWDPIN 6 value */
+#define E1000_CTRL_EXT_SDP7_DATA 0x00000080	/* Value of SW Defineable Pin 7 */
+#define E1000_CTRL_EXT_SWDPIN7	 0x00000080	/* SWDPIN 7 value */
+#define E1000_CTRL_EXT_SDP4_DIR  0x00000100	/* Direction of SDP4 0=in 1=out */
+#define E1000_CTRL_EXT_SDP5_DIR  0x00000200	/* Direction of SDP5 0=in 1=out */
+#define E1000_CTRL_EXT_SDP6_DIR  0x00000400	/* Direction of SDP6 0=in 1=out */
+#define E1000_CTRL_EXT_SWDPIO6	 0x00000400	/* SWDPIN 6 Input or output */
+#define E1000_CTRL_EXT_SDP7_DIR  0x00000800	/* Direction of SDP7 0=in 1=out */
+#define E1000_CTRL_EXT_SWDPIO7	 0x00000800	/* SWDPIN 7 Input or output */
+#define E1000_CTRL_EXT_ASDCHK	 0x00001000	/* Initiate an ASD sequence */
+#define E1000_CTRL_EXT_EE_RST	 0x00002000	/* Reinitialize from EEPROM */
+#define E1000_CTRL_EXT_IPS	 0x00004000	/* Invert Power State */
+#define E1000_CTRL_EXT_SPD_BYPS  0x00008000	/* Speed Select Bypass */
+#define E1000_CTRL_EXT_RO_DIS    0x00020000 /* Relaxed Ordering disable */
+#define E1000_CTRL_EXT_LINK_MODE_MASK 0x00C00000
+#define E1000_CTRL_EXT_LINK_MODE_GMII 0x00000000
+#define E1000_CTRL_EXT_LINK_MODE_TBI  0x00C00000
+#define E1000_CTRL_EXT_WR_WMARK_MASK  0x03000000
+#define E1000_CTRL_EXT_WR_WMARK_256   0x00000000
+#define E1000_CTRL_EXT_WR_WMARK_320   0x01000000
+#define E1000_CTRL_EXT_WR_WMARK_384   0x02000000
+#define E1000_CTRL_EXT_WR_WMARK_448   0x03000000
+
+/* MDI Control */
+#define E1000_MDIC_DATA_MASK 0x0000FFFF
+#define E1000_MDIC_REG_MASK  0x001F0000
+#define E1000_MDIC_REG_SHIFT 16
+#define E1000_MDIC_PHY_MASK  0x03E00000
+#define E1000_MDIC_PHY_SHIFT 21
+#define E1000_MDIC_OP_WRITE  0x04000000
+#define E1000_MDIC_OP_READ   0x08000000
+#define E1000_MDIC_READY     0x10000000
+#define E1000_MDIC_INT_EN    0x20000000
+#define E1000_MDIC_ERROR     0x40000000
+
+#define E1000_PHY_CTRL_SPD_EN                  0x00000001
+#define E1000_PHY_CTRL_D0A_LPLU                0x00000002
+#define E1000_PHY_CTRL_NOND0A_LPLU             0x00000004
+#define E1000_PHY_CTRL_NOND0A_GBE_DISABLE      0x00000008
+#define E1000_PHY_CTRL_GBE_DISABLE             0x00000040
+#define E1000_PHY_CTRL_B2B_EN                  0x00000080
+/* LED Control */
+#define E1000_LEDCTL_LED0_MODE_MASK  0x0000000F
+#define E1000_LEDCTL_LED0_MODE_SHIFT 0
+#define E1000_LEDCTL_LED0_IVRT	     0x00000040
+#define E1000_LEDCTL_LED0_BLINK      0x00000080
+#define E1000_LEDCTL_LED1_MODE_MASK  0x00000F00
+#define E1000_LEDCTL_LED1_MODE_SHIFT 8
+#define E1000_LEDCTL_LED1_IVRT	     0x00004000
+#define E1000_LEDCTL_LED1_BLINK      0x00008000
+#define E1000_LEDCTL_LED2_MODE_MASK  0x000F0000
+#define E1000_LEDCTL_LED2_MODE_SHIFT 16
+#define E1000_LEDCTL_LED2_IVRT	     0x00400000
+#define E1000_LEDCTL_LED2_BLINK      0x00800000
+#define E1000_LEDCTL_LED3_MODE_MASK  0x0F000000
+#define E1000_LEDCTL_LED3_MODE_SHIFT 24
+#define E1000_LEDCTL_LED3_IVRT	     0x40000000
+#define E1000_LEDCTL_LED3_BLINK      0x80000000
+
+#define E1000_LEDCTL_MODE_LINK_10_1000	0x0
+#define E1000_LEDCTL_MODE_LINK_100_1000 0x1
+#define E1000_LEDCTL_MODE_LINK_UP	0x2
+#define E1000_LEDCTL_MODE_ACTIVITY	0x3
+#define E1000_LEDCTL_MODE_LINK_ACTIVITY 0x4
+#define E1000_LEDCTL_MODE_LINK_10	0x5
+#define E1000_LEDCTL_MODE_LINK_100	0x6
+#define E1000_LEDCTL_MODE_LINK_1000	0x7
+#define E1000_LEDCTL_MODE_PCIX_MODE	0x8
+#define E1000_LEDCTL_MODE_FULL_DUPLEX	0x9
+#define E1000_LEDCTL_MODE_COLLISION	0xA
+#define E1000_LEDCTL_MODE_BUS_SPEED	0xB
+#define E1000_LEDCTL_MODE_BUS_SIZE	0xC
+#define E1000_LEDCTL_MODE_PAUSED	0xD
+#define E1000_LEDCTL_MODE_LED_ON	0xE
+#define E1000_LEDCTL_MODE_LED_OFF	0xF
+
+/* Receive Address */
+#define E1000_RAH_AV  0x80000000	/* Receive descriptor valid */
+
+/* Interrupt Cause Read */
+#define E1000_ICR_TXDW	  0x00000001	/* Transmit desc written back */
+#define E1000_ICR_TXQE	  0x00000002	/* Transmit Queue empty */
+#define E1000_ICR_LSC	  0x00000004	/* Link Status Change */
+#define E1000_ICR_RXSEQ   0x00000008	/* rx sequence error */
+#define E1000_ICR_RXDMT0  0x00000010	/* rx desc min. threshold (0) */
+#define E1000_ICR_RXO	  0x00000040	/* rx overrun */
+#define E1000_ICR_RXT0	  0x00000080	/* rx timer intr (ring 0) */
+#define E1000_ICR_MDAC	  0x00000200	/* MDIO access complete */
+#define E1000_ICR_RXCFG   0x00000400	/* RX /c/ ordered set */
+#define E1000_ICR_GPI_EN0 0x00000800	/* GP Int 0 */
+#define E1000_ICR_GPI_EN1 0x00001000	/* GP Int 1 */
+#define E1000_ICR_GPI_EN2 0x00002000	/* GP Int 2 */
+#define E1000_ICR_GPI_EN3 0x00004000	/* GP Int 3 */
+#define E1000_ICR_TXD_LOW 0x00008000
+#define E1000_ICR_SRPD	  0x00010000
+
+/* Interrupt Cause Set */
+#define E1000_ICS_TXDW	  E1000_ICR_TXDW	/* Transmit desc written back */
+#define E1000_ICS_TXQE	  E1000_ICR_TXQE	/* Transmit Queue empty */
+#define E1000_ICS_LSC	  E1000_ICR_LSC	/* Link Status Change */
+#define E1000_ICS_RXSEQ   E1000_ICR_RXSEQ	/* rx sequence error */
+#define E1000_ICS_RXDMT0  E1000_ICR_RXDMT0	/* rx desc min. threshold */
+#define E1000_ICS_RXO	  E1000_ICR_RXO	/* rx overrun */
+#define E1000_ICS_RXT0	  E1000_ICR_RXT0	/* rx timer intr */
+#define E1000_ICS_MDAC	  E1000_ICR_MDAC	/* MDIO access complete */
+#define E1000_ICS_RXCFG   E1000_ICR_RXCFG	/* RX /c/ ordered set */
+#define E1000_ICS_GPI_EN0 E1000_ICR_GPI_EN0	/* GP Int 0 */
+#define E1000_ICS_GPI_EN1 E1000_ICR_GPI_EN1	/* GP Int 1 */
+#define E1000_ICS_GPI_EN2 E1000_ICR_GPI_EN2	/* GP Int 2 */
+#define E1000_ICS_GPI_EN3 E1000_ICR_GPI_EN3	/* GP Int 3 */
+#define E1000_ICS_TXD_LOW E1000_ICR_TXD_LOW
+#define E1000_ICS_SRPD	  E1000_ICR_SRPD
+
+/* Interrupt Mask Set */
+#define E1000_IMS_TXDW	  E1000_ICR_TXDW	/* Transmit desc written back */
+#define E1000_IMS_TXQE	  E1000_ICR_TXQE	/* Transmit Queue empty */
+#define E1000_IMS_LSC	  E1000_ICR_LSC	/* Link Status Change */
+#define E1000_IMS_RXSEQ   E1000_ICR_RXSEQ	/* rx sequence error */
+#define E1000_IMS_RXDMT0  E1000_ICR_RXDMT0	/* rx desc min. threshold */
+#define E1000_IMS_RXO	  E1000_ICR_RXO	/* rx overrun */
+#define E1000_IMS_RXT0	  E1000_ICR_RXT0	/* rx timer intr */
+#define E1000_IMS_MDAC	  E1000_ICR_MDAC	/* MDIO access complete */
+#define E1000_IMS_RXCFG   E1000_ICR_RXCFG	/* RX /c/ ordered set */
+#define E1000_IMS_GPI_EN0 E1000_ICR_GPI_EN0	/* GP Int 0 */
+#define E1000_IMS_GPI_EN1 E1000_ICR_GPI_EN1	/* GP Int 1 */
+#define E1000_IMS_GPI_EN2 E1000_ICR_GPI_EN2	/* GP Int 2 */
+#define E1000_IMS_GPI_EN3 E1000_ICR_GPI_EN3	/* GP Int 3 */
+#define E1000_IMS_TXD_LOW E1000_ICR_TXD_LOW
+#define E1000_IMS_SRPD	  E1000_ICR_SRPD
+
+/* Interrupt Mask Clear */
+#define E1000_IMC_TXDW	  E1000_ICR_TXDW	/* Transmit desc written back */
+#define E1000_IMC_TXQE	  E1000_ICR_TXQE	/* Transmit Queue empty */
+#define E1000_IMC_LSC	  E1000_ICR_LSC	/* Link Status Change */
+#define E1000_IMC_RXSEQ   E1000_ICR_RXSEQ	/* rx sequence error */
+#define E1000_IMC_RXDMT0  E1000_ICR_RXDMT0	/* rx desc min. threshold */
+#define E1000_IMC_RXO	  E1000_ICR_RXO	/* rx overrun */
+#define E1000_IMC_RXT0	  E1000_ICR_RXT0	/* rx timer intr */
+#define E1000_IMC_MDAC	  E1000_ICR_MDAC	/* MDIO access complete */
+#define E1000_IMC_RXCFG   E1000_ICR_RXCFG	/* RX /c/ ordered set */
+#define E1000_IMC_GPI_EN0 E1000_ICR_GPI_EN0	/* GP Int 0 */
+#define E1000_IMC_GPI_EN1 E1000_ICR_GPI_EN1	/* GP Int 1 */
+#define E1000_IMC_GPI_EN2 E1000_ICR_GPI_EN2	/* GP Int 2 */
+#define E1000_IMC_GPI_EN3 E1000_ICR_GPI_EN3	/* GP Int 3 */
+#define E1000_IMC_TXD_LOW E1000_ICR_TXD_LOW
+#define E1000_IMC_SRPD	  E1000_ICR_SRPD
+
+/* Receive Control */
+#define E1000_RCTL_RST		0x00000001	/* Software reset */
+#define E1000_RCTL_EN		0x00000002	/* enable */
+#define E1000_RCTL_SBP		0x00000004	/* store bad packet */
+#define E1000_RCTL_UPE		0x00000008	/* unicast promiscuous enable */
+#define E1000_RCTL_MPE		0x00000010	/* multicast promiscuous enab */
+#define E1000_RCTL_LPE		0x00000020	/* long packet enable */
+#define E1000_RCTL_LBM_NO	0x00000000	/* no loopback mode */
+#define E1000_RCTL_LBM_MAC	0x00000040	/* MAC loopback mode */
+#define E1000_RCTL_LBM_SLP	0x00000080	/* serial link loopback mode */
+#define E1000_RCTL_LBM_TCVR	0x000000C0	/* tcvr loopback mode */
+#define E1000_RCTL_RDMTS_HALF	0x00000000	/* rx desc min threshold size */
+#define E1000_RCTL_RDMTS_QUAT	0x00000100	/* rx desc min threshold size */
+#define E1000_RCTL_RDMTS_EIGTH	0x00000200	/* rx desc min threshold size */
+#define E1000_RCTL_MO_SHIFT	12	/* multicast offset shift */
+#define E1000_RCTL_MO_0		0x00000000	/* multicast offset 11:0 */
+#define E1000_RCTL_MO_1		0x00001000	/* multicast offset 12:1 */
+#define E1000_RCTL_MO_2		0x00002000	/* multicast offset 13:2 */
+#define E1000_RCTL_MO_3		0x00003000	/* multicast offset 15:4 */
+#define E1000_RCTL_MDR		0x00004000	/* multicast desc ring 0 */
+#define E1000_RCTL_BAM		0x00008000	/* broadcast enable */
+/* these buffer sizes are valid if E1000_RCTL_BSEX is 0 */
+#define E1000_RCTL_SZ_2048	0x00000000	/* rx buffer size 2048 */
+#define E1000_RCTL_SZ_1024	0x00010000	/* rx buffer size 1024 */
+#define E1000_RCTL_SZ_512	0x00020000	/* rx buffer size 512 */
+#define E1000_RCTL_SZ_256	0x00030000	/* rx buffer size 256 */
+/* these buffer sizes are valid if E1000_RCTL_BSEX is 1 */
+#define E1000_RCTL_SZ_16384	0x00010000	/* rx buffer size 16384 */
+#define E1000_RCTL_SZ_8192	0x00020000	/* rx buffer size 8192 */
+#define E1000_RCTL_SZ_4096	0x00030000	/* rx buffer size 4096 */
+#define E1000_RCTL_VFE		0x00040000	/* vlan filter enable */
+#define E1000_RCTL_CFIEN	0x00080000	/* canonical form enable */
+#define E1000_RCTL_CFI		0x00100000	/* canonical form indicator */
+#define E1000_RCTL_DPF		0x00400000	/* discard pause frames */
+#define E1000_RCTL_PMCF		0x00800000	/* pass MAC control frames */
+#define E1000_RCTL_BSEX		0x02000000	/* Buffer size extension */
+
+/* SW_W_SYNC definitions */
+#define E1000_SWFW_EEP_SM     0x0001
+#define E1000_SWFW_PHY0_SM    0x0002
+#define E1000_SWFW_PHY1_SM    0x0004
+#define E1000_SWFW_MAC_CSR_SM 0x0008
+
+/* Receive Descriptor */
+#define E1000_RDT_DELAY 0x0000ffff	/* Delay timer (1=1024us) */
+#define E1000_RDT_FPDB	0x80000000	/* Flush descriptor block */
+#define E1000_RDLEN_LEN 0x0007ff80	/* descriptor length */
+#define E1000_RDH_RDH	0x0000ffff	/* receive descriptor head */
+#define E1000_RDT_RDT	0x0000ffff	/* receive descriptor tail */
+
+/* Flow Control */
+#define E1000_FCRTH_RTH  0x0000FFF8	/* Mask Bits[15:3] for RTH */
+#define E1000_FCRTH_XFCE 0x80000000	/* External Flow Control Enable */
+#define E1000_FCRTL_RTL  0x0000FFF8	/* Mask Bits[15:3] for RTL */
+#define E1000_FCRTL_XONE 0x80000000	/* Enable XON frame transmission */
+
+/* Receive Descriptor Control */
+#define E1000_RXDCTL_PTHRESH 0x0000003F	/* RXDCTL Prefetch Threshold */
+#define E1000_RXDCTL_HTHRESH 0x00003F00	/* RXDCTL Host Threshold */
+#define E1000_RXDCTL_WTHRESH 0x003F0000	/* RXDCTL Writeback Threshold */
+#define E1000_RXDCTL_GRAN    0x01000000	/* RXDCTL Granularity */
+#define E1000_RXDCTL_FULL_RX_DESC_WB 0x01010000	/* GRAN=1, WTHRESH=1 */
+
+/* Transmit Descriptor Control */
+#define E1000_TXDCTL_PTHRESH 0x0000003F	/* TXDCTL Prefetch Threshold */
+#define E1000_TXDCTL_HTHRESH 0x00003F00	/* TXDCTL Host Threshold */
+#define E1000_TXDCTL_WTHRESH 0x003F0000	/* TXDCTL Writeback Threshold */
+#define E1000_TXDCTL_GRAN    0x01000000	/* TXDCTL Granularity */
+#define E1000_TXDCTL_LWTHRESH 0xFE000000	/* TXDCTL Low Threshold */
+#define E1000_TXDCTL_FULL_TX_DESC_WB 0x01010000	/* GRAN=1, WTHRESH=1 */
+#define E1000_TXDCTL_COUNT_DESC 0x00400000 /* Enable the counting of desc.
+					      still to be processed. */
+
+/* Transmit Configuration Word */
+#define E1000_TXCW_FD	      0x00000020	/* TXCW full duplex */
+#define E1000_TXCW_HD	      0x00000040	/* TXCW half duplex */
+#define E1000_TXCW_PAUSE      0x00000080	/* TXCW sym pause request */
+#define E1000_TXCW_ASM_DIR    0x00000100	/* TXCW astm pause direction */
+#define E1000_TXCW_PAUSE_MASK 0x00000180	/* TXCW pause request mask */
+#define E1000_TXCW_RF	      0x00003000	/* TXCW remote fault */
+#define E1000_TXCW_NP	      0x00008000	/* TXCW next page */
+#define E1000_TXCW_CW	      0x0000ffff	/* TxConfigWord mask */
+#define E1000_TXCW_TXC	      0x40000000	/* Transmit Config control */
+#define E1000_TXCW_ANE	      0x80000000	/* Auto-neg enable */
+
+/* Receive Configuration Word */
+#define E1000_RXCW_CW	 0x0000ffff	/* RxConfigWord mask */
+#define E1000_RXCW_NC	 0x04000000	/* Receive config no carrier */
+#define E1000_RXCW_IV	 0x08000000	/* Receive config invalid */
+#define E1000_RXCW_CC	 0x10000000	/* Receive config change */
+#define E1000_RXCW_C	 0x20000000	/* Receive config */
+#define E1000_RXCW_SYNCH 0x40000000	/* Receive config synch */
+#define E1000_RXCW_ANC	 0x80000000	/* Auto-neg complete */
+
+/* Transmit Control */
+#define E1000_TCTL_RST	  0x00000001	/* software reset */
+#define E1000_TCTL_EN	  0x00000002	/* enable tx */
+#define E1000_TCTL_BCE	  0x00000004	/* busy check enable */
+#define E1000_TCTL_PSP	  0x00000008	/* pad short packets */
+#define E1000_TCTL_CT	  0x00000ff0	/* collision threshold */
+#define E1000_TCTL_COLD   0x003ff000	/* collision distance */
+#define E1000_TCTL_SWXOFF 0x00400000	/* SW Xoff transmission */
+#define E1000_TCTL_PBE	  0x00800000	/* Packet Burst Enable */
+#define E1000_TCTL_RTLC   0x01000000	/* Re-transmit on late collision */
+#define E1000_TCTL_NRTU   0x02000000	/* No Re-transmit on underrun */
+#define E1000_TCTL_MULR   0x10000000    /* Multiple request support */
+
+/* Receive Checksum Control */
+#define E1000_RXCSUM_PCSS_MASK 0x000000FF	/* Packet Checksum Start */
+#define E1000_RXCSUM_IPOFL     0x00000100	/* IPv4 checksum offload */
+#define E1000_RXCSUM_TUOFL     0x00000200	/* TCP / UDP checksum offload */
+#define E1000_RXCSUM_IPV6OFL   0x00000400	/* IPv6 checksum offload */
+
+/* Definitions for power management and wakeup registers */
+/* Wake Up Control */
+#define E1000_WUC_APME	     0x00000001	/* APM Enable */
+#define E1000_WUC_PME_EN     0x00000002	/* PME Enable */
+#define E1000_WUC_PME_STATUS 0x00000004	/* PME Status */
+#define E1000_WUC_APMPME     0x00000008	/* Assert PME on APM Wakeup */
+
+/* Wake Up Filter Control */
+#define E1000_WUFC_LNKC 0x00000001	/* Link Status Change Wakeup Enable */
+#define E1000_WUFC_MAG	0x00000002	/* Magic Packet Wakeup Enable */
+#define E1000_WUFC_EX	0x00000004	/* Directed Exact Wakeup Enable */
+#define E1000_WUFC_MC	0x00000008	/* Directed Multicast Wakeup Enable */
+#define E1000_WUFC_BC	0x00000010	/* Broadcast Wakeup Enable */
+#define E1000_WUFC_ARP	0x00000020	/* ARP Request Packet Wakeup Enable */
+#define E1000_WUFC_IPV4 0x00000040	/* Directed IPv4 Packet Wakeup Enable */
+#define E1000_WUFC_IPV6 0x00000080	/* Directed IPv6 Packet Wakeup Enable */
+#define E1000_WUFC_FLX0 0x00010000	/* Flexible Filter 0 Enable */
+#define E1000_WUFC_FLX1 0x00020000	/* Flexible Filter 1 Enable */
+#define E1000_WUFC_FLX2 0x00040000	/* Flexible Filter 2 Enable */
+#define E1000_WUFC_FLX3 0x00080000	/* Flexible Filter 3 Enable */
+#define E1000_WUFC_ALL_FILTERS 0x000F00FF	/* Mask for all wakeup filters */
+#define E1000_WUFC_FLX_OFFSET 16	/* Offset to the Flexible Filters bits */
+#define E1000_WUFC_FLX_FILTERS 0x000F0000	/* Mask for the 4 flexible filters */
+
+/* Wake Up Status */
+#define E1000_WUS_LNKC 0x00000001	/* Link Status Changed */
+#define E1000_WUS_MAG  0x00000002	/* Magic Packet Received */
+#define E1000_WUS_EX   0x00000004	/* Directed Exact Received */
+#define E1000_WUS_MC   0x00000008	/* Directed Multicast Received */
+#define E1000_WUS_BC   0x00000010	/* Broadcast Received */
+#define E1000_WUS_ARP  0x00000020	/* ARP Request Packet Received */
+#define E1000_WUS_IPV4 0x00000040	/* Directed IPv4 Packet Wakeup Received */
+#define E1000_WUS_IPV6 0x00000080	/* Directed IPv6 Packet Wakeup Received */
+#define E1000_WUS_FLX0 0x00010000	/* Flexible Filter 0 Match */
+#define E1000_WUS_FLX1 0x00020000	/* Flexible Filter 1 Match */
+#define E1000_WUS_FLX2 0x00040000	/* Flexible Filter 2 Match */
+#define E1000_WUS_FLX3 0x00080000	/* Flexible Filter 3 Match */
+#define E1000_WUS_FLX_FILTERS 0x000F0000	/* Mask for the 4 flexible filters */
+
+/* Management Control */
+#define E1000_MANC_SMBUS_EN	 0x00000001	/* SMBus Enabled - RO */
+#define E1000_MANC_ASF_EN	 0x00000002	/* ASF Enabled - RO */
+#define E1000_MANC_R_ON_FORCE	 0x00000004	/* Reset on Force TCO - RO */
+#define E1000_MANC_RMCP_EN	 0x00000100	/* Enable RCMP 026Fh Filtering */
+#define E1000_MANC_0298_EN	 0x00000200	/* Enable RCMP 0298h Filtering */
+#define E1000_MANC_IPV4_EN	 0x00000400	/* Enable IPv4 */
+#define E1000_MANC_IPV6_EN	 0x00000800	/* Enable IPv6 */
+#define E1000_MANC_SNAP_EN	 0x00001000	/* Accept LLC/SNAP */
+#define E1000_MANC_ARP_EN	 0x00002000	/* Enable ARP Request Filtering */
+#define E1000_MANC_NEIGHBOR_EN	 0x00004000	/* Enable Neighbor Discovery
+						 * Filtering */
+#define E1000_MANC_TCO_RESET	 0x00010000	/* TCO Reset Occurred */
+#define E1000_MANC_RCV_TCO_EN	 0x00020000	/* Receive TCO Packets Enabled */
+#define E1000_MANC_REPORT_STATUS 0x00040000	/* Status Reporting Enabled */
+#define E1000_MANC_SMB_REQ	 0x01000000	/* SMBus Request */
+#define E1000_MANC_SMB_GNT	 0x02000000	/* SMBus Grant */
+#define E1000_MANC_SMB_CLK_IN	 0x04000000	/* SMBus Clock In */
+#define E1000_MANC_SMB_DATA_IN	 0x08000000	/* SMBus Data In */
+#define E1000_MANC_SMB_DATA_OUT  0x10000000	/* SMBus Data Out */
+#define E1000_MANC_SMB_CLK_OUT	 0x20000000	/* SMBus Clock Out */
+
+#define E1000_MANC_SMB_DATA_OUT_SHIFT  28	/* SMBus Data Out Shift */
+#define E1000_MANC_SMB_CLK_OUT_SHIFT   29	/* SMBus Clock Out Shift */
+
+/* Wake Up Packet Length */
+#define E1000_WUPL_LENGTH_MASK 0x0FFF	/* Only the lower 12 bits are valid */
+
+#define E1000_MDALIGN	       4096
+
+/* EEPROM Commands */
+#define EEPROM_READ_OPCODE  0x6	/* EERPOM read opcode */
+#define EEPROM_WRITE_OPCODE 0x5	/* EERPOM write opcode */
+#define EEPROM_ERASE_OPCODE 0x7	/* EERPOM erase opcode */
+#define EEPROM_EWEN_OPCODE  0x13	/* EERPOM erase/write enable */
+#define EEPROM_EWDS_OPCODE  0x10	/* EERPOM erast/write disable */
+
+/* Word definitions for ID LED Settings */
+#define ID_LED_RESERVED_0000 0x0000
+#define ID_LED_RESERVED_FFFF 0xFFFF
+#define ID_LED_DEFAULT	     ((ID_LED_OFF1_ON2 << 12) | \
+			      (ID_LED_OFF1_OFF2 << 8) | \
+			      (ID_LED_DEF1_DEF2 << 4) | \
+			      (ID_LED_DEF1_DEF2))
+#define ID_LED_DEF1_DEF2     0x1
+#define ID_LED_DEF1_ON2      0x2
+#define ID_LED_DEF1_OFF2     0x3
+#define ID_LED_ON1_DEF2      0x4
+#define ID_LED_ON1_ON2	     0x5
+#define ID_LED_ON1_OFF2      0x6
+#define ID_LED_OFF1_DEF2     0x7
+#define ID_LED_OFF1_ON2      0x8
+#define ID_LED_OFF1_OFF2     0x9
+
+/* Mask bits for fields in Word 0x03 of the EEPROM */
+#define EEPROM_COMPAT_SERVER 0x0400
+#define EEPROM_COMPAT_CLIENT 0x0200
+
+/* Mask bits for fields in Word 0x0a of the EEPROM */
+#define EEPROM_WORD0A_ILOS   0x0010
+#define EEPROM_WORD0A_SWDPIO 0x01E0
+#define EEPROM_WORD0A_LRST   0x0200
+#define EEPROM_WORD0A_FD     0x0400
+#define EEPROM_WORD0A_66MHZ  0x0800
+
+/* Mask bits for fields in Word 0x0f of the EEPROM */
+#define EEPROM_WORD0F_PAUSE_MASK 0x3000
+#define EEPROM_WORD0F_PAUSE	 0x1000
+#define EEPROM_WORD0F_ASM_DIR	 0x2000
+#define EEPROM_WORD0F_ANE	 0x0800
+#define EEPROM_WORD0F_SWPDIO_EXT 0x00F0
+
+/* For checksumming, the sum of all words in the EEPROM should equal 0xBABA. */
+#define EEPROM_SUM 0xBABA
+
+/* EEPROM Map defines (WORD OFFSETS)*/
+#define EEPROM_NODE_ADDRESS_BYTE_0 0
+#define EEPROM_PBA_BYTE_1	   8
+
+/* EEPROM Map Sizes (Byte Counts) */
+#define PBA_SIZE 4
+
+/* Collision related configuration parameters */
+#define E1000_COLLISION_THRESHOLD	0xF
+#define E1000_CT_SHIFT			4
+#define E1000_COLLISION_DISTANCE        63
+#define E1000_COLLISION_DISTANCE_82542  64
+#define E1000_FDX_COLLISION_DISTANCE	E1000_COLLISION_DISTANCE
+#define E1000_HDX_COLLISION_DISTANCE	E1000_COLLISION_DISTANCE
+#define E1000_GB_HDX_COLLISION_DISTANCE 512
+#define E1000_COLD_SHIFT		12
+
+/* The number of Transmit and Receive Descriptors must be a multiple of 8 */
+#define REQ_TX_DESCRIPTOR_MULTIPLE  8
+#define REQ_RX_DESCRIPTOR_MULTIPLE  8
+
+/* Default values for the transmit IPG register */
+#define DEFAULT_82542_TIPG_IPGT        10
+#define DEFAULT_82543_TIPG_IPGT_FIBER  9
+#define DEFAULT_82543_TIPG_IPGT_COPPER 8
+
+#define E1000_TIPG_IPGT_MASK  0x000003FF
+#define E1000_TIPG_IPGR1_MASK 0x000FFC00
+#define E1000_TIPG_IPGR2_MASK 0x3FF00000
+
+#define DEFAULT_82542_TIPG_IPGR1 2
+#define DEFAULT_82543_TIPG_IPGR1 8
+#define E1000_TIPG_IPGR1_SHIFT	10
+
+#define DEFAULT_82542_TIPG_IPGR2 10
+#define DEFAULT_82543_TIPG_IPGR2 6
+#define DEFAULT_80003ES2LAN_TIPG_IPGR2 7
+#define E1000_TIPG_IPGR2_SHIFT	20
+
+#define E1000_TXDMAC_DPP 0x00000001
+
+/* Adaptive IFS defines */
+#define TX_THRESHOLD_START     8
+#define TX_THRESHOLD_INCREMENT 10
+#define TX_THRESHOLD_DECREMENT 1
+#define TX_THRESHOLD_STOP      190
+#define TX_THRESHOLD_DISABLE   0
+#define TX_THRESHOLD_TIMER_MS  10000
+#define MIN_NUM_XMITS	       1000
+#define IFS_MAX		       80
+#define IFS_STEP	       10
+#define IFS_MIN		       40
+#define IFS_RATIO	       4
+
+/* PBA constants */
+#define E1000_PBA_16K 0x0010	/* 16KB, default TX allocation */
+#define E1000_PBA_24K 0x0018
+#define E1000_PBA_38K 0x0026
+#define E1000_PBA_40K 0x0028
+#define E1000_PBA_48K 0x0030	/* 48KB, default RX allocation */
+
+/* Flow Control Constants */
+#define FLOW_CONTROL_ADDRESS_LOW  0x00C28001
+#define FLOW_CONTROL_ADDRESS_HIGH 0x00000100
+#define FLOW_CONTROL_TYPE	  0x8808
+
+/* The historical defaults for the flow control values are given below. */
+#define FC_DEFAULT_HI_THRESH	    (0x8000)	/* 32KB */
+#define FC_DEFAULT_LO_THRESH	    (0x4000)	/* 16KB */
+#define FC_DEFAULT_TX_TIMER	    (0x100)	/* ~130 us */
+
+/* Flow Control High-Watermark: 43464 bytes */
+#define E1000_FC_HIGH_THRESH 0xA9C8
+/* Flow Control Low-Watermark: 43456 bytes */
+#define E1000_FC_LOW_THRESH 0xA9C0
+/* Flow Control Pause Time: 858 usec */
+#define E1000_FC_PAUSE_TIME 0x0680
+
+/* The number of bits that we need to shift right to move the "pause"
+ * bits from the EEPROM (bits 13:12) to the "pause" (bits 8:7) field
+ * in the TXCW register
+ */
+#define PAUSE_SHIFT 5
+
+/* The number of bits that we need to shift left to move the "SWDPIO"
+ * bits from the EEPROM (bits 8:5) to the "SWDPIO" (bits 25:22) field
+ * in the CTRL register
+ */
+#define SWDPIO_SHIFT 17
+
+/* The number of bits that we need to shift left to move the "SWDPIO_EXT"
+ * bits from the EEPROM word F (bits 7:4) to the bits 11:8 of The
+ * Extended CTRL register.
+ * in the CTRL register
+ */
+#define SWDPIO__EXT_SHIFT 4
+
+#define RECEIVE_BUFFER_ALIGN_SIZE  (256)
+
+/* The number of milliseconds we wait for auto-negotiation to complete */
+#define LINK_UP_TIMEOUT		    500
+
+#define E1000_TX_BUFFER_SIZE ((uint32_t)1514)
+
+/* Structures, enums, and macros for the PHY */
+
+/* Bit definitions for the Management Data IO (MDIO) and Management Data
+ * Clock (MDC) pins in the Device Control Register.
+ */
+#define E1000_CTRL_PHY_RESET_DIR	E1000_CTRL_SWDPIO0
+#define E1000_CTRL_PHY_RESET		E1000_CTRL_SWDPIN0
+#define E1000_CTRL_MDIO_DIR		E1000_CTRL_SWDPIO2
+#define E1000_CTRL_MDIO			E1000_CTRL_SWDPIN2
+#define E1000_CTRL_MDC_DIR		E1000_CTRL_SWDPIO3
+#define E1000_CTRL_MDC			E1000_CTRL_SWDPIN3
+#define E1000_CTRL_PHY_RESET_DIR4	E1000_CTRL_EXT_SDP4_DIR
+#define E1000_CTRL_PHY_RESET4		E1000_CTRL_EXT_SDP4_DATA
+
+/* PHY 1000 MII Register/Bit Definitions */
+/* PHY Registers defined by IEEE */
+#define PHY_CTRL			0x00	/* Control Register */
+#define PHY_STATUS			0x01	/* Status Regiser */
+#define PHY_ID1				0x02	/* Phy Id Reg (word 1) */
+#define PHY_ID2				0x03	/* Phy Id Reg (word 2) */
+#define PHY_AUTONEG_ADV		0x04	/* Autoneg Advertisement */
+#define PHY_LP_ABILITY			0x05	/* Link Partner Ability (Base Page) */
+#define PHY_AUTONEG_EXP		0x06	/* Autoneg Expansion Reg */
+#define PHY_NEXT_PAGE_TX		0x07	/* Next Page TX */
+#define PHY_LP_NEXT_PAGE		0x08	/* Link Partner Next Page */
+#define PHY_1000T_CTRL			0x09	/* 1000Base-T Control Reg */
+#define PHY_1000T_STATUS		0x0A	/* 1000Base-T Status Reg */
+#define PHY_EXT_STATUS			0x0F	/* Extended Status Reg */
+
+/* M88E1000 Specific Registers */
+#define M88E1000_PHY_SPEC_CTRL		0x10	/* PHY Specific Control Register */
+#define M88E1000_PHY_SPEC_STATUS	0x11	/* PHY Specific Status Register */
+#define M88E1000_INT_ENABLE		0x12	/* Interrupt Enable Register */
+#define M88E1000_INT_STATUS		0x13	/* Interrupt Status Register */
+#define M88E1000_EXT_PHY_SPEC_CTRL	0x14	/* Extended PHY Specific Control */
+#define M88E1000_RX_ERR_CNTR		0x15	/* Receive Error Counter */
+
+#define M88E1000_PHY_PAGE_SELECT   0x1D  /* Reg 29 for page number setting */
+#define M88E1000_PHY_GEN_CONTROL   0x1E  /* Its meaning depends on reg 29 */
+
+#define MAX_PHY_REG_ADDRESS		0x1F	/* 5 bit address bus (0-0x1F) */
+
+/* M88EC018 Rev 2 specific DownShift settings */
+#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK  0x0E00
+#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_1X    0x0000
+#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_2X    0x0200
+#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_3X    0x0400
+#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_4X    0x0600
+#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X    0x0800
+#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_6X    0x0A00
+#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_7X    0x0C00
+#define M88EC018_EPSCR_DOWNSHIFT_COUNTER_8X    0x0E00
+
+/* IGP01E1000 specifics */
+#define IGP01E1000_IEEE_REGS_PAGE	0x0000
+#define IGP01E1000_IEEE_RESTART_AUTONEG 0x3300
+#define IGP01E1000_IEEE_FORCE_GIGA	0x0140
+
+/* IGP01E1000 Specific Registers */
+#define IGP01E1000_PHY_PORT_CONFIG	0x10 /* PHY Specific Port Config Register */
+#define IGP01E1000_PHY_PORT_STATUS	0x11 /* PHY Specific Status Register */
+#define IGP01E1000_PHY_PORT_CTRL	0x12 /* PHY Specific Control Register */
+#define IGP01E1000_PHY_LINK_HEALTH	0x13 /* PHY Link Health Register */
+#define IGP01E1000_GMII_FIFO		0x14 /* GMII FIFO Register */
+#define IGP01E1000_PHY_CHANNEL_QUALITY	0x15 /* PHY Channel Quality Register */
+#define IGP02E1000_PHY_POWER_MGMT	0x19
+#define IGP01E1000_PHY_PAGE_SELECT	0x1F /* PHY Page Select Core Register */
+
+/* IGP01E1000 AGC Registers - stores the cable length values*/
+#define IGP01E1000_PHY_AGC_A        0x1172
+#define IGP01E1000_PHY_AGC_B        0x1272
+#define IGP01E1000_PHY_AGC_C        0x1472
+#define IGP01E1000_PHY_AGC_D        0x1872
+
+/* IGP01E1000 Specific Port Config Register - R/W */
+#define IGP01E1000_PSCFR_AUTO_MDIX_PAR_DETECT  0x0010
+#define IGP01E1000_PSCFR_PRE_EN                0x0020
+#define IGP01E1000_PSCFR_SMART_SPEED           0x0080
+#define IGP01E1000_PSCFR_DISABLE_TPLOOPBACK    0x0100
+#define IGP01E1000_PSCFR_DISABLE_JABBER        0x0400
+#define IGP01E1000_PSCFR_DISABLE_TRANSMIT      0x2000
+/* IGP02E1000 AGC Registers for cable length values */
+#define IGP02E1000_PHY_AGC_A        0x11B1
+#define IGP02E1000_PHY_AGC_B        0x12B1
+#define IGP02E1000_PHY_AGC_C        0x14B1
+#define IGP02E1000_PHY_AGC_D        0x18B1
+
+#define IGP02E1000_PM_SPD                         0x0001  /* Smart Power Down */
+#define IGP02E1000_PM_D3_LPLU                     0x0004  /* Enable LPLU in
+							     non-D0a modes */
+#define IGP02E1000_PM_D0_LPLU                     0x0002  /* Enable LPLU in
+							     D0a mode */
+
+/* IGP01E1000 DSP Reset Register */
+#define IGP01E1000_PHY_DSP_RESET   0x1F33
+#define IGP01E1000_PHY_DSP_SET     0x1F71
+#define IGP01E1000_PHY_DSP_FFE     0x1F35
+
+#define IGP01E1000_PHY_CHANNEL_NUM    4
+#define IGP02E1000_PHY_CHANNEL_NUM    4
+
+#define IGP01E1000_PHY_AGC_PARAM_A    0x1171
+#define IGP01E1000_PHY_AGC_PARAM_B    0x1271
+#define IGP01E1000_PHY_AGC_PARAM_C    0x1471
+#define IGP01E1000_PHY_AGC_PARAM_D    0x1871
+
+#define IGP01E1000_PHY_EDAC_MU_INDEX        0xC000
+#define IGP01E1000_PHY_EDAC_SIGN_EXT_9_BITS 0x8000
+
+#define IGP01E1000_PHY_ANALOG_TX_STATE      0x2890
+#define IGP01E1000_PHY_ANALOG_CLASS_A       0x2000
+#define IGP01E1000_PHY_FORCE_ANALOG_ENABLE  0x0004
+#define IGP01E1000_PHY_DSP_FFE_CM_CP        0x0069
+
+#define IGP01E1000_PHY_DSP_FFE_DEFAULT      0x002A
+/* IGP01E1000 PCS Initialization register - stores the polarity status when
+ * speed = 1000 Mbps. */
+#define IGP01E1000_PHY_PCS_INIT_REG  0x00B4
+#define IGP01E1000_PHY_PCS_CTRL_REG  0x00B5
+
+#define IGP01E1000_ANALOG_REGS_PAGE  0x20C0
+
+/* IGP01E1000 GMII FIFO Register */
+#define IGP01E1000_GMII_FLEX_SPD               0x10 /* Enable flexible speed
+							* on Link-Up */
+#define IGP01E1000_GMII_SPD                    0x20 /* Enable SPD */
+
+/* IGP01E1000 Analog Register */
+#define IGP01E1000_ANALOG_SPARE_FUSE_STATUS       0x20D1
+#define IGP01E1000_ANALOG_FUSE_STATUS             0x20D0
+#define IGP01E1000_ANALOG_FUSE_CONTROL            0x20DC
+#define IGP01E1000_ANALOG_FUSE_BYPASS             0x20DE
+
+#define IGP01E1000_ANALOG_FUSE_POLY_MASK            0xF000
+#define IGP01E1000_ANALOG_FUSE_FINE_MASK            0x0F80
+#define IGP01E1000_ANALOG_FUSE_COARSE_MASK          0x0070
+#define IGP01E1000_ANALOG_SPARE_FUSE_ENABLED        0x0100
+#define IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL    0x0002
+
+#define IGP01E1000_ANALOG_FUSE_COARSE_THRESH        0x0040
+#define IGP01E1000_ANALOG_FUSE_COARSE_10            0x0010
+#define IGP01E1000_ANALOG_FUSE_FINE_1               0x0080
+#define IGP01E1000_ANALOG_FUSE_FINE_10              0x0500
+
+/* IGP01E1000 Specific Port Control Register - R/W */
+#define IGP01E1000_PSCR_TP_LOOPBACK            0x0010
+#define IGP01E1000_PSCR_CORRECT_NC_SCMBLR      0x0200
+#define IGP01E1000_PSCR_TEN_CRS_SELECT         0x0400
+#define IGP01E1000_PSCR_FLIP_CHIP              0x0800
+#define IGP01E1000_PSCR_AUTO_MDIX              0x1000
+#define IGP01E1000_PSCR_FORCE_MDI_MDIX         0x2000 /* 0-MDI, 1-MDIX */
+/* GG82563 PHY Specific Status Register (Page 0, Register 16 */
+#define GG82563_PSCR_DISABLE_JABBER             0x0001 /* 1=Disable Jabber */
+#define GG82563_PSCR_POLARITY_REVERSAL_DISABLE  0x0002 /* 1=Polarity Reversal
+							  Disabled */
+#define GG82563_PSCR_POWER_DOWN                 0x0004 /* 1=Power Down */
+#define GG82563_PSCR_COPPER_TRANSMITER_DISABLE  0x0008 /* 1=Transmitter
+							  Disabled */
+#define GG82563_PSCR_CROSSOVER_MODE_MASK        0x0060
+#define GG82563_PSCR_CROSSOVER_MODE_MDI         0x0000 /* 00=Manual MDI
+							  configuration */
+#define GG82563_PSCR_CROSSOVER_MODE_MDIX        0x0020 /* 01=Manual MDIX
+							  configuration */
+#define GG82563_PSCR_CROSSOVER_MODE_AUTO        0x0060 /* 11=Automatic
+							  crossover */
+#define GG82563_PSCR_ENALBE_EXTENDED_DISTANCE   0x0080 /* 1=Enable Extended
+							  Distance */
+#define GG82563_PSCR_ENERGY_DETECT_MASK         0x0300
+#define GG82563_PSCR_ENERGY_DETECT_OFF          0x0000 /* 00,01=Off */
+#define GG82563_PSCR_ENERGY_DETECT_RX           0x0200 /* 10=Sense on Rx only
+							  (Energy Detect) */
+#define GG82563_PSCR_ENERGY_DETECT_RX_TM        0x0300 /* 11=Sense and Tx NLP */
+#define GG82563_PSCR_FORCE_LINK_GOOD            0x0400 /* 1=Force Link Good */
+#define GG82563_PSCR_DOWNSHIFT_ENABLE           0x0800 /* 1=Enable Downshift */
+#define GG82563_PSCR_DOWNSHIFT_COUNTER_MASK     0x7000
+#define GG82563_PSCR_DOWNSHIFT_COUNTER_SHIFT    12
+
+/* PHY Specific Status Register (Page 0, Register 17) */
+#define GG82563_PSSR_JABBER                0x0001 /* 1=Jabber */
+#define GG82563_PSSR_POLARITY              0x0002 /* 1=Polarity Reversed */
+#define GG82563_PSSR_LINK                  0x0008 /* 1=Link is Up */
+#define GG82563_PSSR_ENERGY_DETECT         0x0010 /* 1=Sleep, 0=Active */
+#define GG82563_PSSR_DOWNSHIFT             0x0020 /* 1=Downshift */
+#define GG82563_PSSR_CROSSOVER_STATUS      0x0040 /* 1=MDIX, 0=MDI */
+#define GG82563_PSSR_RX_PAUSE_ENABLED      0x0100 /* 1=Receive Pause Enabled */
+#define GG82563_PSSR_TX_PAUSE_ENABLED      0x0200 /* 1=Transmit Pause Enabled */
+#define GG82563_PSSR_LINK_UP               0x0400 /* 1=Link Up */
+#define GG82563_PSSR_SPEED_DUPLEX_RESOLVED 0x0800 /* 1=Resolved */
+#define GG82563_PSSR_PAGE_RECEIVED         0x1000 /* 1=Page Received */
+#define GG82563_PSSR_DUPLEX                0x2000 /* 1-Full-Duplex */
+#define GG82563_PSSR_SPEED_MASK            0xC000
+#define GG82563_PSSR_SPEED_10MBPS          0x0000 /* 00=10Mbps */
+#define GG82563_PSSR_SPEED_100MBPS         0x4000 /* 01=100Mbps */
+#define GG82563_PSSR_SPEED_1000MBPS        0x8000 /* 10=1000Mbps */
+
+/* PHY Specific Status Register 2 (Page 0, Register 19) */
+#define GG82563_PSSR2_JABBER                0x0001 /* 1=Jabber */
+#define GG82563_PSSR2_POLARITY_CHANGED      0x0002 /* 1=Polarity Changed */
+#define GG82563_PSSR2_ENERGY_DETECT_CHANGED 0x0010 /* 1=Energy Detect Changed */
+#define GG82563_PSSR2_DOWNSHIFT_INTERRUPT   0x0020 /* 1=Downshift Detected */
+#define GG82563_PSSR2_MDI_CROSSOVER_CHANGE  0x0040 /* 1=Crossover Changed */
+#define GG82563_PSSR2_FALSE_CARRIER         0x0100 /* 1=false Carrier */
+#define GG82563_PSSR2_SYMBOL_ERROR          0x0200 /* 1=Symbol Error */
+#define GG82563_PSSR2_LINK_STATUS_CHANGED   0x0400 /* 1=Link Status Changed */
+#define GG82563_PSSR2_AUTO_NEG_COMPLETED    0x0800 /* 1=Auto-Neg Completed */
+#define GG82563_PSSR2_PAGE_RECEIVED         0x1000 /* 1=Page Received */
+#define GG82563_PSSR2_DUPLEX_CHANGED        0x2000 /* 1=Duplex Changed */
+#define GG82563_PSSR2_SPEED_CHANGED         0x4000 /* 1=Speed Changed */
+#define GG82563_PSSR2_AUTO_NEG_ERROR        0x8000 /* 1=Auto-Neg Error */
+
+/* PHY Specific Control Register 2 (Page 0, Register 26) */
+#define GG82563_PSCR2_10BT_POLARITY_FORCE           0x0002 /* 1=Force Negative
+							      Polarity */
+#define GG82563_PSCR2_1000MB_TEST_SELECT_MASK       0x000C
+#define GG82563_PSCR2_1000MB_TEST_SELECT_NORMAL     0x0000 /* 00,01=Normal
+							      Operation */
+#define GG82563_PSCR2_1000MB_TEST_SELECT_112NS      0x0008 /* 10=Select 112ns
+							      Sequence */
+#define GG82563_PSCR2_1000MB_TEST_SELECT_16NS       0x000C /* 11=Select 16ns
+							      Sequence */
+#define GG82563_PSCR2_REVERSE_AUTO_NEG              0x2000 /* 1=Reverse
+							Auto-Negotiation */
+#define GG82563_PSCR2_1000BT_DISABLE                0x4000 /* 1=Disable
+							      1000BASE-T */
+#define GG82563_PSCR2_TRANSMITER_TYPE_MASK          0x8000
+#define GG82563_PSCR2_TRANSMITTER_TYPE_CLASS_B      0x0000 /* 0=Class B */
+#define GG82563_PSCR2_TRANSMITTER_TYPE_CLASS_A      0x8000 /* 1=Class A */
+
+/* MAC Specific Control Register (Page 2, Register 21) */
+/* Tx clock speed for Link Down and 1000BASE-T for the following speeds */
+#define GG82563_MSCR_TX_CLK_MASK                    0x0007
+#define GG82563_MSCR_TX_CLK_10MBPS_2_5MHZ           0x0004
+#define GG82563_MSCR_TX_CLK_100MBPS_25MHZ           0x0005
+#define GG82563_MSCR_TX_CLK_1000MBPS_2_5MHZ         0x0006
+#define GG82563_MSCR_TX_CLK_1000MBPS_25MHZ          0x0007
+
+#define GG82563_MSCR_ASSERT_CRS_ON_TX               0x0010 /* 1=Assert */
+
+/* DSP Distance Register (Page 5, Register 26) */
+#define GG82563_DSPD_CABLE_LENGTH               0x0007 /* 0 = <50M;
+							  1 = 50-80M;
+							  2 = 80-110M;
+							  3 = 110-140M;
+							  4 = >140M */
+
+/* Kumeran Mode Control Register (Page 193, Register 16) */
+#define GG82563_KMCR_PHY_LEDS_EN                    0x0020 /* 1=PHY LEDs,
+							0=Kumeran Inband LEDs */
+#define GG82563_KMCR_FORCE_LINK_UP                  0x0040 /* 1=Force Link Up */
+#define GG82563_KMCR_SUPPRESS_SGMII_EPD_EXT         0x0080
+#define GG82563_KMCR_MDIO_BUS_SPEED_SELECT_MASK     0x0400
+#define GG82563_KMCR_MDIO_BUS_SPEED_SELECT          0x0400 /* 1=6.25MHz,
+							      0=0.8MHz */
+#define GG82563_KMCR_PASS_FALSE_CARRIER             0x0800
+
+/* Power Management Control Register (Page 193, Register 20) */
+#define GG82563_PMCR_ENABLE_ELECTRICAL_IDLE    0x0001 /* 1=Enalbe SERDES
+						Electrical Idle */
+#define GG82563_PMCR_DISABLE_PORT              0x0002 /* 1=Disable Port */
+#define GG82563_PMCR_DISABLE_SERDES            0x0004 /* 1=Disable SERDES */
+#define GG82563_PMCR_REVERSE_AUTO_NEG          0x0008 /* 1=Enable Reverse
+						Auto-Negotiation */
+#define GG82563_PMCR_DISABLE_1000_NON_D0       0x0010 /* 1=Disable 1000Mbps
+							 Auto-Neg in non D0 */
+#define GG82563_PMCR_DISABLE_1000              0x0020 /* 1=Disable 1000Mbps
+							 Auto-Neg Always */
+#define GG82563_PMCR_REVERSE_AUTO_NEG_D0A      0x0040 /* 1=Enable D0a
+						Reverse Auto-Negotiation */
+#define GG82563_PMCR_FORCE_POWER_STATE         0x0080 /* 1=Force Power State */
+#define GG82563_PMCR_PROGRAMMED_POWER_STATE_MASK    0x0300
+#define GG82563_PMCR_PROGRAMMED_POWER_STATE_DR      0x0000 /* 00=Dr */
+#define GG82563_PMCR_PROGRAMMED_POWER_STATE_D0U     0x0100 /* 01=D0u */
+#define GG82563_PMCR_PROGRAMMED_POWER_STATE_D0A     0x0200 /* 10=D0a */
+#define GG82563_PMCR_PROGRAMMED_POWER_STATE_D3      0x0300 /* 11=D3 */
+
+/* In-Band Control Register (Page 194, Register 18) */
+#define GG82563_ICR_DIS_PADDING		0x0010 /* Disable Padding Use */
+
+
+/* Bits...
+ * 15-5: page
+ * 4-0: register offset
+ */
+#define GG82563_PAGE_SHIFT        5
+#define GG82563_REG(page, reg)    \
+	(((page) << GG82563_PAGE_SHIFT) | ((reg) & MAX_PHY_REG_ADDRESS))
+#define GG82563_MIN_ALT_REG       30
+
+/* GG82563 Specific Registers */
+#define GG82563_PHY_SPEC_CTRL           \
+	GG82563_REG(0, 16) /* PHY Specific Control */
+#define GG82563_PHY_SPEC_STATUS         \
+	GG82563_REG(0, 17) /* PHY Specific Status */
+#define GG82563_PHY_INT_ENABLE          \
+	GG82563_REG(0, 18) /* Interrupt Enable */
+#define GG82563_PHY_SPEC_STATUS_2       \
+	GG82563_REG(0, 19) /* PHY Specific Status 2 */
+#define GG82563_PHY_RX_ERR_CNTR         \
+	GG82563_REG(0, 21) /* Receive Error Counter */
+#define GG82563_PHY_PAGE_SELECT         \
+	GG82563_REG(0, 22) /* Page Select */
+#define GG82563_PHY_SPEC_CTRL_2         \
+	GG82563_REG(0, 26) /* PHY Specific Control 2 */
+#define GG82563_PHY_PAGE_SELECT_ALT     \
+	GG82563_REG(0, 29) /* Alternate Page Select */
+#define GG82563_PHY_TEST_CLK_CTRL       \
+	GG82563_REG(0, 30) /* Test Clock Control (use reg. 29 to select) */
+
+#define GG82563_PHY_MAC_SPEC_CTRL       \
+	GG82563_REG(2, 21) /* MAC Specific Control Register */
+#define GG82563_PHY_MAC_SPEC_CTRL_2     \
+	GG82563_REG(2, 26) /* MAC Specific Control 2 */
+
+#define GG82563_PHY_DSP_DISTANCE    \
+	GG82563_REG(5, 26) /* DSP Distance */
+
+/* Page 193 - Port Control Registers */
+#define GG82563_PHY_KMRN_MODE_CTRL   \
+	GG82563_REG(193, 16) /* Kumeran Mode Control */
+#define GG82563_PHY_PORT_RESET          \
+	GG82563_REG(193, 17) /* Port Reset */
+#define GG82563_PHY_REVISION_ID         \
+	GG82563_REG(193, 18) /* Revision ID */
+#define GG82563_PHY_DEVICE_ID           \
+	GG82563_REG(193, 19) /* Device ID */
+#define GG82563_PHY_PWR_MGMT_CTRL       \
+	GG82563_REG(193, 20) /* Power Management Control */
+#define GG82563_PHY_RATE_ADAPT_CTRL     \
+	GG82563_REG(193, 25) /* Rate Adaptation Control */
+
+/* Page 194 - KMRN Registers */
+#define GG82563_PHY_KMRN_FIFO_CTRL_STAT \
+	GG82563_REG(194, 16) /* FIFO's Control/Status */
+#define GG82563_PHY_KMRN_CTRL           \
+	GG82563_REG(194, 17) /* Control */
+#define GG82563_PHY_INBAND_CTRL         \
+	GG82563_REG(194, 18) /* Inband Control */
+#define GG82563_PHY_KMRN_DIAGNOSTIC     \
+	GG82563_REG(194, 19) /* Diagnostic */
+#define GG82563_PHY_ACK_TIMEOUTS        \
+	GG82563_REG(194, 20) /* Acknowledge Timeouts */
+#define GG82563_PHY_ADV_ABILITY         \
+	GG82563_REG(194, 21) /* Advertised Ability */
+#define GG82563_PHY_LINK_PARTNER_ADV_ABILITY \
+	GG82563_REG(194, 23) /* Link Partner Advertised Ability */
+#define GG82563_PHY_ADV_NEXT_PAGE       \
+	GG82563_REG(194, 24) /* Advertised Next Page */
+#define GG82563_PHY_LINK_PARTNER_ADV_NEXT_PAGE \
+	GG82563_REG(194, 25) /* Link Partner Advertised Next page */
+#define GG82563_PHY_KMRN_MISC           \
+	GG82563_REG(194, 26) /* Misc. */
+
+/* PHY Control Register */
+#define MII_CR_SPEED_SELECT_MSB		0x0040	/* bits 6,13: 10=1000, 01=100, 00=10 */
+#define MII_CR_COLL_TEST_ENABLE		0x0080	/* Collision test enable */
+#define MII_CR_FULL_DUPLEX		0x0100	/* FDX =1, half duplex =0 */
+#define MII_CR_RESTART_AUTO_NEG		0x0200	/* Restart auto negotiation */
+#define MII_CR_ISOLATE			0x0400	/* Isolate PHY from MII */
+#define MII_CR_POWER_DOWN		0x0800	/* Power down */
+#define MII_CR_AUTO_NEG_EN		0x1000	/* Auto Neg Enable */
+#define MII_CR_SPEED_SELECT_LSB		0x2000	/* bits 6,13: 10=1000, 01=100, 00=10 */
+#define MII_CR_LOOPBACK			0x4000	/* 0 = normal, 1 = loopback */
+#define MII_CR_RESET			0x8000	/* 0 = normal, 1 = PHY reset */
+
+/* PHY Status Register */
+#define MII_SR_EXTENDED_CAPS		0x0001	/* Extended register capabilities */
+#define MII_SR_JABBER_DETECT		0x0002	/* Jabber Detected */
+#define MII_SR_LINK_STATUS		0x0004	/* Link Status 1 = link */
+#define MII_SR_AUTONEG_CAPS		0x0008	/* Auto Neg Capable */
+#define MII_SR_REMOTE_FAULT		0x0010	/* Remote Fault Detect */
+#define MII_SR_AUTONEG_COMPLETE		0x0020	/* Auto Neg Complete */
+#define MII_SR_PREAMBLE_SUPPRESS	0x0040	/* Preamble may be suppressed */
+#define MII_SR_EXTENDED_STATUS		0x0100	/* Ext. status info in Reg 0x0F */
+#define MII_SR_100T2_HD_CAPS		0x0200	/* 100T2 Half Duplex Capable */
+#define MII_SR_100T2_FD_CAPS		0x0400	/* 100T2 Full Duplex Capable */
+#define MII_SR_10T_HD_CAPS		0x0800	/* 10T	 Half Duplex Capable */
+#define MII_SR_10T_FD_CAPS		0x1000	/* 10T	 Full Duplex Capable */
+#define MII_SR_100X_HD_CAPS		0x2000	/* 100X  Half Duplex Capable */
+#define MII_SR_100X_FD_CAPS		0x4000	/* 100X  Full Duplex Capable */
+#define MII_SR_100T4_CAPS		0x8000	/* 100T4 Capable */
+
+/* Autoneg Advertisement Register */
+#define NWAY_AR_SELECTOR_FIELD		0x0001	/* indicates IEEE 802.3 CSMA/CD */
+#define NWAY_AR_10T_HD_CAPS		0x0020	/* 10T	 Half Duplex Capable */
+#define NWAY_AR_10T_FD_CAPS		0x0040	/* 10T	 Full Duplex Capable */
+#define NWAY_AR_100TX_HD_CAPS		0x0080	/* 100TX Half Duplex Capable */
+#define NWAY_AR_100TX_FD_CAPS		0x0100	/* 100TX Full Duplex Capable */
+#define NWAY_AR_100T4_CAPS		0x0200	/* 100T4 Capable */
+#define NWAY_AR_PAUSE			0x0400	/* Pause operation desired */
+#define NWAY_AR_ASM_DIR		0x0800	/* Asymmetric Pause Direction bit */
+#define NWAY_AR_REMOTE_FAULT		0x2000	/* Remote Fault detected */
+#define NWAY_AR_NEXT_PAGE		0x8000	/* Next Page ability supported */
+
+/* Link Partner Ability Register (Base Page) */
+#define NWAY_LPAR_SELECTOR_FIELD	0x0000	/* LP protocol selector field */
+#define NWAY_LPAR_10T_HD_CAPS		0x0020	/* LP is 10T   Half Duplex Capable */
+#define NWAY_LPAR_10T_FD_CAPS		0x0040	/* LP is 10T   Full Duplex Capable */
+#define NWAY_LPAR_100TX_HD_CAPS	0x0080	/* LP is 100TX Half Duplex Capable */
+#define NWAY_LPAR_100TX_FD_CAPS	0x0100	/* LP is 100TX Full Duplex Capable */
+#define NWAY_LPAR_100T4_CAPS		0x0200	/* LP is 100T4 Capable */
+#define NWAY_LPAR_PAUSE			0x0400	/* LP Pause operation desired */
+#define NWAY_LPAR_ASM_DIR		0x0800	/* LP Asymmetric Pause Direction bit */
+#define NWAY_LPAR_REMOTE_FAULT		0x2000	/* LP has detected Remote Fault */
+#define NWAY_LPAR_ACKNOWLEDGE		0x4000	/* LP has rx'd link code word */
+#define NWAY_LPAR_NEXT_PAGE		0x8000	/* Next Page ability supported */
+
+/* Autoneg Expansion Register */
+#define NWAY_ER_LP_NWAY_CAPS		0x0001	/* LP has Auto Neg Capability */
+#define NWAY_ER_PAGE_RXD		0x0002	/* LP is 10T   Half Duplex Capable */
+#define NWAY_ER_NEXT_PAGE_CAPS		0x0004	/* LP is 10T   Full Duplex Capable */
+#define NWAY_ER_LP_NEXT_PAGE_CAPS	0x0008	/* LP is 100TX Half Duplex Capable */
+#define NWAY_ER_PAR_DETECT_FAULT	0x0100	/* LP is 100TX Full Duplex Capable */
+
+/* Next Page TX Register */
+#define NPTX_MSG_CODE_FIELD		0x0001	/* NP msg code or unformatted data */
+#define NPTX_TOGGLE			0x0800	/* Toggles between exchanges
+						 * of different NP
+						 */
+#define NPTX_ACKNOWLDGE2		0x1000	/* 1 = will comply with msg
+						 * 0 = cannot comply with msg
+						 */
+#define NPTX_MSG_PAGE			0x2000	/* formatted(1)/unformatted(0) pg */
+#define NPTX_NEXT_PAGE			0x8000	/* 1 = addition NP will follow
+						 * 0 = sending last NP
+						 */
+
+/* Link Partner Next Page Register */
+#define LP_RNPR_MSG_CODE_FIELD		0x0001	/* NP msg code or unformatted data */
+#define LP_RNPR_TOGGLE			0x0800	/* Toggles between exchanges
+						 * of different NP
+						 */
+#define LP_RNPR_ACKNOWLDGE2		0x1000	/* 1 = will comply with msg
+						 * 0 = cannot comply with msg
+						 */
+#define LP_RNPR_MSG_PAGE		0x2000	/* formatted(1)/unformatted(0) pg */
+#define LP_RNPR_ACKNOWLDGE		0x4000	/* 1 = ACK / 0 = NO ACK */
+#define LP_RNPR_NEXT_PAGE		0x8000	/* 1 = addition NP will follow
+						 * 0 = sending last NP
+						 */
+
+/* 1000BASE-T Control Register */
+#define CR_1000T_ASYM_PAUSE		0x0080	/* Advertise asymmetric pause bit */
+#define CR_1000T_HD_CAPS		0x0100	/* Advertise 1000T HD capability */
+#define CR_1000T_FD_CAPS		0x0200	/* Advertise 1000T FD capability  */
+#define CR_1000T_REPEATER_DTE		0x0400	/* 1=Repeater/switch device port */
+						/* 0=DTE device */
+#define CR_1000T_MS_VALUE		0x0800	/* 1=Configure PHY as Master */
+						/* 0=Configure PHY as Slave */
+#define CR_1000T_MS_ENABLE		0x1000	/* 1=Master/Slave manual config value */
+						/* 0=Automatic Master/Slave config */
+#define CR_1000T_TEST_MODE_NORMAL	0x0000	/* Normal Operation */
+#define CR_1000T_TEST_MODE_1		0x2000	/* Transmit Waveform test */
+#define CR_1000T_TEST_MODE_2		0x4000	/* Master Transmit Jitter test */
+#define CR_1000T_TEST_MODE_3		0x6000	/* Slave Transmit Jitter test */
+#define CR_1000T_TEST_MODE_4		0x8000	/* Transmitter Distortion test */
+
+/* 1000BASE-T Status Register */
+#define SR_1000T_IDLE_ERROR_CNT	0x00FF	/* Num idle errors since last read */
+#define SR_1000T_ASYM_PAUSE_DIR	0x0100	/* LP asymmetric pause direction bit */
+#define SR_1000T_LP_HD_CAPS		0x0400	/* LP is 1000T HD capable */
+#define SR_1000T_LP_FD_CAPS		0x0800	/* LP is 1000T FD capable */
+#define SR_1000T_REMOTE_RX_STATUS	0x1000	/* Remote receiver OK */
+#define SR_1000T_LOCAL_RX_STATUS	0x2000	/* Local receiver OK */
+#define SR_1000T_MS_CONFIG_RES		0x4000	/* 1=Local TX is Master, 0=Slave */
+#define SR_1000T_MS_CONFIG_FAULT	0x8000	/* Master/Slave config fault */
+#define SR_1000T_REMOTE_RX_STATUS_SHIFT 12
+#define SR_1000T_LOCAL_RX_STATUS_SHIFT	13
+
+/* Extended Status Register */
+#define IEEE_ESR_1000T_HD_CAPS		0x1000	/* 1000T HD capable */
+#define IEEE_ESR_1000T_FD_CAPS		0x2000	/* 1000T FD capable */
+#define IEEE_ESR_1000X_HD_CAPS		0x4000	/* 1000X HD capable */
+#define IEEE_ESR_1000X_FD_CAPS		0x8000	/* 1000X FD capable */
+
+#define PHY_TX_POLARITY_MASK		0x0100	/* register 10h bit 8 (polarity bit) */
+#define PHY_TX_NORMAL_POLARITY		0	/* register 10h bit 8 (normal polarity) */
+
+#define AUTO_POLARITY_DISABLE		0x0010	/* register 11h bit 4 */
+						/* (0=enable, 1=disable) */
+
+/* M88E1000 PHY Specific Control Register */
+#define M88E1000_PSCR_JABBER_DISABLE	0x0001	/* 1=Jabber Function disabled */
+#define M88E1000_PSCR_POLARITY_REVERSAL 0x0002	/* 1=Polarity Reversal enabled */
+#define M88E1000_PSCR_SQE_TEST		0x0004	/* 1=SQE Test enabled */
+#define M88E1000_PSCR_CLK125_DISABLE	0x0010	/* 1=CLK125 low,
+						 * 0=CLK125 toggling
+						 */
+#define M88E1000_PSCR_MDI_MANUAL_MODE	0x0000	/* MDI Crossover Mode bits 6:5 */
+						/* Manual MDI configuration */
+#define M88E1000_PSCR_MDIX_MANUAL_MODE	0x0020	/* Manual MDIX configuration */
+#define M88E1000_PSCR_AUTO_X_1000T	0x0040	/* 1000BASE-T: Auto crossover,
+						 *  100BASE-TX/10BASE-T:
+						 *  MDI Mode
+						 */
+#define M88E1000_PSCR_AUTO_X_MODE	0x0060	/* Auto crossover enabled
+						 * all speeds.
+						 */
+#define M88E1000_PSCR_10BT_EXT_DIST_ENABLE 0x0080
+						/* 1=Enable Extended 10BASE-T distance
+						 * (Lower 10BASE-T RX Threshold)
+						 * 0=Normal 10BASE-T RX Threshold */
+#define M88E1000_PSCR_MII_5BIT_ENABLE	0x0100
+						/* 1=5-Bit interface in 100BASE-TX
+						 * 0=MII interface in 100BASE-TX */
+#define M88E1000_PSCR_SCRAMBLER_DISABLE 0x0200	/* 1=Scrambler disable */
+#define M88E1000_PSCR_FORCE_LINK_GOOD	0x0400	/* 1=Force link good */
+#define M88E1000_PSCR_ASSERT_CRS_ON_TX	0x0800	/* 1=Assert CRS on Transmit */
+
+#define M88E1000_PSCR_POLARITY_REVERSAL_SHIFT	 1
+#define M88E1000_PSCR_AUTO_X_MODE_SHIFT		 5
+#define M88E1000_PSCR_10BT_EXT_DIST_ENABLE_SHIFT 7
+
+/* M88E1000 PHY Specific Status Register */
+#define M88E1000_PSSR_JABBER		0x0001	/* 1=Jabber */
+#define M88E1000_PSSR_REV_POLARITY	0x0002	/* 1=Polarity reversed */
+#define M88E1000_PSSR_MDIX		0x0040	/* 1=MDIX; 0=MDI */
+#define M88E1000_PSSR_CABLE_LENGTH	0x0380	/* 0=<50M;1=50-80M;2=80-110M;
+						 * 3=110-140M;4=>140M */
+#define M88E1000_PSSR_LINK		0x0400	/* 1=Link up, 0=Link down */
+#define M88E1000_PSSR_SPD_DPLX_RESOLVED 0x0800	/* 1=Speed & Duplex resolved */
+#define M88E1000_PSSR_PAGE_RCVD		0x1000	/* 1=Page received */
+#define M88E1000_PSSR_DPLX		0x2000	/* 1=Duplex 0=Half Duplex */
+#define M88E1000_PSSR_SPEED		0xC000	/* Speed, bits 14:15 */
+#define M88E1000_PSSR_10MBS		0x0000	/* 00=10Mbs */
+#define M88E1000_PSSR_100MBS		0x4000	/* 01=100Mbs */
+#define M88E1000_PSSR_1000MBS		0x8000	/* 10=1000Mbs */
+
+#define M88E1000_PSSR_REV_POLARITY_SHIFT 1
+#define M88E1000_PSSR_MDIX_SHIFT	 6
+#define M88E1000_PSSR_CABLE_LENGTH_SHIFT 7
+
+/* M88E1000 Extended PHY Specific Control Register */
+#define M88E1000_EPSCR_FIBER_LOOPBACK	0x4000	/* 1=Fiber loopback */
+#define M88E1000_EPSCR_DOWN_NO_IDLE	0x8000	/* 1=Lost lock detect enabled.
+						 * Will assert lost lock and bring
+						 * link down if idle not seen
+						 * within 1ms in 1000BASE-T
+						 */
+/* Number of times we will attempt to autonegotiate before downshifting if we
+ * are the master */
+#define M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK 0x0C00
+#define M88E1000_EPSCR_MASTER_DOWNSHIFT_1X   0x0000
+#define M88E1000_EPSCR_MASTER_DOWNSHIFT_2X   0x0400
+#define M88E1000_EPSCR_MASTER_DOWNSHIFT_3X   0x0800
+#define M88E1000_EPSCR_MASTER_DOWNSHIFT_4X   0x0C00
+/* Number of times we will attempt to autonegotiate before downshifting if we
+ * are the slave */
+#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK  0x0300
+#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_DIS   0x0000
+#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X    0x0100
+#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_2X    0x0200
+#define M88E1000_EPSCR_SLAVE_DOWNSHIFT_3X    0x0300
+#define M88E1000_EPSCR_TX_CLK_2_5	0x0060	/* 2.5 MHz TX_CLK */
+#define M88E1000_EPSCR_TX_CLK_25	0x0070	/* 25  MHz TX_CLK */
+#define M88E1000_EPSCR_TX_CLK_0	0x0000	/* NO  TX_CLK */
+
+/* Bit definitions for valid PHY IDs. */
+#define M88E1000_E_PHY_ID		0x01410C50
+#define M88E1000_I_PHY_ID		0x01410C30
+#define M88E1011_I_PHY_ID		0x01410C20
+#define M88E1000_12_PHY_ID		M88E1000_E_PHY_ID
+#define M88E1000_14_PHY_ID		M88E1000_E_PHY_ID
+#define IGP01E1000_I_PHY_ID		0x02A80380
+#define M88E1011_I_REV_4   0x04
+#define M88E1111_I_PHY_ID  0x01410CC0
+#define L1LXT971A_PHY_ID   0x001378E0
+#define GG82563_E_PHY_ID   0x01410CA0
+#define I350_I_PHY_ID			0x015403B0
+
+#define BME1000_E_PHY_ID     0x01410CB0
+
+#define I210_I_PHY_ID		0x01410C00
+
+/* Miscellaneous PHY bit definitions. */
+#define PHY_PREAMBLE			0xFFFFFFFF
+#define PHY_SOF				0x01
+#define PHY_OP_READ			0x02
+#define PHY_OP_WRITE			0x01
+#define PHY_TURNAROUND			0x02
+#define PHY_PREAMBLE_SIZE		32
+#define MII_CR_SPEED_1000		0x0040
+#define MII_CR_SPEED_100		0x2000
+#define MII_CR_SPEED_10		0x0000
+#define E1000_PHY_ADDRESS		0x01
+#define PHY_AUTO_NEG_TIME		45	/* 4.5 Seconds */
+#define PHY_FORCE_TIME			20	/* 2.0 Seconds */
+#define PHY_REVISION_MASK		0xFFFFFFF0
+#define DEVICE_SPEED_MASK		0x00000300	/* Device Ctrl Reg Speed Mask */
+#define REG4_SPEED_MASK		0x01E0
+#define REG9_SPEED_MASK		0x0300
+#define ADVERTISE_10_HALF		0x0001
+#define ADVERTISE_10_FULL		0x0002
+#define ADVERTISE_100_HALF		0x0004
+#define ADVERTISE_100_FULL		0x0008
+#define ADVERTISE_1000_HALF		0x0010
+#define ADVERTISE_1000_FULL		0x0020
+
+#define ICH_FLASH_GFPREG   0x0000
+#define ICH_FLASH_HSFSTS   0x0004
+#define ICH_FLASH_HSFCTL   0x0006
+#define ICH_FLASH_FADDR    0x0008
+#define ICH_FLASH_FDATA0   0x0010
+#define ICH_FLASH_FRACC    0x0050
+#define ICH_FLASH_FREG0    0x0054
+#define ICH_FLASH_FREG1    0x0058
+#define ICH_FLASH_FREG2    0x005C
+#define ICH_FLASH_FREG3    0x0060
+#define ICH_FLASH_FPR0     0x0074
+#define ICH_FLASH_FPR1     0x0078
+#define ICH_FLASH_SSFSTS   0x0090
+#define ICH_FLASH_SSFCTL   0x0092
+#define ICH_FLASH_PREOP    0x0094
+#define ICH_FLASH_OPTYPE   0x0096
+#define ICH_FLASH_OPMENU   0x0098
+
+#define ICH_FLASH_REG_MAPSIZE      0x00A0
+#define ICH_FLASH_SECTOR_SIZE      4096
+#define ICH_GFPREG_BASE_MASK       0x1FFF
+#define ICH_FLASH_LINEAR_ADDR_MASK 0x00FFFFFF
+
+#define E1000_SW_FW_SYNC 0x05B5C /* Software-Firmware Synchronization - RW */
+
+/* SPI EEPROM Status Register */
+#define EEPROM_STATUS_RDY_SPI  0x01
+#define EEPROM_STATUS_WEN_SPI  0x02
+#define EEPROM_STATUS_BP0_SPI  0x04
+#define EEPROM_STATUS_BP1_SPI  0x08
+#define EEPROM_STATUS_WPEN_SPI 0x80
+
+/* SW Semaphore Register */
+#define E1000_SWSM_SMBI		0x00000001 /* Driver Semaphore bit */
+#define E1000_SWSM_SWESMBI	0x00000002 /* FW Semaphore bit */
+#define E1000_SWSM_WMNG		0x00000004 /* Wake MNG Clock */
+#define E1000_SWSM_DRV_LOAD	0x00000008 /* Driver Loaded Bit */
+
+/* FW Semaphore Register */
+#define E1000_FWSM_MODE_MASK    0x0000000E /* FW mode */
+#define E1000_FWSM_MODE_SHIFT            1
+#define E1000_FWSM_FW_VALID     0x00008000 /* FW established a valid mode */
+
+#define E1000_FWSM_RSPCIPHY        0x00000040 /* Reset PHY on PCI reset */
+#define E1000_FWSM_DISSW           0x10000000 /* FW disable SW Write Access */
+#define E1000_FWSM_SKUSEL_MASK     0x60000000 /* LAN SKU select */
+#define E1000_FWSM_SKUEL_SHIFT     29
+#define E1000_FWSM_SKUSEL_EMB      0x0 /* Embedded SKU */
+#define E1000_FWSM_SKUSEL_CONS     0x1 /* Consumer SKU */
+#define E1000_FWSM_SKUSEL_PERF_100 0x2 /* Perf & Corp 10/100 SKU */
+#define E1000_FWSM_SKUSEL_PERF_GBE 0x3 /* Perf & Copr GbE SKU */
+
+#define E1000_GCR       0x05B00 /* PCI-Ex Control */
+#define E1000_GSCL_1    0x05B10 /* PCI-Ex Statistic Control #1 */
+#define E1000_GSCL_2    0x05B14 /* PCI-Ex Statistic Control #2 */
+#define E1000_GSCL_3    0x05B18 /* PCI-Ex Statistic Control #3 */
+#define E1000_GSCL_4    0x05B1C /* PCI-Ex Statistic Control #4 */
+#define E1000_FACTPS    0x05B30 /* Function Active and Power State to MNG */
+#define E1000_SWSM      0x05B50 /* SW Semaphore */
+#define E1000_FWSM      0x05B54 /* FW Semaphore */
+#define E1000_FFLT_DBG  0x05F04 /* Debug Register */
+#define E1000_HICR      0x08F00 /* Host Inteface Control */
+
+#define IGP_ACTIVITY_LED_MASK   0xFFFFF0FF
+#define IGP_ACTIVITY_LED_ENABLE 0x0300
+#define IGP_LED3_MODE           0x07000000
+
+/* Mask bit for PHY class in Word 7 of the EEPROM */
+#define EEPROM_PHY_CLASS_A   0x8000
+#define AUTONEG_ADVERTISE_SPEED_DEFAULT 0x002F  /* Everything but 1000-Half */
+#define AUTONEG_ADVERTISE_10_100_ALL    0x000F /* All 10/100 speeds*/
+#define AUTONEG_ADVERTISE_10_ALL        0x0003 /* 10Mbps Full & Half speeds*/
+
+#define E1000_KUMCTRLSTA_MASK           0x0000FFFF
+#define E1000_KUMCTRLSTA_OFFSET         0x001F0000
+#define E1000_KUMCTRLSTA_OFFSET_SHIFT   16
+#define E1000_KUMCTRLSTA_REN            0x00200000
+
+#define E1000_KUMCTRLSTA_OFFSET_FIFO_CTRL      0x00000000
+#define E1000_KUMCTRLSTA_OFFSET_CTRL           0x00000001
+#define E1000_KUMCTRLSTA_OFFSET_INB_CTRL       0x00000002
+#define E1000_KUMCTRLSTA_OFFSET_DIAG           0x00000003
+#define E1000_KUMCTRLSTA_OFFSET_TIMEOUTS       0x00000004
+#define E1000_KUMCTRLSTA_OFFSET_INB_PARAM      0x00000009
+#define E1000_KUMCTRLSTA_OFFSET_HD_CTRL        0x00000010
+#define E1000_KUMCTRLSTA_OFFSET_M2P_SERDES     0x0000001E
+#define E1000_KUMCTRLSTA_OFFSET_M2P_MODES      0x0000001F
+
+/* FIFO Control */
+#define E1000_KUMCTRLSTA_FIFO_CTRL_RX_BYPASS   0x00000008
+#define E1000_KUMCTRLSTA_FIFO_CTRL_TX_BYPASS   0x00000800
+
+/* In-Band Control */
+#define E1000_KUMCTRLSTA_INB_CTRL_LINK_STATUS_TX_TIMEOUT_DEFAULT    0x00000500
+#define E1000_KUMCTRLSTA_INB_CTRL_DIS_PADDING  0x00000010
+
+/* Half-Duplex Control */
+#define E1000_KUMCTRLSTA_HD_CTRL_10_100_DEFAULT 0x00000004
+#define E1000_KUMCTRLSTA_HD_CTRL_1000_DEFAULT  0x00000000
+
+#define E1000_KUMCTRLSTA_OFFSET_K0S_CTRL       0x0000001E
+
+#define E1000_KUMCTRLSTA_DIAG_FELPBK           0x2000
+#define E1000_KUMCTRLSTA_DIAG_NELPBK           0x1000
+
+#define E1000_KUMCTRLSTA_K0S_100_EN            0x2000
+#define E1000_KUMCTRLSTA_K0S_GBE_EN            0x1000
+#define E1000_KUMCTRLSTA_K0S_ENTRY_LATENCY_MASK   0x0003
+
+#define E1000_MNG_ICH_IAMT_MODE         0x2
+#define E1000_MNG_IAMT_MODE             0x3
+#define E1000_MANC_BLK_PHY_RST_ON_IDE   0x00040000 /* Block phy resets */
+#define E1000_KUMCTRLSTA 0x00034 /* MAC-PHY interface - RW */
+/* Number of milliseconds we wait for PHY configuration done after MAC reset */
+#define PHY_CFG_TIMEOUT             100
+#define DEFAULT_80003ES2LAN_TIPG_IPGT_10_100 0x00000009
+#define DEFAULT_80003ES2LAN_TIPG_IPGT_1000   0x00000008
+#define AUTO_ALL_MODES	0
+
+#ifndef E1000_MASTER_SLAVE
+/* Switch to override PHY master/slave setting */
+#define E1000_MASTER_SLAVE	e1000_ms_hw_default
+#endif
+/* Extended Transmit Control */
+#define E1000_TCTL_EXT_BST_MASK  0x000003FF /* Backoff Slot Time */
+#define E1000_TCTL_EXT_GCEX_MASK 0x000FFC00 /* Gigabit Carry Extend Padding */
+
+#define DEFAULT_80003ES2LAN_TCTL_EXT_GCEX   0x00010000
+
+#define PCI_EX_82566_SNOOP_ALL PCI_EX_NO_SNOOP_ALL
+
+#define E1000_GCR_L1_ACT_WITHOUT_L0S_RX 0x08000000
+#define E1000_MC_TBL_SIZE_ICH8LAN  32
+
+#define E1000_CTRL_EXT_INT_TIMER_CLR  0x20000000 /* Clear Interrupt timers
+							after IMS clear */
+
+
+struct e1000_hw {
+	struct eth_device edev;
+
+	struct pci_dev *pdev;
+	struct device_d *dev;
+
+	void __iomem *hw_addr;
+
+	e1000_mac_type mac_type;
+	e1000_phy_type phy_type;
+	uint32_t txd_cmd;
+	e1000_media_type media_type;
+	e1000_fc_type fc;
+	struct e1000_eeprom_info eeprom;
+	uint32_t phy_id;
+	uint32_t phy_revision;
+	uint32_t original_fc;
+	uint32_t autoneg_failed;
+	uint16_t autoneg_advertised;
+	uint16_t pci_cmd_word;
+	uint16_t device_id;
+	uint16_t vendor_id;
+	uint8_t revision_id;
+	struct mii_bus miibus;
+
+	struct e1000_tx_desc *tx_base;
+	struct e1000_rx_desc *rx_base;
+	unsigned char *packet;
+
+	int tx_tail;
+	int rx_tail, rx_last;
+};
+
+int32_t e1000_init_eeprom_params(struct e1000_hw *hw);
+int e1000_validate_eeprom_checksum(struct e1000_hw *hw);
+int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
+		uint16_t words,
+		uint16_t *data);
+
+int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask);
+
+
+#endif	/* _E1000_HW_H_ */
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
new file mode 100644
index 0000000..fb39a85
--- /dev/null
+++ b/drivers/net/e1000/eeprom.c
@@ -0,0 +1,747 @@
+#include <common.h>
+#include <init.h>
+#include <net.h>
+#include <malloc.h>
+
+#include "e1000.h"
+
+
+
+/******************************************************************************
+ * Raises the EEPROM's clock input.
+ *
+ * hw - Struct containing variables accessed by shared code
+ * eecd - EECD's current value
+ *****************************************************************************/
+static void e1000_raise_ee_clk(struct e1000_hw *hw, uint32_t *eecd)
+{
+	/* Raise the clock input to the EEPROM (by setting the SK bit), and then
+	 * wait 50 microseconds.
+	 */
+	*eecd = *eecd | E1000_EECD_SK;
+	E1000_WRITE_REG(hw, EECD, *eecd);
+	E1000_WRITE_FLUSH(hw);
+	udelay(50);
+}
+
+/******************************************************************************
+ * Lowers the EEPROM's clock input.
+ *
+ * hw - Struct containing variables accessed by shared code
+ * eecd - EECD's current value
+ *****************************************************************************/
+static void e1000_lower_ee_clk(struct e1000_hw *hw, uint32_t *eecd)
+{
+	/* Lower the clock input to the EEPROM (by clearing the SK bit), and then
+	 * wait 50 microseconds.
+	 */
+	*eecd = *eecd & ~E1000_EECD_SK;
+	E1000_WRITE_REG(hw, EECD, *eecd);
+	E1000_WRITE_FLUSH(hw);
+	udelay(50);
+}
+
+/******************************************************************************
+ * Shift data bits out to the EEPROM.
+ *
+ * hw - Struct containing variables accessed by shared code
+ * data - data to send to the EEPROM
+ * count - number of bits to shift out
+ *****************************************************************************/
+static void e1000_shift_out_ee_bits(struct e1000_hw *hw, uint16_t data, uint16_t count)
+{
+	uint32_t eecd;
+	uint32_t mask;
+
+	/* We need to shift "count" bits out to the EEPROM. So, value in the
+	 * "data" parameter will be shifted out to the EEPROM one bit at a time.
+	 * In order to do this, "data" must be broken down into bits.
+	 */
+	mask = 0x01 << (count - 1);
+	eecd = E1000_READ_REG(hw, EECD);
+	eecd &= ~(E1000_EECD_DO | E1000_EECD_DI);
+	do {
+		/* A "1" is shifted out to the EEPROM by setting bit "DI" to a "1",
+		 * and then raising and then lowering the clock (the SK bit controls
+		 * the clock input to the EEPROM).  A "0" is shifted out to the EEPROM
+		 * by setting "DI" to "0" and then raising and then lowering the clock.
+		 */
+		eecd &= ~E1000_EECD_DI;
+
+		if (data & mask)
+			eecd |= E1000_EECD_DI;
+
+		E1000_WRITE_REG(hw, EECD, eecd);
+		E1000_WRITE_FLUSH(hw);
+
+		udelay(50);
+
+		e1000_raise_ee_clk(hw, &eecd);
+		e1000_lower_ee_clk(hw, &eecd);
+
+		mask = mask >> 1;
+
+	} while (mask);
+
+	/* We leave the "DI" bit set to "0" when we leave this routine. */
+	eecd &= ~E1000_EECD_DI;
+	E1000_WRITE_REG(hw, EECD, eecd);
+}
+
+/******************************************************************************
+ * Shift data bits in from the EEPROM
+ *
+ * hw - Struct containing variables accessed by shared code
+ *****************************************************************************/
+static uint16_t e1000_shift_in_ee_bits(struct e1000_hw *hw, uint16_t count)
+{
+	uint32_t eecd;
+	uint32_t i;
+	uint16_t data;
+
+	/* In order to read a register from the EEPROM, we need to shift 'count'
+	 * bits in from the EEPROM. Bits are "shifted in" by raising the clock
+	 * input to the EEPROM (setting the SK bit), and then reading the
+	 * value of the "DO" bit.  During this "shifting in" process the
+	 * "DI" bit should always be clear.
+	 */
+
+	eecd = E1000_READ_REG(hw, EECD);
+
+	eecd &= ~(E1000_EECD_DO | E1000_EECD_DI);
+	data = 0;
+
+	for (i = 0; i < count; i++) {
+		data = data << 1;
+		e1000_raise_ee_clk(hw, &eecd);
+
+		eecd = E1000_READ_REG(hw, EECD);
+
+		eecd &= ~(E1000_EECD_DI);
+		if (eecd & E1000_EECD_DO)
+			data |= 1;
+
+		e1000_lower_ee_clk(hw, &eecd);
+	}
+
+	return data;
+}
+
+/******************************************************************************
+ * Returns EEPROM to a "standby" state
+ *
+ * hw - Struct containing variables accessed by shared code
+ *****************************************************************************/
+static void e1000_standby_eeprom(struct e1000_hw *hw)
+{
+	struct e1000_eeprom_info *eeprom = &hw->eeprom;
+	uint32_t eecd;
+
+	eecd = E1000_READ_REG(hw, EECD);
+
+	if (eeprom->type == e1000_eeprom_microwire) {
+		eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
+		E1000_WRITE_REG(hw, EECD, eecd);
+		E1000_WRITE_FLUSH(hw);
+		udelay(eeprom->delay_usec);
+
+		/* Clock high */
+		eecd |= E1000_EECD_SK;
+		E1000_WRITE_REG(hw, EECD, eecd);
+		E1000_WRITE_FLUSH(hw);
+		udelay(eeprom->delay_usec);
+
+		/* Select EEPROM */
+		eecd |= E1000_EECD_CS;
+		E1000_WRITE_REG(hw, EECD, eecd);
+		E1000_WRITE_FLUSH(hw);
+		udelay(eeprom->delay_usec);
+
+		/* Clock low */
+		eecd &= ~E1000_EECD_SK;
+		E1000_WRITE_REG(hw, EECD, eecd);
+		E1000_WRITE_FLUSH(hw);
+		udelay(eeprom->delay_usec);
+	} else if (eeprom->type == e1000_eeprom_spi) {
+		/* Toggle CS to flush commands */
+		eecd |= E1000_EECD_CS;
+		E1000_WRITE_REG(hw, EECD, eecd);
+		E1000_WRITE_FLUSH(hw);
+		udelay(eeprom->delay_usec);
+		eecd &= ~E1000_EECD_CS;
+		E1000_WRITE_REG(hw, EECD, eecd);
+		E1000_WRITE_FLUSH(hw);
+		udelay(eeprom->delay_usec);
+	}
+}
+
+/***************************************************************************
+* Description:     Determines if the onboard NVM is FLASH or EEPROM.
+*
+* hw - Struct containing variables accessed by shared code
+****************************************************************************/
+static bool e1000_is_onboard_nvm_eeprom(struct e1000_hw *hw)
+{
+	uint32_t eecd = 0;
+
+	DEBUGFUNC();
+
+	if (hw->mac_type == e1000_ich8lan)
+		return false;
+
+	if (hw->mac_type == e1000_82573 || hw->mac_type == e1000_82574) {
+		eecd = E1000_READ_REG(hw, EECD);
+
+		/* Isolate bits 15 & 16 */
+		eecd = ((eecd >> 15) & 0x03);
+
+		/* If both bits are set, device is Flash type */
+		if (eecd == 0x03)
+			return false;
+	}
+	return true;
+}
+
+/******************************************************************************
+ * Prepares EEPROM for access
+ *
+ * hw - Struct containing variables accessed by shared code
+ *
+ * Lowers EEPROM clock. Clears input pin. Sets the chip select pin. This
+ * function should be called before issuing a command to the EEPROM.
+ *****************************************************************************/
+static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
+{
+	struct e1000_eeprom_info *eeprom = &hw->eeprom;
+	uint32_t eecd, i = 0;
+
+	DEBUGFUNC();
+
+	if (e1000_swfw_sync_acquire(hw, E1000_SWFW_EEP_SM))
+		return -E1000_ERR_SWFW_SYNC;
+	eecd = E1000_READ_REG(hw, EECD);
+
+	/* Request EEPROM Access */
+	if (hw->mac_type > e1000_82544 && hw->mac_type != e1000_82573 &&
+			hw->mac_type != e1000_82574) {
+		eecd |= E1000_EECD_REQ;
+		E1000_WRITE_REG(hw, EECD, eecd);
+		eecd = E1000_READ_REG(hw, EECD);
+		while ((!(eecd & E1000_EECD_GNT)) &&
+			(i < E1000_EEPROM_GRANT_ATTEMPTS)) {
+			i++;
+			udelay(5);
+			eecd = E1000_READ_REG(hw, EECD);
+		}
+		if (!(eecd & E1000_EECD_GNT)) {
+			eecd &= ~E1000_EECD_REQ;
+			E1000_WRITE_REG(hw, EECD, eecd);
+			dev_dbg(hw->dev, "Could not acquire EEPROM grant\n");
+			return -E1000_ERR_EEPROM;
+		}
+	}
+
+	/* Setup EEPROM for Read/Write */
+
+	if (eeprom->type == e1000_eeprom_microwire) {
+		/* Clear SK and DI */
+		eecd &= ~(E1000_EECD_DI | E1000_EECD_SK);
+		E1000_WRITE_REG(hw, EECD, eecd);
+
+		/* Set CS */
+		eecd |= E1000_EECD_CS;
+		E1000_WRITE_REG(hw, EECD, eecd);
+	} else if (eeprom->type == e1000_eeprom_spi) {
+		/* Clear SK and CS */
+		eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
+		E1000_WRITE_REG(hw, EECD, eecd);
+		udelay(1);
+	}
+
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+ * Sets up eeprom variables in the hw struct.  Must be called after mac_type
+ * is configured.  Additionally, if this is ICH8, the flash controller GbE
+ * registers must be mapped, or this will crash.
+ *
+ * hw - Struct containing variables accessed by shared code
+ *****************************************************************************/
+int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
+{
+	struct e1000_eeprom_info *eeprom = &hw->eeprom;
+	uint32_t eecd;
+	int32_t ret_val = E1000_SUCCESS;
+	uint16_t eeprom_size;
+
+	if (hw->mac_type == e1000_igb)
+		eecd = E1000_READ_REG(hw, I210_EECD);
+	else
+		eecd = E1000_READ_REG(hw, EECD);
+
+	DEBUGFUNC();
+
+	switch (hw->mac_type) {
+	case e1000_82542_rev2_0:
+	case e1000_82542_rev2_1:
+	case e1000_82543:
+	case e1000_82544:
+		eeprom->type = e1000_eeprom_microwire;
+		eeprom->word_size = 64;
+		eeprom->opcode_bits = 3;
+		eeprom->address_bits = 6;
+		eeprom->delay_usec = 50;
+		eeprom->use_eerd = false;
+		eeprom->use_eewr = false;
+	break;
+	case e1000_82540:
+	case e1000_82545:
+	case e1000_82545_rev_3:
+	case e1000_82546:
+	case e1000_82546_rev_3:
+		eeprom->type = e1000_eeprom_microwire;
+		eeprom->opcode_bits = 3;
+		eeprom->delay_usec = 50;
+		if (eecd & E1000_EECD_SIZE) {
+			eeprom->word_size = 256;
+			eeprom->address_bits = 8;
+		} else {
+			eeprom->word_size = 64;
+			eeprom->address_bits = 6;
+		}
+		eeprom->use_eerd = false;
+		eeprom->use_eewr = false;
+		break;
+	case e1000_82541:
+	case e1000_82541_rev_2:
+	case e1000_82547:
+	case e1000_82547_rev_2:
+		if (eecd & E1000_EECD_TYPE) {
+			eeprom->type = e1000_eeprom_spi;
+			eeprom->opcode_bits = 8;
+			eeprom->delay_usec = 1;
+			if (eecd & E1000_EECD_ADDR_BITS) {
+				eeprom->page_size = 32;
+				eeprom->address_bits = 16;
+			} else {
+				eeprom->page_size = 8;
+				eeprom->address_bits = 8;
+			}
+		} else {
+			eeprom->type = e1000_eeprom_microwire;
+			eeprom->opcode_bits = 3;
+			eeprom->delay_usec = 50;
+			if (eecd & E1000_EECD_ADDR_BITS) {
+				eeprom->word_size = 256;
+				eeprom->address_bits = 8;
+			} else {
+				eeprom->word_size = 64;
+				eeprom->address_bits = 6;
+			}
+		}
+		eeprom->use_eerd = false;
+		eeprom->use_eewr = false;
+		break;
+	case e1000_82571:
+	case e1000_82572:
+		eeprom->type = e1000_eeprom_spi;
+		eeprom->opcode_bits = 8;
+		eeprom->delay_usec = 1;
+		if (eecd & E1000_EECD_ADDR_BITS) {
+			eeprom->page_size = 32;
+			eeprom->address_bits = 16;
+		} else {
+			eeprom->page_size = 8;
+			eeprom->address_bits = 8;
+		}
+		eeprom->use_eerd = false;
+		eeprom->use_eewr = false;
+		break;
+	case e1000_82573:
+	case e1000_82574:
+		eeprom->type = e1000_eeprom_spi;
+		eeprom->opcode_bits = 8;
+		eeprom->delay_usec = 1;
+		if (eecd & E1000_EECD_ADDR_BITS) {
+			eeprom->page_size = 32;
+			eeprom->address_bits = 16;
+		} else {
+			eeprom->page_size = 8;
+			eeprom->address_bits = 8;
+		}
+		if (e1000_is_onboard_nvm_eeprom(hw) == false) {
+			eeprom->use_eerd = true;
+			eeprom->use_eewr = true;
+
+			eeprom->type = e1000_eeprom_flash;
+			eeprom->word_size = 2048;
+
+		/* Ensure that the Autonomous FLASH update bit is cleared due to
+		 * Flash update issue on parts which use a FLASH for NVM. */
+			eecd &= ~E1000_EECD_AUPDEN;
+			E1000_WRITE_REG(hw, EECD, eecd);
+		}
+		break;
+	case e1000_80003es2lan:
+		eeprom->type = e1000_eeprom_spi;
+		eeprom->opcode_bits = 8;
+		eeprom->delay_usec = 1;
+		if (eecd & E1000_EECD_ADDR_BITS) {
+			eeprom->page_size = 32;
+			eeprom->address_bits = 16;
+		} else {
+			eeprom->page_size = 8;
+			eeprom->address_bits = 8;
+		}
+		eeprom->use_eerd = true;
+		eeprom->use_eewr = false;
+		break;
+	case e1000_igb:
+		/* i210 has 4k of iNVM mapped as EEPROM */
+		eeprom->type = e1000_eeprom_invm;
+		eeprom->opcode_bits = 8;
+		eeprom->delay_usec = 1;
+		eeprom->page_size = 32;
+		eeprom->address_bits = 16;
+		eeprom->use_eerd = true;
+		eeprom->use_eewr = false;
+		break;
+	default:
+		break;
+	}
+
+	if (eeprom->type == e1000_eeprom_spi ||
+	    eeprom->type == e1000_eeprom_invm) {
+		/* eeprom_size will be an enum [0..8] that maps
+		 * to eeprom sizes 128B to
+		 * 32KB (incremented by powers of 2).
+		 */
+		if (hw->mac_type <= e1000_82547_rev_2) {
+			/* Set to default value for initial eeprom read. */
+			eeprom->word_size = 64;
+			ret_val = e1000_read_eeprom(hw, EEPROM_CFG, 1,
+					&eeprom_size);
+			if (ret_val)
+				return ret_val;
+			eeprom_size = (eeprom_size & EEPROM_SIZE_MASK)
+				>> EEPROM_SIZE_SHIFT;
+			/* 256B eeprom size was not supported in earlier
+			 * hardware, so we bump eeprom_size up one to
+			 * ensure that "1" (which maps to 256B) is never
+			 * the result used in the shifting logic below. */
+			if (eeprom_size)
+				eeprom_size++;
+		} else {
+			eeprom_size = (uint16_t)((eecd &
+				E1000_EECD_SIZE_EX_MASK) >>
+				E1000_EECD_SIZE_EX_SHIFT);
+		}
+
+		eeprom->word_size = 1 << (eeprom_size + EEPROM_WORD_SIZE_SHIFT);
+	}
+	return ret_val;
+}
+
+/******************************************************************************
+ * Polls the status bit (bit 1) of the EERD to determine when the read is done.
+ *
+ * hw - Struct containing variables accessed by shared code
+ *****************************************************************************/
+static int32_t e1000_poll_eerd_eewr_done(struct e1000_hw *hw, int eerd)
+{
+	uint32_t attempts = 100000;
+	uint32_t i, reg = 0;
+	int32_t done = E1000_ERR_EEPROM;
+
+	for (i = 0; i < attempts; i++) {
+		if (eerd == E1000_EEPROM_POLL_READ) {
+			if (hw->mac_type == e1000_igb)
+				reg = E1000_READ_REG(hw, I210_EERD);
+			else
+				reg = E1000_READ_REG(hw, EERD);
+		} else {
+			if (hw->mac_type == e1000_igb)
+				reg = E1000_READ_REG(hw, I210_EEWR);
+			else
+				reg = E1000_READ_REG(hw, EEWR);
+		}
+
+		if (reg & E1000_EEPROM_RW_REG_DONE) {
+			done = E1000_SUCCESS;
+			break;
+		}
+		udelay(5);
+	}
+
+	return done;
+}
+
+/******************************************************************************
+ * Reads a 16 bit word from the EEPROM using the EERD register.
+ *
+ * hw - Struct containing variables accessed by shared code
+ * offset - offset of  word in the EEPROM to read
+ * data - word read from the EEPROM
+ * words - number of words to read
+ *****************************************************************************/
+static int32_t e1000_read_eeprom_eerd(struct e1000_hw *hw,
+			uint16_t offset,
+			uint16_t words,
+			uint16_t *data)
+{
+	uint32_t i, eerd = 0;
+	int32_t error = 0;
+
+	for (i = 0; i < words; i++) {
+		eerd = ((offset+i) << E1000_EEPROM_RW_ADDR_SHIFT) +
+			E1000_EEPROM_RW_REG_START;
+
+		if (hw->mac_type == e1000_igb)
+			E1000_WRITE_REG(hw, I210_EERD, eerd);
+		else
+			E1000_WRITE_REG(hw, EERD, eerd);
+
+		error = e1000_poll_eerd_eewr_done(hw, E1000_EEPROM_POLL_READ);
+
+		if (error)
+			break;
+
+		if (hw->mac_type == e1000_igb) {
+			data[i] = (E1000_READ_REG(hw, I210_EERD) >>
+				E1000_EEPROM_RW_REG_DATA);
+		} else {
+			data[i] = (E1000_READ_REG(hw, EERD) >>
+				E1000_EEPROM_RW_REG_DATA);
+		}
+
+	}
+
+	return error;
+}
+
+static void e1000_release_eeprom(struct e1000_hw *hw)
+{
+	uint32_t eecd;
+
+	DEBUGFUNC();
+
+	eecd = E1000_READ_REG(hw, EECD);
+
+	if (hw->eeprom.type == e1000_eeprom_spi) {
+		eecd |= E1000_EECD_CS;  /* Pull CS high */
+		eecd &= ~E1000_EECD_SK; /* Lower SCK */
+
+		E1000_WRITE_REG(hw, EECD, eecd);
+
+		udelay(hw->eeprom.delay_usec);
+	} else if (hw->eeprom.type == e1000_eeprom_microwire) {
+		/* cleanup eeprom */
+
+		/* CS on Microwire is active-high */
+		eecd &= ~(E1000_EECD_CS | E1000_EECD_DI);
+
+		E1000_WRITE_REG(hw, EECD, eecd);
+
+		/* Rising edge of clock */
+		eecd |= E1000_EECD_SK;
+		E1000_WRITE_REG(hw, EECD, eecd);
+		E1000_WRITE_FLUSH(hw);
+		udelay(hw->eeprom.delay_usec);
+
+		/* Falling edge of clock */
+		eecd &= ~E1000_EECD_SK;
+		E1000_WRITE_REG(hw, EECD, eecd);
+		E1000_WRITE_FLUSH(hw);
+		udelay(hw->eeprom.delay_usec);
+	}
+
+	/* Stop requesting EEPROM access */
+	if (hw->mac_type > e1000_82544) {
+		eecd &= ~E1000_EECD_REQ;
+		E1000_WRITE_REG(hw, EECD, eecd);
+	}
+}
+/******************************************************************************
+ * Reads a 16 bit word from the EEPROM.
+ *
+ * hw - Struct containing variables accessed by shared code
+ *****************************************************************************/
+static int32_t e1000_spi_eeprom_ready(struct e1000_hw *hw)
+{
+	uint16_t retry_count = 0;
+	uint8_t spi_stat_reg;
+
+	DEBUGFUNC();
+
+	/* Read "Status Register" repeatedly until the LSB is cleared.  The
+	 * EEPROM will signal that the command has been completed by clearing
+	 * bit 0 of the internal status register.  If it's not cleared within
+	 * 5 milliseconds, then error out.
+	 */
+	retry_count = 0;
+	do {
+		e1000_shift_out_ee_bits(hw, EEPROM_RDSR_OPCODE_SPI,
+			hw->eeprom.opcode_bits);
+		spi_stat_reg = (uint8_t)e1000_shift_in_ee_bits(hw, 8);
+		if (!(spi_stat_reg & EEPROM_STATUS_RDY_SPI))
+			break;
+
+		udelay(5);
+		retry_count += 5;
+
+		e1000_standby_eeprom(hw);
+	} while (retry_count < EEPROM_MAX_RETRY_SPI);
+
+	/* ATMEL SPI write time could vary from 0-20mSec on 3.3V devices (and
+	 * only 0-5mSec on 5V devices)
+	 */
+	if (retry_count >= EEPROM_MAX_RETRY_SPI) {
+		dev_dbg(hw->dev, "SPI EEPROM Status error\n");
+		return -E1000_ERR_EEPROM;
+	}
+
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+ * Reads a 16 bit word from the EEPROM.
+ *
+ * hw - Struct containing variables accessed by shared code
+ * offset - offset of  word in the EEPROM to read
+ * data - word read from the EEPROM
+ *****************************************************************************/
+int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
+			  uint16_t words, uint16_t *data)
+{
+	struct e1000_eeprom_info *eeprom = &hw->eeprom;
+	uint32_t i = 0;
+
+	DEBUGFUNC();
+
+	/* If eeprom is not yet detected, do so now */
+	if (eeprom->word_size == 0)
+		e1000_init_eeprom_params(hw);
+
+	/* A check for invalid values:  offset too large, too many words,
+	 * and not enough words.
+	 */
+	if ((offset >= eeprom->word_size) ||
+		(words > eeprom->word_size - offset) ||
+		(words == 0)) {
+		dev_dbg(hw->dev, "\"words\" parameter out of bounds."
+			"Words = %d, size = %d\n", offset, eeprom->word_size);
+		return -E1000_ERR_EEPROM;
+	}
+
+	/* EEPROM's that don't use EERD to read require us to bit-bang the SPI
+	 * directly. In this case, we need to acquire the EEPROM so that
+	 * FW or other port software does not interrupt.
+	 */
+	if (e1000_is_onboard_nvm_eeprom(hw) == true &&
+		hw->eeprom.use_eerd == false) {
+
+		/* Prepare the EEPROM for bit-bang reading */
+		if (e1000_acquire_eeprom(hw) != E1000_SUCCESS)
+			return -E1000_ERR_EEPROM;
+	}
+
+	/* Eerd register EEPROM access requires no eeprom aquire/release */
+	if (eeprom->use_eerd == true)
+		return e1000_read_eeprom_eerd(hw, offset, words, data);
+
+	/* Set up the SPI or Microwire EEPROM for bit-bang reading.  We have
+	 * acquired the EEPROM at this point, so any returns should relase it */
+	if (eeprom->type == e1000_eeprom_spi) {
+		uint16_t word_in;
+		uint8_t read_opcode = EEPROM_READ_OPCODE_SPI;
+
+		if (e1000_spi_eeprom_ready(hw)) {
+			e1000_release_eeprom(hw);
+			return -E1000_ERR_EEPROM;
+		}
+
+		e1000_standby_eeprom(hw);
+
+		/* Some SPI eeproms use the 8th address bit embedded in
+		 * the opcode */
+		if ((eeprom->address_bits == 8) && (offset >= 128))
+			read_opcode |= EEPROM_A8_OPCODE_SPI;
+
+		/* Send the READ command (opcode + addr)  */
+		e1000_shift_out_ee_bits(hw, read_opcode, eeprom->opcode_bits);
+		e1000_shift_out_ee_bits(hw, (uint16_t)(offset*2),
+				eeprom->address_bits);
+
+		/* Read the data.  The address of the eeprom internally
+		 * increments with each byte (spi) being read, saving on the
+		 * overhead of eeprom setup and tear-down.  The address
+		 * counter will roll over if reading beyond the size of
+		 * the eeprom, thus allowing the entire memory to be read
+		 * starting from any offset. */
+		for (i = 0; i < words; i++) {
+			word_in = e1000_shift_in_ee_bits(hw, 16);
+			data[i] = (word_in >> 8) | (word_in << 8);
+		}
+	} else if (eeprom->type == e1000_eeprom_microwire) {
+		for (i = 0; i < words; i++) {
+			/* Send the READ command (opcode + addr)  */
+			e1000_shift_out_ee_bits(hw,
+				EEPROM_READ_OPCODE_MICROWIRE,
+				eeprom->opcode_bits);
+			e1000_shift_out_ee_bits(hw, (uint16_t)(offset + i),
+				eeprom->address_bits);
+
+			/* Read the data.  For microwire, each word requires
+			 * the overhead of eeprom setup and tear-down. */
+			data[i] = e1000_shift_in_ee_bits(hw, 16);
+			e1000_standby_eeprom(hw);
+		}
+	}
+
+	/* End this read operation */
+	e1000_release_eeprom(hw);
+
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+ * Verifies that the EEPROM has a valid checksum
+ *
+ * hw - Struct containing variables accessed by shared code
+ *
+ * Reads the first 64 16 bit words of the EEPROM and sums the values read.
+ * If the the sum of the 64 16 bit words is 0xBABA, the EEPROM's checksum is
+ * valid.
+ *****************************************************************************/
+int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
+{
+	uint16_t i, checksum, checksum_reg;
+	uint16_t buf[EEPROM_CHECKSUM_REG + 1];
+
+	DEBUGFUNC();
+
+	/* Read the EEPROM */
+	if (e1000_read_eeprom(hw, 0, EEPROM_CHECKSUM_REG + 1, buf) < 0) {
+		dev_err(&hw->edev.dev, "Unable to read EEPROM!\n");
+		return -E1000_ERR_EEPROM;
+	}
+
+	/* Compute the checksum */
+	checksum = 0;
+	for (i = 0; i < EEPROM_CHECKSUM_REG; i++)
+		checksum += buf[i];
+	checksum = ((uint16_t)EEPROM_SUM) - checksum;
+	checksum_reg = buf[i];
+
+	/* Verify it! */
+	if (checksum == checksum_reg)
+		return 0;
+
+	/* Hrm, verification failed, print an error */
+	dev_err(&hw->edev.dev, "EEPROM checksum is incorrect!\n");
+	dev_err(&hw->edev.dev, "  ...register was 0x%04hx, calculated 0x%04hx\n",
+			checksum_reg, checksum);
+
+	return -E1000_ERR_EEPROM;
+}
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
new file mode 100644
index 0000000..552b0dc
--- /dev/null
+++ b/drivers/net/e1000/main.c
@@ -0,0 +1,3681 @@
+/**************************************************************************
+Intel Pro 1000 for ppcboot/das-u-boot
+Drivers are port from Intel's Linux driver e1000-4.3.15
+and from Etherboot pro 1000 driver by mrakes at vivato dot net
+tested on both gig copper and gig fiber boards
+***************************************************************************/
+/*******************************************************************************
+
+
+  Copyright(c) 1999 - 2002 Intel Corporation. All rights reserved.
+
+ * SPDX-License-Identifier:	GPL-2.0+
+
+  Contact Information:
+  Linux NICS <linux.nics@intel.com>
+  Intel Corporation, 5200 N.E. Elam Young Parkway, Hillsboro, OR 97124-6497
+
+*******************************************************************************/
+/*
+ *  Copyright (C) Archway Digital Solutions.
+ *
+ *  written by Chrsitopher Li <cli at arcyway dot com> or <chrisl at gnuchina dot org>
+ *  2/9/2002
+ *
+ *  Copyright (C) Linux Networx.
+ *  Massive upgrade to work with the new intel gigabit NICs.
+ *  <ebiederman at lnxi dot com>
+ *
+ *  Copyright 2011 Freescale Semiconductor, Inc.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <net.h>
+#include <malloc.h>
+#include <linux/pci.h>
+#include <dma.h>
+#include "e1000.h"
+
+static u32 inline virt_to_bus(struct pci_dev *pdev, void *adr)
+{
+	return (u32)adr;
+}
+
+#define PCI_VENDOR_ID_INTEL	0x8086
+
+
+/* Function forward declarations */
+static int e1000_setup_link(struct e1000_hw *hw);
+static int e1000_setup_fiber_link(struct e1000_hw *hw);
+static int e1000_setup_copper_link(struct e1000_hw *hw);
+static int e1000_phy_setup_autoneg(struct e1000_hw *hw);
+static void e1000_config_collision_dist(struct e1000_hw *hw);
+static int e1000_config_mac_to_phy(struct e1000_hw *hw);
+static int e1000_config_fc_after_link_up(struct e1000_hw *hw);
+static int e1000_wait_autoneg(struct e1000_hw *hw);
+static int e1000_get_speed_and_duplex(struct e1000_hw *hw, uint16_t *speed,
+				       uint16_t *duplex);
+static int e1000_read_phy_reg(struct e1000_hw *hw, uint32_t reg_addr,
+			      uint16_t *phy_data);
+static int e1000_write_phy_reg(struct e1000_hw *hw, uint32_t reg_addr,
+			       uint16_t phy_data);
+static int32_t e1000_phy_hw_reset(struct e1000_hw *hw);
+static int e1000_phy_reset(struct e1000_hw *hw);
+static int e1000_detect_gig_phy(struct e1000_hw *hw);
+static void e1000_set_media_type(struct e1000_hw *hw);
+
+
+static int32_t e1000_check_phy_reset_block(struct e1000_hw *hw);
+
+static void e1000_put_hw_eeprom_semaphore(struct e1000_hw *hw);
+
+static bool e1000_media_copper(struct e1000_hw *hw)
+{
+	if (!IS_ENABLED(CONFIG_DRIVER_NET_E1000_FIBER))
+		return 1;
+
+	return hw->media_type == e1000_media_type_copper;
+}
+
+static bool e1000_media_fiber(struct e1000_hw *hw)
+{
+	if (!IS_ENABLED(CONFIG_DRIVER_NET_E1000_FIBER))
+		return 0;
+
+	return hw->media_type == e1000_media_type_fiber;
+}
+
+static bool e1000_media_fiber_serdes(struct e1000_hw *hw)
+{
+	if (!IS_ENABLED(CONFIG_DRIVER_NET_E1000_FIBER))
+		return 0;
+
+	return hw->media_type == e1000_media_type_fiber ||
+		hw->media_type == e1000_media_type_internal_serdes;
+}
+
+/*****************************************************************************
+ * Set PHY to class A mode
+ * Assumes the following operations will follow to enable the new class mode.
+ *  1. Do a PHY soft reset
+ *  2. Restart auto-negotiation or force link.
+ *
+ * hw - Struct containing variables accessed by shared code
+ ****************************************************************************/
+static int32_t e1000_set_phy_mode(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	uint16_t eeprom_data;
+
+	DEBUGFUNC();
+
+	if ((hw->mac_type == e1000_82545_rev_3) && e1000_media_copper(hw)) {
+		ret_val = e1000_read_eeprom(hw, EEPROM_PHY_CLASS_WORD,
+				1, &eeprom_data);
+		if (ret_val)
+			return ret_val;
+
+		if ((eeprom_data != EEPROM_RESERVED_WORD) &&
+			(eeprom_data & EEPROM_PHY_CLASS_A)) {
+			ret_val = e1000_write_phy_reg(hw,
+					M88E1000_PHY_PAGE_SELECT, 0x000B);
+			if (ret_val)
+				return ret_val;
+			ret_val = e1000_write_phy_reg(hw,
+					M88E1000_PHY_GEN_CONTROL, 0x8104);
+			if (ret_val)
+				return ret_val;
+		}
+	}
+	return E1000_SUCCESS;
+}
+
+/***************************************************************************
+ *
+ * Obtaining software semaphore bit (SMBI) before resetting PHY.
+ *
+ * hw: Struct containing variables accessed by shared code
+ *
+ * returns: - E1000_ERR_RESET if fail to obtain semaphore.
+ *            E1000_SUCCESS at any other case.
+ *
+ ***************************************************************************/
+static int32_t e1000_get_software_semaphore(struct e1000_hw *hw)
+{
+	 int32_t timeout = hw->eeprom.word_size + 1;
+	 uint32_t swsm;
+
+	DEBUGFUNC();
+
+	swsm = E1000_READ_REG(hw, SWSM);
+	swsm &= ~E1000_SWSM_SMBI;
+	E1000_WRITE_REG(hw, SWSM, swsm);
+
+	if (hw->mac_type != e1000_80003es2lan)
+		return E1000_SUCCESS;
+
+	while (timeout) {
+		swsm = E1000_READ_REG(hw, SWSM);
+		/* If SMBI bit cleared, it is now set and we hold
+		 * the semaphore */
+		if (!(swsm & E1000_SWSM_SMBI))
+			return 0;
+		mdelay(1);
+		timeout--;
+	}
+
+	dev_dbg(hw->dev, "Driver can't access device - SMBI bit is set.\n");
+	return -E1000_ERR_RESET;
+}
+
+/***************************************************************************
+ * This function clears HW semaphore bits.
+ *
+ * hw: Struct containing variables accessed by shared code
+ *
+ * returns: - None.
+ *
+ ***************************************************************************/
+static void e1000_put_hw_eeprom_semaphore(struct e1000_hw *hw)
+{
+	uint32_t swsm;
+
+	swsm = E1000_READ_REG(hw, SWSM);
+
+	if (hw->mac_type == e1000_80003es2lan)
+		/* Release both semaphores. */
+		swsm &= ~(E1000_SWSM_SMBI | E1000_SWSM_SWESMBI);
+	else
+		swsm &= ~(E1000_SWSM_SWESMBI);
+
+	E1000_WRITE_REG(hw, SWSM, swsm);
+}
+
+/***************************************************************************
+ *
+ * Using the combination of SMBI and SWESMBI semaphore bits when resetting
+ * adapter or Eeprom access.
+ *
+ * hw: Struct containing variables accessed by shared code
+ *
+ * returns: - E1000_ERR_EEPROM if fail to access EEPROM.
+ *            E1000_SUCCESS at any other case.
+ *
+ ***************************************************************************/
+static int32_t e1000_get_hw_eeprom_semaphore(struct e1000_hw *hw)
+{
+	int32_t timeout;
+	uint32_t swsm;
+
+	if (hw->mac_type == e1000_80003es2lan) {
+		/* Get the SW semaphore. */
+		if (e1000_get_software_semaphore(hw) != E1000_SUCCESS)
+			return -E1000_ERR_EEPROM;
+	}
+
+	/* Get the FW semaphore. */
+	timeout = hw->eeprom.word_size + 1;
+	while (timeout) {
+		swsm = E1000_READ_REG(hw, SWSM);
+		swsm |= E1000_SWSM_SWESMBI;
+		E1000_WRITE_REG(hw, SWSM, swsm);
+		/* if we managed to set the bit we got the semaphore. */
+		swsm = E1000_READ_REG(hw, SWSM);
+		if (swsm & E1000_SWSM_SWESMBI)
+			break;
+
+		udelay(50);
+		timeout--;
+	}
+
+	if (!timeout) {
+		/* Release semaphores */
+		e1000_put_hw_eeprom_semaphore(hw);
+		dev_dbg(hw->dev, "Driver can't access the Eeprom - "
+				"SWESMBI bit is set.\n");
+		return -E1000_ERR_EEPROM;
+	}
+	return E1000_SUCCESS;
+}
+
+int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask)
+{
+	uint32_t swfw_sync = 0;
+	uint32_t swmask = mask;
+	uint32_t fwmask = mask << 16;
+	int32_t timeout = 200;
+
+	DEBUGFUNC();
+	while (timeout) {
+		if (e1000_get_hw_eeprom_semaphore(hw))
+			return -E1000_ERR_SWFW_SYNC;
+
+		swfw_sync = E1000_READ_REG(hw, SW_FW_SYNC);
+		if (!(swfw_sync & (fwmask | swmask)))
+			break;
+
+		/* firmware currently using resource (fwmask) */
+		/* or other software thread currently using resource (swmask) */
+		e1000_put_hw_eeprom_semaphore(hw);
+		mdelay(5);
+		timeout--;
+	}
+
+	if (!timeout) {
+		dev_dbg(hw->dev, "Driver can't access resource, SW_FW_SYNC timeout.\n");
+		return -E1000_ERR_SWFW_SYNC;
+	}
+
+	swfw_sync |= swmask;
+	E1000_WRITE_REG(hw, SW_FW_SYNC, swfw_sync);
+
+	e1000_put_hw_eeprom_semaphore(hw);
+	return E1000_SUCCESS;
+}
+
+static bool e1000_is_second_port(struct e1000_hw *hw)
+{
+	switch (hw->mac_type) {
+	case e1000_80003es2lan:
+	case e1000_82546:
+	case e1000_82571:
+		if (E1000_READ_REG(hw, STATUS) & E1000_STATUS_FUNC_1)
+			return true;
+		/* Fallthrough */
+	default:
+		return false;
+	}
+}
+
+/******************************************************************************
+ * Reads the adapter's MAC address from the EEPROM and inverts the LSB for the
+ * second function of dual function devices
+ *
+ * edev - Struct containing variables accessed by shared code
+ *****************************************************************************/
+static int e1000_get_ethaddr(struct eth_device *edev, unsigned char *adr)
+{
+	struct e1000_hw *hw = edev->priv;
+	uint16_t eeprom_data;
+	uint32_t reg_data = 0;
+	int i;
+
+	DEBUGFUNC();
+
+	if (hw->mac_type == e1000_igb) {
+		/* i210 preloads MAC address into RAL/RAH registers */
+		reg_data = E1000_READ_REG_ARRAY(hw, RA, 0);
+		adr[0] = reg_data & 0xff;
+		adr[1] = (reg_data >> 8) & 0xff;
+		adr[2] = (reg_data >> 16) & 0xff;
+		adr[3] = (reg_data >> 24) & 0xff;
+		reg_data = E1000_READ_REG_ARRAY(hw, RA, 1);
+		adr[4] = reg_data & 0xff;
+		adr[5] = (reg_data >> 8) & 0xff;
+		return 0;
+	}
+
+	for (i = 0; i < NODE_ADDRESS_SIZE; i += 2) {
+		if (e1000_read_eeprom(hw, i >> 1, 1, &eeprom_data) < 0) {
+			dev_dbg(hw->dev, "EEPROM Read Error\n");
+			return -E1000_ERR_EEPROM;
+		}
+		adr[i] = eeprom_data & 0xff;
+		adr[i + 1] = (eeprom_data >> 8) & 0xff;
+	}
+
+	/* Invert the last bit if this is the second device */
+	if (e1000_is_second_port(hw))
+		adr[5] ^= 1;
+
+	return 0;
+}
+
+static int e1000_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
+{
+	struct e1000_hw *hw = edev->priv;
+	uint32_t addr_low;
+	uint32_t addr_high;
+
+	DEBUGFUNC();
+
+	dev_dbg(hw->dev, "Programming MAC Address into RAR[0]\n");
+
+	addr_low = (adr[0] | (adr[1] << 8) | (adr[2] << 16) | (adr[3] << 24));
+	addr_high = (adr[4] | (adr[5] << 8) | E1000_RAH_AV);
+
+	E1000_WRITE_REG_ARRAY(hw, RA, 0, addr_low);
+	E1000_WRITE_REG_ARRAY(hw, RA, 1, addr_high);
+
+	return 0;
+}
+
+/******************************************************************************
+ * Clears the VLAN filter table
+ *
+ * hw - Struct containing variables accessed by shared code
+ *****************************************************************************/
+static void e1000_clear_vfta(struct e1000_hw *hw)
+{
+	uint32_t offset;
+
+	for (offset = 0; offset < E1000_VLAN_FILTER_TBL_SIZE; offset++)
+		E1000_WRITE_REG_ARRAY(hw, VFTA, offset, 0);
+}
+
+/******************************************************************************
+ * Set the mac type member in the hw struct.
+ *
+ * hw - Struct containing variables accessed by shared code
+ *****************************************************************************/
+static int32_t e1000_set_mac_type(struct e1000_hw *hw)
+{
+	DEBUGFUNC();
+
+	switch (hw->device_id) {
+	case E1000_DEV_ID_82542:
+		switch (hw->revision_id) {
+		case E1000_82542_2_0_REV_ID:
+			hw->mac_type = e1000_82542_rev2_0;
+			break;
+		case E1000_82542_2_1_REV_ID:
+			hw->mac_type = e1000_82542_rev2_1;
+			break;
+		default:
+			/* Invalid 82542 revision ID */
+			return -E1000_ERR_MAC_TYPE;
+		}
+		break;
+	case E1000_DEV_ID_82543GC_FIBER:
+	case E1000_DEV_ID_82543GC_COPPER:
+		hw->mac_type = e1000_82543;
+		break;
+	case E1000_DEV_ID_82544EI_COPPER:
+	case E1000_DEV_ID_82544EI_FIBER:
+	case E1000_DEV_ID_82544GC_COPPER:
+	case E1000_DEV_ID_82544GC_LOM:
+		hw->mac_type = e1000_82544;
+		break;
+	case E1000_DEV_ID_82540EM:
+	case E1000_DEV_ID_82540EM_LOM:
+	case E1000_DEV_ID_82540EP:
+	case E1000_DEV_ID_82540EP_LOM:
+	case E1000_DEV_ID_82540EP_LP:
+		hw->mac_type = e1000_82540;
+		break;
+	case E1000_DEV_ID_82545EM_COPPER:
+	case E1000_DEV_ID_82545EM_FIBER:
+		hw->mac_type = e1000_82545;
+		break;
+	case E1000_DEV_ID_82545GM_COPPER:
+	case E1000_DEV_ID_82545GM_FIBER:
+	case E1000_DEV_ID_82545GM_SERDES:
+		hw->mac_type = e1000_82545_rev_3;
+		break;
+	case E1000_DEV_ID_82546EB_COPPER:
+	case E1000_DEV_ID_82546EB_FIBER:
+	case E1000_DEV_ID_82546EB_QUAD_COPPER:
+		hw->mac_type = e1000_82546;
+		break;
+	case E1000_DEV_ID_82546GB_COPPER:
+	case E1000_DEV_ID_82546GB_FIBER:
+	case E1000_DEV_ID_82546GB_SERDES:
+	case E1000_DEV_ID_82546GB_PCIE:
+	case E1000_DEV_ID_82546GB_QUAD_COPPER:
+	case E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3:
+		hw->mac_type = e1000_82546_rev_3;
+		break;
+	case E1000_DEV_ID_82541EI:
+	case E1000_DEV_ID_82541EI_MOBILE:
+	case E1000_DEV_ID_82541ER_LOM:
+		hw->mac_type = e1000_82541;
+		break;
+	case E1000_DEV_ID_82541ER:
+	case E1000_DEV_ID_82541GI:
+	case E1000_DEV_ID_82541GI_LF:
+	case E1000_DEV_ID_82541GI_MOBILE:
+		hw->mac_type = e1000_82541_rev_2;
+		break;
+	case E1000_DEV_ID_82547EI:
+	case E1000_DEV_ID_82547EI_MOBILE:
+		hw->mac_type = e1000_82547;
+		break;
+	case E1000_DEV_ID_82547GI:
+		hw->mac_type = e1000_82547_rev_2;
+		break;
+	case E1000_DEV_ID_82571EB_COPPER:
+	case E1000_DEV_ID_82571EB_FIBER:
+	case E1000_DEV_ID_82571EB_SERDES:
+	case E1000_DEV_ID_82571EB_SERDES_DUAL:
+	case E1000_DEV_ID_82571EB_SERDES_QUAD:
+	case E1000_DEV_ID_82571EB_QUAD_COPPER:
+	case E1000_DEV_ID_82571PT_QUAD_COPPER:
+	case E1000_DEV_ID_82571EB_QUAD_FIBER:
+	case E1000_DEV_ID_82571EB_QUAD_COPPER_LOWPROFILE:
+		hw->mac_type = e1000_82571;
+		break;
+	case E1000_DEV_ID_82572EI_COPPER:
+	case E1000_DEV_ID_82572EI_FIBER:
+	case E1000_DEV_ID_82572EI_SERDES:
+	case E1000_DEV_ID_82572EI:
+		hw->mac_type = e1000_82572;
+		break;
+	case E1000_DEV_ID_82573E:
+	case E1000_DEV_ID_82573E_IAMT:
+	case E1000_DEV_ID_82573L:
+		hw->mac_type = e1000_82573;
+		break;
+	case E1000_DEV_ID_82574L:
+		hw->mac_type = e1000_82574;
+		break;
+	case E1000_DEV_ID_80003ES2LAN_COPPER_SPT:
+	case E1000_DEV_ID_80003ES2LAN_SERDES_SPT:
+	case E1000_DEV_ID_80003ES2LAN_COPPER_DPT:
+	case E1000_DEV_ID_80003ES2LAN_SERDES_DPT:
+		hw->mac_type = e1000_80003es2lan;
+		break;
+	case E1000_DEV_ID_ICH8_IGP_M_AMT:
+	case E1000_DEV_ID_ICH8_IGP_AMT:
+	case E1000_DEV_ID_ICH8_IGP_C:
+	case E1000_DEV_ID_ICH8_IFE:
+	case E1000_DEV_ID_ICH8_IFE_GT:
+	case E1000_DEV_ID_ICH8_IFE_G:
+	case E1000_DEV_ID_ICH8_IGP_M:
+		hw->mac_type = e1000_ich8lan;
+		break;
+	case E1000_DEV_ID_I350_COPPER:
+	case E1000_DEV_ID_I210_UNPROGRAMMED:
+	case E1000_DEV_ID_I211_UNPROGRAMMED:
+	case E1000_DEV_ID_I210_COPPER:
+	case E1000_DEV_ID_I211_COPPER:
+	case E1000_DEV_ID_I210_COPPER_FLASHLESS:
+	case E1000_DEV_ID_I210_SERDES:
+	case E1000_DEV_ID_I210_SERDES_FLASHLESS:
+	case E1000_DEV_ID_I210_1000BASEKX:
+		hw->mac_type = e1000_igb;
+		break;
+	default:
+		/* Should never have loaded on this device */
+		return -E1000_ERR_MAC_TYPE;
+	}
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+ * Reset the transmit and receive units; mask and clear all interrupts.
+ *
+ * hw - Struct containing variables accessed by shared code
+ *****************************************************************************/
+static void e1000_reset_hw(struct e1000_hw *hw)
+{
+	uint32_t ctrl;
+	uint32_t reg;
+
+	DEBUGFUNC();
+
+	/* For 82542 (rev 2.0), disable MWI before issuing a device reset */
+	if (hw->mac_type == e1000_82542_rev2_0) {
+		dev_dbg(hw->dev, "Disabling MWI on 82542 rev 2.0\n");
+		pci_write_config_word(hw->pdev, PCI_COMMAND,
+				hw->pci_cmd_word & ~PCI_COMMAND_INVALIDATE);
+	}
+
+	/* Disable the Transmit and Receive units.  Then delay to allow
+	 * any pending transactions to complete before we hit the MAC with
+	 * the global reset.
+	 */
+	E1000_WRITE_REG(hw, RCTL, 0);
+	E1000_WRITE_REG(hw, TCTL, E1000_TCTL_PSP);
+	E1000_WRITE_FLUSH(hw);
+
+	/* Delay to allow any outstanding PCI transactions to complete before
+	 * resetting the device
+	 */
+	mdelay(10);
+
+	/* Issue a global reset to the MAC.  This will reset the chip's
+	 * transmit, receive, DMA, and link units.  It will not effect
+	 * the current PCI configuration.  The global reset bit is self-
+	 * clearing, and should clear within a microsecond.
+	 */
+	dev_dbg(hw->dev, "Issuing a global reset to MAC\n");
+	ctrl = E1000_READ_REG(hw, CTRL);
+
+	E1000_WRITE_REG(hw, CTRL, (ctrl | E1000_CTRL_RST));
+
+	/* Force a reload from the EEPROM if necessary */
+	if (hw->mac_type == e1000_igb) {
+		mdelay(20);
+		reg = E1000_READ_REG(hw, STATUS);
+		if (reg & E1000_STATUS_PF_RST_DONE)
+			dev_dbg(hw->dev, "PF OK\n");
+		reg = E1000_READ_REG(hw, I210_EECD);
+		if (reg & E1000_EECD_AUTO_RD)
+			dev_dbg(hw->dev, "EEC OK\n");
+	} else if (hw->mac_type < e1000_82540) {
+		uint32_t ctrl_ext;
+
+		/* Wait for reset to complete */
+		udelay(10);
+		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		ctrl_ext |= E1000_CTRL_EXT_EE_RST;
+		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
+		E1000_WRITE_FLUSH(hw);
+		/* Wait for EEPROM reload */
+		mdelay(2);
+	} else {
+		uint32_t manc;
+
+		/* Wait for EEPROM reload (it happens automatically) */
+		mdelay(4);
+		/* Dissable HW ARPs on ASF enabled adapters */
+		manc = E1000_READ_REG(hw, MANC);
+		manc &= ~(E1000_MANC_ARP_EN);
+		E1000_WRITE_REG(hw, MANC, manc);
+	}
+
+	/* Clear interrupt mask to stop board from generating interrupts */
+	if (hw->mac_type == e1000_igb)
+		E1000_WRITE_REG(hw, I210_IAM, 0);
+
+	E1000_WRITE_REG(hw, IMC, 0xffffffff);
+
+	/* Clear any pending interrupt events. */
+	E1000_READ_REG(hw, ICR);
+
+	/* If MWI was previously enabled, reenable it. */
+	if (hw->mac_type == e1000_82542_rev2_0)
+		pci_write_config_word(hw->pdev, PCI_COMMAND, hw->pci_cmd_word);
+
+	if (hw->mac_type != e1000_igb) {
+		if (hw->mac_type < e1000_82571)
+			E1000_WRITE_REG(hw, PBA, 0x00000030);
+		else
+			E1000_WRITE_REG(hw, PBA, 0x000a0026);
+	}
+}
+
+/******************************************************************************
+ *
+ * Initialize a number of hardware-dependent bits
+ *
+ * hw: Struct containing variables accessed by shared code
+ *
+ * This function contains hardware limitation workarounds for PCI-E adapters
+ *
+ *****************************************************************************/
+static void e1000_initialize_hardware_bits(struct e1000_hw *hw)
+{
+	uint32_t reg_ctrl, reg_ctrl_ext;
+	uint32_t reg_tarc0, reg_tarc1;
+	uint32_t reg_txdctl, reg_txdctl1;
+
+	if (hw->mac_type < e1000_82571)
+		return;
+
+	/* Settings common to all PCI-express silicon */
+
+	/* link autonegotiation/sync workarounds */
+	reg_tarc0 = E1000_READ_REG(hw, TARC0);
+	reg_tarc0 &= ~((1 << 30) | (1 << 29) | (1 << 28) | (1 << 27));
+
+	/* Enable not-done TX descriptor counting */
+	reg_txdctl = E1000_READ_REG(hw, TXDCTL);
+	reg_txdctl |= E1000_TXDCTL_COUNT_DESC;
+	E1000_WRITE_REG(hw, TXDCTL, reg_txdctl);
+
+	reg_txdctl1 = E1000_READ_REG(hw, TXDCTL1);
+	reg_txdctl1 |= E1000_TXDCTL_COUNT_DESC;
+	E1000_WRITE_REG(hw, TXDCTL1, reg_txdctl1);
+
+	switch (hw->mac_type) {
+	case e1000_82571:
+	case e1000_82572:
+		/* Clear PHY TX compatible mode bits */
+		reg_tarc1 = E1000_READ_REG(hw, TARC1);
+		reg_tarc1 &= ~((1 << 30) | (1 << 29));
+
+		/* link autonegotiation/sync workarounds */
+		reg_tarc0 |= (1 << 26) | (1 << 25) | (1 << 24) | (1 << 23);
+
+		/* TX ring control fixes */
+		reg_tarc1 |= (1 << 26) | (1 << 25) | (1 << 24);
+
+		/* Multiple read bit is reversed polarity */
+		if (E1000_READ_REG(hw, TCTL) & E1000_TCTL_MULR)
+			reg_tarc1 &= ~(1 << 28);
+		else
+			reg_tarc1 |= (1 << 28);
+
+		E1000_WRITE_REG(hw, TARC1, reg_tarc1);
+		break;
+	case e1000_82573:
+	case e1000_82574:
+		reg_ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		reg_ctrl_ext &= ~(1 << 23);
+		reg_ctrl_ext |= (1 << 22);
+
+		/* TX byte count fix */
+		reg_ctrl = E1000_READ_REG(hw, CTRL);
+		reg_ctrl &= ~(1 << 29);
+
+		E1000_WRITE_REG(hw, CTRL_EXT, reg_ctrl_ext);
+		E1000_WRITE_REG(hw, CTRL, reg_ctrl);
+		break;
+	case e1000_80003es2lan:
+		/* improve small packet performace for fiber/serdes */
+		if (e1000_media_fiber_serdes(hw))
+			reg_tarc0 &= ~(1 << 20);
+
+		/* Multiple read bit is reversed polarity */
+		reg_tarc1 = E1000_READ_REG(hw, TARC1);
+		if (E1000_READ_REG(hw, TCTL) & E1000_TCTL_MULR)
+			reg_tarc1 &= ~(1 << 28);
+		else
+			reg_tarc1 |= (1 << 28);
+
+		E1000_WRITE_REG(hw, TARC1, reg_tarc1);
+		break;
+	case e1000_ich8lan:
+		/* Reduce concurrent DMA requests to 3 from 4 */
+		if ((hw->revision_id < 3) ||
+		   ((hw->device_id != E1000_DEV_ID_ICH8_IGP_M_AMT) &&
+		    (hw->device_id != E1000_DEV_ID_ICH8_IGP_M)))
+			reg_tarc0 |= (1 << 29) | (1 << 28);
+
+		reg_ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		reg_ctrl_ext |= (1 << 22);
+		E1000_WRITE_REG(hw, CTRL_EXT, reg_ctrl_ext);
+
+		/* workaround TX hang with TSO=on */
+		reg_tarc0 |= (1 << 27) | (1 << 26) | (1 << 24) | (1 << 23);
+
+		/* Multiple read bit is reversed polarity */
+		reg_tarc1 = E1000_READ_REG(hw, TARC1);
+		if (E1000_READ_REG(hw, TCTL) & E1000_TCTL_MULR)
+			reg_tarc1 &= ~(1 << 28);
+		else
+			reg_tarc1 |= (1 << 28);
+
+		/* workaround TX hang with TSO=on */
+		reg_tarc1 |= (1 << 30) | (1 << 26) | (1 << 24);
+
+		E1000_WRITE_REG(hw, TARC1, reg_tarc1);
+		break;
+	case e1000_igb:
+		return;
+	default:
+		break;
+	}
+
+	E1000_WRITE_REG(hw, TARC0, reg_tarc0);
+}
+
+static int e1000_open(struct eth_device *edev)
+{
+	struct e1000_hw *hw = edev->priv;
+	uint32_t ctrl_ext;
+	int32_t ret_val;
+	uint32_t ctrl;
+	uint32_t reg_data;
+
+	/* Call a subroutine to configure the link and setup flow control. */
+	ret_val = e1000_setup_link(hw);
+	if (ret_val)
+		return ret_val;
+
+	/* Set the transmit descriptor write-back policy */
+	if (hw->mac_type > e1000_82544) {
+		ctrl = E1000_READ_REG(hw, TXDCTL);
+		ctrl &= ~E1000_TXDCTL_WTHRESH;
+		ctrl |= E1000_TXDCTL_FULL_TX_DESC_WB;
+		E1000_WRITE_REG(hw, TXDCTL, ctrl);
+	}
+
+	/* Set the receive descriptor write back policy */
+	if (hw->mac_type >= e1000_82571) {
+		ctrl = E1000_READ_REG(hw, RXDCTL);
+		ctrl &= ~E1000_RXDCTL_WTHRESH;
+		ctrl |= E1000_RXDCTL_FULL_RX_DESC_WB;
+		E1000_WRITE_REG(hw, RXDCTL, ctrl);
+	}
+
+	switch (hw->mac_type) {
+	case e1000_80003es2lan:
+		/* Enable retransmit on late collisions */
+		reg_data = E1000_READ_REG(hw, TCTL);
+		reg_data |= E1000_TCTL_RTLC;
+		E1000_WRITE_REG(hw, TCTL, reg_data);
+
+		/* Configure Gigabit Carry Extend Padding */
+		reg_data = E1000_READ_REG(hw, TCTL_EXT);
+		reg_data &= ~E1000_TCTL_EXT_GCEX_MASK;
+		reg_data |= DEFAULT_80003ES2LAN_TCTL_EXT_GCEX;
+		E1000_WRITE_REG(hw, TCTL_EXT, reg_data);
+
+		/* Configure Transmit Inter-Packet Gap */
+		reg_data = E1000_READ_REG(hw, TIPG);
+		reg_data &= ~E1000_TIPG_IPGT_MASK;
+		reg_data |= DEFAULT_80003ES2LAN_TIPG_IPGT_1000;
+		E1000_WRITE_REG(hw, TIPG, reg_data);
+
+		reg_data = E1000_READ_REG_ARRAY(hw, FFLT, 0x0001);
+		reg_data &= ~0x00100000;
+		E1000_WRITE_REG_ARRAY(hw, FFLT, 0x0001, reg_data);
+		/* Fall through */
+	case e1000_82571:
+	case e1000_82572:
+	case e1000_ich8lan:
+		ctrl = E1000_READ_REG(hw, TXDCTL1);
+		ctrl &= ~E1000_TXDCTL_WTHRESH;
+		ctrl |= E1000_TXDCTL_FULL_TX_DESC_WB;
+		E1000_WRITE_REG(hw, TXDCTL1, ctrl);
+		break;
+	case e1000_82573:
+	case e1000_82574:
+		reg_data = E1000_READ_REG(hw, GCR);
+		reg_data |= E1000_GCR_L1_ACT_WITHOUT_L0S_RX;
+		E1000_WRITE_REG(hw, GCR, reg_data);
+	case e1000_igb:
+	default:
+		break;
+	}
+
+	if (hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER ||
+	    hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3) {
+		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		/* Relaxed ordering must be disabled to avoid a parity
+		 * error crash in a PCI slot. */
+		ctrl_ext |= E1000_CTRL_EXT_RO_DIS;
+		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
+	}
+
+	return 0;
+}
+
+/******************************************************************************
+ * Configures flow control and link settings.
+ *
+ * hw - Struct containing variables accessed by shared code
+ *
+ * Determines which flow control settings to use. Calls the apropriate media-
+ * specific link configuration function. Configures the flow control settings.
+ * Assuming the adapter has a valid link partner, a valid link should be
+ * established. Assumes the hardware has previously been reset and the
+ * transmitter and receiver are not enabled.
+ *****************************************************************************/
+static int e1000_setup_link(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	uint32_t ctrl_ext;
+	uint16_t eeprom_data;
+
+	DEBUGFUNC();
+
+	/* In the case of the phy reset being blocked, we already have a link.
+	 * We do not have to set it up again. */
+	if (e1000_check_phy_reset_block(hw))
+		return E1000_SUCCESS;
+
+	/* Read and store word 0x0F of the EEPROM. This word contains bits
+	 * that determine the hardware's default PAUSE (flow control) mode,
+	 * a bit that determines whether the HW defaults to enabling or
+	 * disabling auto-negotiation, and the direction of the
+	 * SW defined pins. If there is no SW over-ride of the flow
+	 * control setting, then the variable hw->fc will
+	 * be initialized based on a value in the EEPROM.
+	 */
+	if (e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1,
+				&eeprom_data) < 0) {
+		dev_dbg(hw->dev, "EEPROM Read Error\n");
+		return -E1000_ERR_EEPROM;
+	}
+
+	switch (hw->mac_type) {
+	case e1000_ich8lan:
+	case e1000_82573:
+	case e1000_82574:
+	case e1000_igb:
+		hw->fc = e1000_fc_full;
+		break;
+	default:
+		ret_val = e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1, &eeprom_data);
+		if (ret_val) {
+			dev_dbg(hw->dev, "EEPROM Read Error\n");
+			return -E1000_ERR_EEPROM;
+		}
+
+		if ((eeprom_data & EEPROM_WORD0F_PAUSE_MASK) == 0)
+			hw->fc = e1000_fc_none;
+		else if ((eeprom_data & EEPROM_WORD0F_PAUSE_MASK) == EEPROM_WORD0F_ASM_DIR)
+			hw->fc = e1000_fc_tx_pause;
+		else
+			hw->fc = e1000_fc_full;
+		break;
+	}
+
+	/* We want to save off the original Flow Control configuration just
+	 * in case we get disconnected and then reconnected into a different
+	 * hub or switch with different Flow Control capabilities.
+	 */
+	if (hw->mac_type == e1000_82542_rev2_0)
+		hw->fc &= ~e1000_fc_tx_pause;
+
+	hw->original_fc = hw->fc;
+
+	dev_dbg(hw->dev, "After fix-ups FlowControl is now = %x\n", hw->fc);
+
+	/* Take the 4 bits from EEPROM word 0x0F that determine the initial
+	 * polarity value for the SW controlled pins, and setup the
+	 * Extended Device Control reg with that info.
+	 * This is needed because one of the SW controlled pins is used for
+	 * signal detection.  So this should be done before e1000_setup_pcs_link()
+	 * or e1000_phy_setup() is called.
+	 */
+	if (hw->mac_type == e1000_82543) {
+		ctrl_ext = ((eeprom_data & EEPROM_WORD0F_SWPDIO_EXT) <<
+			    SWDPIO__EXT_SHIFT);
+		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
+	}
+
+	/* Call the necessary subroutine to configure the link. */
+	if (e1000_media_fiber(hw))
+		ret_val = e1000_setup_fiber_link(hw);
+	else
+		ret_val = e1000_setup_copper_link(hw);
+
+	if (ret_val < 0)
+		return ret_val;
+
+	/* Initialize the flow control address, type, and PAUSE timer
+	 * registers to their default values.  This is done even if flow
+	 * control is disabled, because it does not hurt anything to
+	 * initialize these registers.
+	 */
+	dev_dbg(hw->dev, "Initializing Flow Control address, type and timer regs\n");
+
+	/* FCAL/H and FCT are hardcoded to standard values in e1000_ich8lan. */
+	if (hw->mac_type != e1000_ich8lan) {
+		E1000_WRITE_REG(hw, FCT, FLOW_CONTROL_TYPE);
+		E1000_WRITE_REG(hw, FCAH, FLOW_CONTROL_ADDRESS_HIGH);
+		E1000_WRITE_REG(hw, FCAL, FLOW_CONTROL_ADDRESS_LOW);
+	}
+
+	E1000_WRITE_REG(hw, FCTTV, E1000_FC_PAUSE_TIME);
+
+	/* Set the flow control receive threshold registers.  Normally,
+	 * these registers will be set to a default threshold that may be
+	 * adjusted later by the driver's runtime code.  However, if the
+	 * ability to transmit pause frames in not enabled, then these
+	 * registers will be set to 0.
+	 */
+	if (hw->fc & e1000_fc_tx_pause) {
+		/* We need to set up the Receive Threshold high and low water marks
+		 * as well as (optionally) enabling the transmission of XON frames.
+		 */
+		E1000_WRITE_REG(hw, FCRTL, E1000_FC_LOW_THRESH | E1000_FCRTL_XONE);
+		E1000_WRITE_REG(hw, FCRTH, E1000_FC_HIGH_THRESH);
+	} else {
+		E1000_WRITE_REG(hw, FCRTL, 0);
+		E1000_WRITE_REG(hw, FCRTH, 0);
+	}
+
+	return ret_val;
+}
+
+/******************************************************************************
+ * Sets up link for a fiber based adapter
+ *
+ * hw - Struct containing variables accessed by shared code
+ *
+ * Manipulates Physical Coding Sublayer functions in order to configure
+ * link. Assumes the hardware has been previously reset and the transmitter
+ * and receiver are not enabled.
+ *****************************************************************************/
+static int e1000_setup_fiber_link(struct e1000_hw *hw)
+{
+	uint32_t ctrl;
+	uint32_t status;
+	uint32_t txcw = 0;
+	uint32_t i;
+	uint32_t signal;
+
+	DEBUGFUNC();
+
+	/* On adapters with a MAC newer that 82544, SW Defineable pin 1 will be
+	 * set when the optics detect a signal. On older adapters, it will be
+	 * cleared when there is a signal
+	 */
+	ctrl = E1000_READ_REG(hw, CTRL);
+	if ((hw->mac_type > e1000_82544) && !(ctrl & E1000_CTRL_ILOS))
+		signal = E1000_CTRL_SWDPIN1;
+	else
+		signal = 0;
+
+	/* Take the link out of reset */
+	ctrl &= ~E1000_CTRL_LRST;
+
+	e1000_config_collision_dist(hw);
+
+	/* Check for a software override of the flow control settings, and setup
+	 * the device accordingly.  If auto-negotiation is enabled, then software
+	 * will have to set the "PAUSE" bits to the correct value in the Tranmsit
+	 * Config Word Register (TXCW) and re-start auto-negotiation.  However, if
+	 * auto-negotiation is disabled, then software will have to manually
+	 * configure the two flow control enable bits in the CTRL register.
+	 *
+	 * The possible values of the "fc" parameter are:
+	 *	0:  Flow control is completely disabled
+	 *	1:  Rx flow control is enabled (we can receive pause frames, but
+	 *	    not send pause frames).
+	 *	2:  Tx flow control is enabled (we can send pause frames but we do
+	 *	    not support receiving pause frames).
+	 *	3:  Both Rx and TX flow control (symmetric) are enabled.
+	 */
+	switch (hw->fc) {
+	case e1000_fc_none:
+		/* Flow control is completely disabled by a software over-ride. */
+		txcw = E1000_TXCW_ANE | E1000_TXCW_FD;
+		break;
+	case e1000_fc_rx_pause:
+		/* RX Flow control is enabled and TX Flow control is disabled by a
+		 * software over-ride. Since there really isn't a way to advertise
+		 * that we are capable of RX Pause ONLY, we will advertise that we
+		 * support both symmetric and asymmetric RX PAUSE. Later, we will
+		 *  disable the adapter's ability to send PAUSE frames.
+		 */
+		txcw = E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_PAUSE_MASK;
+		break;
+	case e1000_fc_tx_pause:
+		/* TX Flow control is enabled, and RX Flow control is disabled, by a
+		 * software over-ride.
+		 */
+		txcw = E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_ASM_DIR;
+		break;
+	case e1000_fc_full:
+		/* Flow control (both RX and TX) is enabled by a software over-ride. */
+		txcw = E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_PAUSE_MASK;
+		break;
+	default:
+		dev_dbg(hw->dev, "Flow control param set incorrectly\n");
+		return -E1000_ERR_CONFIG;
+		break;
+	}
+
+	/* Since auto-negotiation is enabled, take the link out of reset (the link
+	 * will be in reset, because we previously reset the chip). This will
+	 * restart auto-negotiation.  If auto-neogtiation is successful then the
+	 * link-up status bit will be set and the flow control enable bits (RFCE
+	 * and TFCE) will be set according to their negotiated value.
+	 */
+	dev_dbg(hw->dev, "Auto-negotiation enabled (%#x)\n", txcw);
+
+	E1000_WRITE_REG(hw, TXCW, txcw);
+	E1000_WRITE_REG(hw, CTRL, ctrl);
+	E1000_WRITE_FLUSH(hw);
+
+	mdelay(1);
+
+	/* If we have a signal (the cable is plugged in) then poll for a "Link-Up"
+	 * indication in the Device Status Register.  Time-out if a link isn't
+	 * seen in 500 milliseconds seconds (Auto-negotiation should complete in
+	 * less than 500 milliseconds even if the other end is doing it in SW).
+	 */
+	if ((E1000_READ_REG(hw, CTRL) & E1000_CTRL_SWDPIN1) == signal) {
+		dev_dbg(hw->dev, "Looking for Link\n");
+		for (i = 0; i < (LINK_UP_TIMEOUT / 10); i++) {
+			mdelay(10);
+			status = E1000_READ_REG(hw, STATUS);
+			if (status & E1000_STATUS_LU)
+				break;
+		}
+		if (i == (LINK_UP_TIMEOUT / 10)) {
+			/* AutoNeg failed to achieve a link, so we'll call
+			 * e1000_check_for_link. This routine will force the link up if we
+			 * detect a signal. This will allow us to communicate with
+			 * non-autonegotiating link partners.
+			 */
+			dev_dbg(hw->dev, "Never got a valid link from auto-neg!!!\n");
+			hw->autoneg_failed = 1;
+			return -E1000_ERR_NOLINK;
+		} else {
+			hw->autoneg_failed = 0;
+			dev_dbg(hw->dev, "Valid Link Found\n");
+		}
+	} else {
+		dev_dbg(hw->dev, "No Signal Detected\n");
+		return -E1000_ERR_NOLINK;
+	}
+	return 0;
+}
+
+/******************************************************************************
+* Make sure we have a valid PHY and change PHY mode before link setup.
+*
+* hw - Struct containing variables accessed by shared code
+******************************************************************************/
+static int32_t e1000_copper_link_preconfig(struct e1000_hw *hw)
+{
+	uint32_t ctrl;
+	int32_t ret_val;
+	uint16_t phy_data;
+
+	DEBUGFUNC();
+
+	ctrl = E1000_READ_REG(hw, CTRL);
+	/* With 82543, we need to force speed and duplex on the MAC equal to what
+	 * the PHY speed and duplex configuration is. In addition, we need to
+	 * perform a hardware reset on the PHY to take it out of reset.
+	 */
+	if (hw->mac_type > e1000_82543) {
+		ctrl |= E1000_CTRL_SLU;
+		ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
+		E1000_WRITE_REG(hw, CTRL, ctrl);
+	} else {
+		ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX
+				| E1000_CTRL_SLU);
+		E1000_WRITE_REG(hw, CTRL, ctrl);
+		ret_val = e1000_phy_hw_reset(hw);
+		if (ret_val)
+			return ret_val;
+	}
+
+	/* Make sure we have a valid PHY */
+	ret_val = e1000_detect_gig_phy(hw);
+	if (ret_val) {
+		dev_dbg(hw->dev, "Error, did not detect valid phy.\n");
+		return ret_val;
+	}
+	dev_dbg(hw->dev, "Phy ID = %x \n", hw->phy_id);
+
+	/* Set PHY to class A mode (if necessary) */
+	ret_val = e1000_set_phy_mode(hw);
+	if (ret_val)
+		return ret_val;
+
+	if ((hw->mac_type == e1000_82545_rev_3) ||
+	    (hw->mac_type == e1000_82546_rev_3)) {
+		ret_val = e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
+		phy_data |= 0x00000008;
+		ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);
+	}
+
+	return E1000_SUCCESS;
+}
+
+/*****************************************************************************
+ *
+ * This function sets the lplu state according to the active flag.  When
+ * activating lplu this function also disables smart speed and vise versa.
+ * lplu will not be activated unless the device autonegotiation advertisment
+ * meets standards of either 10 or 10/100 or 10/100/1000 at all duplexes.
+ * hw: Struct containing variables accessed by shared code
+ * active - true to enable lplu false to disable lplu.
+ *
+ * returns: - E1000_ERR_PHY if fail to read/write the PHY
+ *            E1000_SUCCESS at any other case.
+ *
+ ****************************************************************************/
+
+static int32_t e1000_set_d3_lplu_state_off(struct e1000_hw *hw)
+{
+	uint32_t phy_ctrl = 0;
+	int32_t ret_val;
+	uint16_t phy_data;
+	DEBUGFUNC();
+
+	/* During driver activity LPLU should not be used or it will attain link
+	 * from the lowest speeds starting from 10Mbps. The capability is used
+	 * for Dx transitions and states */
+	if (hw->mac_type == e1000_82541_rev_2
+			|| hw->mac_type == e1000_82547_rev_2) {
+		ret_val = e1000_read_phy_reg(hw, IGP01E1000_GMII_FIFO,
+				&phy_data);
+		if (ret_val)
+			return ret_val;
+	} else if (hw->mac_type == e1000_ich8lan) {
+		/* MAC writes into PHY register based on the state transition
+		 * and start auto-negotiation. SW driver can overwrite the
+		 * settings in CSR PHY power control E1000_PHY_CTRL register. */
+		phy_ctrl = E1000_READ_REG(hw, PHY_CTRL);
+	} else {
+		ret_val = e1000_read_phy_reg(hw, IGP02E1000_PHY_POWER_MGMT, &phy_data);
+		if (ret_val)
+			return ret_val;
+	}
+
+	if (hw->mac_type == e1000_82541_rev_2 ||
+	    hw->mac_type == e1000_82547_rev_2) {
+		phy_data &= ~IGP01E1000_GMII_FLEX_SPD;
+		ret_val = e1000_write_phy_reg(hw, IGP01E1000_GMII_FIFO, phy_data);
+		if (ret_val)
+			return ret_val;
+	} else {
+		if (hw->mac_type == e1000_ich8lan) {
+			phy_ctrl &= ~E1000_PHY_CTRL_NOND0A_LPLU;
+			E1000_WRITE_REG(hw, PHY_CTRL, phy_ctrl);
+		} else {
+			phy_data &= ~IGP02E1000_PM_D3_LPLU;
+			ret_val = e1000_write_phy_reg(hw,
+				IGP02E1000_PHY_POWER_MGMT, phy_data);
+			if (ret_val)
+				return ret_val;
+		}
+	}
+
+	return E1000_SUCCESS;
+}
+
+/*****************************************************************************
+ *
+ * This function sets the lplu d0 state according to the active flag.  When
+ * activating lplu this function also disables smart speed and vise versa.
+ * lplu will not be activated unless the device autonegotiation advertisment
+ * meets standards of either 10 or 10/100 or 10/100/1000 at all duplexes.
+ * hw: Struct containing variables accessed by shared code
+ * active - true to enable lplu false to disable lplu.
+ *
+ * returns: - E1000_ERR_PHY if fail to read/write the PHY
+ *            E1000_SUCCESS at any other case.
+ *
+ ****************************************************************************/
+
+static int32_t e1000_set_d0_lplu_state_off(struct e1000_hw *hw)
+{
+	uint32_t phy_ctrl = 0;
+	int32_t ret_val;
+	uint16_t phy_data;
+	DEBUGFUNC();
+
+	if (hw->mac_type <= e1000_82547_rev_2)
+		return E1000_SUCCESS;
+
+	if (hw->mac_type == e1000_ich8lan) {
+		phy_ctrl = E1000_READ_REG(hw, PHY_CTRL);
+		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
+		E1000_WRITE_REG(hw, PHY_CTRL, phy_ctrl);
+	} else if (hw->mac_type == e1000_igb) {
+		phy_ctrl = E1000_READ_REG(hw, I210_PHY_CTRL);
+		phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
+		E1000_WRITE_REG(hw, I210_PHY_CTRL, phy_ctrl);
+	} else {
+		ret_val = e1000_read_phy_reg(hw, IGP02E1000_PHY_POWER_MGMT,
+				&phy_data);
+		if (ret_val)
+			return ret_val;
+
+		phy_data &= ~IGP02E1000_PM_D0_LPLU;
+
+		ret_val = e1000_write_phy_reg(hw,
+				IGP02E1000_PHY_POWER_MGMT, phy_data);
+		if (ret_val)
+			return ret_val;
+	}
+
+	return E1000_SUCCESS;
+}
+
+/********************************************************************
+* Copper link setup for e1000_phy_igp series.
+*
+* hw - Struct containing variables accessed by shared code
+*********************************************************************/
+static int32_t e1000_copper_link_igp_setup(struct e1000_hw *hw)
+{
+	uint32_t led_ctrl;
+	int32_t ret_val;
+	uint16_t phy_data;
+
+	DEBUGFUNC();
+
+	ret_val = e1000_phy_reset(hw);
+	if (ret_val) {
+		dev_dbg(hw->dev, "Error Resetting the PHY\n");
+		return ret_val;
+	}
+
+	/* Wait 15ms for MAC to configure PHY from eeprom settings */
+	mdelay(15);
+	if (hw->mac_type != e1000_ich8lan) {
+		/* Configure activity LED after PHY reset */
+		led_ctrl = E1000_READ_REG(hw, LEDCTL);
+		led_ctrl &= IGP_ACTIVITY_LED_MASK;
+		led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
+		E1000_WRITE_REG(hw, LEDCTL, led_ctrl);
+	}
+
+	/* The NVM settings will configure LPLU in D3 for IGP2 and IGP3 PHYs */
+	if (hw->phy_type == e1000_phy_igp) {
+		/* disable lplu d3 during driver init */
+		ret_val = e1000_set_d3_lplu_state_off(hw);
+		if (ret_val) {
+			dev_dbg(hw->dev, "Error Disabling LPLU D3\n");
+			return ret_val;
+		}
+	}
+
+	/* disable lplu d0 during driver init */
+	ret_val = e1000_set_d0_lplu_state_off(hw);
+	if (ret_val) {
+		dev_dbg(hw->dev, "Error Disabling LPLU D0\n");
+		return ret_val;
+	}
+
+	/* Configure mdi-mdix settings */
+	ret_val = e1000_read_phy_reg(hw, IGP01E1000_PHY_PORT_CTRL, &phy_data);
+	if (ret_val)
+		return ret_val;
+
+	if ((hw->mac_type == e1000_82541) || (hw->mac_type == e1000_82547)) {
+		/* Force MDI for earlier revs of the IGP PHY */
+		phy_data &= ~(IGP01E1000_PSCR_AUTO_MDIX
+				| IGP01E1000_PSCR_FORCE_MDI_MDIX);
+	} else {
+		phy_data |= IGP01E1000_PSCR_AUTO_MDIX;
+	}
+	ret_val = e1000_write_phy_reg(hw, IGP01E1000_PHY_PORT_CTRL, phy_data);
+	if (ret_val)
+		return ret_val;
+
+	/* set auto-master slave resolution settings */
+	/* when autonegotiation advertisment is only 1000Mbps then we
+	  * should disable SmartSpeed and enable Auto MasterSlave
+	  * resolution as hardware default. */
+	if (hw->autoneg_advertised == ADVERTISE_1000_FULL) {
+		/* Disable SmartSpeed */
+		ret_val = e1000_read_phy_reg(hw,
+				IGP01E1000_PHY_PORT_CONFIG, &phy_data);
+		if (ret_val)
+			return ret_val;
+		phy_data &= ~IGP01E1000_PSCFR_SMART_SPEED;
+		ret_val = e1000_write_phy_reg(hw,
+				IGP01E1000_PHY_PORT_CONFIG, phy_data);
+		if (ret_val)
+			return ret_val;
+		/* Set auto Master/Slave resolution process */
+		ret_val = e1000_read_phy_reg(hw, PHY_1000T_CTRL,
+				&phy_data);
+		if (ret_val)
+			return ret_val;
+		phy_data &= ~CR_1000T_MS_ENABLE;
+		ret_val = e1000_write_phy_reg(hw, PHY_1000T_CTRL,
+				phy_data);
+		if (ret_val)
+			return ret_val;
+	}
+
+	ret_val = e1000_read_phy_reg(hw, PHY_1000T_CTRL, &phy_data);
+	if (ret_val)
+		return ret_val;
+
+	ret_val = e1000_write_phy_reg(hw, PHY_1000T_CTRL, phy_data);
+	if (ret_val)
+		return ret_val;
+
+	return E1000_SUCCESS;
+}
+
+/*****************************************************************************
+ * This function checks the mode of the firmware.
+ *
+ * returns  - true when the mode is IAMT or false.
+ ****************************************************************************/
+static bool e1000_check_mng_mode(struct e1000_hw *hw)
+{
+	uint32_t fwsm;
+
+	DEBUGFUNC();
+
+	fwsm = E1000_READ_REG(hw, FWSM);
+
+	if (hw->mac_type == e1000_ich8lan) {
+		if ((fwsm & E1000_FWSM_MODE_MASK) ==
+		    (E1000_MNG_ICH_IAMT_MODE << E1000_FWSM_MODE_SHIFT))
+			return true;
+	} else if ((fwsm & E1000_FWSM_MODE_MASK) ==
+			(E1000_MNG_IAMT_MODE << E1000_FWSM_MODE_SHIFT))
+			return true;
+
+	return false;
+}
+
+static int32_t e1000_write_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint16_t data)
+{
+	uint16_t swfw = E1000_SWFW_PHY0_SM;
+	uint32_t reg_val;
+	DEBUGFUNC();
+
+	if (e1000_is_second_port(hw))
+		swfw = E1000_SWFW_PHY1_SM;
+
+	if (e1000_swfw_sync_acquire(hw, swfw))
+		return -E1000_ERR_SWFW_SYNC;
+
+	reg_val = ((reg_addr << E1000_KUMCTRLSTA_OFFSET_SHIFT)
+			& E1000_KUMCTRLSTA_OFFSET) | data;
+	E1000_WRITE_REG(hw, KUMCTRLSTA, reg_val);
+	udelay(2);
+
+	return E1000_SUCCESS;
+}
+
+static int32_t e1000_read_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint16_t *data)
+{
+	uint16_t swfw = E1000_SWFW_PHY0_SM;
+	uint32_t reg_val;
+	DEBUGFUNC();
+
+	if (e1000_is_second_port(hw))
+		swfw = E1000_SWFW_PHY1_SM;
+
+	if (e1000_swfw_sync_acquire(hw, swfw)) {
+		debug("%s[%i]\n", __func__, __LINE__);
+		return -E1000_ERR_SWFW_SYNC;
+	}
+
+	/* Write register address */
+	reg_val = ((reg_addr << E1000_KUMCTRLSTA_OFFSET_SHIFT) &
+			E1000_KUMCTRLSTA_OFFSET) | E1000_KUMCTRLSTA_REN;
+	E1000_WRITE_REG(hw, KUMCTRLSTA, reg_val);
+	udelay(2);
+
+	/* Read the data returned */
+	reg_val = E1000_READ_REG(hw, KUMCTRLSTA);
+	*data = (uint16_t)reg_val;
+
+	return E1000_SUCCESS;
+}
+
+/********************************************************************
+* Copper link setup for e1000_phy_gg82563 series.
+*
+* hw - Struct containing variables accessed by shared code
+*********************************************************************/
+static int32_t e1000_copper_link_ggp_setup(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	uint16_t phy_data;
+	uint32_t reg_data;
+
+	DEBUGFUNC();
+
+	/* Enable CRS on TX for half-duplex operation. */
+	ret_val = e1000_read_phy_reg(hw,
+			GG82563_PHY_MAC_SPEC_CTRL, &phy_data);
+	if (ret_val)
+		return ret_val;
+
+	phy_data |= GG82563_MSCR_ASSERT_CRS_ON_TX;
+	/* Use 25MHz for both link down and 1000BASE-T for Tx clock */
+	phy_data |= GG82563_MSCR_TX_CLK_1000MBPS_25MHZ;
+
+	ret_val = e1000_write_phy_reg(hw,
+			GG82563_PHY_MAC_SPEC_CTRL, phy_data);
+	if (ret_val)
+		return ret_val;
+
+	/* Options:
+	 *   MDI/MDI-X = 0 (default)
+	 *   0 - Auto for all speeds
+	 *   1 - MDI mode
+	 *   2 - MDI-X mode
+	 *   3 - Auto for 1000Base-T only (MDI-X for 10/100Base-T modes)
+	 */
+	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_SPEC_CTRL, &phy_data);
+	if (ret_val)
+		return ret_val;
+
+	phy_data |= GG82563_PSCR_CROSSOVER_MODE_AUTO;
+
+	/* Options:
+	 *   disable_polarity_correction = 0 (default)
+	 *       Automatic Correction for Reversed Cable Polarity
+	 *   0 - Disabled
+	 *   1 - Enabled
+	 */
+	phy_data &= ~GG82563_PSCR_POLARITY_REVERSAL_DISABLE;
+	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_SPEC_CTRL, phy_data);
+	if (ret_val)
+		return ret_val;
+
+	/* SW Reset the PHY so all changes take effect */
+	ret_val = e1000_phy_reset(hw);
+	if (ret_val) {
+		dev_dbg(hw->dev, "Error Resetting the PHY\n");
+		return ret_val;
+	}
+
+	/* Bypass RX and TX FIFO's */
+	ret_val = e1000_write_kmrn_reg(hw,
+			E1000_KUMCTRLSTA_OFFSET_FIFO_CTRL,
+			E1000_KUMCTRLSTA_FIFO_CTRL_RX_BYPASS
+			| E1000_KUMCTRLSTA_FIFO_CTRL_TX_BYPASS);
+	if (ret_val)
+		return ret_val;
+
+	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_SPEC_CTRL_2, &phy_data);
+	if (ret_val)
+		return ret_val;
+
+	phy_data &= ~GG82563_PSCR2_REVERSE_AUTO_NEG;
+	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_SPEC_CTRL_2, phy_data);
+	if (ret_val)
+		return ret_val;
+
+	reg_data = E1000_READ_REG(hw, CTRL_EXT);
+	reg_data &= ~(E1000_CTRL_EXT_LINK_MODE_MASK);
+	E1000_WRITE_REG(hw, CTRL_EXT, reg_data);
+
+	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_PWR_MGMT_CTRL, &phy_data);
+	if (ret_val)
+		return ret_val;
+
+	/* Do not init these registers when the HW is in IAMT mode, since the
+	 * firmware will have already initialized them.  We only initialize
+	 * them if the HW is not in IAMT mode.
+	 */
+	if (e1000_check_mng_mode(hw) == false) {
+		/* Enable Electrical Idle on the PHY */
+		phy_data |= GG82563_PMCR_ENABLE_ELECTRICAL_IDLE;
+		ret_val = e1000_write_phy_reg(hw,
+				GG82563_PHY_PWR_MGMT_CTRL, phy_data);
+		if (ret_val)
+			return ret_val;
+
+		ret_val = e1000_read_phy_reg(hw,
+				GG82563_PHY_KMRN_MODE_CTRL, &phy_data);
+		if (ret_val)
+			return ret_val;
+
+		phy_data &= ~GG82563_KMCR_PASS_FALSE_CARRIER;
+		ret_val = e1000_write_phy_reg(hw,
+				GG82563_PHY_KMRN_MODE_CTRL, phy_data);
+
+		if (ret_val)
+			return ret_val;
+	}
+
+	/* Workaround: Disable padding in Kumeran interface in the MAC
+	 * and in the PHY to avoid CRC errors.
+	 */
+	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_INBAND_CTRL, &phy_data);
+	if (ret_val)
+		return ret_val;
+	phy_data |= GG82563_ICR_DIS_PADDING;
+	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_INBAND_CTRL, phy_data);
+	if (ret_val)
+		return ret_val;
+
+	return E1000_SUCCESS;
+}
+
+/********************************************************************
+* Copper link setup for e1000_phy_m88 series.
+*
+* hw - Struct containing variables accessed by shared code
+*********************************************************************/
+static int32_t e1000_copper_link_mgp_setup(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	uint16_t phy_data;
+
+	DEBUGFUNC();
+
+	/* Enable CRS on TX. This must be set for half-duplex operation. */
+	ret_val = e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
+	if (ret_val)
+		return ret_val;
+
+	phy_data |= M88E1000_PSCR_ASSERT_CRS_ON_TX;
+	phy_data |= M88E1000_PSCR_AUTO_X_MODE;
+	phy_data &= ~M88E1000_PSCR_POLARITY_REVERSAL;
+
+	ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);
+	if (ret_val)
+		return ret_val;
+
+	if (hw->phy_revision < M88E1011_I_REV_4) {
+		/* Force TX_CLK in the Extended PHY Specific Control Register
+		 * to 25MHz clock.
+		 */
+		ret_val = e1000_read_phy_reg(hw,
+				M88E1000_EXT_PHY_SPEC_CTRL, &phy_data);
+		if (ret_val)
+			return ret_val;
+
+		phy_data |= M88E1000_EPSCR_TX_CLK_25;
+
+		if ((hw->phy_revision == E1000_REVISION_2) &&
+			(hw->phy_id == M88E1111_I_PHY_ID)) {
+			/* Vidalia Phy, set the downshift counter to 5x */
+			phy_data &= ~(M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK);
+			phy_data |= M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X;
+			ret_val = e1000_write_phy_reg(hw,
+					M88E1000_EXT_PHY_SPEC_CTRL, phy_data);
+			if (ret_val)
+				return ret_val;
+		} else {
+			/* Configure Master and Slave downshift values */
+			phy_data &= ~(M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK
+					| M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK);
+			phy_data |= (M88E1000_EPSCR_MASTER_DOWNSHIFT_1X
+					| M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X);
+			ret_val = e1000_write_phy_reg(hw,
+					M88E1000_EXT_PHY_SPEC_CTRL, phy_data);
+			if (ret_val)
+				return ret_val;
+		}
+	}
+
+	/* SW Reset the PHY so all changes take effect */
+	ret_val = e1000_phy_reset(hw);
+	if (ret_val) {
+		dev_dbg(hw->dev, "Error Resetting the PHY\n");
+		return ret_val;
+	}
+
+	return E1000_SUCCESS;
+}
+
+/********************************************************************
+* Setup auto-negotiation and flow control advertisements,
+* and then perform auto-negotiation.
+*
+* hw - Struct containing variables accessed by shared code
+*********************************************************************/
+static int32_t e1000_copper_link_autoneg(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	uint16_t phy_data;
+
+	DEBUGFUNC();
+
+	hw->autoneg_advertised = AUTONEG_ADVERTISE_SPEED_DEFAULT;
+
+	/* IFE phy only supports 10/100 */
+	if (hw->phy_type == e1000_phy_ife)
+		hw->autoneg_advertised &= AUTONEG_ADVERTISE_10_100_ALL;
+
+	dev_dbg(hw->dev, "Reconfiguring auto-neg advertisement params\n");
+	ret_val = e1000_phy_setup_autoneg(hw);
+	if (ret_val) {
+		dev_dbg(hw->dev, "Error Setting up Auto-Negotiation\n");
+		return ret_val;
+	}
+	dev_dbg(hw->dev, "Restarting Auto-Neg\n");
+
+	/* Restart auto-negotiation by setting the Auto Neg Enable bit and
+	 * the Auto Neg Restart bit in the PHY control register.
+	 */
+	ret_val = e1000_read_phy_reg(hw, PHY_CTRL, &phy_data);
+	if (ret_val)
+		return ret_val;
+
+	phy_data |= (MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG);
+	ret_val = e1000_write_phy_reg(hw, PHY_CTRL, phy_data);
+	if (ret_val)
+		return ret_val;
+
+	ret_val = e1000_wait_autoneg(hw);
+	if (ret_val) {
+		dev_dbg(hw->dev, "Error while waiting for autoneg to complete\n");
+		return ret_val;
+	}
+
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+* Config the MAC and the PHY after link is up.
+*   1) Set up the MAC to the current PHY speed/duplex
+*      if we are on 82543.  If we
+*      are on newer silicon, we only need to configure
+*      collision distance in the Transmit Control Register.
+*   2) Set up flow control on the MAC to that established with
+*      the link partner.
+*   3) Config DSP to improve Gigabit link quality for some PHY revisions.
+*
+* hw - Struct containing variables accessed by shared code
+******************************************************************************/
+static int32_t e1000_copper_link_postconfig(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	DEBUGFUNC();
+
+	if (hw->mac_type >= e1000_82544) {
+		e1000_config_collision_dist(hw);
+	} else {
+		ret_val = e1000_config_mac_to_phy(hw);
+		if (ret_val) {
+			dev_dbg(hw->dev, "Error configuring MAC to PHY settings\n");
+			return ret_val;
+		}
+	}
+
+	ret_val = e1000_config_fc_after_link_up(hw);
+	if (ret_val) {
+		dev_dbg(hw->dev, "Error Configuring Flow Control\n");
+		return ret_val;
+	}
+
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+* Detects which PHY is present and setup the speed and duplex
+*
+* hw - Struct containing variables accessed by shared code
+******************************************************************************/
+static int e1000_setup_copper_link(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	uint16_t i;
+	uint16_t phy_data;
+	uint16_t reg_data;
+
+	DEBUGFUNC();
+
+	switch (hw->mac_type) {
+	case e1000_80003es2lan:
+	case e1000_ich8lan:
+		/* Set the mac to wait the maximum time between each
+		 * iteration and increase the max iterations when
+		 * polling the phy; this fixes erroneous timeouts at 10Mbps. */
+		ret_val = e1000_write_kmrn_reg(hw, GG82563_REG(0x34, 4), 0xFFFF);
+		if (ret_val)
+			return ret_val;
+
+		ret_val = e1000_read_kmrn_reg(hw, GG82563_REG(0x34, 9), &reg_data);
+		if (ret_val)
+			return ret_val;
+
+		reg_data |= 0x3F;
+
+		ret_val = e1000_write_kmrn_reg(hw, GG82563_REG(0x34, 9), reg_data);
+		if (ret_val)
+			return ret_val;
+	default:
+		break;
+	}
+
+	/* Check if it is a valid PHY and set PHY mode if necessary. */
+	ret_val = e1000_copper_link_preconfig(hw);
+	if (ret_val)
+		return ret_val;
+
+	switch (hw->mac_type) {
+	case e1000_80003es2lan:
+		/* Kumeran registers are written-only */
+		reg_data = E1000_KUMCTRLSTA_INB_CTRL_LINK_STATUS_TX_TIMEOUT_DEFAULT;
+		reg_data |= E1000_KUMCTRLSTA_INB_CTRL_DIS_PADDING;
+		ret_val = e1000_write_kmrn_reg(hw, E1000_KUMCTRLSTA_OFFSET_INB_CTRL,
+				reg_data);
+		if (ret_val)
+			return ret_val;
+		break;
+	default:
+		break;
+	}
+
+	if (hw->phy_type == e1000_phy_igp || hw->phy_type == e1000_phy_igp_3 ||
+	    hw->phy_type == e1000_phy_igp_2) {
+		ret_val = e1000_copper_link_igp_setup(hw);
+		if (ret_val)
+			return ret_val;
+	} else if (hw->phy_type == e1000_phy_m88 || hw->phy_type == e1000_phy_igb) {
+		ret_val = e1000_copper_link_mgp_setup(hw);
+		if (ret_val)
+			return ret_val;
+	} else if (hw->phy_type == e1000_phy_gg82563) {
+		ret_val = e1000_copper_link_ggp_setup(hw);
+		if (ret_val)
+			return ret_val;
+	}
+
+	ret_val = e1000_copper_link_autoneg(hw);
+	if (ret_val)
+		return ret_val;
+
+	/* Check link status. Wait up to 100 microseconds for link to become
+	 * valid.
+	 */
+	for (i = 0; i < 10; i++) {
+		ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &phy_data);
+		if (ret_val)
+			return ret_val;
+		ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &phy_data);
+		if (ret_val)
+			return ret_val;
+
+		if (phy_data & MII_SR_LINK_STATUS) {
+			/* Config the MAC and PHY after link is up */
+			ret_val = e1000_copper_link_postconfig(hw);
+			if (ret_val)
+				return ret_val;
+
+			dev_dbg(hw->dev, "Valid link established!!!\n");
+			return E1000_SUCCESS;
+		}
+		udelay(10);
+	}
+
+	dev_dbg(hw->dev, "Unable to establish link!!!\n");
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+* Configures PHY autoneg and flow control advertisement settings
+*
+* hw - Struct containing variables accessed by shared code
+******************************************************************************/
+static int32_t e1000_phy_setup_autoneg(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	uint16_t mii_autoneg_adv_reg;
+	uint16_t mii_1000t_ctrl_reg;
+
+	DEBUGFUNC();
+
+	/* Read the MII Auto-Neg Advertisement Register (Address 4). */
+	ret_val = e1000_read_phy_reg(hw, PHY_AUTONEG_ADV, &mii_autoneg_adv_reg);
+	if (ret_val)
+		return ret_val;
+
+	if (hw->phy_type != e1000_phy_ife) {
+		/* Read the MII 1000Base-T Control Register (Address 9). */
+		ret_val = e1000_read_phy_reg(hw, PHY_1000T_CTRL,
+				&mii_1000t_ctrl_reg);
+		if (ret_val)
+			return ret_val;
+	} else
+		mii_1000t_ctrl_reg = 0;
+
+	/* Need to parse both autoneg_advertised and fc and set up
+	 * the appropriate PHY registers.  First we will parse for
+	 * autoneg_advertised software override.  Since we can advertise
+	 * a plethora of combinations, we need to check each bit
+	 * individually.
+	 */
+
+	/* First we clear all the 10/100 mb speed bits in the Auto-Neg
+	 * Advertisement Register (Address 4) and the 1000 mb speed bits in
+	 * the  1000Base-T Control Register (Address 9).
+	 */
+	mii_autoneg_adv_reg &= ~REG4_SPEED_MASK;
+	mii_1000t_ctrl_reg &= ~REG9_SPEED_MASK;
+
+	dev_dbg(hw->dev, "autoneg_advertised %x\n", hw->autoneg_advertised);
+
+	/* Do we want to advertise 10 Mb Half Duplex? */
+	if (hw->autoneg_advertised & ADVERTISE_10_HALF) {
+		dev_dbg(hw->dev, "Advertise 10mb Half duplex\n");
+		mii_autoneg_adv_reg |= NWAY_AR_10T_HD_CAPS;
+	}
+
+	/* Do we want to advertise 10 Mb Full Duplex? */
+	if (hw->autoneg_advertised & ADVERTISE_10_FULL) {
+		dev_dbg(hw->dev, "Advertise 10mb Full duplex\n");
+		mii_autoneg_adv_reg |= NWAY_AR_10T_FD_CAPS;
+	}
+
+	/* Do we want to advertise 100 Mb Half Duplex? */
+	if (hw->autoneg_advertised & ADVERTISE_100_HALF) {
+		dev_dbg(hw->dev, "Advertise 100mb Half duplex\n");
+		mii_autoneg_adv_reg |= NWAY_AR_100TX_HD_CAPS;
+	}
+
+	/* Do we want to advertise 100 Mb Full Duplex? */
+	if (hw->autoneg_advertised & ADVERTISE_100_FULL) {
+		dev_dbg(hw->dev, "Advertise 100mb Full duplex\n");
+		mii_autoneg_adv_reg |= NWAY_AR_100TX_FD_CAPS;
+	}
+
+	/* We do not allow the Phy to advertise 1000 Mb Half Duplex */
+	if (hw->autoneg_advertised & ADVERTISE_1000_HALF) {
+		pr_debug
+		    ("Advertise 1000mb Half duplex requested, request denied!\n");
+	}
+
+	/* Do we want to advertise 1000 Mb Full Duplex? */
+	if (hw->autoneg_advertised & ADVERTISE_1000_FULL) {
+		dev_dbg(hw->dev, "Advertise 1000mb Full duplex\n");
+		mii_1000t_ctrl_reg |= CR_1000T_FD_CAPS;
+	}
+
+	/* Check for a software override of the flow control settings, and
+	 * setup the PHY advertisement registers accordingly.  If
+	 * auto-negotiation is enabled, then software will have to set the
+	 * "PAUSE" bits to the correct value in the Auto-Negotiation
+	 * Advertisement Register (PHY_AUTONEG_ADV) and re-start auto-negotiation.
+	 *
+	 * The possible values of the "fc" parameter are:
+	 *	0:  Flow control is completely disabled
+	 *	1:  Rx flow control is enabled (we can receive pause frames
+	 *	    but not send pause frames).
+	 *	2:  Tx flow control is enabled (we can send pause frames
+	 *	    but we do not support receiving pause frames).
+	 *	3:  Both Rx and TX flow control (symmetric) are enabled.
+	 *  other:  No software override.  The flow control configuration
+	 *	    in the EEPROM is used.
+	 */
+	switch (hw->fc) {
+	case e1000_fc_none:	/* 0 */
+		/* Flow control (RX & TX) is completely disabled by a
+		 * software over-ride.
+		 */
+		mii_autoneg_adv_reg &= ~(NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
+		break;
+	case e1000_fc_rx_pause:	/* 1 */
+		/* RX Flow control is enabled, and TX Flow control is
+		 * disabled, by a software over-ride.
+		 */
+		/* Since there really isn't a way to advertise that we are
+		 * capable of RX Pause ONLY, we will advertise that we
+		 * support both symmetric and asymmetric RX PAUSE.  Later
+		 * (in e1000_config_fc_after_link_up) we will disable the
+		 *hw's ability to send PAUSE frames.
+		 */
+		mii_autoneg_adv_reg |= (NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
+		break;
+	case e1000_fc_tx_pause:	/* 2 */
+		/* TX Flow control is enabled, and RX Flow control is
+		 * disabled, by a software over-ride.
+		 */
+		mii_autoneg_adv_reg |= NWAY_AR_ASM_DIR;
+		mii_autoneg_adv_reg &= ~NWAY_AR_PAUSE;
+		break;
+	case e1000_fc_full:	/* 3 */
+		/* Flow control (both RX and TX) is enabled by a software
+		 * over-ride.
+		 */
+		mii_autoneg_adv_reg |= (NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
+		break;
+	default:
+		dev_dbg(hw->dev, "Flow control param set incorrectly\n");
+		return -E1000_ERR_CONFIG;
+	}
+
+	ret_val = e1000_write_phy_reg(hw, PHY_AUTONEG_ADV, mii_autoneg_adv_reg);
+	if (ret_val)
+		return ret_val;
+
+	dev_dbg(hw->dev, "Auto-Neg Advertising %x\n", mii_autoneg_adv_reg);
+
+	if (hw->phy_type != e1000_phy_ife) {
+		ret_val = e1000_write_phy_reg(hw, PHY_1000T_CTRL,
+				mii_1000t_ctrl_reg);
+		if (ret_val)
+			return ret_val;
+	}
+
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+* Sets the collision distance in the Transmit Control register
+*
+* hw - Struct containing variables accessed by shared code
+*
+* Link should have been established previously. Reads the speed and duplex
+* information from the Device Status register.
+******************************************************************************/
+static void e1000_config_collision_dist(struct e1000_hw *hw)
+{
+	uint32_t tctl, coll_dist;
+
+	DEBUGFUNC();
+
+	if (hw->mac_type < e1000_82543)
+		coll_dist = E1000_COLLISION_DISTANCE_82542;
+	else
+		coll_dist = E1000_COLLISION_DISTANCE;
+
+	tctl = E1000_READ_REG(hw, TCTL);
+
+	tctl &= ~E1000_TCTL_COLD;
+	tctl |= coll_dist << E1000_COLD_SHIFT;
+
+	E1000_WRITE_REG(hw, TCTL, tctl);
+	E1000_WRITE_FLUSH(hw);
+}
+
+/******************************************************************************
+* Sets MAC speed and duplex settings to reflect the those in the PHY
+*
+* hw - Struct containing variables accessed by shared code
+* mii_reg - data to write to the MII control register
+*
+* The contents of the PHY register containing the needed information need to
+* be passed in.
+******************************************************************************/
+static int e1000_config_mac_to_phy(struct e1000_hw *hw)
+{
+	uint32_t ctrl;
+	uint16_t phy_data;
+
+	DEBUGFUNC();
+
+	/* Read the Device Control Register and set the bits to Force Speed
+	 * and Duplex.
+	 */
+	ctrl = E1000_READ_REG(hw, CTRL);
+	ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
+	ctrl &= ~(E1000_CTRL_ILOS);
+	ctrl |= (E1000_CTRL_SPD_SEL);
+
+	/* Set up duplex in the Device Control and Transmit Control
+	 * registers depending on negotiated values.
+	 */
+	if (e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_STATUS, &phy_data) < 0) {
+		dev_dbg(hw->dev, "PHY Read Error\n");
+		return -E1000_ERR_PHY;
+	}
+	if (phy_data & M88E1000_PSSR_DPLX)
+		ctrl |= E1000_CTRL_FD;
+	else
+		ctrl &= ~E1000_CTRL_FD;
+
+	e1000_config_collision_dist(hw);
+
+	/* Set up speed in the Device Control register depending on
+	 * negotiated values.
+	 */
+	if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_1000MBS)
+		ctrl |= E1000_CTRL_SPD_1000;
+	else if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_100MBS)
+		ctrl |= E1000_CTRL_SPD_100;
+	/* Write the configured values back to the Device Control Reg. */
+	E1000_WRITE_REG(hw, CTRL, ctrl);
+	return 0;
+}
+
+/******************************************************************************
+ * Forces the MAC's flow control settings.
+ *
+ * hw - Struct containing variables accessed by shared code
+ *
+ * Sets the TFCE and RFCE bits in the device control register to reflect
+ * the adapter settings. TFCE and RFCE need to be explicitly set by
+ * software when a Copper PHY is used because autonegotiation is managed
+ * by the PHY rather than the MAC. Software must also configure these
+ * bits when link is forced on a fiber connection.
+ *****************************************************************************/
+static int e1000_force_mac_fc(struct e1000_hw *hw)
+{
+	uint32_t ctrl;
+
+	DEBUGFUNC();
+
+	/* Get the current configuration of the Device Control Register */
+	ctrl = E1000_READ_REG(hw, CTRL);
+
+	/* Because we didn't get link via the internal auto-negotiation
+	 * mechanism (we either forced link or we got link via PHY
+	 * auto-neg), we have to manually enable/disable transmit an
+	 * receive flow control.
+	 *
+	 * The "Case" statement below enables/disable flow control
+	 * according to the "hw->fc" parameter.
+	 *
+	 * The possible values of the "fc" parameter are:
+	 *	0:  Flow control is completely disabled
+	 *	1:  Rx flow control is enabled (we can receive pause
+	 *	    frames but not send pause frames).
+	 *	2:  Tx flow control is enabled (we can send pause frames
+	 *	    frames but we do not receive pause frames).
+	 *	3:  Both Rx and TX flow control (symmetric) is enabled.
+	 *  other:  No other values should be possible at this point.
+	 */
+
+	switch (hw->fc) {
+	case e1000_fc_none:
+		ctrl &= (~(E1000_CTRL_TFCE | E1000_CTRL_RFCE));
+		break;
+	case e1000_fc_rx_pause:
+		ctrl &= (~E1000_CTRL_TFCE);
+		ctrl |= E1000_CTRL_RFCE;
+		break;
+	case e1000_fc_tx_pause:
+		ctrl &= (~E1000_CTRL_RFCE);
+		ctrl |= E1000_CTRL_TFCE;
+		break;
+	case e1000_fc_full:
+		ctrl |= (E1000_CTRL_TFCE | E1000_CTRL_RFCE);
+		break;
+	default:
+		dev_dbg(hw->dev, "Flow control param set incorrectly\n");
+		return -E1000_ERR_CONFIG;
+	}
+
+	/* Disable TX Flow Control for 82542 (rev 2.0) */
+	if (hw->mac_type == e1000_82542_rev2_0)
+		ctrl &= (~E1000_CTRL_TFCE);
+
+	E1000_WRITE_REG(hw, CTRL, ctrl);
+	return 0;
+}
+
+/******************************************************************************
+ * Configures flow control settings after link is established
+ *
+ * hw - Struct containing variables accessed by shared code
+ *
+ * Should be called immediately after a valid link has been established.
+ * Forces MAC flow control settings if link was forced. When in MII/GMII mode
+ * and autonegotiation is enabled, the MAC flow control settings will be set
+ * based on the flow control negotiated by the PHY. In TBI mode, the TFCE
+ * and RFCE bits will be automaticaly set to the negotiated flow control mode.
+ *****************************************************************************/
+static int32_t e1000_config_fc_after_link_up(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	uint16_t mii_status_reg;
+	uint16_t mii_nway_adv_reg;
+	uint16_t mii_nway_lp_ability_reg;
+	uint16_t speed;
+	uint16_t duplex;
+
+	DEBUGFUNC();
+
+	/* Read the MII Status Register and check to see if AutoNeg
+	 * has completed.  We read this twice because this reg has
+	 * some "sticky" (latched) bits.
+	 */
+	if (e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg) < 0) {
+		dev_dbg(hw->dev, "PHY Read Error \n");
+		return -E1000_ERR_PHY;
+	}
+
+	if (e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg) < 0) {
+		dev_dbg(hw->dev, "PHY Read Error \n");
+		return -E1000_ERR_PHY;
+	}
+
+	if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
+		dev_dbg(hw->dev, "Copper PHY and Auto Neg has not completed.\n");
+		return 0;
+	}
+
+	/* The AutoNeg process has completed, so we now need to
+	 * read both the Auto Negotiation Advertisement Register
+	 * (Address 4) and the Auto_Negotiation Base Page Ability
+	 * Register (Address 5) to determine how flow control was
+	 * negotiated.
+	 */
+	if (e1000_read_phy_reg(hw, PHY_AUTONEG_ADV, &mii_nway_adv_reg) < 0) {
+		dev_dbg(hw->dev, "PHY Read Error\n");
+		return -E1000_ERR_PHY;
+	}
+
+	if (e1000_read_phy_reg(hw, PHY_LP_ABILITY, &mii_nway_lp_ability_reg) < 0) {
+		dev_dbg(hw->dev, "PHY Read Error\n");
+		return -E1000_ERR_PHY;
+	}
+
+	/* Two bits in the Auto Negotiation Advertisement Register
+	 * (Address 4) and two bits in the Auto Negotiation Base
+	 * Page Ability Register (Address 5) determine flow control
+	 * for both the PHY and the link partner.  The following
+	 * table, taken out of the IEEE 802.3ab/D6.0 dated March 25,
+	 * 1999, describes these PAUSE resolution bits and how flow
+	 * control is determined based upon these settings.
+	 * NOTE:  DC = Don't Care
+	 *
+	 *   LOCAL DEVICE  |   LINK PARTNER
+	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | NIC Resolution
+	 *-------|---------|-------|---------|--------------------
+	 *   0	 |    0    |  DC   |   DC    | e1000_fc_none
+	 *   0	 |    1    |   0   |   DC    | e1000_fc_none
+	 *   0	 |    1    |   1   |	0    | e1000_fc_none
+	 *   0	 |    1    |   1   |	1    | e1000_fc_tx_pause
+	 *   1	 |    0    |   0   |   DC    | e1000_fc_none
+	 *   1	 |   DC    |   1   |   DC    | e1000_fc_full
+	 *   1	 |    1    |   0   |	0    | e1000_fc_none
+	 *   1	 |    1    |   0   |	1    | e1000_fc_rx_pause
+	 *
+	 */
+	/* Are both PAUSE bits set to 1?  If so, this implies
+	 * Symmetric Flow Control is enabled at both ends.  The
+	 * ASM_DIR bits are irrelevant per the spec.
+	 *
+	 * For Symmetric Flow Control:
+	 *
+	 *   LOCAL DEVICE  |   LINK PARTNER
+	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
+	 *-------|---------|-------|---------|--------------------
+	 *   1	 |   DC    |   1   |   DC    | e1000_fc_full
+	 *
+	 */
+	if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
+	    (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE)) {
+		/* Now we need to check if the user selected RX ONLY
+		 * of pause frames.  In this case, we had to advertise
+		 * FULL flow control because we could not advertise RX
+		 * ONLY. Hence, we must now check to see if we need to
+		 * turn OFF  the TRANSMISSION of PAUSE frames.
+		 */
+		if (hw->original_fc == e1000_fc_full) {
+			hw->fc = e1000_fc_full;
+			dev_dbg(hw->dev, "Flow Control = FULL.\r\n");
+		} else {
+			hw->fc = e1000_fc_rx_pause;
+			dev_dbg(hw->dev, "Flow Control = RX PAUSE frames only.\r\n");
+		}
+	}
+	/* For receiving PAUSE frames ONLY.
+	 *
+	 *   LOCAL DEVICE  |   LINK PARTNER
+	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
+	 *-------|---------|-------|---------|--------------------
+	 *   0	 |    1    |   1   |	1    | e1000_fc_tx_pause
+	 *
+	 */
+	else if (!(mii_nway_adv_reg & NWAY_AR_PAUSE) &&
+		 (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
+		 (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
+		 (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR))
+	{
+		hw->fc = e1000_fc_tx_pause;
+		dev_dbg(hw->dev, "Flow Control = TX PAUSE frames only.\r\n");
+	}
+	/* For transmitting PAUSE frames ONLY.
+	 *
+	 *   LOCAL DEVICE  |   LINK PARTNER
+	 * PAUSE | ASM_DIR | PAUSE | ASM_DIR | Result
+	 *-------|---------|-------|---------|--------------------
+	 *   1	 |    1    |   0   |	1    | e1000_fc_rx_pause
+	 *
+	 */
+	else if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
+		 (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
+		 !(mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
+		 (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR))
+	{
+		hw->fc = e1000_fc_rx_pause;
+		dev_dbg(hw->dev, "Flow Control = RX PAUSE frames only.\r\n");
+	}
+	/* Per the IEEE spec, at this point flow control should be
+	 * disabled.  However, we want to consider that we could
+	 * be connected to a legacy switch that doesn't advertise
+	 * desired flow control, but can be forced on the link
+	 * partner.  So if we advertised no flow control, that is
+	 * what we will resolve to.  If we advertised some kind of
+	 * receive capability (Rx Pause Only or Full Flow Control)
+	 * and the link partner advertised none, we will configure
+	 * ourselves to enable Rx Flow Control only.  We can do
+	 * this safely for two reasons:  If the link partner really
+	 * didn't want flow control enabled, and we enable Rx, no
+	 * harm done since we won't be receiving any PAUSE frames
+	 * anyway.  If the intent on the link partner was to have
+	 * flow control enabled, then by us enabling RX only, we
+	 * can at least receive pause frames and process them.
+	 * This is a good idea because in most cases, since we are
+	 * predominantly a server NIC, more times than not we will
+	 * be asked to delay transmission of packets than asking
+	 * our link partner to pause transmission of frames.
+	 */
+	else if (hw->original_fc == e1000_fc_none ||
+		 hw->original_fc == e1000_fc_tx_pause) {
+		hw->fc = e1000_fc_none;
+		dev_dbg(hw->dev, "Flow Control = NONE.\r\n");
+	} else {
+		hw->fc = e1000_fc_rx_pause;
+		dev_dbg(hw->dev, "Flow Control = RX PAUSE frames only.\r\n");
+	}
+	/* Now we need to do one last check...	If we auto-
+	 * negotiated to HALF DUPLEX, flow control should not be
+	 * enabled per IEEE 802.3 spec.
+	 */
+	e1000_get_speed_and_duplex(hw, &speed, &duplex);
+	if (duplex == HALF_DUPLEX)
+		hw->fc = e1000_fc_none;
+	/* Now we call a subroutine to actually force the MAC
+	 * controller to use the correct flow control settings.
+	 */
+	ret_val = e1000_force_mac_fc(hw);
+	if (ret_val < 0) {
+		dev_dbg(hw->dev, "Error forcing flow control settings\n");
+		return ret_val;
+	}
+
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+* Configure the MAC-to-PHY interface for 10/100Mbps
+*
+* hw - Struct containing variables accessed by shared code
+******************************************************************************/
+static int32_t e1000_configure_kmrn_for_10_100(struct e1000_hw *hw, uint16_t duplex)
+{
+	int32_t ret_val = E1000_SUCCESS;
+	uint32_t tipg;
+	uint16_t reg_data;
+
+	DEBUGFUNC();
+
+	reg_data = E1000_KUMCTRLSTA_HD_CTRL_10_100_DEFAULT;
+	ret_val = e1000_write_kmrn_reg(hw,
+			E1000_KUMCTRLSTA_OFFSET_HD_CTRL, reg_data);
+	if (ret_val)
+		return ret_val;
+
+	/* Configure Transmit Inter-Packet Gap */
+	tipg = E1000_READ_REG(hw, TIPG);
+	tipg &= ~E1000_TIPG_IPGT_MASK;
+	tipg |= DEFAULT_80003ES2LAN_TIPG_IPGT_10_100;
+	E1000_WRITE_REG(hw, TIPG, tipg);
+
+	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, &reg_data);
+
+	if (ret_val)
+		return ret_val;
+
+	if (duplex == HALF_DUPLEX)
+		reg_data |= GG82563_KMCR_PASS_FALSE_CARRIER;
+	else
+		reg_data &= ~GG82563_KMCR_PASS_FALSE_CARRIER;
+
+	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, reg_data);
+
+	return ret_val;
+}
+
+static int32_t e1000_configure_kmrn_for_1000(struct e1000_hw *hw)
+{
+	int32_t ret_val = E1000_SUCCESS;
+	uint16_t reg_data;
+	uint32_t tipg;
+
+	DEBUGFUNC();
+
+	reg_data = E1000_KUMCTRLSTA_HD_CTRL_1000_DEFAULT;
+	ret_val = e1000_write_kmrn_reg(hw,
+			E1000_KUMCTRLSTA_OFFSET_HD_CTRL, reg_data);
+	if (ret_val)
+		return ret_val;
+
+	/* Configure Transmit Inter-Packet Gap */
+	tipg = E1000_READ_REG(hw, TIPG);
+	tipg &= ~E1000_TIPG_IPGT_MASK;
+	tipg |= DEFAULT_80003ES2LAN_TIPG_IPGT_1000;
+	E1000_WRITE_REG(hw, TIPG, tipg);
+
+	ret_val = e1000_read_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, &reg_data);
+
+	if (ret_val)
+		return ret_val;
+
+	reg_data &= ~GG82563_KMCR_PASS_FALSE_CARRIER;
+	ret_val = e1000_write_phy_reg(hw, GG82563_PHY_KMRN_MODE_CTRL, reg_data);
+
+	return ret_val;
+}
+
+/******************************************************************************
+ * Detects the current speed and duplex settings of the hardware.
+ *
+ * hw - Struct containing variables accessed by shared code
+ * speed - Speed of the connection
+ * duplex - Duplex setting of the connection
+ *****************************************************************************/
+static int e1000_get_speed_and_duplex(struct e1000_hw *hw, uint16_t *speed,
+		uint16_t *duplex)
+{
+	uint32_t status;
+	int32_t ret_val;
+
+	DEBUGFUNC();
+
+	if (hw->mac_type >= e1000_82543) {
+		status = E1000_READ_REG(hw, STATUS);
+		if (status & E1000_STATUS_SPEED_1000) {
+			*speed = SPEED_1000;
+			dev_dbg(hw->dev, "1000 Mbs, ");
+		} else if (status & E1000_STATUS_SPEED_100) {
+			*speed = SPEED_100;
+			dev_dbg(hw->dev, "100 Mbs, ");
+		} else {
+			*speed = SPEED_10;
+			dev_dbg(hw->dev, "10 Mbs, ");
+		}
+
+		if (status & E1000_STATUS_FD) {
+			*duplex = FULL_DUPLEX;
+			dev_dbg(hw->dev, "Full Duplex\r\n");
+		} else {
+			*duplex = HALF_DUPLEX;
+			dev_dbg(hw->dev, " Half Duplex\r\n");
+		}
+	} else {
+		dev_dbg(hw->dev, "1000 Mbs, Full Duplex\r\n");
+		*speed = SPEED_1000;
+		*duplex = FULL_DUPLEX;
+	}
+
+	if ((hw->mac_type == e1000_80003es2lan) && e1000_media_copper(hw)) {
+		if (*speed == SPEED_1000)
+			ret_val = e1000_configure_kmrn_for_1000(hw);
+		else
+			ret_val = e1000_configure_kmrn_for_10_100(hw, *duplex);
+		if (ret_val)
+			return ret_val;
+	}
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+* Blocks until autoneg completes or times out (~4.5 seconds)
+*
+* hw - Struct containing variables accessed by shared code
+******************************************************************************/
+static int e1000_wait_autoneg(struct e1000_hw *hw)
+{
+	uint16_t i;
+	uint16_t phy_data;
+
+	DEBUGFUNC();
+	dev_dbg(hw->dev, "Waiting for Auto-Neg to complete.\n");
+
+	/* We will wait for autoneg to complete or 4.5 seconds to expire. */
+	for (i = PHY_AUTO_NEG_TIME; i > 0; i--) {
+		/* Read the MII Status Register and wait for Auto-Neg
+		 * Complete bit to be set.
+		 */
+		if (e1000_read_phy_reg(hw, PHY_STATUS, &phy_data) < 0) {
+			dev_dbg(hw->dev, "PHY Read Error\n");
+			return -E1000_ERR_PHY;
+		}
+		if (e1000_read_phy_reg(hw, PHY_STATUS, &phy_data) < 0) {
+			dev_dbg(hw->dev, "PHY Read Error\n");
+			return -E1000_ERR_PHY;
+		}
+		if (phy_data & MII_SR_AUTONEG_COMPLETE) {
+			dev_dbg(hw->dev, "Auto-Neg complete.\n");
+			return 0;
+		}
+		mdelay(100);
+	}
+	dev_dbg(hw->dev, "Auto-Neg timedout.\n");
+	return -E1000_ERR_TIMEOUT;
+}
+
+/******************************************************************************
+* Raises the Management Data Clock
+*
+* hw - Struct containing variables accessed by shared code
+* ctrl - Device control register's current value
+******************************************************************************/
+static void e1000_raise_mdi_clk(struct e1000_hw *hw, uint32_t * ctrl)
+{
+	/* Raise the clock input to the Management Data Clock (by setting the MDC
+	 * bit), and then delay 2 microseconds.
+	 */
+	E1000_WRITE_REG(hw, CTRL, (*ctrl | E1000_CTRL_MDC));
+	E1000_WRITE_FLUSH(hw);
+	udelay(2);
+}
+
+/******************************************************************************
+* Lowers the Management Data Clock
+*
+* hw - Struct containing variables accessed by shared code
+* ctrl - Device control register's current value
+******************************************************************************/
+static void e1000_lower_mdi_clk(struct e1000_hw *hw, uint32_t * ctrl)
+{
+	/* Lower the clock input to the Management Data Clock (by clearing the MDC
+	 * bit), and then delay 2 microseconds.
+	 */
+	E1000_WRITE_REG(hw, CTRL, (*ctrl & ~E1000_CTRL_MDC));
+	E1000_WRITE_FLUSH(hw);
+	udelay(2);
+}
+
+/******************************************************************************
+* Shifts data bits out to the PHY
+*
+* hw - Struct containing variables accessed by shared code
+* data - Data to send out to the PHY
+* count - Number of bits to shift out
+*
+* Bits are shifted out in MSB to LSB order.
+******************************************************************************/
+static void e1000_shift_out_mdi_bits(struct e1000_hw *hw, uint32_t data,
+		uint16_t count)
+{
+	uint32_t ctrl;
+	uint32_t mask;
+
+	/* We need to shift "count" number of bits out to the PHY. So, the value
+	 * in the "data" parameter will be shifted out to the PHY one bit at a
+	 * time. In order to do this, "data" must be broken down into bits.
+	 */
+	mask = 0x01;
+	mask <<= (count - 1);
+
+	ctrl = E1000_READ_REG(hw, CTRL);
+
+	/* Set MDIO_DIR and MDC_DIR direction bits to be used as output pins. */
+	ctrl |= (E1000_CTRL_MDIO_DIR | E1000_CTRL_MDC_DIR);
+
+	while (mask) {
+		/* A "1" is shifted out to the PHY by setting the MDIO bit to "1" and
+		 * then raising and lowering the Management Data Clock. A "0" is
+		 * shifted out to the PHY by setting the MDIO bit to "0" and then
+		 * raising and lowering the clock.
+		 */
+		if (data & mask)
+			ctrl |= E1000_CTRL_MDIO;
+		else
+			ctrl &= ~E1000_CTRL_MDIO;
+
+		E1000_WRITE_REG(hw, CTRL, ctrl);
+		E1000_WRITE_FLUSH(hw);
+
+		udelay(2);
+
+		e1000_raise_mdi_clk(hw, &ctrl);
+		e1000_lower_mdi_clk(hw, &ctrl);
+
+		mask = mask >> 1;
+	}
+}
+
+/******************************************************************************
+* Shifts data bits in from the PHY
+*
+* hw - Struct containing variables accessed by shared code
+*
+* Bits are shifted in in MSB to LSB order.
+******************************************************************************/
+static uint16_t e1000_shift_in_mdi_bits(struct e1000_hw *hw)
+{
+	uint32_t ctrl;
+	uint16_t data = 0;
+	uint8_t i;
+
+	/* In order to read a register from the PHY, we need to shift in a total
+	 * of 18 bits from the PHY. The first two bit (turnaround) times are used
+	 * to avoid contention on the MDIO pin when a read operation is performed.
+	 * These two bits are ignored by us and thrown away. Bits are "shifted in"
+	 * by raising the input to the Management Data Clock (setting the MDC bit),
+	 * and then reading the value of the MDIO bit.
+	 */
+	ctrl = E1000_READ_REG(hw, CTRL);
+
+	/* Clear MDIO_DIR (SWDPIO1) to indicate this bit is to be used as input. */
+	ctrl &= ~E1000_CTRL_MDIO_DIR;
+	ctrl &= ~E1000_CTRL_MDIO;
+
+	E1000_WRITE_REG(hw, CTRL, ctrl);
+	E1000_WRITE_FLUSH(hw);
+
+	/* Raise and Lower the clock before reading in the data. This accounts for
+	 * the turnaround bits. The first clock occurred when we clocked out the
+	 * last bit of the Register Address.
+	 */
+	e1000_raise_mdi_clk(hw, &ctrl);
+	e1000_lower_mdi_clk(hw, &ctrl);
+
+	for (data = 0, i = 0; i < 16; i++) {
+		data = data << 1;
+		e1000_raise_mdi_clk(hw, &ctrl);
+		ctrl = E1000_READ_REG(hw, CTRL);
+		/* Check to see if we shifted in a "1". */
+		if (ctrl & E1000_CTRL_MDIO)
+			data |= 1;
+		e1000_lower_mdi_clk(hw, &ctrl);
+	}
+
+	e1000_raise_mdi_clk(hw, &ctrl);
+	e1000_lower_mdi_clk(hw, &ctrl);
+
+	return data;
+}
+
+static int e1000_phy_read(struct mii_bus *bus, int phy_addr, int reg_addr)
+{
+	struct e1000_hw *hw = bus->priv;
+	uint32_t i;
+	uint32_t mdic = 0;
+
+	if (phy_addr != 1)
+		return -EIO;
+
+	if (hw->mac_type > e1000_82543) {
+		/* Set up Op-code, Phy Address, and register address in the MDI
+		 * Control register.  The MAC will take care of interfacing with the
+		 * PHY to retrieve the desired data.
+		 */
+		mdic = ((reg_addr << E1000_MDIC_REG_SHIFT) |
+			(phy_addr << E1000_MDIC_PHY_SHIFT) |
+			(E1000_MDIC_OP_READ));
+
+		E1000_WRITE_REG(hw, MDIC, mdic);
+
+		/* Poll the ready bit to see if the MDI read completed */
+		for (i = 0; i < 64; i++) {
+			udelay(10);
+			mdic = E1000_READ_REG(hw, MDIC);
+			if (mdic & E1000_MDIC_READY)
+				break;
+		}
+		if (!(mdic & E1000_MDIC_READY)) {
+			dev_dbg(hw->dev, "MDI Read did not complete\n");
+			return -E1000_ERR_PHY;
+		}
+		if (mdic & E1000_MDIC_ERROR) {
+			dev_dbg(hw->dev, "MDI Error\n");
+			return -E1000_ERR_PHY;
+		}
+		return mdic;
+	} else {
+		/* We must first send a preamble through the MDIO pin to signal the
+		 * beginning of an MII instruction.  This is done by sending 32
+		 * consecutive "1" bits.
+		 */
+		e1000_shift_out_mdi_bits(hw, PHY_PREAMBLE, PHY_PREAMBLE_SIZE);
+
+		/* Now combine the next few fields that are required for a read
+		 * operation.  We use this method instead of calling the
+		 * e1000_shift_out_mdi_bits routine five different times. The format of
+		 * a MII read instruction consists of a shift out of 14 bits and is
+		 * defined as follows:
+		 *    <Preamble><SOF><Op Code><Phy Addr><Reg Addr>
+		 * followed by a shift in of 18 bits.  This first two bits shifted in
+		 * are TurnAround bits used to avoid contention on the MDIO pin when a
+		 * READ operation is performed.  These two bits are thrown away
+		 * followed by a shift in of 16 bits which contains the desired data.
+		 */
+		mdic = ((reg_addr) | (phy_addr << 5) |
+			(PHY_OP_READ << 10) | (PHY_SOF << 12));
+
+		e1000_shift_out_mdi_bits(hw, mdic, 14);
+
+		/* Now that we've shifted out the read command to the MII, we need to
+		 * "shift in" the 16-bit value (18 total bits) of the requested PHY
+		 * register address.
+		 */
+		return e1000_shift_in_mdi_bits(hw);
+	}
+}
+
+/*****************************************************************************
+* Reads the value from a PHY register
+*
+* hw - Struct containing variables accessed by shared code
+* reg_addr - address of the PHY register to read
+******************************************************************************/
+static int e1000_read_phy_reg(struct e1000_hw *hw, uint32_t reg_addr,
+		uint16_t *phy_data)
+{
+	int ret;
+
+	ret = e1000_phy_read(&hw->miibus, 1, reg_addr);
+	if (ret < 0)
+		return ret;
+
+	*phy_data = ret;
+
+	return 0;
+}
+
+static int e1000_phy_write(struct mii_bus *bus, int phy_addr,
+	int reg_addr, u16 phy_data)
+{
+	struct e1000_hw *hw = bus->priv;
+	uint32_t i;
+	uint32_t mdic = 0;
+
+	if (phy_addr != 1)
+		return -EIO;
+
+	if (hw->mac_type > e1000_82543) {
+		/* Set up Op-code, Phy Address, register address, and data intended
+		 * for the PHY register in the MDI Control register.  The MAC will take
+		 * care of interfacing with the PHY to send the desired data.
+		 */
+		mdic = (((uint32_t) phy_data) |
+			(reg_addr << E1000_MDIC_REG_SHIFT) |
+			(phy_addr << E1000_MDIC_PHY_SHIFT) |
+			(E1000_MDIC_OP_WRITE));
+
+		E1000_WRITE_REG(hw, MDIC, mdic);
+
+		/* Poll the ready bit to see if the MDI read completed */
+		for (i = 0; i < 64; i++) {
+			udelay(10);
+			mdic = E1000_READ_REG(hw, MDIC);
+			if (mdic & E1000_MDIC_READY)
+				break;
+		}
+		if (!(mdic & E1000_MDIC_READY)) {
+			dev_dbg(hw->dev, "MDI Write did not complete\n");
+			return -E1000_ERR_PHY;
+		}
+	} else {
+		/* We'll need to use the SW defined pins to shift the write command
+		 * out to the PHY. We first send a preamble to the PHY to signal the
+		 * beginning of the MII instruction.  This is done by sending 32
+		 * consecutive "1" bits.
+		 */
+		e1000_shift_out_mdi_bits(hw, PHY_PREAMBLE, PHY_PREAMBLE_SIZE);
+
+		/* Now combine the remaining required fields that will indicate a
+		 * write operation. We use this method instead of calling the
+		 * e1000_shift_out_mdi_bits routine for each field in the command. The
+		 * format of a MII write instruction is as follows:
+		 * <Preamble><SOF><Op Code><Phy Addr><Reg Addr><Turnaround><Data>.
+		 */
+		mdic = ((PHY_TURNAROUND) | (reg_addr << 2) | (phy_addr << 7) |
+			(PHY_OP_WRITE << 12) | (PHY_SOF << 14));
+		mdic <<= 16;
+		mdic |= (uint32_t) phy_data;
+
+		e1000_shift_out_mdi_bits(hw, mdic, 32);
+	}
+	return 0;
+}
+
+/******************************************************************************
+ * Writes a value to a PHY register
+ *
+ * hw - Struct containing variables accessed by shared code
+ * reg_addr - address of the PHY register to write
+ * data - data to write to the PHY
+ ******************************************************************************/
+static int e1000_write_phy_reg(struct e1000_hw *hw, uint32_t reg_addr, uint16_t phy_data)
+{
+	return e1000_phy_write(&hw->miibus, 1, reg_addr, phy_data);
+}
+
+/******************************************************************************
+ * Checks if PHY reset is blocked due to SOL/IDER session, for example.
+ * Returning E1000_BLK_PHY_RESET isn't necessarily an error.  But it's up to
+ * the caller to figure out how to deal with it.
+ *
+ * hw - Struct containing variables accessed by shared code
+ *
+ * returns: - E1000_BLK_PHY_RESET
+ *            E1000_SUCCESS
+ *
+ *****************************************************************************/
+static int32_t e1000_check_phy_reset_block(struct e1000_hw *hw)
+{
+	if (hw->mac_type == e1000_ich8lan) {
+		if (E1000_READ_REG(hw, FWSM) & E1000_FWSM_RSPCIPHY)
+			return E1000_SUCCESS;
+		else
+			return E1000_BLK_PHY_RESET;
+	}
+
+	if (hw->mac_type > e1000_82547_rev_2) {
+		if (E1000_READ_REG(hw, MANC) & E1000_MANC_BLK_PHY_RST_ON_IDE)
+			return E1000_BLK_PHY_RESET;
+		else
+			return E1000_SUCCESS;
+	}
+
+	return E1000_SUCCESS;
+}
+
+/***************************************************************************
+ * Checks if the PHY configuration is done
+ *
+ * hw: Struct containing variables accessed by shared code
+ *
+ * returns: - E1000_ERR_RESET if fail to reset MAC
+ *            E1000_SUCCESS at any other case.
+ *
+ ***************************************************************************/
+static int32_t e1000_get_phy_cfg_done(struct e1000_hw *hw)
+{
+	int32_t timeout = PHY_CFG_TIMEOUT;
+	uint32_t cfg_mask = E1000_EEPROM_CFG_DONE;
+
+	DEBUGFUNC();
+
+	switch (hw->mac_type) {
+	default:
+		mdelay(10);
+		break;
+
+	case e1000_80003es2lan:
+		/* Separate *_CFG_DONE_* bit for each port */
+		if (e1000_is_second_port(hw))
+			cfg_mask = E1000_EEPROM_CFG_DONE_PORT_1;
+		/* Fall Through */
+
+	case e1000_82571:
+	case e1000_82572:
+	case e1000_igb:
+		while (timeout) {
+			if (hw->mac_type == e1000_igb) {
+				if (E1000_READ_REG(hw, I210_EEMNGCTL) & cfg_mask)
+					break;
+			} else {
+				if (E1000_READ_REG(hw, EEMNGCTL) & cfg_mask)
+					break;
+			}
+			mdelay(1);
+			timeout--;
+		}
+		if (!timeout) {
+			dev_dbg(hw->dev, "MNG configuration cycle has not completed.\n");
+			return -E1000_ERR_RESET;
+		}
+		break;
+	}
+
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+* Returns the PHY to the power-on reset state
+*
+* hw - Struct containing variables accessed by shared code
+******************************************************************************/
+static int32_t e1000_phy_hw_reset(struct e1000_hw *hw)
+{
+	uint16_t swfw = E1000_SWFW_PHY0_SM;
+	uint32_t ctrl, ctrl_ext;
+	uint32_t led_ctrl;
+	int32_t ret_val;
+
+	DEBUGFUNC();
+
+	/* In the case of the phy reset being blocked, it's not an error, we
+	 * simply return success without performing the reset. */
+	ret_val = e1000_check_phy_reset_block(hw);
+	if (ret_val)
+		return E1000_SUCCESS;
+
+	dev_dbg(hw->dev, "Resetting Phy...\n");
+
+	if (hw->mac_type > e1000_82543) {
+		if (e1000_is_second_port(hw))
+			swfw = E1000_SWFW_PHY1_SM;
+
+		if (e1000_swfw_sync_acquire(hw, swfw)) {
+			dev_dbg(hw->dev, "Unable to acquire swfw sync\n");
+			return -E1000_ERR_SWFW_SYNC;
+		}
+
+		/* Read the device control register and assert the E1000_CTRL_PHY_RST
+		 * bit. Then, take it out of reset.
+		 */
+		ctrl = E1000_READ_REG(hw, CTRL);
+		E1000_WRITE_REG(hw, CTRL, ctrl | E1000_CTRL_PHY_RST);
+		E1000_WRITE_FLUSH(hw);
+
+		udelay(100);
+
+		E1000_WRITE_REG(hw, CTRL, ctrl);
+		E1000_WRITE_FLUSH(hw);
+
+		if (hw->mac_type >= e1000_82571)
+			mdelay(10);
+	} else {
+		/* Read the Extended Device Control Register, assert the PHY_RESET_DIR
+		 * bit to put the PHY into reset. Then, take it out of reset.
+		 */
+		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		ctrl_ext |= E1000_CTRL_EXT_SDP4_DIR;
+		ctrl_ext &= ~E1000_CTRL_EXT_SDP4_DATA;
+		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
+		E1000_WRITE_FLUSH(hw);
+		mdelay(10);
+		ctrl_ext |= E1000_CTRL_EXT_SDP4_DATA;
+		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
+		E1000_WRITE_FLUSH(hw);
+	}
+	udelay(150);
+
+	if ((hw->mac_type == e1000_82541) || (hw->mac_type == e1000_82547)) {
+		/* Configure activity LED after PHY reset */
+		led_ctrl = E1000_READ_REG(hw, LEDCTL);
+		led_ctrl &= IGP_ACTIVITY_LED_MASK;
+		led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
+		E1000_WRITE_REG(hw, LEDCTL, led_ctrl);
+	}
+
+	/* Wait for FW to finish PHY configuration. */
+	return e1000_get_phy_cfg_done(hw);
+}
+
+/******************************************************************************
+ * IGP phy init script - initializes the GbE PHY
+ *
+ * hw - Struct containing variables accessed by shared code
+ *****************************************************************************/
+static void e1000_phy_init_script(struct e1000_hw *hw)
+{
+	uint32_t ret_val;
+	uint16_t phy_saved_data;
+
+	DEBUGFUNC();
+
+	switch (hw->mac_type) {
+	case e1000_82541:
+	case e1000_82547:
+	case e1000_82541_rev_2:
+	case e1000_82547_rev_2:
+		break;
+	default:
+		return;
+	}
+
+	mdelay(20);
+
+	/* Save off the current value of register 0x2F5B to be
+	 * restored at the end of this routine. */
+	ret_val = e1000_read_phy_reg(hw, 0x2F5B, &phy_saved_data);
+
+	/* Disabled the PHY transmitter */
+	e1000_write_phy_reg(hw, 0x2F5B, 0x0003);
+
+	mdelay(20);
+
+	e1000_write_phy_reg(hw, 0x0000, 0x0140);
+
+	mdelay(5);
+
+	switch (hw->mac_type) {
+	case e1000_82541:
+	case e1000_82547:
+		e1000_write_phy_reg(hw, 0x1F95, 0x0001);
+
+		e1000_write_phy_reg(hw, 0x1F71, 0xBD21);
+
+		e1000_write_phy_reg(hw, 0x1F79, 0x0018);
+
+		e1000_write_phy_reg(hw, 0x1F30, 0x1600);
+
+		e1000_write_phy_reg(hw, 0x1F31, 0x0014);
+
+		e1000_write_phy_reg(hw, 0x1F32, 0x161C);
+
+		e1000_write_phy_reg(hw, 0x1F94, 0x0003);
+
+		e1000_write_phy_reg(hw, 0x1F96, 0x003F);
+
+		e1000_write_phy_reg(hw, 0x2010, 0x0008);
+		break;
+
+	case e1000_82541_rev_2:
+	case e1000_82547_rev_2:
+		e1000_write_phy_reg(hw, 0x1F73, 0x0099);
+		break;
+	default:
+		break;
+	}
+
+	e1000_write_phy_reg(hw, 0x0000, 0x3300);
+
+	mdelay(20);
+
+	/* Now enable the transmitter */
+	if (!ret_val)
+		e1000_write_phy_reg(hw, 0x2F5B, phy_saved_data);
+
+	if (hw->mac_type == e1000_82547) {
+		uint16_t fused, fine, coarse;
+
+		/* Move to analog registers page */
+		e1000_read_phy_reg(hw, IGP01E1000_ANALOG_SPARE_FUSE_STATUS, &fused);
+
+		if (!(fused & IGP01E1000_ANALOG_SPARE_FUSE_ENABLED)) {
+			e1000_read_phy_reg(hw, IGP01E1000_ANALOG_FUSE_STATUS, &fused);
+
+			fine = fused & IGP01E1000_ANALOG_FUSE_FINE_MASK;
+			coarse = fused & IGP01E1000_ANALOG_FUSE_COARSE_MASK;
+
+			if (coarse >
+				IGP01E1000_ANALOG_FUSE_COARSE_THRESH) {
+				coarse -=
+				IGP01E1000_ANALOG_FUSE_COARSE_10;
+				fine -= IGP01E1000_ANALOG_FUSE_FINE_1;
+			} else if (coarse
+				== IGP01E1000_ANALOG_FUSE_COARSE_THRESH)
+				fine -= IGP01E1000_ANALOG_FUSE_FINE_10;
+
+			fused = (fused & IGP01E1000_ANALOG_FUSE_POLY_MASK) |
+				(fine & IGP01E1000_ANALOG_FUSE_FINE_MASK) |
+				(coarse & IGP01E1000_ANALOG_FUSE_COARSE_MASK);
+
+			e1000_write_phy_reg(hw, IGP01E1000_ANALOG_FUSE_CONTROL, fused);
+			e1000_write_phy_reg(hw, IGP01E1000_ANALOG_FUSE_BYPASS,
+					IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL);
+		}
+	}
+}
+
+/******************************************************************************
+* Resets the PHY
+*
+* hw - Struct containing variables accessed by shared code
+*
+* Sets bit 15 of the MII Control register
+******************************************************************************/
+static int32_t e1000_phy_reset(struct e1000_hw *hw)
+{
+	uint16_t phy_data;
+	int ret;
+
+	DEBUGFUNC();
+
+	/*
+	 * In the case of the phy reset being blocked, it's not an error, we
+	 * simply return success without performing the reset.
+	 */
+	if (e1000_check_phy_reset_block(hw))
+		return E1000_SUCCESS;
+
+	switch (hw->phy_type) {
+	case e1000_phy_igp:
+	case e1000_phy_igp_2:
+	case e1000_phy_igp_3:
+	case e1000_phy_ife:
+	case e1000_phy_igb:
+		ret = e1000_phy_hw_reset(hw);
+		if (ret)
+			return ret;
+		break;
+	default:
+		ret = e1000_read_phy_reg(hw, PHY_CTRL, &phy_data);
+		if (ret)
+			return ret;
+
+		phy_data |= MII_CR_RESET;
+		ret = e1000_write_phy_reg(hw, PHY_CTRL, phy_data);
+		if (ret)
+			return ret;
+
+		udelay(1);
+		break;
+	}
+
+	if (hw->phy_type == e1000_phy_igp || hw->phy_type == e1000_phy_igp_2)
+		e1000_phy_init_script(hw);
+
+	return E1000_SUCCESS;
+}
+
+/******************************************************************************
+* Probes the expected PHY address for known PHY IDs
+*
+* hw - Struct containing variables accessed by shared code
+******************************************************************************/
+static int32_t e1000_detect_gig_phy(struct e1000_hw *hw)
+{
+	int32_t ret_val;
+	uint16_t phy_id_high, phy_id_low;
+	e1000_phy_type phy_type = e1000_phy_undefined;
+
+	DEBUGFUNC();
+
+	/* The 82571 firmware may still be configuring the PHY.  In this
+	 * case, we cannot access the PHY until the configuration is done.  So
+	 * we explicitly set the PHY values. */
+	if (hw->mac_type == e1000_82571 || hw->mac_type == e1000_82572) {
+		hw->phy_id = IGP01E1000_I_PHY_ID;
+		hw->phy_type = e1000_phy_igp_2;
+		return E1000_SUCCESS;
+	}
+
+	/* Read the PHY ID Registers to identify which PHY is onboard. */
+	ret_val = e1000_read_phy_reg(hw, PHY_ID1, &phy_id_high);
+	if (ret_val)
+		return ret_val;
+
+	hw->phy_id = (uint32_t) (phy_id_high << 16);
+	udelay(20);
+	ret_val = e1000_read_phy_reg(hw, PHY_ID2, &phy_id_low);
+	if (ret_val)
+		return ret_val;
+
+	hw->phy_id |= (uint32_t) (phy_id_low & PHY_REVISION_MASK);
+	hw->phy_revision = (uint32_t) phy_id_low & ~PHY_REVISION_MASK;
+
+	switch (hw->mac_type) {
+	case e1000_82543:
+		if (hw->phy_id == M88E1000_E_PHY_ID)
+			phy_type = e1000_phy_m88;
+		break;
+	case e1000_82544:
+		if (hw->phy_id == M88E1000_I_PHY_ID)
+			phy_type = e1000_phy_m88;
+		break;
+	case e1000_82540:
+	case e1000_82545:
+	case e1000_82545_rev_3:
+	case e1000_82546:
+	case e1000_82546_rev_3:
+		if (hw->phy_id == M88E1011_I_PHY_ID)
+			phy_type = e1000_phy_m88;
+		break;
+	case e1000_82541:
+	case e1000_82541_rev_2:
+	case e1000_82547:
+	case e1000_82547_rev_2:
+		if (hw->phy_id == IGP01E1000_I_PHY_ID)
+			phy_type = e1000_phy_igp;
+
+		break;
+	case e1000_82573:
+		if (hw->phy_id == M88E1111_I_PHY_ID)
+			phy_type = e1000_phy_m88;
+		break;
+	case e1000_82574:
+		if (hw->phy_id == BME1000_E_PHY_ID)
+			phy_type = e1000_phy_bm;
+		break;
+	case e1000_80003es2lan:
+		if (hw->phy_id == GG82563_E_PHY_ID)
+			phy_type = e1000_phy_gg82563;
+		break;
+	case e1000_ich8lan:
+		if (hw->phy_id == IGP03E1000_E_PHY_ID)
+			phy_type = e1000_phy_igp_3;
+		if (hw->phy_id == IFE_E_PHY_ID)
+			phy_type = e1000_phy_ife;
+		if (hw->phy_id == IFE_PLUS_E_PHY_ID)
+			phy_type = e1000_phy_ife;
+		if (hw->phy_id == IFE_C_E_PHY_ID)
+			phy_type = e1000_phy_ife;
+		break;
+	case e1000_igb:
+		if (hw->phy_id == I210_I_PHY_ID)
+			phy_type = e1000_phy_igb;
+		if (hw->phy_id == I350_I_PHY_ID)
+			phy_type = e1000_phy_igb;
+		break;
+	default:
+		dev_dbg(hw->dev, "Invalid MAC type %d\n", hw->mac_type);
+		return -E1000_ERR_CONFIG;
+	}
+
+	if (!phy_type == e1000_phy_undefined) {
+		dev_dbg(hw->dev, "Invalid PHY ID 0x%X\n", hw->phy_id);
+		return -EINVAL;
+	}
+
+	hw->phy_type = phy_type;
+
+	return 0;
+}
+
+/*****************************************************************************
+ * Set media type and TBI compatibility.
+ *
+ * hw - Struct containing variables accessed by shared code
+ * **************************************************************************/
+static void e1000_set_media_type(struct e1000_hw *hw)
+{
+	DEBUGFUNC();
+
+	switch (hw->device_id) {
+	case E1000_DEV_ID_82545GM_SERDES:
+	case E1000_DEV_ID_82546GB_SERDES:
+	case E1000_DEV_ID_82571EB_SERDES:
+	case E1000_DEV_ID_82571EB_SERDES_DUAL:
+	case E1000_DEV_ID_82571EB_SERDES_QUAD:
+	case E1000_DEV_ID_82572EI_SERDES:
+	case E1000_DEV_ID_80003ES2LAN_SERDES_DPT:
+		hw->media_type = e1000_media_type_internal_serdes;
+		return;
+	default:
+		break;
+	}
+
+	switch (hw->mac_type) {
+	case e1000_82542_rev2_0:
+	case e1000_82542_rev2_1:
+		hw->media_type = e1000_media_type_fiber;
+		return;
+	case e1000_ich8lan:
+	case e1000_82573:
+	case e1000_82574:
+	case e1000_igb:
+		/* The STATUS_TBIMODE bit is reserved or reused
+		 * for the this device.
+		 */
+		hw->media_type = e1000_media_type_copper;
+		return;
+	default:
+		break;
+	}
+
+	if (E1000_READ_REG(hw, STATUS) & E1000_STATUS_TBIMODE)
+		hw->media_type = e1000_media_type_fiber;
+	else
+		hw->media_type = e1000_media_type_copper;
+}
+
+/**
+ * e1000_sw_init - Initialize general software structures (struct e1000_adapter)
+ *
+ * e1000_sw_init initializes the Adapter private data structure.
+ * Fields are initialized based on PCI device information and
+ * OS network device settings (MTU size).
+ **/
+
+static int e1000_sw_init(struct eth_device *edev)
+{
+	struct e1000_hw *hw = edev->priv;
+	int result;
+
+	/* PCI config space info */
+	pci_read_config_word(hw->pdev, PCI_VENDOR_ID, &hw->vendor_id);
+	pci_read_config_word(hw->pdev, PCI_DEVICE_ID, &hw->device_id);
+	pci_read_config_byte(hw->pdev, PCI_REVISION_ID, &hw->revision_id);
+	pci_read_config_word(hw->pdev, PCI_COMMAND, &hw->pci_cmd_word);
+
+	/* identify the MAC */
+	result = e1000_set_mac_type(hw);
+	if (result) {
+		dev_err(&hw->edev.dev, "Unknown MAC Type\n");
+		return result;
+	}
+
+	return E1000_SUCCESS;
+}
+
+static void fill_rx(struct e1000_hw *hw)
+{
+	volatile struct e1000_rx_desc *rd;
+	volatile u32 *bla;
+	int i;
+
+	hw->rx_last = hw->rx_tail;
+	rd = hw->rx_base + hw->rx_tail;
+	hw->rx_tail = (hw->rx_tail + 1) % 8;
+
+	bla = (void *)rd;
+	for (i = 0; i < 4; i++)
+		*bla++ = 0;
+
+	rd->buffer_addr = cpu_to_le64((unsigned long)hw->packet);
+
+	E1000_WRITE_REG(hw, RDT, hw->rx_tail);
+}
+
+/**
+ * e1000_configure_tx - Configure 8254x Transmit Unit after Reset
+ * @adapter: board private structure
+ *
+ * Configure the Tx unit of the MAC after a reset.
+ **/
+
+static void e1000_configure_tx(struct e1000_hw *hw)
+{
+	unsigned long tctl;
+	unsigned long tipg, tarc;
+	uint32_t ipgr1, ipgr2;
+
+	E1000_WRITE_REG(hw, TDBAL, (unsigned long)hw->tx_base);
+	E1000_WRITE_REG(hw, TDBAH, 0);
+
+	E1000_WRITE_REG(hw, TDLEN, 128);
+
+	/* Setup the HW Tx Head and Tail descriptor pointers */
+	E1000_WRITE_REG(hw, TDH, 0);
+	E1000_WRITE_REG(hw, TDT, 0);
+	hw->tx_tail = 0;
+
+	/* Set the default values for the Tx Inter Packet Gap timer */
+	if (hw->mac_type <= e1000_82547_rev_2 &&
+	    (hw->media_type == e1000_media_type_fiber ||
+	     hw->media_type == e1000_media_type_internal_serdes))
+		tipg = DEFAULT_82543_TIPG_IPGT_FIBER;
+	else
+		tipg = DEFAULT_82543_TIPG_IPGT_COPPER;
+
+	/* Set the default values for the Tx Inter Packet Gap timer */
+	switch (hw->mac_type) {
+	case e1000_82542_rev2_0:
+	case e1000_82542_rev2_1:
+		tipg = DEFAULT_82542_TIPG_IPGT;
+		ipgr1 = DEFAULT_82542_TIPG_IPGR1;
+		ipgr2 = DEFAULT_82542_TIPG_IPGR2;
+		break;
+	case e1000_80003es2lan:
+		ipgr1 = DEFAULT_82543_TIPG_IPGR1;
+		ipgr2 = DEFAULT_80003ES2LAN_TIPG_IPGR2;
+		break;
+	default:
+		ipgr1 = DEFAULT_82543_TIPG_IPGR1;
+		ipgr2 = DEFAULT_82543_TIPG_IPGR2;
+		break;
+	}
+	tipg |= ipgr1 << E1000_TIPG_IPGR1_SHIFT;
+	tipg |= ipgr2 << E1000_TIPG_IPGR2_SHIFT;
+	E1000_WRITE_REG(hw, TIPG, tipg);
+	/* Program the Transmit Control Register */
+	tctl = E1000_READ_REG(hw, TCTL);
+	tctl &= ~E1000_TCTL_CT;
+	tctl |= E1000_TCTL_EN | E1000_TCTL_PSP |
+	    (E1000_COLLISION_THRESHOLD << E1000_CT_SHIFT);
+
+	if (hw->mac_type == e1000_82571 || hw->mac_type == e1000_82572) {
+		tarc = E1000_READ_REG(hw, TARC0);
+		/* set the speed mode bit, we'll clear it if we're not at
+		 * gigabit link later */
+		/* git bit can be set to 1*/
+	} else if (hw->mac_type == e1000_80003es2lan) {
+		tarc = E1000_READ_REG(hw, TARC0);
+		tarc |= 1;
+		E1000_WRITE_REG(hw, TARC0, tarc);
+		tarc = E1000_READ_REG(hw, TARC1);
+		tarc |= 1;
+		E1000_WRITE_REG(hw, TARC1, tarc);
+	}
+
+
+	e1000_config_collision_dist(hw);
+	/* Setup Transmit Descriptor Settings for eop descriptor */
+	hw->txd_cmd = E1000_TXD_CMD_EOP | E1000_TXD_CMD_IFCS;
+
+	/* Need to set up RS bit */
+	if (hw->mac_type < e1000_82543)
+		hw->txd_cmd |= E1000_TXD_CMD_RPS;
+	else
+		hw->txd_cmd |= E1000_TXD_CMD_RS;
+
+
+	if (hw->mac_type == e1000_igb) {
+		uint32_t reg_txdctl;
+
+		E1000_WRITE_REG(hw, TCTL_EXT, 0x42 << 10);
+
+		reg_txdctl = E1000_READ_REG(hw, TXDCTL);
+		reg_txdctl |= 1 << 25;
+		E1000_WRITE_REG(hw, TXDCTL, reg_txdctl);
+		mdelay(20);
+	}
+
+	E1000_WRITE_REG(hw, TCTL, tctl);
+}
+
+/**
+ * e1000_setup_rctl - configure the receive control register
+ * @adapter: Board private structure
+ **/
+static void e1000_setup_rctl(struct e1000_hw *hw)
+{
+	uint32_t rctl;
+
+	rctl = E1000_READ_REG(hw, RCTL);
+
+	rctl &= ~(3 << E1000_RCTL_MO_SHIFT);
+
+	rctl |= E1000_RCTL_EN | E1000_RCTL_BAM | E1000_RCTL_LBM_NO
+		| E1000_RCTL_RDMTS_HALF;	/* |
+			(hw.mc_filter_type << E1000_RCTL_MO_SHIFT); */
+
+	rctl &= ~E1000_RCTL_SBP;
+
+	rctl &= ~(E1000_RCTL_SZ_4096);
+		rctl |= E1000_RCTL_SZ_2048;
+		rctl &= ~(E1000_RCTL_BSEX | E1000_RCTL_LPE);
+	E1000_WRITE_REG(hw, RCTL, rctl);
+}
+
+/**
+ * e1000_configure_rx - Configure 8254x Receive Unit after Reset
+ * @adapter: board private structure
+ *
+ * Configure the Rx unit of the MAC after a reset.
+ **/
+static void e1000_configure_rx(struct e1000_hw *hw)
+{
+	unsigned long rctl, ctrl_ext;
+
+	hw->rx_tail = 0;
+	/* make sure receives are disabled while setting up the descriptors */
+	rctl = E1000_READ_REG(hw, RCTL);
+	E1000_WRITE_REG(hw, RCTL, rctl & ~E1000_RCTL_EN);
+	if (hw->mac_type >= e1000_82540) {
+		/* Set the interrupt throttling rate.  Value is calculated
+		 * as DEFAULT_ITR = 1/(MAX_INTS_PER_SEC * 256ns) */
+#define MAX_INTS_PER_SEC	8000
+#define DEFAULT_ITR		1000000000/(MAX_INTS_PER_SEC * 256)
+		E1000_WRITE_REG(hw, ITR, DEFAULT_ITR);
+	}
+
+	if (hw->mac_type >= e1000_82571) {
+		ctrl_ext = E1000_READ_REG(hw, CTRL_EXT);
+		/* Reset delay timers after every interrupt */
+		ctrl_ext |= E1000_CTRL_EXT_INT_TIMER_CLR;
+		E1000_WRITE_REG(hw, CTRL_EXT, ctrl_ext);
+		E1000_WRITE_FLUSH(hw);
+	}
+	/* Setup the Base and Length of the Rx Descriptor Ring */
+	E1000_WRITE_REG(hw, RDBAL, (unsigned long)hw->rx_base);
+	E1000_WRITE_REG(hw, RDBAH, 0);
+
+	E1000_WRITE_REG(hw, RDLEN, 128);
+
+	/* Setup the HW Rx Head and Tail Descriptor Pointers */
+	E1000_WRITE_REG(hw, RDH, 0);
+	E1000_WRITE_REG(hw, RDT, 0);
+	/* Enable Receives */
+
+	if (hw->mac_type == e1000_igb) {
+		uint32_t reg_rxdctl = E1000_READ_REG(hw, RXDCTL);
+		reg_rxdctl |= 1 << 25;
+		E1000_WRITE_REG(hw, RXDCTL, reg_rxdctl);
+		mdelay(20);
+	}
+
+	E1000_WRITE_REG(hw, RCTL, rctl);
+
+	fill_rx(hw);
+}
+
+static int e1000_poll(struct eth_device *edev)
+{
+	struct e1000_hw *hw = edev->priv;
+	volatile struct e1000_rx_desc *rd;
+	uint32_t len;
+
+	rd = hw->rx_base + hw->rx_last;
+
+	if (!(le32_to_cpu(rd->status)) & E1000_RXD_STAT_DD)
+		return 0;
+
+	len = le32_to_cpu(rd->length);
+
+	dma_sync_single_for_cpu((unsigned long)hw->packet, len, DMA_FROM_DEVICE);
+
+	net_receive(edev, (uchar *)hw->packet, len);
+	fill_rx(hw);
+	return 1;
+}
+
+static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
+{
+	void *nv_packet = (void *)txpacket;
+	struct e1000_hw *hw = edev->priv;
+	volatile struct e1000_tx_desc *txp;
+	uint64_t to;
+
+	txp = hw->tx_base + hw->tx_tail;
+	hw->tx_tail = (hw->tx_tail + 1) % 8;
+
+	txp->buffer_addr = cpu_to_le64(virt_to_bus(hw->pdev, nv_packet));
+	txp->lower.data = cpu_to_le32(hw->txd_cmd | length);
+	txp->upper.data = 0;
+
+	dma_sync_single_for_device((unsigned long)txpacket, length, DMA_TO_DEVICE);
+
+	E1000_WRITE_REG(hw, TDT, hw->tx_tail);
+
+	E1000_WRITE_FLUSH(hw);
+
+	to = get_time_ns();
+	while (1) {
+		if (le32_to_cpu(txp->upper.data) & E1000_TXD_STAT_DD)
+			break;
+		if (is_timeout(to, MSECOND)) {
+			dev_dbg(hw->dev, "e1000: tx timeout\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	return 0;
+}
+
+static void e1000_disable(struct eth_device *edev)
+{
+	struct e1000_hw *hw = edev->priv;
+
+	/* Turn off the ethernet interface */
+	E1000_WRITE_REG(hw, RCTL, 0);
+	E1000_WRITE_REG(hw, TCTL, 0);
+
+	/* Clear the transmit ring */
+	E1000_WRITE_REG(hw, TDH, 0);
+	E1000_WRITE_REG(hw, TDT, 0);
+
+	/* Clear the receive ring */
+	E1000_WRITE_REG(hw, RDH, 0);
+	E1000_WRITE_REG(hw, RDT, 0);
+
+	mdelay(10);
+}
+
+static int e1000_init(struct eth_device *edev)
+{
+	struct e1000_hw *hw = edev->priv;
+	uint32_t i;
+	uint32_t mta_size;
+	uint32_t reg_data;
+
+	DEBUGFUNC();
+
+	if (hw->mac_type >= e1000_82544)
+		E1000_WRITE_REG(hw, WUC, 0);
+
+	/* force full DMA clock frequency for 10/100 on ICH8 A0-B0 */
+	if ((hw->mac_type == e1000_ich8lan) && ((hw->revision_id < 3) ||
+	    ((hw->device_id != E1000_DEV_ID_ICH8_IGP_M_AMT) &&
+	     (hw->device_id != E1000_DEV_ID_ICH8_IGP_M)))) {
+		reg_data = E1000_READ_REG(hw, STATUS);
+		reg_data &= ~0x80000000;
+		E1000_WRITE_REG(hw, STATUS, reg_data);
+	}
+
+	/* Set the media type and TBI compatibility */
+	e1000_set_media_type(hw);
+
+	/* Must be called after e1000_set_media_type
+	 * because media_type is used */
+	e1000_initialize_hardware_bits(hw);
+
+	/* Disabling VLAN filtering. */
+	/* VET hardcoded to standard value and VFTA removed in ICH8 LAN */
+	if (hw->mac_type != e1000_ich8lan) {
+		if (hw->mac_type < e1000_82545_rev_3)
+			E1000_WRITE_REG(hw, VET, 0);
+		e1000_clear_vfta(hw);
+	}
+
+	/* For 82542 (rev 2.0), disable MWI and put the receiver into reset */
+	if (hw->mac_type == e1000_82542_rev2_0) {
+		dev_dbg(hw->dev, "Disabling MWI on 82542 rev 2.0\n");
+		pci_write_config_word(hw->pdev, PCI_COMMAND,
+				      hw->pci_cmd_word & ~PCI_COMMAND_INVALIDATE);
+		E1000_WRITE_REG(hw, RCTL, E1000_RCTL_RST);
+		E1000_WRITE_FLUSH(hw);
+		mdelay(5);
+	}
+
+	for (i = 1; i < E1000_RAR_ENTRIES; i++) {
+		E1000_WRITE_REG_ARRAY(hw, RA, (i << 1), 0);
+		E1000_WRITE_REG_ARRAY(hw, RA, ((i << 1) + 1), 0);
+	}
+
+	/* For 82542 (rev 2.0), take the receiver out of reset and enable MWI */
+	if (hw->mac_type == e1000_82542_rev2_0) {
+		E1000_WRITE_REG(hw, RCTL, 0);
+		E1000_WRITE_FLUSH(hw);
+		mdelay(1);
+		pci_write_config_word(hw->pdev, PCI_COMMAND, hw->pci_cmd_word);
+	}
+
+	/* Zero out the Multicast HASH table */
+	mta_size = E1000_MC_TBL_SIZE;
+	if (hw->mac_type == e1000_ich8lan)
+		mta_size = E1000_MC_TBL_SIZE_ICH8LAN;
+
+	for (i = 0; i < mta_size; i++) {
+		E1000_WRITE_REG_ARRAY(hw, MTA, i, 0);
+		/* use write flush to prevent Memory Write Block (MWB) from
+		 * occuring when accessing our register space */
+		E1000_WRITE_FLUSH(hw);
+	}
+
+	/* More time needed for PHY to initialize */
+	if (hw->mac_type == e1000_ich8lan)
+		mdelay(15);
+	if (hw->mac_type == e1000_igb)
+		mdelay(15);
+
+	e1000_configure_tx(hw);
+	e1000_configure_rx(hw);
+	e1000_setup_rctl(hw);
+
+	return 0;
+}
+
+static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct e1000_hw *hw;
+	struct eth_device *edev;
+	int ret;
+
+	pci_enable_device(pdev);
+	pci_set_master(pdev);
+
+	hw = xzalloc(sizeof(*hw));
+
+	hw->tx_base = dma_alloc_coherent(16 * sizeof(*hw->tx_base), DMA_ADDRESS_BROKEN);
+	hw->rx_base = dma_alloc_coherent(16 * sizeof(*hw->rx_base), DMA_ADDRESS_BROKEN);
+	hw->packet = dma_alloc_coherent(4096, DMA_ADDRESS_BROKEN);
+
+	edev = &hw->edev;
+
+	hw->pdev = pdev;
+	hw->dev = &pdev->dev;
+	pdev->dev.priv = hw;
+	edev->priv = hw;
+
+	hw->hw_addr = pci_iomap(pdev, 0);
+
+	/* MAC and Phy settings */
+	if (e1000_sw_init(edev) < 0) {
+		dev_err(&pdev->dev, "Software init failed\n");
+		return -EINVAL;
+	}
+
+	if (e1000_check_phy_reset_block(hw))
+		dev_err(&pdev->dev, "PHY Reset is blocked!\n");
+
+	/* Basic init was OK, reset the hardware and allow SPI access */
+	e1000_reset_hw(hw);
+
+	/* Validate the EEPROM and get chipset information */
+	if (e1000_init_eeprom_params(hw)) {
+		dev_err(&pdev->dev, "EEPROM is invalid!\n");
+		return -EINVAL;
+	}
+	if ((E1000_READ_REG(hw, I210_EECD) & E1000_EECD_FLUPD) &&
+	    e1000_validate_eeprom_checksum(hw))
+		return -EINVAL;
+
+	e1000_get_ethaddr(edev, edev->ethaddr);
+
+	/* Set up the function pointers and register the device */
+	edev->init = e1000_init;
+	edev->recv = e1000_poll;
+	edev->send = e1000_transmit;
+	edev->halt = e1000_disable;
+	edev->open = e1000_open;
+	edev->get_ethaddr = e1000_get_ethaddr;
+	edev->set_ethaddr = e1000_set_ethaddr;
+
+	hw->miibus.read = e1000_phy_read;
+	hw->miibus.write = e1000_phy_write;
+	hw->miibus.priv = hw;
+	hw->miibus.parent = &edev->dev;
+
+	ret = eth_register(edev);
+	if (ret)
+		return ret;
+
+	/*
+	 * The e1000 driver does its own phy handling, but registering
+	 * the phy allows to show the phy registers for debugging purposes.
+	 */
+	ret = mdiobus_register(&hw->miibus);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void e1000_remove(struct pci_dev *pdev)
+{
+	struct e1000_hw *hw = pdev->dev.priv;
+
+	e1000_disable(&hw->edev);
+}
+
+static DEFINE_PCI_DEVICE_TABLE(e1000_pci_tbl) = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82542), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82543GC_FIBER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82543GC_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82544EI_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82544EI_FIBER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82544GC_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82544GC_LOM), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82540EM), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82545EM_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82545GM_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82546EB_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82545EM_FIBER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82546EB_FIBER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82546GB_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82540EM_LOM), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82541ER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82541GI_LF), },
+	/* E1000 PCIe card */
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_FIBER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_SERDES), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_QUAD_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571PT_QUAD_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_QUAD_FIBER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_QUAD_COPPER_LOWPROFILE), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_SERDES_DUAL), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82571EB_SERDES_QUAD), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82572EI_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82572EI_FIBER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82572EI_SERDES), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82572EI), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82573E), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82573E_IAMT), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82573L), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82574L), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_80003ES2LAN_COPPER_DPT), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_80003ES2LAN_SERDES_DPT), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_80003ES2LAN_COPPER_SPT), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_80003ES2LAN_SERDES_SPT), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_UNPROGRAMMED), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I211_UNPROGRAMMED), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I211_COPPER), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_COPPER_FLASHLESS), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_SERDES), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_SERDES_FLASHLESS), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I210_1000BASEKX), },
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, E1000_DEV_ID_I350_COPPER), },
+	{ /* sentinel */ }
+};
+
+static struct pci_driver e1000_eth_driver = {
+	.name = "e1000",
+	.id_table = e1000_pci_tbl,
+	.probe = e1000_probe,
+	.remove = e1000_remove,
+};
+
+static int e1000_driver_init(void)
+{
+	return pci_register_driver(&e1000_eth_driver);
+}
+device_initcall(e1000_driver_init);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
