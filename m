Delivery-date: Thu, 12 Aug 2021 14:22:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE9jJ-000135-6A
	for lore@lore.pengutronix.de; Thu, 12 Aug 2021 14:22:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE9jE-0000jp-MR
	for lore@pengutronix.de; Thu, 12 Aug 2021 14:22:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mou5LKXpbV+VnUkudiRI/4dDO7f5fu905NweRYrXF/Y=; b=2rs4S9cuWM1A0A
	H3WvwkFUjqoMelDS7whTGSu0BvmeWz5LvzWMvSYiUtJ7nTJFQUVv2M+DP7TPwfbt1DmwfKxb/t55I
	nTd+tTUBUjbZzzkIunw0wwxFDNruBxSyuadzj/C5jT3o4S9JYRiZTe+fYcaBkIq98MoilRR5ygzAw
	ZcfZYzdzQUOM3YHiFtTXNDZgeTpSZbzkKia6vTrZqyaabFGPAFFp2pla/1SjUM4aARihAjDMldyOc
	+xzLOcUDXUyknjQrTH3orUbcFm2SO8VMZcr5QpiDODa7Ir63Vj268rSNE3mDZz88kuJot6V+PpPpG
	FrdejjXOXYlUrc706Mjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE9gl-009yq6-O4; Thu, 12 Aug 2021 12:19:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE9gb-009ynf-Lz
 for barebox@lists.infradead.org; Thu, 12 Aug 2021 12:19:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mE9gX-00004u-QX; Thu, 12 Aug 2021 14:19:45 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mE9gX-0001Aa-G3; Thu, 12 Aug 2021 14:19:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Aug 2021 14:19:44 +0200
Message-Id: <20210812121944.4419-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210812121944.4419-1-a.fatoum@pengutronix.de>
References: <20210812121944.4419-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_051950_285255_C3086CFB 
X-CRM114-Status: GOOD (  29.62  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] net: e1000: split EEPROM and barebox MTD wrapper into
 separate files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the addition of the EFI PCI bus driver, e1000 can now be built for
x86 as well. This only works when CONFIG_MTD=y, because otherwise
add_mtd_device is not defined leading to a link error.

This doesn't happen with other platforms, because linker garbage
collection, which is not used for the EFI platform.

Fix this issue by separating the generic EEPROM parts from the
barebox-specific MTD parts and compiling the MTD parts conditionally.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Makefile       |   2 +-
 drivers/net/e1000/Makefile |   3 +
 drivers/net/e1000/eeprom.c | 814 ------------------------------------
 drivers/net/e1000/mtd.c    | 835 +++++++++++++++++++++++++++++++++++++
 4 files changed, 839 insertions(+), 815 deletions(-)
 create mode 100644 drivers/net/e1000/Makefile
 create mode 100644 drivers/net/e1000/mtd.c

diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index e5eede634e63..b1aa9571fc72 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -16,7 +16,7 @@ obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STM32) += designware_stm32.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_TEGRA186) += designware_tegra186.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP) += designware_rockchip.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
-obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/regio.o e1000/main.o e1000/eeprom.o
+obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/
 obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
diff --git a/drivers/net/e1000/Makefile b/drivers/net/e1000/Makefile
new file mode 100644
index 000000000000..91ef11cbe356
--- /dev/null
+++ b/drivers/net/e1000/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-y			+= regio.o main.o eeprom.o
+obj-$(CONFIG_MTD)	+= mtd.o
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 5a7d8675cecd..6bdf9db5532e 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -731,250 +731,6 @@ static int32_t e1000_spi_eeprom_ready(struct e1000_hw *hw)
 	return E1000_SUCCESS;
 }
 
-static int e1000_flash_mode_wait_for_idle(struct e1000_hw *hw)
-{
-	const int ret = e1000_poll_reg(hw, E1000_FLSWCTL, E1000_FLSWCTL_DONE,
-				       E1000_FLSWCTL_DONE, SECOND);
-	if (ret < 0)
-		dev_err(hw->dev,
-			"Timeout waiting for FLSWCTL.DONE to be set (wait)\n");
-	return ret;
-}
-
-static int e1000_flash_mode_check_command_valid(struct e1000_hw *hw)
-{
-	const uint32_t flswctl = e1000_read_reg(hw, E1000_FLSWCTL);
-	if (!(flswctl & E1000_FLSWCTL_CMDV)) {
-		dev_err(hw->dev, "FLSWCTL.CMDV was cleared\n");
-		return -EIO;
-	}
-
-	return E1000_SUCCESS;
-}
-
-static void e1000_flash_cmd(struct e1000_hw *hw,
-			    uint32_t cmd, uint32_t offset)
-{
-	uint32_t flswctl = e1000_read_reg(hw, E1000_FLSWCTL);
-	flswctl &= ~E1000_FLSWCTL_CMD_ADDR_MASK;
-	flswctl |= E1000_FLSWCTL_CMD(cmd) | E1000_FLSWCTL_ADDR(offset);
-	e1000_write_reg(hw, E1000_FLSWCTL, flswctl);
-}
-
-static int e1000_flash_mode_read_chunk(struct e1000_hw *hw, loff_t offset,
-				       size_t size, void *data)
-{
-	int ret;
-	size_t chunk, residue = size;
-	uint32_t flswdata;
-
-	DEBUGFUNC();
-
-	if (size > SZ_4K ||
-	    E1000_FLSWCTL_ADDR(offset) != offset)
-		return -EINVAL;
-
-	ret = e1000_flash_mode_wait_for_idle(hw);
-	if (ret < 0)
-		return ret;
-
-	e1000_write_reg(hw, E1000_FLSWCNT, size);
-	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_READ, offset);
-
-	do {
-		ret = e1000_flash_mode_check_command_valid(hw);
-		if (ret < 0)
-			return -EIO;
-
-		chunk = min(sizeof(flswdata), residue);
-
-		ret = e1000_poll_reg(hw, E1000_FLSWCTL,
-				     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
-				     SECOND);
-		if (ret < 0) {
-			dev_err(hw->dev,
-				"Timeout waiting for FLSWCTL.DONE to be set (read)\n");
-			return ret;
-		}
-
-		flswdata = e1000_read_reg(hw, E1000_FLSWDATA);
-		/*
-		 * Readl does le32_to_cpu, so we need to undo that
-		 */
-		flswdata = cpu_to_le32(flswdata);
-		memcpy(data, &flswdata, chunk);
-
-		data += chunk;
-		residue -= chunk;
-	} while (residue);
-
-	return E1000_SUCCESS;
-}
-
-static int e1000_flash_mode_write_chunk(struct e1000_hw *hw, loff_t offset,
-					size_t size, const void *data)
-{
-	int ret;
-	size_t chunk, residue = size;
-	uint32_t flswdata;
-
-	if (size > 256 ||
-	    E1000_FLSWCTL_ADDR(offset) != offset)
-		return -EINVAL;
-
-	ret = e1000_flash_mode_wait_for_idle(hw);
-	if (ret < 0)
-		return ret;
-
-
-	e1000_write_reg(hw, E1000_FLSWCNT, size);
-	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_WRITE, offset);
-
-	do {
-		chunk = min(sizeof(flswdata), residue);
-		memcpy(&flswdata, data, chunk);
-		/*
-		 * writel does cpu_to_le32, so we do the inverse in
-		 * order to account for that
-		 */
-		flswdata = le32_to_cpu(flswdata);
-		e1000_write_reg(hw, E1000_FLSWDATA, flswdata);
-
-		ret = e1000_flash_mode_check_command_valid(hw);
-		if (ret < 0)
-			return -EIO;
-
-		ret = e1000_poll_reg(hw, E1000_FLSWCTL,
-				     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
-				     SECOND);
-		if (ret < 0) {
-			dev_err(hw->dev,
-				"Timeout waiting for FLSWCTL.DONE to be set (write)\n");
-			return ret;
-		}
-
-		data += chunk;
-		residue -= chunk;
-
-	} while (residue);
-
-	return E1000_SUCCESS;
-}
-
-
-static int e1000_flash_mode_erase_chunk(struct e1000_hw *hw, loff_t offset,
-					size_t size)
-{
-	int ret;
-
-	ret = e1000_flash_mode_wait_for_idle(hw);
-	if (ret < 0)
-		return ret;
-
-	if (!size && !offset)
-		e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_ERASE_DEVICE, 0);
-	else
-		e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_ERASE_SECTOR, offset);
-
-	ret = e1000_flash_mode_check_command_valid(hw);
-	if (ret < 0)
-		return -EIO;
-
-	ret = e1000_poll_reg(hw, E1000_FLSWCTL,
-			     E1000_FLSWCTL_DONE | E1000_FLSWCTL_FLBUSY,
-			     E1000_FLSWCTL_DONE,
-			     40 * SECOND);
-	if (ret < 0) {
-		dev_err(hw->dev,
-			"Timeout waiting for FLSWCTL.DONE to be set (erase)\n");
-		return ret;
-	}
-
-	return E1000_SUCCESS;
-}
-
-enum {
-	E1000_FLASH_MODE_OP_READ = 0,
-	E1000_FLASH_MODE_OP_WRITE = 1,
-	E1000_FLASH_MODE_OP_ERASE = 2,
-};
-
-
-static int e1000_flash_mode_io(struct e1000_hw *hw, int op, size_t granularity,
-			       loff_t offset, size_t size, void *data)
-{
-	int ret;
-	size_t residue = size;
-
-	do {
-		const size_t chunk = min(granularity, residue);
-
-		switch (op) {
-		case E1000_FLASH_MODE_OP_READ:
-			ret = e1000_flash_mode_read_chunk(hw, offset,
-							  chunk, data);
-			break;
-		case E1000_FLASH_MODE_OP_WRITE:
-			ret = e1000_flash_mode_write_chunk(hw, offset,
-							   chunk, data);
-			break;
-		case E1000_FLASH_MODE_OP_ERASE:
-			ret = e1000_flash_mode_erase_chunk(hw, offset,
-							   chunk);
-			break;
-		default:
-			return -ENOTSUPP;
-		}
-
-		if (ret < 0)
-			return ret;
-
-		offset += chunk;
-		residue -= chunk;
-		data += chunk;
-	} while (residue);
-
-	return E1000_SUCCESS;
-}
-
-
-static int e1000_flash_mode_read(struct e1000_hw *hw, loff_t offset,
-				 size_t size, void *data)
-{
-	return e1000_flash_mode_io(hw,
-				   E1000_FLASH_MODE_OP_READ, SZ_4K,
-				   offset, size, data);
-}
-
-static int e1000_flash_mode_write(struct e1000_hw *hw, loff_t offset,
-				  size_t size, const void *data)
-{
-	int ret;
-
-	ret = e1000_flash_mode_io(hw,
-				  E1000_FLASH_MODE_OP_WRITE, 256,
-				  offset, size, (void *)data);
-	if (ret < 0)
-		return ret;
-
-	ret = e1000_poll_reg(hw, E1000_FLSWCTL,
-			     E1000_FLSWCTL_FLBUSY,
-			     0,  SECOND);
-	if (ret < 0)
-		dev_err(hw->dev, "Timout while waiting for FLSWCTL.FLBUSY\n");
-
-	return ret;
-}
-
-static int e1000_flash_mode_erase(struct e1000_hw *hw, loff_t offset,
-				  size_t size)
-{
-	return e1000_flash_mode_io(hw,
-				   E1000_FLASH_MODE_OP_ERASE, SZ_4K,
-				   offset, size, NULL);
-}
-
-
 /******************************************************************************
  * Reads a 16 bit word from the EEPROM.
  *
@@ -1066,484 +822,6 @@ int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
 	return -E1000_ERR_EEPROM;
 }
 
-static ssize_t e1000_invm_cdev_read(struct cdev *cdev, void *buf,
-				    size_t count, loff_t offset, unsigned long flags)
-{
-	uint8_t n, bnr;
-	uint32_t line;
-	size_t chunk, residue = count;
-	struct e1000_hw *hw = container_of(cdev, struct e1000_hw, invm.cdev);
-
-	n = offset / sizeof(line);
-	if (n > E1000_INVM_DATA_MAX_N)
-		return -EINVAL;
-
-	bnr = offset % sizeof(line);
-	if (bnr) {
-		/*
-		 * if bnr in not zero it means we have a non 4-byte
-		 * aligned start and need to do a partial read
-		 */
-		const uint8_t *bptr;
-
-		bptr  = (uint8_t *)&line + bnr;
-		chunk = min(bnr - sizeof(line), count);
-		line  = e1000_read_reg(hw, E1000_INVM_DATA(n));
-		line  = cpu_to_le32(line); /* to account for readl */
-		memcpy(buf, bptr, chunk);
-
-		goto start_adjusted;
-	}
-
-	do {
-		if (n > E1000_INVM_DATA_MAX_N)
-			return -EINVAL;
-
-		chunk = min(sizeof(line), residue);
-		line = e1000_read_reg(hw, E1000_INVM_DATA(n));
-		line = cpu_to_le32(line); /* to account for readl */
-
-		/*
-		 * by using memcpy in conjunction with min should get
-		 * dangling tail reads as well as aligned reads
-		 */
-		memcpy(buf, &line, chunk);
-
-	start_adjusted:
-		residue -= chunk;
-		buf += chunk;
-		n++;
-	} while (residue);
-
-	return count;
-}
-
-static int e1000_invm_program(struct e1000_hw *hw, u32 offset, u32 value,
-			      unsigned int delay)
-{
-	int retries = 400;
-	do {
-		if ((e1000_read_reg(hw, offset) & value) == value)
-			return E1000_SUCCESS;
-
-		e1000_write_reg(hw, offset, value);
-
-		if (delay) {
-			udelay(delay);
-		} else {
-			int ret;
-
-			if (e1000_read_reg(hw, E1000_INVM_PROTECT) &
-			    E1000_INVM_PROTECT_WRITE_ERROR) {
-				dev_err(hw->dev, "Error while writing to %x\n", offset);
-				return -EIO;
-			}
-
-			ret = e1000_poll_reg(hw, E1000_INVM_PROTECT,
-					     E1000_INVM_PROTECT_BUSY,
-					     0,  SECOND);
-			if (ret < 0) {
-				dev_err(hw->dev,
-					"Timeout while waiting for INVM_PROTECT.BUSY\n");
-				return ret;
-			}
-		}
-	} while (retries--);
-
-	return -ETIMEDOUT;
-}
-
-static int e1000_invm_set_lock(struct param_d *param, void *priv)
-{
-	struct e1000_hw *hw = priv;
-
-	if (hw->invm.line > 31)
-		return -EINVAL;
-
-	return e1000_invm_program(hw,
-				  E1000_INVM_LOCK(hw->invm.line),
-				  E1000_INVM_LOCK_BIT,
-				  10);
-}
-
-static int e1000_invm_unlock(struct e1000_hw *hw)
-{
-	e1000_write_reg(hw, E1000_INVM_PROTECT, E1000_INVM_PROTECT_CODE);
-	/*
-	 * If we were successful at unlocking iNVM for programming we
-	 * should see ALLOW_WRITE bit toggle to 1
-	 */
-	if (!(e1000_read_reg(hw, E1000_INVM_PROTECT) &
-	      E1000_INVM_PROTECT_ALLOW_WRITE))
-		return -EIO;
-	else
-		return E1000_SUCCESS;
-}
-
-static void e1000_invm_lock(struct e1000_hw *hw)
-{
-	e1000_write_reg(hw, E1000_INVM_PROTECT, 0);
-}
-
-static int e1000_invm_write_prepare(struct e1000_hw *hw)
-{
-	int ret;
-	/*
-	 * This needs to be done accorging to the datasheet p. 541 and
-	 * p. 79
-	*/
-	e1000_write_reg(hw, E1000_PCIEMISC,
-			E1000_PCIEMISC_RESERVED_PATTERN1 |
-			E1000_PCIEMISC_DMA_IDLE          |
-			E1000_PCIEMISC_RESERVED_PATTERN2);
-
-	/*
-	 * Needed for programming iNVM on devices with Flash with valid
-	 * contents attached
-	 */
-	ret = e1000_poll_reg(hw, E1000_EEMNGCTL,
-			     E1000_EEMNGCTL_CFG_DONE,
-			     E1000_EEMNGCTL_CFG_DONE, SECOND);
-	if (ret < 0) {
-		dev_err(hw->dev,
-			"Timeout while waiting for EEMNGCTL.CFG_DONE\n");
-		return ret;
-	}
-
-	udelay(15);
-
-	return E1000_SUCCESS;
-}
-
-static ssize_t e1000_invm_cdev_write(struct cdev *cdev, const void *buf,
-				     size_t count, loff_t offset, unsigned long flags)
-{
-	int ret;
-	uint8_t n, bnr;
-	uint32_t line;
-	size_t chunk, residue = count;
-	struct e1000_hw *hw = container_of(cdev, struct e1000_hw, invm.cdev);
-
-	ret = e1000_invm_write_prepare(hw);
-	if (ret < 0)
-		return ret;
-
-	ret = e1000_invm_unlock(hw);
-	if (ret < 0)
-		goto exit;
-
-	n = offset / sizeof(line);
-	if (n > E1000_INVM_DATA_MAX_N) {
-		ret = -EINVAL;
-		goto exit;
-	}
-
-	bnr = offset % sizeof(line);
-	if (bnr) {
-		uint8_t *bptr;
-		/*
-		 * if bnr in not zero it means we have a non 4-byte
-		 * aligned start and need to do a read-modify-write
-		 * sequence
-		 */
-
-		/* Read */
-		line = e1000_read_reg(hw, E1000_INVM_DATA(n));
-
-		/* Modify */
-		/*
-		 * We need to ensure that line is LE32 in order for
-		 * memcpy to copy byte from least significant to most
-		 * significant, since that's how i210 will write the
-		 * 32-bit word out to OTP
-		 */
-		line = cpu_to_le32(line);
-		bptr  = (uint8_t *)&line + bnr;
-		chunk = min(sizeof(line) - bnr, count);
-		memcpy(bptr, buf, chunk);
-		line = le32_to_cpu(line);
-
-		/* Jumping inside of the loop to take care of the
-		 * Write */
-		goto start_adjusted;
-	}
-
-	do {
-		if (n > E1000_INVM_DATA_MAX_N) {
-			ret = -EINVAL;
-			goto exit;
-		}
-
-		chunk = min(sizeof(line), residue);
-		if (chunk != sizeof(line)) {
-			/*
-			 * If chunk is smaller that sizeof(line), which
-			 * should be 4 bytes, we have a "dangling"
-			 * chunk and we should read the unchanged
-			 * portion of the 4-byte word from iNVM and do
-			 * a read-modify-write sequence
-			 */
-			line = e1000_read_reg(hw, E1000_INVM_DATA(n));
-		}
-
-		line = cpu_to_le32(line);
-		memcpy(&line, buf, chunk);
-		line = le32_to_cpu(line);
-
-	start_adjusted:
-		/*
-		 * iNVM is organized in 32 64-bit lines and each of
-		 * those lines can be locked to prevent any further
-		 * modification, so for every i-th 32-bit word we need
-		 * to check INVM_LINE[i/2] register to see if that word
-		 * can be modified
-		 */
-		if (e1000_read_reg(hw, E1000_INVM_LOCK(n / 2)) &
-		    E1000_INVM_LOCK_BIT) {
-			dev_err(hw->dev, "line %d is locked\n", n / 2);
-			ret = -EIO;
-			goto exit;
-		}
-
-		ret = e1000_invm_program(hw,
-					 E1000_INVM_DATA(n),
-					 line,
-					 0);
-		if (ret < 0)
-			goto exit;
-
-		residue -= chunk;
-		buf += chunk;
-		n++;
-	} while (residue);
-
-	ret = E1000_SUCCESS;
-exit:
-	e1000_invm_lock(hw);
-	return ret;
-}
-
-static struct cdev_operations e1000_invm_ops = {
-	.read	= e1000_invm_cdev_read,
-	.write	= e1000_invm_cdev_write,
-};
-
-static ssize_t e1000_eeprom_cdev_read(struct cdev *cdev, void *buf,
-				      size_t count, loff_t offset, unsigned long flags)
-{
-	struct e1000_hw *hw = container_of(cdev, struct e1000_hw, eepromcdev);
-	int32_t ret;
-
-	/*
-	 * The eeprom interface works on 16 bit words which gives a nice excuse
-	 * for being lazy and not implementing unaligned reads.
-	 */
-	if (offset & 1 || count == 1)
-		return -EIO;
-
-	ret = e1000_read_eeprom(hw, offset / 2, count / 2, buf);
-	if (ret)
-		return -EIO;
-	else
-		return (count / 2) * 2;
-};
-
-static struct cdev_operations e1000_eeprom_ops = {
-	.read = e1000_eeprom_cdev_read,
-};
-
-static int e1000_mtd_read_or_write(bool read,
-				   struct mtd_info *mtd, loff_t off, size_t len,
-				   size_t *retlen, u_char *buf)
-{
-	int ret;
-	struct e1000_hw *hw = container_of(mtd, struct e1000_hw, mtd);
-
-	DEBUGFUNC();
-
-	if (e1000_acquire_eeprom(hw) == E1000_SUCCESS) {
-		if (read)
-			ret = e1000_flash_mode_read(hw, off,
-						    len, buf);
-		else
-			ret = e1000_flash_mode_write(hw, off,
-						     len, buf);
-		if (ret == E1000_SUCCESS)
-			*retlen = len;
-
-		e1000_release_eeprom(hw);
-	} else {
-		ret = -E1000_ERR_EEPROM;
-	}
-
-	return ret;
-
-}
-
-static int e1000_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
-				 size_t *retlen, u_char *buf)
-{
-	return e1000_mtd_read_or_write(true,
-				       mtd, from, len, retlen, buf);
-}
-
-static int e1000_mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
-			   size_t *retlen, const u_char *buf)
-{
-	return e1000_mtd_read_or_write(false,
-				       mtd, to, len, retlen, (u_char *)buf);
-}
-
-static int e1000_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
-{
-	uint32_t rem;
-	struct e1000_hw *hw = container_of(mtd, struct e1000_hw, mtd);
-	int ret;
-
-	div_u64_rem(instr->len, mtd->erasesize, &rem);
-	if (rem)
-		return -EINVAL;
-
-	ret = e1000_acquire_eeprom(hw);
-	if (ret != E1000_SUCCESS)
-		goto fail;
-
-	/*
-	 * If mtd->size is 4096 it means we are dealing with
-	 * unprogrammed flash and we don't really know its size to
-	 * make an informed decision wheither to erase the whole chip or
-	 * just a number of its sectors
-	 */
-	if (mtd->size > SZ_4K &&
-	    instr->len == mtd->size)
-		ret = e1000_flash_mode_erase(hw, 0, 0);
-	else
-		ret = e1000_flash_mode_erase(hw,
-					     instr->addr, instr->len);
-
-	e1000_release_eeprom(hw);
-
-	if (ret < 0)
-		goto fail;
-
-	return 0;
-
-fail:
-	return ret;
-}
-
-static int e1000_mtd_sr_rmw(struct mtd_info *mtd, u8 mask, u8 val)
-{
-	struct e1000_hw *hw = container_of(mtd, struct e1000_hw, mtd);
-	uint32_t flswdata;
-	int ret;
-
-	ret = e1000_flash_mode_wait_for_idle(hw);
-	if (ret < 0)
-		return ret;
-
-	e1000_write_reg(hw, E1000_FLSWCNT, 1);
-	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_RDSR, 0);
-
-	ret = e1000_flash_mode_check_command_valid(hw);
-	if (ret < 0)
-		return -EIO;
-
-	ret = e1000_poll_reg(hw, E1000_FLSWCTL,
-			     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
-			     SECOND);
-	if (ret < 0) {
-		dev_err(hw->dev,
-			"Timeout waiting for FLSWCTL.DONE to be set (RDSR)\n");
-		return ret;
-	}
-
-	flswdata = e1000_read_reg(hw, E1000_FLSWDATA);
-
-	flswdata = (flswdata & ~mask) | val;
-
-	e1000_write_reg(hw, E1000_FLSWCNT, 1);
-	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_WRSR, 0);
-
-	ret = e1000_flash_mode_check_command_valid(hw);
-	if (ret < 0)
-		return -EIO;
-
-	e1000_write_reg(hw, E1000_FLSWDATA, flswdata);
-
-	ret = e1000_poll_reg(hw, E1000_FLSWCTL,
-			     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
-			     SECOND);
-	if (ret < 0) {
-		dev_err(hw->dev,
-			"Timeout waiting for FLSWCTL.DONE to be set (WRSR)\n");
-	}
-
-	return ret;
-}
-
-/*
- * The available spi nor devices are very different in how the block protection
- * bits affect which sectors to be protected. So take the simple approach and
- * only use BP[012] = b000 (unprotected) and BP[012] = b111 (protected).
- */
-#define SR_BPALL (SR_BP0 | SR_BP1 | SR_BP2)
-
-static int e1000_mtd_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
-{
-	return e1000_mtd_sr_rmw(mtd, SR_BPALL, SR_BPALL);
-}
-
-static int e1000_mtd_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
-{
-	return e1000_mtd_sr_rmw(mtd, SR_BPALL, 0x0);
-}
-
-static int e1000_register_invm(struct e1000_hw *hw)
-{
-	int ret;
-	u16 word;
-	struct param_d *p;
-
-	if (e1000_eeprom_valid(hw)) {
-		ret = e1000_read_eeprom(hw, 0x0a, 1, &word);
-		if (ret < 0)
-			return ret;
-
-		if (word & (1 << 15))
-			dev_warn(hw->dev, "iNVM lockout mechanism is active\n");
-	}
-
-	hw->invm.cdev.dev = hw->dev;
-	hw->invm.cdev.ops = &e1000_invm_ops;
-	hw->invm.cdev.priv = hw;
-	hw->invm.cdev.name = xasprintf("e1000-invm%d", hw->dev->id);
-	hw->invm.cdev.size = 4 * (E1000_INVM_DATA_MAX_N + 1);
-
-	ret = devfs_create(&hw->invm.cdev);
-	if (ret < 0)
-		return ret;
-
-	dev_set_name(&hw->invm.dev, "invm");
-	hw->invm.dev.id = hw->dev->id;
-	hw->invm.dev.parent = hw->dev;
-	ret = register_device(&hw->invm.dev);
-	if (ret < 0) {
-		devfs_remove(&hw->invm.cdev);
-		return ret;
-	}
-
-	p = dev_add_param_int(&hw->invm.dev, "lock", e1000_invm_set_lock,
-			      NULL, &hw->invm.line, "%u", hw);
-	if (IS_ERR(p)) {
-		unregister_device(&hw->invm.dev);
-		devfs_remove(&hw->invm.cdev);
-		ret = PTR_ERR(p);
-	}
-
-	return ret;
-}
-
 int e1000_eeprom_valid(struct e1000_hw *hw)
 {
 	uint32_t valid_mask = E1000_EECD_FLASH_IN_USE |
@@ -1562,95 +840,3 @@ int e1000_eeprom_valid(struct e1000_hw *hw)
 
 	return 1;
 }
-
-/*
- * This function has a wrong name for historic reasons, it doesn't add an
- * eeprom, but the flash (if available) that is used to simulate the eeprom.
- * Also a device that represents the invm is registered here (if available).
- */
-int e1000_register_eeprom(struct e1000_hw *hw)
-{
-	struct e1000_eeprom_info *eeprom = &hw->eeprom;
-	uint32_t eecd;
-	int ret;
-
-	if (hw->mac_type != e1000_igb)
-		return E1000_SUCCESS;
-
-	eecd = e1000_read_reg(hw, E1000_EECD);
-
-	if (eecd & E1000_EECD_AUTO_RD) {
-		if (eecd & E1000_EECD_EE_PRES) {
-			if (eecd & E1000_EECD_FLASH_IN_USE) {
-				uint32_t fla = e1000_read_reg(hw, E1000_FLA);
-				dev_info(hw->dev,
-					 "Hardware programmed from flash (%ssecure)\n",
-					 fla & E1000_FLA_LOCKED ? "" : "un");
-			} else {
-				dev_info(hw->dev, "Hardware programmed from iNVM\n");
-			}
-		} else {
-			dev_warn(hw->dev, "Shadow RAM invalid\n");
-		}
-	} else {
-		/*
-		 * I never saw this case in practise and I'm unsure how
-		 * to handle that. Maybe just wait until the hardware is
-		 * up enough that this bit is set?
-		 */
-		dev_err(hw->dev, "Flash Auto-Read not done\n");
-	}
-
-	if (e1000_eeprom_valid(hw)) {
-		hw->eepromcdev.dev = hw->dev;
-		hw->eepromcdev.ops = &e1000_eeprom_ops;
-		hw->eepromcdev.name = xasprintf("e1000-eeprom%d",
-						hw->dev->id);
-		hw->eepromcdev.size = 0x1000;
-
-		ret = devfs_create(&hw->eepromcdev);
-		if (ret < 0)
-			return ret;
-	}
-
-	if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
-		hw->mtd.dev.parent = hw->dev;
-		hw->mtd._read = e1000_mtd_read;
-		hw->mtd._write = e1000_mtd_write;
-		hw->mtd._erase = e1000_mtd_erase;
-		hw->mtd._lock = e1000_mtd_lock;
-		hw->mtd._unlock = e1000_mtd_unlock;
-		hw->mtd.size = eeprom->word_size * 2;
-		hw->mtd.writesize = 1;
-		hw->mtd.subpage_sft = 0;
-
-		hw->mtd.eraseregions = xzalloc(sizeof(struct mtd_erase_region_info));
-		hw->mtd.erasesize = SZ_4K;
-		hw->mtd.eraseregions[0].erasesize = SZ_4K;
-		hw->mtd.eraseregions[0].numblocks = hw->mtd.size / SZ_4K;
-		hw->mtd.numeraseregions = 1;
-
-		hw->mtd.flags = MTD_CAP_NORFLASH;
-		hw->mtd.type = MTD_NORFLASH;
-
-		ret = add_mtd_device(&hw->mtd, "e1000-nor",
-				     DEVICE_ID_DYNAMIC);
-		if (ret)
-			goto out_eeprom;
-	}
-
-	ret = e1000_register_invm(hw);
-	if (ret < 0)
-		goto out_mtd;
-
-	return E1000_SUCCESS;
-
-out_mtd:
-	if (eecd & E1000_EECD_I210_FLASH_DETECTED)
-		del_mtd_device(&hw->mtd);
-out_eeprom:
-	if (e1000_eeprom_valid(hw))
-		devfs_remove(&hw->eepromcdev);
-
-	return ret;
-}
diff --git a/drivers/net/e1000/mtd.c b/drivers/net/e1000/mtd.c
new file mode 100644
index 000000000000..93595cc88d24
--- /dev/null
+++ b/drivers/net/e1000/mtd.c
@@ -0,0 +1,835 @@
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <linux/math64.h>
+#include <linux/sizes.h>
+#include <of_device.h>
+#include <linux/pci.h>
+#include <linux/mtd/spi-nor.h>
+
+#include "e1000.h"
+
+static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
+{
+	if (hw->eeprom.acquire)
+		return hw->eeprom.acquire(hw);
+	else
+		return E1000_SUCCESS;
+}
+
+static void e1000_release_eeprom(struct e1000_hw *hw)
+{
+	if (hw->eeprom.release)
+		hw->eeprom.release(hw);
+}
+
+static int e1000_flash_mode_wait_for_idle(struct e1000_hw *hw)
+{
+	const int ret = e1000_poll_reg(hw, E1000_FLSWCTL, E1000_FLSWCTL_DONE,
+				       E1000_FLSWCTL_DONE, SECOND);
+	if (ret < 0)
+		dev_err(hw->dev,
+			"Timeout waiting for FLSWCTL.DONE to be set (wait)\n");
+	return ret;
+}
+
+static int e1000_flash_mode_check_command_valid(struct e1000_hw *hw)
+{
+	const uint32_t flswctl = e1000_read_reg(hw, E1000_FLSWCTL);
+	if (!(flswctl & E1000_FLSWCTL_CMDV)) {
+		dev_err(hw->dev, "FLSWCTL.CMDV was cleared\n");
+		return -EIO;
+	}
+
+	return E1000_SUCCESS;
+}
+
+static void e1000_flash_cmd(struct e1000_hw *hw,
+			    uint32_t cmd, uint32_t offset)
+{
+	uint32_t flswctl = e1000_read_reg(hw, E1000_FLSWCTL);
+	flswctl &= ~E1000_FLSWCTL_CMD_ADDR_MASK;
+	flswctl |= E1000_FLSWCTL_CMD(cmd) | E1000_FLSWCTL_ADDR(offset);
+	e1000_write_reg(hw, E1000_FLSWCTL, flswctl);
+}
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
+	e1000_write_reg(hw, E1000_FLSWCNT, size);
+	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_READ, offset);
+
+	do {
+		ret = e1000_flash_mode_check_command_valid(hw);
+		if (ret < 0)
+			return -EIO;
+
+		chunk = min(sizeof(flswdata), residue);
+
+		ret = e1000_poll_reg(hw, E1000_FLSWCTL,
+				     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
+				     SECOND);
+		if (ret < 0) {
+			dev_err(hw->dev,
+				"Timeout waiting for FLSWCTL.DONE to be set (read)\n");
+			return ret;
+		}
+
+		flswdata = e1000_read_reg(hw, E1000_FLSWDATA);
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
+	e1000_write_reg(hw, E1000_FLSWCNT, size);
+	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_WRITE, offset);
+
+	do {
+		chunk = min(sizeof(flswdata), residue);
+		memcpy(&flswdata, data, chunk);
+		/*
+		 * writel does cpu_to_le32, so we do the inverse in
+		 * order to account for that
+		 */
+		flswdata = le32_to_cpu(flswdata);
+		e1000_write_reg(hw, E1000_FLSWDATA, flswdata);
+
+		ret = e1000_flash_mode_check_command_valid(hw);
+		if (ret < 0)
+			return -EIO;
+
+		ret = e1000_poll_reg(hw, E1000_FLSWCTL,
+				     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
+				     SECOND);
+		if (ret < 0) {
+			dev_err(hw->dev,
+				"Timeout waiting for FLSWCTL.DONE to be set (write)\n");
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
+		e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_ERASE_DEVICE, 0);
+	else
+		e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_ERASE_SECTOR, offset);
+
+	ret = e1000_flash_mode_check_command_valid(hw);
+	if (ret < 0)
+		return -EIO;
+
+	ret = e1000_poll_reg(hw, E1000_FLSWCTL,
+			     E1000_FLSWCTL_DONE | E1000_FLSWCTL_FLBUSY,
+			     E1000_FLSWCTL_DONE,
+			     40 * SECOND);
+	if (ret < 0) {
+		dev_err(hw->dev,
+			"Timeout waiting for FLSWCTL.DONE to be set (erase)\n");
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
+	ret = e1000_poll_reg(hw, E1000_FLSWCTL,
+			     E1000_FLSWCTL_FLBUSY,
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
+static ssize_t e1000_invm_cdev_read(struct cdev *cdev, void *buf,
+				    size_t count, loff_t offset, unsigned long flags)
+{
+	uint8_t n, bnr;
+	uint32_t line;
+	size_t chunk, residue = count;
+	struct e1000_hw *hw = container_of(cdev, struct e1000_hw, invm.cdev);
+
+	n = offset / sizeof(line);
+	if (n > E1000_INVM_DATA_MAX_N)
+		return -EINVAL;
+
+	bnr = offset % sizeof(line);
+	if (bnr) {
+		/*
+		 * if bnr in not zero it means we have a non 4-byte
+		 * aligned start and need to do a partial read
+		 */
+		const uint8_t *bptr;
+
+		bptr  = (uint8_t *)&line + bnr;
+		chunk = min(bnr - sizeof(line), count);
+		line  = e1000_read_reg(hw, E1000_INVM_DATA(n));
+		line  = cpu_to_le32(line); /* to account for readl */
+		memcpy(buf, bptr, chunk);
+
+		goto start_adjusted;
+	}
+
+	do {
+		if (n > E1000_INVM_DATA_MAX_N)
+			return -EINVAL;
+
+		chunk = min(sizeof(line), residue);
+		line = e1000_read_reg(hw, E1000_INVM_DATA(n));
+		line = cpu_to_le32(line); /* to account for readl */
+
+		/*
+		 * by using memcpy in conjunction with min should get
+		 * dangling tail reads as well as aligned reads
+		 */
+		memcpy(buf, &line, chunk);
+
+	start_adjusted:
+		residue -= chunk;
+		buf += chunk;
+		n++;
+	} while (residue);
+
+	return count;
+}
+
+static int e1000_invm_program(struct e1000_hw *hw, u32 offset, u32 value,
+			      unsigned int delay)
+{
+	int retries = 400;
+	do {
+		if ((e1000_read_reg(hw, offset) & value) == value)
+			return E1000_SUCCESS;
+
+		e1000_write_reg(hw, offset, value);
+
+		if (delay) {
+			udelay(delay);
+		} else {
+			int ret;
+
+			if (e1000_read_reg(hw, E1000_INVM_PROTECT) &
+			    E1000_INVM_PROTECT_WRITE_ERROR) {
+				dev_err(hw->dev, "Error while writing to %x\n", offset);
+				return -EIO;
+			}
+
+			ret = e1000_poll_reg(hw, E1000_INVM_PROTECT,
+					     E1000_INVM_PROTECT_BUSY,
+					     0,  SECOND);
+			if (ret < 0) {
+				dev_err(hw->dev,
+					"Timeout while waiting for INVM_PROTECT.BUSY\n");
+				return ret;
+			}
+		}
+	} while (retries--);
+
+	return -ETIMEDOUT;
+}
+
+static int e1000_invm_set_lock(struct param_d *param, void *priv)
+{
+	struct e1000_hw *hw = priv;
+
+	if (hw->invm.line > 31)
+		return -EINVAL;
+
+	return e1000_invm_program(hw,
+				  E1000_INVM_LOCK(hw->invm.line),
+				  E1000_INVM_LOCK_BIT,
+				  10);
+}
+
+static int e1000_invm_unlock(struct e1000_hw *hw)
+{
+	e1000_write_reg(hw, E1000_INVM_PROTECT, E1000_INVM_PROTECT_CODE);
+	/*
+	 * If we were successful at unlocking iNVM for programming we
+	 * should see ALLOW_WRITE bit toggle to 1
+	 */
+	if (!(e1000_read_reg(hw, E1000_INVM_PROTECT) &
+	      E1000_INVM_PROTECT_ALLOW_WRITE))
+		return -EIO;
+	else
+		return E1000_SUCCESS;
+}
+
+static void e1000_invm_lock(struct e1000_hw *hw)
+{
+	e1000_write_reg(hw, E1000_INVM_PROTECT, 0);
+}
+
+static int e1000_invm_write_prepare(struct e1000_hw *hw)
+{
+	int ret;
+	/*
+	 * This needs to be done accorging to the datasheet p. 541 and
+	 * p. 79
+	*/
+	e1000_write_reg(hw, E1000_PCIEMISC,
+			E1000_PCIEMISC_RESERVED_PATTERN1 |
+			E1000_PCIEMISC_DMA_IDLE          |
+			E1000_PCIEMISC_RESERVED_PATTERN2);
+
+	/*
+	 * Needed for programming iNVM on devices with Flash with valid
+	 * contents attached
+	 */
+	ret = e1000_poll_reg(hw, E1000_EEMNGCTL,
+			     E1000_EEMNGCTL_CFG_DONE,
+			     E1000_EEMNGCTL_CFG_DONE, SECOND);
+	if (ret < 0) {
+		dev_err(hw->dev,
+			"Timeout while waiting for EEMNGCTL.CFG_DONE\n");
+		return ret;
+	}
+
+	udelay(15);
+
+	return E1000_SUCCESS;
+}
+
+static ssize_t e1000_invm_cdev_write(struct cdev *cdev, const void *buf,
+				     size_t count, loff_t offset, unsigned long flags)
+{
+	int ret;
+	uint8_t n, bnr;
+	uint32_t line;
+	size_t chunk, residue = count;
+	struct e1000_hw *hw = container_of(cdev, struct e1000_hw, invm.cdev);
+
+	ret = e1000_invm_write_prepare(hw);
+	if (ret < 0)
+		return ret;
+
+	ret = e1000_invm_unlock(hw);
+	if (ret < 0)
+		goto exit;
+
+	n = offset / sizeof(line);
+	if (n > E1000_INVM_DATA_MAX_N) {
+		ret = -EINVAL;
+		goto exit;
+	}
+
+	bnr = offset % sizeof(line);
+	if (bnr) {
+		uint8_t *bptr;
+		/*
+		 * if bnr in not zero it means we have a non 4-byte
+		 * aligned start and need to do a read-modify-write
+		 * sequence
+		 */
+
+		/* Read */
+		line = e1000_read_reg(hw, E1000_INVM_DATA(n));
+
+		/* Modify */
+		/*
+		 * We need to ensure that line is LE32 in order for
+		 * memcpy to copy byte from least significant to most
+		 * significant, since that's how i210 will write the
+		 * 32-bit word out to OTP
+		 */
+		line = cpu_to_le32(line);
+		bptr  = (uint8_t *)&line + bnr;
+		chunk = min(sizeof(line) - bnr, count);
+		memcpy(bptr, buf, chunk);
+		line = le32_to_cpu(line);
+
+		/* Jumping inside of the loop to take care of the
+		 * Write */
+		goto start_adjusted;
+	}
+
+	do {
+		if (n > E1000_INVM_DATA_MAX_N) {
+			ret = -EINVAL;
+			goto exit;
+		}
+
+		chunk = min(sizeof(line), residue);
+		if (chunk != sizeof(line)) {
+			/*
+			 * If chunk is smaller that sizeof(line), which
+			 * should be 4 bytes, we have a "dangling"
+			 * chunk and we should read the unchanged
+			 * portion of the 4-byte word from iNVM and do
+			 * a read-modify-write sequence
+			 */
+			line = e1000_read_reg(hw, E1000_INVM_DATA(n));
+		}
+
+		line = cpu_to_le32(line);
+		memcpy(&line, buf, chunk);
+		line = le32_to_cpu(line);
+
+	start_adjusted:
+		/*
+		 * iNVM is organized in 32 64-bit lines and each of
+		 * those lines can be locked to prevent any further
+		 * modification, so for every i-th 32-bit word we need
+		 * to check INVM_LINE[i/2] register to see if that word
+		 * can be modified
+		 */
+		if (e1000_read_reg(hw, E1000_INVM_LOCK(n / 2)) &
+		    E1000_INVM_LOCK_BIT) {
+			dev_err(hw->dev, "line %d is locked\n", n / 2);
+			ret = -EIO;
+			goto exit;
+		}
+
+		ret = e1000_invm_program(hw,
+					 E1000_INVM_DATA(n),
+					 line,
+					 0);
+		if (ret < 0)
+			goto exit;
+
+		residue -= chunk;
+		buf += chunk;
+		n++;
+	} while (residue);
+
+	ret = E1000_SUCCESS;
+exit:
+	e1000_invm_lock(hw);
+	return ret;
+}
+
+static struct cdev_operations e1000_invm_ops = {
+	.read	= e1000_invm_cdev_read,
+	.write	= e1000_invm_cdev_write,
+};
+
+static ssize_t e1000_eeprom_cdev_read(struct cdev *cdev, void *buf,
+				      size_t count, loff_t offset, unsigned long flags)
+{
+	struct e1000_hw *hw = container_of(cdev, struct e1000_hw, eepromcdev);
+	int32_t ret;
+
+	/*
+	 * The eeprom interface works on 16 bit words which gives a nice excuse
+	 * for being lazy and not implementing unaligned reads.
+	 */
+	if (offset & 1 || count == 1)
+		return -EIO;
+
+	ret = e1000_read_eeprom(hw, offset / 2, count / 2, buf);
+	if (ret)
+		return -EIO;
+	else
+		return (count / 2) * 2;
+};
+
+static struct cdev_operations e1000_eeprom_ops = {
+	.read = e1000_eeprom_cdev_read,
+};
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
+	return 0;
+
+fail:
+	return ret;
+}
+
+static int e1000_mtd_sr_rmw(struct mtd_info *mtd, u8 mask, u8 val)
+{
+	struct e1000_hw *hw = container_of(mtd, struct e1000_hw, mtd);
+	uint32_t flswdata;
+	int ret;
+
+	ret = e1000_flash_mode_wait_for_idle(hw);
+	if (ret < 0)
+		return ret;
+
+	e1000_write_reg(hw, E1000_FLSWCNT, 1);
+	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_RDSR, 0);
+
+	ret = e1000_flash_mode_check_command_valid(hw);
+	if (ret < 0)
+		return -EIO;
+
+	ret = e1000_poll_reg(hw, E1000_FLSWCTL,
+			     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
+			     SECOND);
+	if (ret < 0) {
+		dev_err(hw->dev,
+			"Timeout waiting for FLSWCTL.DONE to be set (RDSR)\n");
+		return ret;
+	}
+
+	flswdata = e1000_read_reg(hw, E1000_FLSWDATA);
+
+	flswdata = (flswdata & ~mask) | val;
+
+	e1000_write_reg(hw, E1000_FLSWCNT, 1);
+	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_WRSR, 0);
+
+	ret = e1000_flash_mode_check_command_valid(hw);
+	if (ret < 0)
+		return -EIO;
+
+	e1000_write_reg(hw, E1000_FLSWDATA, flswdata);
+
+	ret = e1000_poll_reg(hw, E1000_FLSWCTL,
+			     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
+			     SECOND);
+	if (ret < 0) {
+		dev_err(hw->dev,
+			"Timeout waiting for FLSWCTL.DONE to be set (WRSR)\n");
+	}
+
+	return ret;
+}
+
+/*
+ * The available spi nor devices are very different in how the block protection
+ * bits affect which sectors to be protected. So take the simple approach and
+ * only use BP[012] = b000 (unprotected) and BP[012] = b111 (protected).
+ */
+#define SR_BPALL (SR_BP0 | SR_BP1 | SR_BP2)
+
+static int e1000_mtd_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
+{
+	return e1000_mtd_sr_rmw(mtd, SR_BPALL, SR_BPALL);
+}
+
+static int e1000_mtd_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
+{
+	return e1000_mtd_sr_rmw(mtd, SR_BPALL, 0x0);
+}
+
+static int e1000_register_invm(struct e1000_hw *hw)
+{
+	int ret;
+	u16 word;
+	struct param_d *p;
+
+	if (e1000_eeprom_valid(hw)) {
+		ret = e1000_read_eeprom(hw, 0x0a, 1, &word);
+		if (ret < 0)
+			return ret;
+
+		if (word & (1 << 15))
+			dev_warn(hw->dev, "iNVM lockout mechanism is active\n");
+	}
+
+	hw->invm.cdev.dev = hw->dev;
+	hw->invm.cdev.ops = &e1000_invm_ops;
+	hw->invm.cdev.priv = hw;
+	hw->invm.cdev.name = xasprintf("e1000-invm%d", hw->dev->id);
+	hw->invm.cdev.size = 4 * (E1000_INVM_DATA_MAX_N + 1);
+
+	ret = devfs_create(&hw->invm.cdev);
+	if (ret < 0)
+		return ret;
+
+	dev_set_name(&hw->invm.dev, "invm");
+	hw->invm.dev.id = hw->dev->id;
+	hw->invm.dev.parent = hw->dev;
+	ret = register_device(&hw->invm.dev);
+	if (ret < 0) {
+		devfs_remove(&hw->invm.cdev);
+		return ret;
+	}
+
+	p = dev_add_param_int(&hw->invm.dev, "lock", e1000_invm_set_lock,
+			      NULL, &hw->invm.line, "%u", hw);
+	if (IS_ERR(p)) {
+		unregister_device(&hw->invm.dev);
+		devfs_remove(&hw->invm.cdev);
+		ret = PTR_ERR(p);
+	}
+
+	return ret;
+}
+
+/*
+ * This function has a wrong name for historic reasons, it doesn't add an
+ * eeprom, but the flash (if available) that is used to simulate the eeprom.
+ * Also a device that represents the invm is registered here (if available).
+ */
+int e1000_register_eeprom(struct e1000_hw *hw)
+{
+	struct e1000_eeprom_info *eeprom = &hw->eeprom;
+	uint32_t eecd;
+	int ret;
+
+	if (hw->mac_type != e1000_igb)
+		return E1000_SUCCESS;
+
+	eecd = e1000_read_reg(hw, E1000_EECD);
+
+	if (eecd & E1000_EECD_AUTO_RD) {
+		if (eecd & E1000_EECD_EE_PRES) {
+			if (eecd & E1000_EECD_FLASH_IN_USE) {
+				uint32_t fla = e1000_read_reg(hw, E1000_FLA);
+				dev_info(hw->dev,
+					 "Hardware programmed from flash (%ssecure)\n",
+					 fla & E1000_FLA_LOCKED ? "" : "un");
+			} else {
+				dev_info(hw->dev, "Hardware programmed from iNVM\n");
+			}
+		} else {
+			dev_warn(hw->dev, "Shadow RAM invalid\n");
+		}
+	} else {
+		/*
+		 * I never saw this case in practise and I'm unsure how
+		 * to handle that. Maybe just wait until the hardware is
+		 * up enough that this bit is set?
+		 */
+		dev_err(hw->dev, "Flash Auto-Read not done\n");
+	}
+
+	if (e1000_eeprom_valid(hw)) {
+		hw->eepromcdev.dev = hw->dev;
+		hw->eepromcdev.ops = &e1000_eeprom_ops;
+		hw->eepromcdev.name = xasprintf("e1000-eeprom%d",
+						hw->dev->id);
+		hw->eepromcdev.size = 0x1000;
+
+		ret = devfs_create(&hw->eepromcdev);
+		if (ret < 0)
+			return ret;
+	}
+
+	if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
+		hw->mtd.dev.parent = hw->dev;
+		hw->mtd._read = e1000_mtd_read;
+		hw->mtd._write = e1000_mtd_write;
+		hw->mtd._erase = e1000_mtd_erase;
+		hw->mtd._lock = e1000_mtd_lock;
+		hw->mtd._unlock = e1000_mtd_unlock;
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
+		if (ret)
+			goto out_eeprom;
+	}
+
+	ret = e1000_register_invm(hw);
+	if (ret < 0)
+		goto out_mtd;
+
+	return E1000_SUCCESS;
+
+out_mtd:
+	if (eecd & E1000_EECD_I210_FLASH_DETECTED)
+		del_mtd_device(&hw->mtd);
+out_eeprom:
+	if (e1000_eeprom_valid(hw))
+		devfs_remove(&hw->eepromcdev);
+
+	return ret;
+}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

