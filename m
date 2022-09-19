Delivery-date: Mon, 19 Sep 2022 10:03:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkt-009OJm-1k
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkp-0000sq-Ek
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iyBCK8F6OwNRGZQcO0U9AHnTchuW274VyojZIrUDMi8=; b=mWiJRT8Ef1oAxZLQXh0Et4xks+
	2ErQZgqz76E9C9EWrVAKo9E3NloSvv69dM9NZwRIdEJl/JqeiLnHZfF3HwNM4y/MLf4Pr2xikNSsE
	bD18/J2qmTk4+APjVBcdJryoSs9vXlHtV4Dt/Lt3yCB7NIvN/VZKyWCMwL7ANl/fAZrXz7ScZzRkH
	uHDcYqrmvRcMIZUIK5dc2AoXPk/J+cbOq6CzYAx6zbDhZePR16HA4JqWuNgBwLUMK8vA+JGREWnMU
	f9nqFYGJUzJR46EqcGIAHH2KG6w8wZAZ2WZMPxeYd6GR25H7xLV933FDTosniRApkGz/XvZx+x/z+
	UOofHCkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBjM-009gGx-4K; Mon, 19 Sep 2022 08:02:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fP3-40
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008LO-Qj; Mon, 19 Sep 2022 10:01:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBij-001cXd-Gj; Mon, 19 Sep 2022 10:01:36 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003gfG-II; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:33 +0200
Message-Id: <20220919080133.877651-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919080133.877651-1-s.hauer@pengutronix.de>
References: <20220919080133.877651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_540690_6D74980E 
X-CRM114-Status: GOOD (  26.54  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] net: remove altera_tse driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver is unused throughout the tree and isn't compiled in any
defconfig. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/Kconfig      |  16 --
 drivers/net/Makefile     |   1 -
 drivers/net/altera_tse.c | 563 ---------------------------------------
 drivers/net/altera_tse.h | 296 --------------------
 4 files changed, 876 deletions(-)
 delete mode 100644 drivers/net/altera_tse.c
 delete mode 100644 drivers/net/altera_tse.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 27d0c4ec8b..84a01c5328 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -283,22 +283,6 @@ config DRIVER_NET_AG71XX
 	help
 	  This option enables support for Atheros AG71XX ethernet chip.
 
-config DRIVER_NET_TSE
-	depends on NIOS2
-	bool "Altera TSE ethernet driver"
-	select PHYLIB
-	help
-	  This option enables support for the Altera TSE MAC.
-
-config TSE_USE_DEDICATED_DESC_MEM
-	depends on DRIVER_NET_TSE
-	bool "Altera TSE uses dedicated descriptor memory"
-	help
-	  This option tells the TSE driver to use an onchip memory
-	  to store SGDMA descriptors. Descriptor memory is not
-	  reserved with a malloc but directly mapped to the memory
-	  address (defined in config.h)
-
 config DRIVER_NET_LITEETH
 	bool "LiteX ethernet driver"
 	select PHYLIB
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index a3eb10d1df..47ad749943 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -39,7 +39,6 @@ obj-$(CONFIG_DRIVER_NET_SJA1105)	+= sja1105.o
 obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
 obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
 obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
-obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
 obj-$(CONFIG_DRIVER_NET_EFI_SNP)	+= efi-snp.o
 obj-$(CONFIG_DRIVER_NET_VIRTIO)		+= virtio.o
 obj-$(CONFIG_DRIVER_NET_AG71XX)		+= ag71xx.o
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
deleted file mode 100644
index f1dfe5952c..0000000000
--- a/drivers/net/altera_tse.c
+++ /dev/null
@@ -1,563 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Altera TSE Network driver
- *
- * Copyright (C) 2008 Altera Corporation.
- * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
- * Copyright (C) 2011 Franck JULLIEN, <elec4fun@gmail.com>
- */
-
-#include <common.h>
-#include <dma.h>
-#include <net.h>
-#include <init.h>
-#include <clock.h>
-#include <linux/mii.h>
-#include <linux/phy.h>
-#include <linux/err.h>
-
-#include <io.h>
-#include <asm/dma-mapping.h>
-
-#include "altera_tse.h"
-
-/* This is a generic routine that the SGDMA mode-specific routines
- * call to populate a descriptor.
- * arg1     :pointer to first SGDMA descriptor.
- * arg2     :pointer to next  SGDMA descriptor.
- * arg3     :Address to where data to be written.
- * arg4     :Address from where data to be read.
- * arg5     :no of byte to transaction.
- * arg6     :variable indicating to generate start of packet or not
- * arg7     :read fixed
- * arg8     :write fixed
- * arg9     :read burst
- * arg10    :write burst
- * arg11    :atlantic_channel number
- */
-static void alt_sgdma_construct_descriptor_burst(
-	struct alt_sgdma_descriptor *desc,
-	struct alt_sgdma_descriptor *next,
-	uint32_t *read_addr,
-	uint32_t *write_addr,
-	uint16_t length_or_eop,
-	uint8_t generate_eop,
-	uint8_t read_fixed,
-	uint8_t write_fixed_or_sop,
-	uint8_t read_burst,
-	uint8_t write_burst,
-	uint8_t atlantic_channel)
-{
-	uint32_t temp;
-
-	/*
-	 * Mark the "next" descriptor as "not" owned by hardware. This prevents
-	 * The SGDMA controller from continuing to process the chain. This is
-	 * done as a single IO write to bypass cache, without flushing
-	 * the entire descriptor, since only the 8-bit descriptor status must
-	 * be flushed.
-	 */
-	if (!next)
-		printf("Next descriptor not defined!!\n");
-
-	temp = readb(&next->descriptor_control);
-	writeb(temp & ~ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK,
-		&next->descriptor_control);
-
-	writel((uint32_t)read_addr, &desc->source);
-	writel((uint32_t)write_addr, &desc->destination);
-	writel((uint32_t)next, &desc->next);
-
-	writel(0, &desc->source_pad);
-	writel(0, &desc->destination_pad);
-	writel(0, &desc->next_pad);
-	writew(length_or_eop, &desc->bytes_to_transfer);
-	writew(0, &desc->actual_bytes_transferred);
-	writeb(0, &desc->descriptor_status);
-
-	/* SGDMA burst not currently supported */
-	writeb(0, &desc->read_burst);
-	writeb(0, &desc->write_burst);
-
-	/*
-	 * Set the descriptor control block as follows:
-	 * - Set "owned by hardware" bit
-	 * - Optionally set "generate EOP" bit
-	 * - Optionally set the "read from fixed address" bit
-	 * - Optionally set the "write to fixed address bit (which serves
-	 *   serves as a "generate SOP" control bit in memory-to-stream mode).
-	 * - Set the 4-bit atlantic channel, if specified
-	 *
-	 * Note this step is performed after all other descriptor information
-	 * has been filled out so that, if the controller already happens to be
-	 * pointing at this descriptor, it will not run (via the "owned by
-	 * hardware" bit) until all other descriptor has been set up.
-	 */
-
-	writeb((ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK) |
-		(generate_eop ? ALT_SGDMA_DESCRIPTOR_CONTROL_GENERATE_EOP_MSK : 0) |
-		(read_fixed ? ALT_SGDMA_DESCRIPTOR_CONTROL_READ_FIXED_ADDRESS_MSK : 0) |
-		(write_fixed_or_sop ? ALT_SGDMA_DESCRIPTOR_CONTROL_WRITE_FIXED_ADDRESS_MSK : 0) |
-		(atlantic_channel ? ((atlantic_channel & 0x0F) << 3) : 0),
-		&desc->descriptor_control);
-}
-
-static int alt_sgdma_do_sync_transfer(struct alt_sgdma_registers *dev,
-					struct alt_sgdma_descriptor *desc)
-{
-	uint32_t temp;
-	uint64_t start;
-	uint64_t tout;
-
-	/* Wait for any pending transfers to complete */
-	tout = ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;
-
-	start = get_time_ns();
-
-	while (readl(&dev->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
-		if (is_timeout(start, tout)) {
-			debug("Timeout waiting sgdma in do sync!\n");
-			break;
-		}
-	}
-
-	/*
-	 * Clear any (previous) status register information
-	 * that might occlude our error checking later.
-	 */
-	writel(0xFF, &dev->status);
-
-	/* Point the controller at the descriptor */
-	writel((uint32_t)desc, &dev->next_descriptor_pointer);
-	debug("next desc in sgdma 0x%x\n", (uint32_t)dev->next_descriptor_pointer);
-
-	/*
-	 * Set up SGDMA controller to:
-	 * - Disable interrupt generation
-	 * - Run once a valid descriptor is written to controller
-	 * - Stop on an error with any particular descriptor
-	 */
-	writel(ALT_SGDMA_CONTROL_RUN_MSK | ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK,
-		&dev->control);
-
-	/* Wait for the descriptor (chain) to complete */
-	debug("wait for sgdma....");
-	start = get_time_ns();
-
-	while (readl(&dev->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
-		if (is_timeout(start, tout)) {
-			debug("Timeout waiting sgdma in do sync!\n");
-			break;
-		}
-	}
-
-	debug("done\n");
-
-	/* Clear Run */
-	temp = readl(&dev->control);
-	writel(temp & ~ALT_SGDMA_CONTROL_RUN_MSK, &dev->control);
-
-	/* Get & clear status register contents */
-	debug("tx sgdma status = 0x%x", readl(&dev->status));
-	writel(0xFF, &dev->status);
-
-	return 0;
-}
-
-static int alt_sgdma_do_async_transfer(struct alt_sgdma_registers *dev,
-					struct alt_sgdma_descriptor *desc)
-{
-	uint64_t start;
-	uint64_t tout;
-
-	/* Wait for any pending transfers to complete */
-	tout = ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;
-
-	start = get_time_ns();
-
-	while (readl(&dev->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
-		if (is_timeout(start, tout)) {
-			debug("Timeout waiting sgdma in do async!\n");
-			break;
-		}
-	}
-
-	/*
-	 * Clear any (previous) status register information
-	 * that might occlude our error checking later.
-	 */
-	writel(0xFF, &dev->status);
-
-	/* Point the controller at the descriptor */
-	writel((uint32_t)desc, &dev->next_descriptor_pointer);
-
-	/*
-	 * Set up SGDMA controller to:
-	 * - Disable interrupt generation
-	 * - Run once a valid descriptor is written to controller
-	 * - Stop on an error with any particular descriptor
-	 */
-	writel(ALT_SGDMA_CONTROL_RUN_MSK | ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK,
-		&dev->control);
-
-	return 0;
-}
-
-static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)
-{
-	struct altera_tse_priv *priv = edev->priv;
-	struct alt_tse_mac *mac_dev = priv->tse_regs;
-
-	m[5] = (readl(&mac_dev->mac_addr_1) >> 8)  && 0xFF;
-	m[4] = (readl(&mac_dev->mac_addr_1))       && 0xFF;
-	m[3] = (readl(&mac_dev->mac_addr_0) >> 24) && 0xFF;
-	m[2] = (readl(&mac_dev->mac_addr_0) >> 16) && 0xFF;
-	m[1] = (readl(&mac_dev->mac_addr_0) >>  8) && 0xFF;
-	m[0] = (readl(&mac_dev->mac_addr_0))       && 0xFF;
-
-	return 0;
-}
-
-static int tse_set_ethaddr(struct eth_device *edev, const unsigned char *m)
-{
-	struct altera_tse_priv *priv = edev->priv;
-	struct alt_tse_mac *mac_dev = priv->tse_regs;
-
-	debug("Setting MAC address to %02x:%02x:%02x:%02x:%02x:%02x\n",
-		m[0], m[1], m[2], m[3], m[4], m[5]);
-
-	writel(m[3] << 24 | m[2] << 16 | m[1] << 8 | m[0], &mac_dev->mac_addr_0);
-	writel((m[5] << 8 | m[4]) & 0xFFFF, &mac_dev->mac_addr_1);
-
-	return 0;
-}
-
-static int tse_phy_read(struct mii_bus *bus, int phy_addr, int reg)
-{
-	struct altera_tse_priv *priv = bus->priv;
-	struct alt_tse_mac *mac_dev = priv->tse_regs;
-	uint32_t *mdio_regs;
-
-	writel(phy_addr, &mac_dev->mdio_phy1_addr);
-
-	mdio_regs = (uint32_t *)&mac_dev->mdio_phy1;
-
-	return readl(&mdio_regs[reg]) & 0xFFFF;
-}
-
-static int tse_phy_write(struct mii_bus *bus, int phy_addr, int reg, u16 val)
-{
-	struct altera_tse_priv *priv = bus->priv;
-	struct alt_tse_mac *mac_dev = priv->tse_regs;
-	uint32_t *mdio_regs;
-
-	writel(phy_addr, &mac_dev->mdio_phy1_addr);
-
-	mdio_regs = (uint32_t *)&mac_dev->mdio_phy1;
-
-	writel((uint32_t)val, &mdio_regs[reg]);
-
-	return 0;
-}
-
-static void tse_reset(struct eth_device *edev)
-{
-	/* stop sgdmas, disable tse receive */
-	struct altera_tse_priv *priv = edev->priv;
-	struct alt_tse_mac *mac_dev = priv->tse_regs;
-	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx_regs;
-	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx_regs;
-	struct alt_sgdma_descriptor *rx_desc = priv->rx_desc;
-	struct alt_sgdma_descriptor *tx_desc = priv->tx_desc;
-	uint64_t start;
-	uint64_t tout;
-
-	tout = ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;
-
-	/* clear rx desc & wait for sgdma to complete */
-	writeb(0, &rx_desc->descriptor_control);
-	writel(0, &rx_sgdma->control);
-
-	writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
-	writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
-	mdelay(100);
-
-	start = get_time_ns();
-
-	while (readl(&rx_sgdma->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
-		if (is_timeout(start, tout)) {
-			printf("Timeout waiting for rx sgdma!\n");
-			writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
-			writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
-			break;
-		}
-	}
-
-	/* clear tx desc & wait for sgdma to complete */
-	writeb(0, &tx_desc->descriptor_control);
-	writel(0, &tx_sgdma->control);
-
-	writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
-	writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
-	mdelay(100);
-
-	start = get_time_ns();
-
-	while (readl(&tx_sgdma->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
-		if (is_timeout(start, tout)) {
-			printf("Timeout waiting for tx sgdma!\n");
-			writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
-			writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
-			break;
-		}
-	}
-
-	/* reset the mac */
-	writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK |
-		ALTERA_TSE_CMD_SW_RESET_MSK, &mac_dev->command_config);
-
-	start = get_time_ns();
-	tout = ALT_TSE_SW_RESET_WATCHDOG_TOUT * MSECOND;
-
-	while (readl(&mac_dev->command_config) & ALTERA_TSE_CMD_SW_RESET_MSK) {
-		if (is_timeout(start, tout)) {
-			printf("TSEMAC SW reset bit never cleared!\n");
-			break;
-		}
-	}
-}
-
-static int tse_eth_open(struct eth_device *edev)
-{
-	struct altera_tse_priv *priv = edev->priv;
-	int ret;
-
-	ret = phy_device_connect(edev, priv->miibus, priv->phy_addr, NULL, 0,
-				 PHY_INTERFACE_MODE_NA);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static int tse_eth_send(struct eth_device *edev, void *packet, int length)
-{
-
-	struct altera_tse_priv *priv = edev->priv;
-	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx_regs;
-	struct alt_sgdma_descriptor *tx_desc = priv->tx_desc;
-	struct alt_sgdma_descriptor *tx_desc_cur = tx_desc;
-
-	flush_dcache_range((uint32_t)packet, (uint32_t)packet + length);
-	alt_sgdma_construct_descriptor_burst(
-		(struct alt_sgdma_descriptor *)&tx_desc[0],
-		(struct alt_sgdma_descriptor *)&tx_desc[1],
-		(uint32_t *)packet,	/* read addr */
-		(uint32_t *)0,		/*           */
-		length,			/* length or EOP ,will change for each tx */
-		0x1,			/* gen eop */
-		0x0,			/* read fixed */
-		0x1,			/* write fixed or sop */
-		0x0,			/* read burst */
-		0x0,			/* write burst */
-		0x0			/* channel */
-		);
-
-	alt_sgdma_do_sync_transfer(tx_sgdma, tx_desc_cur);
-
-	return 0;
-}
-
-static void tse_eth_halt(struct eth_device *edev)
-{
-	struct altera_tse_priv *priv = edev->priv;
-	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx_regs;
-	struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx_regs;
-
-	writel(0, &rx_sgdma->control); /* Stop the controller and reset settings */
-	writel(0, &tx_sgdma->control); /* Stop the controller and reset settings */
-}
-
-static int tse_eth_rx(struct eth_device *edev)
-{
-	uint16_t packet_length = 0;
-
-	struct altera_tse_priv *priv = edev->priv;
-	struct alt_sgdma_descriptor *rx_desc = priv->rx_desc;
-	struct alt_sgdma_descriptor *rx_desc_cur = rx_desc;
-	struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx_regs;
-
-	if (rx_desc_cur->descriptor_status &
-		ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK) {
-
-		packet_length = rx_desc->actual_bytes_transferred;
-		net_receive(edev, NetRxPackets[0], packet_length);
-
-		/* Clear Run */
-		rx_sgdma->control = (rx_sgdma->control & (~ALT_SGDMA_CONTROL_RUN_MSK));
-
-		/* start descriptor again */
-		flush_dcache_range((uint32_t)(NetRxPackets[0]), (uint32_t)(NetRxPackets[0]) + PKTSIZE);
-		alt_sgdma_construct_descriptor_burst(
-			(struct alt_sgdma_descriptor *)&rx_desc[0],
-			(struct alt_sgdma_descriptor *)&rx_desc[1],
-			(uint32_t)0x0,			/* read addr */
-			(uint32_t *)NetRxPackets[0],	/*           */
-			0x0,				/* length or EOP */
-			0x0,				/* gen eop */
-			0x0,				/* read fixed */
-			0x0,				/* write fixed or sop */
-			0x0,				/* read burst */
-			0x0,				/* write burst */
-			0x0				/* channel */
-		);
-
-		/* setup the sgdma */
-		alt_sgdma_do_async_transfer(priv->sgdma_rx_regs, rx_desc);
-	}
-
-	return 0;
-}
-
-static int tse_init_dev(struct eth_device *edev)
-{
-	struct altera_tse_priv *priv = edev->priv;
-	struct alt_tse_mac *mac_dev = priv->tse_regs;
-	struct alt_sgdma_descriptor *tx_desc = priv->tx_desc;
-	struct alt_sgdma_descriptor *rx_desc = priv->rx_desc;
-	struct alt_sgdma_descriptor *rx_desc_cur;
-
-	rx_desc_cur = rx_desc;
-
-	tse_reset(edev);
-
-	/* need to create sgdma */
-	alt_sgdma_construct_descriptor_burst(
-		(struct alt_sgdma_descriptor *)&tx_desc[0],
-		(struct alt_sgdma_descriptor *)&tx_desc[1],
-		(uint32_t *)NULL,	/* read addr */
-		(uint32_t *)0,		/*           */
-		0,			/* length or EOP ,will change for each tx */
-		0x1,			/* gen eop */
-		0x0,			/* read fixed */
-		0x1,			/* write fixed or sop */
-		0x0,			/* read burst */
-		0x0,			/* write burst */
-		0x0			/* channel */
-		);
-
-	flush_dcache_range((uint32_t)(NetRxPackets[0]), (uint32_t)(NetRxPackets[0]) + PKTSIZE);
-	alt_sgdma_construct_descriptor_burst(
-		(struct alt_sgdma_descriptor *)&rx_desc[0],
-		(struct alt_sgdma_descriptor *)&rx_desc[1],
-		(uint32_t)0x0,			/* read addr */
-		(uint32_t *)NetRxPackets[0],	/*           */
-		0x0,				/* length or EOP */
-		0x0,				/* gen eop */
-		0x0,				/* read fixed */
-		0x0,				/* write fixed or sop */
-		0x0,				/* read burst */
-		0x0,				/* write burst */
-		0x0				/* channel */
-		);
-
-	/* start rx async transfer */
-	alt_sgdma_do_async_transfer(priv->sgdma_rx_regs, rx_desc_cur);
-
-	/* Initialize MAC registers */
-	writel(PKTSIZE, &mac_dev->max_frame_length);
-
-	/* NO Shift */
-	writel(0, &mac_dev->rx_cmd_stat);
-	writel(0, &mac_dev->tx_cmd_stat);
-
-	/* enable MAC */
-	writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK, &mac_dev->command_config);
-
-	return 0;
-}
-
-static int tse_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	struct altera_tse_priv *priv;
-	struct mii_bus *miibus;
-	struct eth_device *edev;
-	struct alt_sgdma_descriptor *rx_desc;
-	struct alt_sgdma_descriptor *tx_desc;
-#ifndef CONFIG_TSE_USE_DEDICATED_DESC_MEM
-	uint32_t dma_handle;
-#endif
-	edev = xzalloc(sizeof(struct eth_device));
-	priv = xzalloc(sizeof(struct altera_tse_priv));
-	miibus = xzalloc(sizeof(struct mii_bus));
-
-	edev->priv = priv;
-
-	edev->init = tse_init_dev;
-	edev->open = tse_eth_open;
-	edev->send = tse_eth_send;
-	edev->recv = tse_eth_rx;
-	edev->halt = tse_eth_halt;
-	edev->get_ethaddr = tse_get_ethaddr;
-	edev->set_ethaddr = tse_set_ethaddr;
-	edev->parent = dev;
-
-#ifdef CONFIG_TSE_USE_DEDICATED_DESC_MEM
-	iores = dev_request_mem_resource(dev, 3);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	tx_desc = IOMEM(iores->start);
-	rx_desc = tx_desc + 2;
-#else
-	tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX), (dma_addr_t *)&dma_handle);
-	rx_desc = tx_desc + 2;
-
-	if (!tx_desc) {
-		free(edev);
-		free(miibus);
-		return 0;
-	}
-#endif
-
-	memset(rx_desc, 0, (sizeof *rx_desc) * (PKTBUFSRX + 1));
-	memset(tx_desc, 0, (sizeof *tx_desc) * 2);
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->tse_regs = IOMEM(iores->start);
-	iores = dev_request_mem_resource(dev, 1);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->sgdma_rx_regs = IOMEM(iores->start);
-
-	iores = dev_request_mem_resource(dev, 2);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->sgdma_tx_regs = IOMEM(iores->start);
-	priv->rx_desc = rx_desc;
-	priv->tx_desc = tx_desc;
-
-	priv->miibus = miibus;
-
-	miibus->read = tse_phy_read;
-	miibus->write = tse_phy_write;
-	miibus->priv = priv;
-	miibus->parent = dev;
-
-	if (dev->platform_data != NULL)
-		priv->phy_addr = *((int8_t *)(dev->platform_data));
-	else
-		priv->phy_addr = -1;
-
-	mdiobus_register(miibus);
-
-	return eth_register(edev);
-}
-
-static struct driver_d altera_tse_driver = {
-	.name = "altera_tse",
-	.probe = tse_probe,
-};
-device_platform_driver(altera_tse_driver);
diff --git a/drivers/net/altera_tse.h b/drivers/net/altera_tse.h
deleted file mode 100644
index 7bff14de81..0000000000
--- a/drivers/net/altera_tse.h
+++ /dev/null
@@ -1,296 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Altera 10/100/1000 triple speed ethernet mac
- *
- * Copyright (C) 2008 Altera Corporation.
- * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
- * Copyright (C) 2011 Franck JULLIEN <elec4fun@gmail.com>
- */
-#ifndef _ALTERA_TSE_H_
-#define _ALTERA_TSE_H_
-
-/* SGDMA Stuff */
-#define ALT_SGDMA_STATUS_ERROR_MSK			(0x00000001)
-#define ALT_SGDMA_STATUS_EOP_ENCOUNTERED_MSK		(0x00000002)
-#define ALT_SGDMA_STATUS_DESC_COMPLETED_MSK		(0x00000004)
-#define ALT_SGDMA_STATUS_CHAIN_COMPLETED_MSK		(0x00000008)
-#define ALT_SGDMA_STATUS_BUSY_MSK			(0x00000010)
-
-#define ALT_SGDMA_CONTROL_IE_ERROR_MSK			(0x00000001)
-#define ALT_SGDMA_CONTROL_IE_EOP_ENCOUNTERED_MSK	(0x00000002)
-#define ALT_SGDMA_CONTROL_IE_DESC_COMPLETED_MSK		(0x00000004)
-#define ALT_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK	(0x00000008)
-#define ALT_SGDMA_CONTROL_IE_GLOBAL_MSK			(0x00000010)
-#define ALT_SGDMA_CONTROL_RUN_MSK			(0x00000020)
-#define ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK		(0x00000040)
-#define ALT_SGDMA_CONTROL_IE_MAX_DESC_PROCESSED_MSK	(0x00000080)
-#define ALT_SGDMA_CONTROL_MAX_DESC_PROCESSED_MSK	(0x0000FF00)
-#define ALT_SGDMA_CONTROL_SOFTWARERESET_MSK		(0x00010000)
-#define ALT_SGDMA_CONTROL_PARK_MSK			(0x00020000)
-#define ALT_SGDMA_CONTROL_CLEAR_INTERRUPT_MSK		(0x80000000)
-
-#define ALTERA_TSE_SGDMA_INTR_MASK  (ALT_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK \
-			| ALT_SGDMA_STATUS_DESC_COMPLETED_MSK \
-			| ALT_SGDMA_CONTROL_IE_GLOBAL_MSK)
-
-/*
- * Descriptor control bit masks & offsets
- *
- * Note: The control byte physically occupies bits [31:24] in memory.
- *	 The following bit-offsets are expressed relative to the LSB of
- *	 the control register bitfield.
- */
-#define ALT_SGDMA_DESCRIPTOR_CONTROL_GENERATE_EOP_MSK		(0x00000001)
-#define ALT_SGDMA_DESCRIPTOR_CONTROL_READ_FIXED_ADDRESS_MSK	(0x00000002)
-#define ALT_SGDMA_DESCRIPTOR_CONTROL_WRITE_FIXED_ADDRESS_MSK	(0x00000004)
-#define ALT_SGDMA_DESCRIPTOR_CONTROL_ATLANTIC_CHANNEL_MSK	(0x00000008)
-#define ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK		(0x00000080)
-
-/*
- * Descriptor status bit masks & offsets
- *
- * Note: The status byte physically occupies bits [23:16] in memory.
- *	 The following bit-offsets are expressed relative to the LSB of
- *	 the status register bitfield.
- */
-#define ALT_SGDMA_DESCRIPTOR_STATUS_E_CRC_MSK			(0x00000001)
-#define ALT_SGDMA_DESCRIPTOR_STATUS_E_PARITY_MSK		(0x00000002)
-#define ALT_SGDMA_DESCRIPTOR_STATUS_E_OVERFLOW_MSK		(0x00000004)
-#define ALT_SGDMA_DESCRIPTOR_STATUS_E_SYNC_MSK			(0x00000008)
-#define ALT_SGDMA_DESCRIPTOR_STATUS_E_UEOP_MSK			(0x00000010)
-#define ALT_SGDMA_DESCRIPTOR_STATUS_E_MEOP_MSK			(0x00000020)
-#define ALT_SGDMA_DESCRIPTOR_STATUS_E_MSOP_MSK			(0x00000040)
-#define ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK	(0x00000080)
-#define ALT_SGDMA_DESCRIPTOR_STATUS_ERROR_MSK			(0x0000007F)
-
-/*
- * The SGDMA controller buffer descriptor allocates
- * 64 bits for each address. To support ANSI C, the
- * struct implementing a descriptor places 32-bits
- * of padding directly above each address; each pad must
- * be cleared when initializing a descriptor.
- */
-
-/*
- * Buffer Descriptor data structure
- *
- */
-struct alt_sgdma_descriptor {
-	unsigned int *source;           /* the address of data to be read. */
-	unsigned int source_pad;
-
-	unsigned int *destination;     /* the address to write data */
-	unsigned int destination_pad;
-
-	unsigned int *next;            /* the next descriptor in the list. */
-	unsigned int next_pad;
-
-	unsigned short bytes_to_transfer; /* the number of bytes to transfer */
-	unsigned char read_burst;
-	unsigned char write_burst;
-
-	unsigned short actual_bytes_transferred;/* bytes transferred by DMA */
-	unsigned char descriptor_status;
-	unsigned char descriptor_control;
-
-} __attribute__ ((packed, aligned(1)));
-
-/* SG-DMA Control/Status Slave registers map */
-
-struct alt_sgdma_registers {
-	unsigned int status;
-	unsigned int status_pad[3];
-	unsigned int control;
-	unsigned int control_pad[3];
-	unsigned int next_descriptor_pointer;
-	unsigned int descriptor_pad[3];
-};
-
-/* TSE Stuff */
-#define ALTERA_TSE_CMD_TX_ENA_MSK		(0x00000001)
-#define ALTERA_TSE_CMD_RX_ENA_MSK		(0x00000002)
-#define ALTERA_TSE_CMD_XON_GEN_MSK		(0x00000004)
-#define ALTERA_TSE_CMD_ETH_SPEED_MSK		(0x00000008)
-#define ALTERA_TSE_CMD_PROMIS_EN_MSK		(0x00000010)
-#define ALTERA_TSE_CMD_PAD_EN_MSK		(0x00000020)
-#define ALTERA_TSE_CMD_CRC_FWD_MSK		(0x00000040)
-#define ALTERA_TSE_CMD_PAUSE_FWD_MSK		(0x00000080)
-#define ALTERA_TSE_CMD_PAUSE_IGNORE_MSK		(0x00000100)
-#define ALTERA_TSE_CMD_TX_ADDR_INS_MSK		(0x00000200)
-#define ALTERA_TSE_CMD_HD_ENA_MSK		(0x00000400)
-#define ALTERA_TSE_CMD_EXCESS_COL_MSK		(0x00000800)
-#define ALTERA_TSE_CMD_LATE_COL_MSK		(0x00001000)
-#define ALTERA_TSE_CMD_SW_RESET_MSK		(0x00002000)
-#define ALTERA_TSE_CMD_MHASH_SEL_MSK		(0x00004000)
-#define ALTERA_TSE_CMD_LOOPBACK_MSK		(0x00008000)
-/* Bits (18:16) = address select */
-#define ALTERA_TSE_CMD_TX_ADDR_SEL_MSK		(0x00070000)
-#define ALTERA_TSE_CMD_MAGIC_ENA_MSK		(0x00080000)
-#define ALTERA_TSE_CMD_SLEEP_MSK		(0x00100000)
-#define ALTERA_TSE_CMD_WAKEUP_MSK		(0x00200000)
-#define ALTERA_TSE_CMD_XOFF_GEN_MSK		(0x00400000)
-#define ALTERA_TSE_CMD_CNTL_FRM_ENA_MSK		(0x00800000)
-#define ALTERA_TSE_CMD_NO_LENGTH_CHECK_MSK	(0x01000000)
-#define ALTERA_TSE_CMD_ENA_10_MSK		(0x02000000)
-#define ALTERA_TSE_CMD_RX_ERR_DISC_MSK		(0x04000000)
-/* Bits (30..27) reserved */
-#define ALTERA_TSE_CMD_CNT_RESET_MSK		(0x80000000)
-
-#define ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16	(0x00040000)
-#define ALTERA_TSE_TX_CMD_STAT_OMIT_CRC		(0x00020000)
-
-#define ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16	(0x02000000)
-
-#define ALT_TSE_SW_RESET_WATCHDOG_CNTR		10000
-#define ALT_TSE_SGDMA_BUSY_WATCHDOG_CNTR	90000000
-
-#define ALT_TSE_SW_RESET_WATCHDOG_TOUT		1    /* ms */
-#define ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT	5    /* ms */
-
-struct alt_tse_mdio {
-	unsigned int control; /*PHY device operation control register */
-	unsigned int status;  /*PHY device operation status register */
-	unsigned int phy_id1; /*Bits 31:16 of PHY identifier. */
-	unsigned int phy_id2; /*Bits 15:0 of PHY identifier. */
-	unsigned int auto_negotiation_advertisement;
-	unsigned int remote_partner_base_page_ability;
-
-	unsigned int reg6;
-	unsigned int reg7;
-	unsigned int reg8;
-	unsigned int reg9;
-	unsigned int rega;
-	unsigned int regb;
-	unsigned int regc;
-	unsigned int regd;
-	unsigned int rege;
-	unsigned int regf;
-	unsigned int reg10;
-	unsigned int reg11;
-	unsigned int reg12;
-	unsigned int reg13;
-	unsigned int reg14;
-	unsigned int reg15;
-	unsigned int reg16;
-	unsigned int reg17;
-	unsigned int reg18;
-	unsigned int reg19;
-	unsigned int reg1a;
-	unsigned int reg1b;
-	unsigned int reg1c;
-	unsigned int reg1d;
-	unsigned int reg1e;
-	unsigned int reg1f;
-};
-
-/* MAC register Space */
-
-struct alt_tse_mac {
-	unsigned int megacore_revision;
-	unsigned int scratch_pad;
-	unsigned int command_config;
-	unsigned int mac_addr_0;
-	unsigned int mac_addr_1;
-	unsigned int max_frame_length;
-	unsigned int pause_quanta;
-	unsigned int rx_sel_empty_threshold;
-	unsigned int rx_sel_full_threshold;
-	unsigned int tx_sel_empty_threshold;
-	unsigned int tx_sel_full_threshold;
-	unsigned int rx_almost_empty_threshold;
-	unsigned int rx_almost_full_threshold;
-	unsigned int tx_almost_empty_threshold;
-	unsigned int tx_almost_full_threshold;
-	unsigned int mdio_phy0_addr;
-	unsigned int mdio_phy1_addr;
-
-	/* only if 100/1000 BaseX PCS, reserved otherwise */
-	unsigned int reservedx44[5];
-
-	unsigned int reg_read_access_status;
-	unsigned int min_tx_ipg_length;
-
-	/* IEEE 802.3 oEntity Managed Object Support */
-	unsigned int aMACID_1;	/*The MAC addresses */
-	unsigned int aMACID_2;
-	unsigned int aFramesTransmittedOK;
-	unsigned int aFramesReceivedOK;
-	unsigned int aFramesCheckSequenceErrors;
-	unsigned int aAlignmentErrors;
-	unsigned int aOctetsTransmittedOK;
-	unsigned int aOctetsReceivedOK;
-
-	/* IEEE 802.3 oPausedEntity Managed Object Support */
-	unsigned int aTxPAUSEMACCtrlFrames;
-	unsigned int aRxPAUSEMACCtrlFrames;
-
-	/* IETF MIB (MIB-II) Object Support */
-	unsigned int ifInErrors;
-	unsigned int ifOutErrors;
-	unsigned int ifInUcastPkts;
-	unsigned int ifInMulticastPkts;
-	unsigned int ifInBroadcastPkts;
-	unsigned int ifOutDiscards;
-	unsigned int ifOutUcastPkts;
-	unsigned int ifOutMulticastPkts;
-	unsigned int ifOutBroadcastPkts;
-
-	/* IETF RMON MIB Object Support */
-	unsigned int etherStatsDropEvent;
-	unsigned int etherStatsOctets;
-	unsigned int etherStatsPkts;
-	unsigned int etherStatsUndersizePkts;
-	unsigned int etherStatsOversizePkts;
-	unsigned int etherStatsPkts64Octets;
-	unsigned int etherStatsPkts65to127Octets;
-	unsigned int etherStatsPkts128to255Octets;
-	unsigned int etherStatsPkts256to511Octets;
-	unsigned int etherStatsPkts512to1023Octets;
-	unsigned int etherStatsPkts1024to1518Octets;
-
-	unsigned int etherStatsPkts1519toXOctets;
-	unsigned int etherStatsJabbers;
-	unsigned int etherStatsFragments;
-
-	unsigned int reservedxE4;
-
-	/*FIFO control register. */
-	unsigned int tx_cmd_stat;
-	unsigned int rx_cmd_stat;
-
-	unsigned int ipaccTxConf;
-	unsigned int ipaccRxConf;
-	unsigned int ipaccRxStat;
-	unsigned int ipaccRxStatSum;
-
-	/*Multicast address resolution table */
-	unsigned int hash_table[64];
-
-	/*Registers 0 to 31 within PHY device 0/1 */
-	struct alt_tse_mdio mdio_phy0;
-	struct alt_tse_mdio mdio_phy1;
-
-	/*4 Supplemental MAC Addresses */
-	unsigned int supp_mac_addr_0_0;
-	unsigned int supp_mac_addr_0_1;
-	unsigned int supp_mac_addr_1_0;
-	unsigned int supp_mac_addr_1_1;
-	unsigned int supp_mac_addr_2_0;
-	unsigned int supp_mac_addr_2_1;
-	unsigned int supp_mac_addr_3_0;
-	unsigned int supp_mac_addr_3_1;
-
-	unsigned int reservedx320[56];
-};
-
-struct altera_tse_priv {
-	void __iomem *tse_regs;
-	void __iomem *sgdma_rx_regs;
-	void __iomem *sgdma_tx_regs;
-	void __iomem *rx_desc;
-	void __iomem *tx_desc;
-	int phy_addr;
-	struct mii_bus *miibus;
-};
-
-#endif /* _ALTERA_TSE_H_ */
-- 
2.30.2



