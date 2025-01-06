Delivery-date: Mon, 06 Jan 2025 10:19:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGr-00HQgg-2L
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGn-0003qA-Hf
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jOzcOC7UeVkjL+z/6yBrQ7+nFvTdkgGIT5EdTEpeQwY=; b=RtTLuvl/KYshHL9BPoWJisiotK
	Yx7uEmfXYvEUa4/v6RlX5i/bjwmixWmKpWHqg1bwLcPwpYbIMNcIhatW2/uX+m8noi5EbJ8Vej9ib
	O/QDPEJx0XiIEZs3AzH9DvTxhng88Pex5tb0mYNUEiC97yO19CJkgcDYjSsv1le9kH6fBvevz23M3
	73gTrx3H27egVmGTJbsBMZDT9711fr3hOFsNk5c3zQIs5fUccsIrJkOfY2TE4bX89CZXlO453f9G5
	L4Xod3DFPWmM08JcyW+k6/bNJZsGyne8CyVGDiTb+FYIPj/6wY9OF3LLkSrwUzgmc0i5Icd9bey+1
	SeiPUeng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGA-00000000e3V-45Ag;
	Mon, 06 Jan 2025 09:18:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjG6-00000000dzg-04T5
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:18:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjG4-00037P-OA; Mon, 06 Jan 2025 10:18:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjG3-0078qm-2V;
	Mon, 06 Jan 2025 10:18:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjG4-00EPbz-1U;
	Mon, 06 Jan 2025 10:18:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:18:46 +0100
Message-Id: <20250106091847.3435030-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011850_377649_9D89787E 
X-CRM114-Status: GOOD (  24.28  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: ep93xx: delete unused drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The architecture itself was removed last year and its serial driver and
network drivers are now dead code and do not support device tree, so
remove them.

Fixes: 0900665e0193 ("ARM: remove ep93xx")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig                |   5 -
 drivers/net/Makefile               |   1 -
 drivers/net/ep93xx.c               | 660 -----------------------------
 drivers/net/ep93xx.h               | 131 ------
 drivers/serial/Kconfig             |   7 -
 drivers/serial/Makefile            |   1 -
 drivers/serial/serial_pl010.c      | 145 -------
 include/platform_data/eth-ep93xx.h |  26 --
 8 files changed, 976 deletions(-)
 delete mode 100644 drivers/net/ep93xx.c
 delete mode 100644 drivers/net/ep93xx.h
 delete mode 100644 drivers/serial/serial_pl010.c
 delete mode 100644 include/platform_data/eth-ep93xx.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 25f4f337394c..0e7857925021 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -185,11 +185,6 @@ config DRIVER_NET_ENC28J60_WRITEVERIFY
 	  Enable the verify after the buffer write useful for debugging purpose.
 	  If unsure, say N.
 
-config DRIVER_NET_EP93XX
-	bool "EP93xx Ethernet driver"
-	depends on ARCH_EP93XX
-	select PHYLIB
-
 config DRIVER_NET_ETHOC
 	bool "OpenCores ethernet MAC driver"
 	depends on OPENRISC
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index b66131632d57..59d78bce3fc7 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -24,7 +24,6 @@ obj-$(CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP) += designware_rockchip.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
 obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/
 obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
-obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
 obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
 obj-$(CONFIG_DRIVER_NET_FSL_ENETC)	+= fsl_enetc.o fsl_enetc_mdio.o
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
deleted file mode 100644
index 70fe298d76c4..000000000000
--- a/drivers/net/ep93xx.c
+++ /dev/null
@@ -1,660 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Cirrus Logic EP93xx ethernet MAC / MII driver.
- *
- * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
- *
- * Copyright (C) 2004, 2005
- * Cory T. Tusar, Videon Central, Inc., <ctusar@videon-central.com>
- *
- * Based on the original eth.[ch] Cirrus Logic EP93xx Rev D. Ethernet Driver,
- * which is
- *
- * (C) Copyright 2002 2003
- * Adam Bezanson, Network Audio Technologies, Inc.
- * <bezanson@netaudiotech.com>
- */
-
-#include <common.h>
-#include <command.h>
-#include <init.h>
-#include <malloc.h>
-#include <io.h>
-#include <linux/types.h>
-#include <mach/ep93xx/ep93xx-regs.h>
-#include <linux/phy.h>
-#include <platform_data/eth-ep93xx.h>
-#include "ep93xx.h"
-
-#define EP93XX_MAX_PKT_SIZE    1536
-
-static int ep93xx_phy_read(struct mii_bus *bus, int phy_addr, int phy_reg);
-static int ep93xx_phy_write(struct mii_bus *bus, int phy_addr, int phy_reg,
-			    u16 value);
-
-static inline struct ep93xx_eth_priv *ep93xx_get_priv(struct eth_device *edev)
-{
-	return (struct ep93xx_eth_priv *)edev->priv;
-}
-
-static inline struct mac_regs *ep93xx_get_regs(struct eth_device *edev)
-{
-	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
-
-	return priv->regs;
-}
-
-#if defined(EP93XX_MAC_DEBUG)
-/**
- * Dump ep93xx_mac values to the terminal.
- */
-static void dump_dev(struct eth_device *edev)
-{
-	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
-	int i;
-
-	printf("\ndump_dev()\n");
-	printf("  rx_dq.base	     %p\n", priv->rx_dq.base);
-	printf("  rx_dq.current	     %p\n", priv->rx_dq.current);
-	printf("  rx_dq.end	     %p\n", priv->rx_dq.end);
-	printf("  rx_sq.base	     %p\n", priv->rx_sq.base);
-	printf("  rx_sq.current	     %p\n", priv->rx_sq.current);
-	printf("  rx_sq.end	     %p\n", priv->rx_sq.end);
-
-	for (i = 0; i < NUMRXDESC; i++)
-		printf("  rx_buffer[%2.d]      %p\n", i, priv->rx_buffer[i]);
-
-	printf("  tx_dq.base	     %p\n", priv->tx_dq.base);
-	printf("  tx_dq.current	     %p\n", priv->tx_dq.current);
-	printf("  tx_dq.end	     %p\n", priv->tx_dq.end);
-	printf("  tx_sq.base	     %p\n", priv->tx_sq.base);
-	printf("  tx_sq.current	     %p\n", priv->tx_sq.current);
-	printf("  tx_sq.end	     %p\n", priv->tx_sq.end);
-}
-
-/**
- * Dump all RX descriptor queue entries to the terminal.
- */
-static void dump_rx_descriptor_queue(struct eth_device *edev)
-{
-	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
-	int i;
-
-	printf("\ndump_rx_descriptor_queue()\n");
-	printf("  descriptor address	 word1		 word2\n");
-	for (i = 0; i < NUMRXDESC; i++) {
-		printf("  [ %p ]	     %08X	 %08X\n",
-			priv->rx_dq.base + i,
-			(priv->rx_dq.base + i)->word1,
-			(priv->rx_dq.base + i)->word2);
-	}
-}
-
-/**
- * Dump all RX status queue entries to the terminal.
- */
-static void dump_rx_status_queue(struct eth_device *edev)
-{
-	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
-	int i;
-
-	printf("\ndump_rx_status_queue()\n");
-	printf("  descriptor address	 word1		 word2\n");
-	for (i = 0; i < NUMRXDESC; i++) {
-		printf("  [ %p ]	     %08X	 %08X\n",
-			priv->rx_sq.base + i,
-			(priv->rx_sq.base + i)->word1,
-			(priv->rx_sq.base + i)->word2);
-	}
-}
-
-/**
- * Dump all TX descriptor queue entries to the terminal.
- */
-static void dump_tx_descriptor_queue(struct eth_device *edev)
-{
-	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
-	int i;
-
-	printf("\ndump_tx_descriptor_queue()\n");
-	printf("  descriptor address	 word1		 word2\n");
-	for (i = 0; i < NUMTXDESC; i++) {
-		printf("  [ %p ]	     %08X	 %08X\n",
-			priv->tx_dq.base + i,
-			(priv->tx_dq.base + i)->word1,
-			(priv->tx_dq.base + i)->word2);
-	}
-}
-
-/**
- * Dump all TX status queue entries to the terminal.
- */
-static void dump_tx_status_queue(struct eth_device *edev)
-{
-	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
-	int i;
-
-	printf("\ndump_tx_status_queue()\n");
-	printf("  descriptor address	 word1\n");
-	for (i = 0; i < NUMTXDESC; i++) {
-		printf("  [ %p ]	     %08X\n",
-			priv->rx_sq.base + i,
-			(priv->rx_sq.base + i)->word1);
-	}
-}
-#else
-#define dump_dev(x)
-#define dump_rx_descriptor_queue(x)
-#define dump_rx_status_queue(x)
-#define dump_tx_descriptor_queue(x)
-#define dump_tx_status_queue(x)
-#endif	/* defined(EP93XX_MAC_DEBUG) */
-
-/**
- * Reset the EP93xx MAC by twiddling the soft reset bit and spinning until
- * it's cleared.
- */
-static void ep93xx_eth_reset(struct eth_device *edev)
-{
-	struct mac_regs *regs = ep93xx_get_regs(edev);
-	uint32_t value;
-
-	pr_debug("+ep93xx_eth_reset\n");
-
-	value = readl(&regs->selfctl);
-	value |= SELFCTL_RESET;
-	writel(value, &regs->selfctl);
-
-	while (readl(&regs->selfctl) & SELFCTL_RESET)
-		; /* noop */
-
-	pr_debug("-ep93xx_eth_reset\n");
-}
-
-static int ep93xx_eth_init_dev(struct eth_device *edev)
-{
-	pr_debug("+ep93xx_eth_init_dev\n");
-
-	pr_debug("-ep93xx_eth_init_dev\n");
-
-	return 0;
-}
-
-static int ep93xx_eth_open(struct eth_device *edev)
-{
-	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
-	struct mac_regs *regs = ep93xx_get_regs(edev);
-	int i;
-	int ret;
-
-	pr_debug("+ep93xx_eth_open\n");
-
-	ret = phy_device_connect(edev, &priv->miibus, priv->phy_addr, NULL,
-				 0, priv->interface);
-	if (ret)
-		return ret;
-
-	ep93xx_eth_reset(edev);
-
-	/* Reset the descriptor queues' current and end address values */
-	priv->tx_dq.current = priv->tx_dq.base;
-	priv->tx_dq.end = (priv->tx_dq.base + NUMTXDESC);
-
-	priv->tx_sq.current = priv->tx_sq.base;
-	priv->tx_sq.end = (priv->tx_sq.base + NUMTXDESC);
-
-	priv->rx_dq.current = priv->rx_dq.base;
-	priv->rx_dq.end = (priv->rx_dq.base + NUMRXDESC);
-
-	priv->rx_sq.current = priv->rx_sq.base;
-	priv->rx_sq.end = (priv->rx_sq.base + NUMRXDESC);
-
-	/*
-	 * Set the transmit descriptor and status queues' base address,
-	 * current address, and length registers.  Set the maximum frame
-	 * length and threshold. Enable the transmit descriptor processor.
-	 */
-	writel((uint32_t)priv->tx_dq.base, &regs->txdq.badd);
-	writel((uint32_t)priv->tx_dq.base, &regs->txdq.curadd);
-	writel(sizeof(struct tx_descriptor) * NUMTXDESC, &regs->txdq.blen);
-
-	writel((uint32_t)priv->tx_sq.base, &regs->txstsq.badd);
-	writel((uint32_t)priv->tx_sq.base, &regs->txstsq.curadd);
-	writel(sizeof(struct tx_status) * NUMTXDESC, &regs->txstsq.blen);
-
-	writel(0x00040000, &regs->txdthrshld);
-	writel(0x00040000, &regs->txststhrshld);
-
-	writel((TXSTARTMAX << 0) | (EP93XX_MAX_PKT_SIZE << 16), &regs->maxfrmlen);
-	writel(BMCTL_TXEN, &regs->bmctl);
-
-	/*
-	 * Set the receive descriptor and status queues' base address,
-	 * current address, and length registers.  Enable the receive
-	 * descriptor processor.
-	 */
-	writel((uint32_t)priv->rx_dq.base, &regs->rxdq.badd);
-	writel((uint32_t)priv->rx_dq.base, &regs->rxdq.curadd);
-	writel(sizeof(struct rx_descriptor) * NUMRXDESC, &regs->rxdq.blen);
-
-	writel((uint32_t)priv->rx_sq.base, &regs->rxstsq.badd);
-	writel((uint32_t)priv->rx_sq.base, &regs->rxstsq.curadd);
-	writel(sizeof(struct rx_status) * NUMRXDESC, &regs->rxstsq.blen);
-
-	writel(0x00040000, &regs->rxdthrshld);
-
-	writel(BMCTL_RXEN, &regs->bmctl);
-
-	writel(0x00040000, &regs->rxststhrshld);
-
-	/* Wait until the receive descriptor processor is active */
-	while (!(readl(&regs->bmsts) & BMSTS_RXACT))
-		; /* noop */
-
-	/*
-	 * Initialize the RX descriptor queue. Clear the TX descriptor queue.
-	 * Clear the RX and TX status queues. Enqueue the RX descriptor and
-	 * status entries to the MAC.
-	 */
-	for (i = 0; i < NUMRXDESC; i++) {
-		/* set buffer address */
-		(priv->rx_dq.base + i)->word1 = (uint32_t)priv->rx_buffer[i];
-
-		/* set buffer length, clear buffer index and NSOF */
-		(priv->rx_dq.base + i)->word2 = EP93XX_MAX_PKT_SIZE;
-	}
-
-	memset(priv->tx_dq.base, 0,
-		(sizeof(struct tx_descriptor) * NUMTXDESC));
-	memset(priv->rx_sq.base, 0,
-		(sizeof(struct rx_status) * NUMRXDESC));
-	memset(priv->tx_sq.base, 0,
-		(sizeof(struct tx_status) * NUMTXDESC));
-
-	writel(NUMRXDESC, &regs->rxdqenq);
-	writel(NUMRXDESC, &regs->rxstsqenq);
-
-	/* Turn on RX and TX */
-	writel(RXCTL_IA0 | RXCTL_BA | RXCTL_SRXON |
-		RXCTL_RCRCA | RXCTL_MA, &regs->rxctl);
-	writel(TXCTL_STXON, &regs->txctl);
-
-	/* Dump data structures if we're debugging */
-	dump_dev(edev);
-	dump_rx_descriptor_queue(edev);
-	dump_rx_status_queue(edev);
-	dump_tx_descriptor_queue(edev);
-	dump_tx_status_queue(edev);
-
-	pr_debug("-ep93xx_eth_open\n");
-
-	return 0;
-}
-
-/**
- * Halt EP93xx MAC transmit and receive by clearing the TxCTL and RxCTL
- * registers.
- */
-static void ep93xx_eth_halt(struct eth_device *edev)
-{
-	struct mac_regs *regs = ep93xx_get_regs(edev);
-
-	pr_debug("+ep93xx_eth_halt\n");
-
-	writel(0x00000000, &regs->rxctl);
-	writel(0x00000000, &regs->txctl);
-
-	pr_debug("-ep93xx_eth_halt\n");
-}
-
-/**
- * Copy a frame of data from the MAC into the protocol layer for further
- * processing.
- */
-static void ep93xx_eth_rcv_packet(struct eth_device *edev)
-{
-	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
-	struct mac_regs *regs = ep93xx_get_regs(edev);
-
-	pr_debug("+ep93xx_eth_rcv_packet\n");
-
-	if (RX_STATUS_RFP(priv->rx_sq.current)) {
-		if (RX_STATUS_RWE(priv->rx_sq.current)) {
-			/*
-			 * We have a good frame. Extract the frame's length
-			 * from the current rx_status_queue entry, and copy
-			 * the frame's data into priv->rx_buffer of the
-			 * protocol stack. We track the total number of
-			 * bytes in the frame (nbytes_frame) which will be
-			 * used when we pass the data off to the protocol
-			 * layer via net_receive().
-			 */
-			net_receive(edev, (uchar *)priv->rx_dq.current->word1,
-				RX_STATUS_FRAME_LEN(priv->rx_sq.current));
-			pr_debug("reporting %d bytes...\n",
-				RX_STATUS_FRAME_LEN(priv->rx_sq.current));
-
-		} else {
-			/* Do we have an erroneous packet? */
-			pr_err("packet rx error, status %08X %08X\n",
-				priv->rx_sq.current->word1,
-				priv->rx_sq.current->word2);
-			dump_rx_descriptor_queue(edev);
-			dump_rx_status_queue(edev);
-		}
-
-		/*
-		 * Clear the associated status queue entry, and
-		 * increment our current pointers to the next RX
-		 * descriptor and status queue entries (making sure
-		 * we wrap properly).
-		 */
-		memset((void *)priv->rx_sq.current, 0,
-			sizeof(struct rx_status));
-
-		priv->rx_sq.current++;
-		if (priv->rx_sq.current >= priv->rx_sq.end)
-			priv->rx_sq.current = priv->rx_sq.base;
-
-		priv->rx_dq.current++;
-		if (priv->rx_dq.current >= priv->rx_dq.end)
-			priv->rx_dq.current = priv->rx_dq.base;
-
-		/*
-		 * Finally, return the RX descriptor and status entries
-		 * back to the MAC engine, and loop again, checking for
-		 * more descriptors to process.
-		 */
-		writel(1, &regs->rxdqenq);
-		writel(1, &regs->rxstsqenq);
-	}
-
-	pr_debug("-ep93xx_eth_rcv_packet %d\n", ret);
-}
-
-/**
- * Send a block of data via ethernet.
- */
-static int ep93xx_eth_send_packet(struct eth_device *edev,
-				void *packet, int length)
-{
-	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
-	struct mac_regs *regs = ep93xx_get_regs(edev);
-	int ret = -1;
-
-	pr_debug("+ep93xx_eth_send_packet\n");
-
-	/*
-	 * Initialize the TX descriptor queue with the new packet's info.
-	 * Clear the associated status queue entry. Enqueue the packet
-	 * to the MAC for transmission.
-	 */
-
-	/* set buffer address */
-	priv->tx_dq.current->word1 = (uint32_t)packet;
-
-	/* set buffer length and EOF bit */
-	priv->tx_dq.current->word2 = length | TX_DESC_EOF;
-
-	/* clear tx status */
-	priv->tx_sq.current->word1 = 0;
-
-	/* enqueue the TX descriptor */
-	writel(1, &regs->txdqenq);
-
-	/* wait for the frame to become processed */
-	while (!TX_STATUS_TXFP(priv->tx_sq.current))
-		; /* noop */
-
-	if (!TX_STATUS_TXWE(priv->tx_sq.current)) {
-		pr_err("packet tx error, status %08X\n",
-			priv->tx_sq.current->word1);
-		dump_tx_descriptor_queue(edev);
-		dump_tx_status_queue(edev);
-
-		/* TODO: Add better error handling? */
-		goto eth_send_failed_0;
-	}
-
-	ret = 0;
-	/* Fall through */
-
-eth_send_failed_0:
-	pr_debug("-ep93xx_eth_send_packet %d\n", ret);
-
-	return ret;
-}
-
-static int ep93xx_eth_get_ethaddr(struct eth_device *edev,
-				unsigned char *mac_addr)
-{
-	struct mac_regs *regs = ep93xx_get_regs(edev);
-	uint32_t value;
-
-	value = readl(&regs->indad);
-	mac_addr[0] = value & 0xFF;
-	mac_addr[1] = (value >> 8) & 0xFF;
-	mac_addr[2] = (value >> 16) & 0xFF;
-	mac_addr[3] = (value >> 24) & 0xFF;
-
-	value = readl(&regs->indad_upper);
-	mac_addr[4] = value & 0xFF;
-	mac_addr[5] = (value >> 8) & 0xFF;
-
-	return 0;
-}
-
-static int ep93xx_eth_set_ethaddr(struct eth_device *edev,
-				const unsigned char *mac_addr)
-{
-	struct mac_regs *regs = ep93xx_get_regs(edev);
-
-	writel(AFP_IAPRIMARY, &regs->afp);
-
-	writel(mac_addr[0] | (mac_addr[1] << 8) |
-		(mac_addr[2] << 16) | (mac_addr[3] << 24),
-		&regs->indad);
-	writel(mac_addr[4] | (mac_addr[5] << 8), &regs->indad_upper);
-
-	return 0;
-}
-
-static int ep93xx_eth_probe(struct device *dev)
-{
-	struct ep93xx_eth_platform_data *pdata = (struct ep93xx_eth_platform_data *)dev->platform_data;
-	struct eth_device *edev;
-	struct ep93xx_eth_priv *priv;
-	int ret = -1;
-
-	pr_debug("ep93xx_eth_probe()\n");
-
-	edev = xzalloc(sizeof(struct eth_device) +
-		sizeof(struct ep93xx_eth_priv));
-	edev->priv = (struct ep93xx_eth_priv *)(edev + 1);
-
-	priv = edev->priv;
-	priv->regs = (struct mac_regs *)MAC_BASE;
-
-	edev->init = ep93xx_eth_init_dev;
-	edev->open = ep93xx_eth_open;
-	edev->send = ep93xx_eth_send_packet;
-	edev->recv = ep93xx_eth_rcv_packet;
-	edev->halt = ep93xx_eth_halt;
-	edev->get_ethaddr = ep93xx_eth_get_ethaddr;
-	edev->set_ethaddr = ep93xx_eth_set_ethaddr;
-	edev->parent = dev;
-
-	if (pdata) {
-		priv->interface = pdata->xcv_type;
-		priv->phy_addr = pdata->phy_addr;
-	} else {
-		priv->interface = PHY_INTERFACE_MODE_NA;
-		priv->phy_addr = 0;
-	}
-
-	priv->miibus.read = ep93xx_phy_read;
-	priv->miibus.write = ep93xx_phy_write;
-	priv->miibus.parent = dev;
-	priv->miibus.priv = edev;
-
-	priv->tx_dq.base = calloc(NUMTXDESC,
-				sizeof(struct tx_descriptor));
-	if (priv->tx_dq.base == NULL) {
-		pr_err("calloc() failed: tx_dq.base");
-		goto eth_probe_failed_0;
-	}
-
-	priv->tx_sq.base = calloc(NUMTXDESC,
-				sizeof(struct tx_status));
-	if (priv->tx_sq.base == NULL) {
-		pr_err("calloc() failed: tx_sq.base");
-		goto eth_probe_failed_1;
-	}
-
-	priv->rx_dq.base = calloc(NUMRXDESC,
-				sizeof(struct rx_descriptor));
-	if (priv->rx_dq.base == NULL) {
-		pr_err("calloc() failed: rx_dq.base");
-		goto eth_probe_failed_2;
-	}
-
-	priv->rx_sq.base = calloc(NUMRXDESC,
-				sizeof(struct rx_status));
-	if (priv->rx_sq.base == NULL) {
-		pr_err("calloc() failed: rx_sq.base");
-		goto eth_probe_failed_3;
-	}
-
-	ret = net_alloc_packets(priv->rx_buffer, NUMRXDESC);
-	if (ret) {
-		pr_err("net_alloc_packet() failed: rx_buffer");
-		goto eth_probe_failed_4;
-	}
-
-	mdiobus_register(&priv->miibus);
-	eth_register(edev);
-
-	ret = 0;
-
-	goto eth_probe_done;
-
-eth_probe_failed_4:
-	free(priv->rx_sq.base);
-	/* Fall through */
-
-eth_probe_failed_3:
-	free(priv->rx_dq.base);
-	/* Fall through */
-
-eth_probe_failed_2:
-	free(priv->tx_sq.base);
-	/* Fall through */
-
-eth_probe_failed_1:
-	free(priv->tx_dq.base);
-	/* Fall through */
-
-eth_probe_failed_0:
-	/* Fall through */
-
-eth_probe_done:
-	return ret;
-}
-
-/* -----------------------------------------------------------------------------
- * EP93xx ethernet MII functionality.
- */
-
-/**
- * Maximum MII address we support
- */
-#define MII_ADDRESS_MAX			31
-
-/**
- * Maximum MII register address we support
- */
-#define MII_REGISTER_MAX		31
-
-/**
- * Read a 16-bit value from an MII register.
- */
-static int ep93xx_phy_read(struct mii_bus *bus, int phy_addr, int phy_reg)
-{
-	struct mac_regs *regs = ep93xx_get_regs(bus->priv);
-	int value = -1;
-	uint32_t self_ctl;
-
-	pr_debug("+ep93xx_phy_read\n");
-
-	/*
-	 * Save the current SelfCTL register value.  Set MAC to send
-	 * preamble bits.  Wait for any previous MII command to complete
-	 * before issuing the new command.
-	 */
-	self_ctl = readl(&regs->selfctl);
-	writel(self_ctl & ~(1 << 8), &regs->selfctl);
-
-	while (readl(&regs->miists) & MIISTS_BUSY)
-		; /* noop */
-
-	/*
-	 * Issue the MII 'read' command.  Wait for the command to complete.
-	 * Read the MII data value.
-	 */
-	writel(MIICMD_OPCODE_READ | ((uint32_t)phy_addr << 5) |
-		(uint32_t)phy_reg, &regs->miicmd);
-	while (readl(&regs->miists) & MIISTS_BUSY)
-		; /* noop */
-
-	value = (unsigned short)readl(&regs->miidata);
-
-	/* Restore the saved SelfCTL value and return. */
-	writel(self_ctl, &regs->selfctl);
-
-	pr_debug("-ep93xx_phy_read\n");
-
-	return value;
-}
-
-/**
- * Write a 16-bit value to an MII register.
- */
-static int ep93xx_phy_write(struct mii_bus *bus, int phy_addr,
-			int phy_reg, u16 value)
-{
-	struct mac_regs *regs = ep93xx_get_regs(bus->priv);
-	uint32_t self_ctl;
-
-	pr_debug("+ep93xx_phy_write\n");
-
-	/*
-	 * Save the current SelfCTL register value.  Set MAC to send
-	 * preamble bits.  Wait for any previous MII command to complete
-	 * before issuing the new command.
-	 */
-	self_ctl = readl(&regs->selfctl);
-	writel(self_ctl & ~(1 << 8), &regs->selfctl);
-
-	while (readl(&regs->miists) & MIISTS_BUSY)
-		; /* noop */
-
-	/* Issue the MII 'write' command.  Wait for the command to complete. */
-	writel((uint32_t)value, &regs->miidata);
-	writel(MIICMD_OPCODE_WRITE | ((uint32_t)phy_addr << 5) | phy_reg,
-		&regs->miicmd);
-	while (readl(&regs->miists) & MIISTS_BUSY)
-		; /* noop */
-
-	/* Restore the saved SelfCTL value and return. */
-	writel(self_ctl, &regs->selfctl);
-
-	pr_debug("-ep93xx_phy_write\n");
-
-	return 0;
-}
-
-static struct driver ep93xx_eth_driver = {
-	.name  = "ep93xx_eth",
-	.probe = ep93xx_eth_probe,
-};
-device_platform_driver(ep93xx_eth_driver);
diff --git a/drivers/net/ep93xx.h b/drivers/net/ep93xx.h
deleted file mode 100644
index b06692ccfbbf..000000000000
--- a/drivers/net/ep93xx.h
+++ /dev/null
@@ -1,131 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
- *
- * Copyright (C) 2004, 2005
- * Cory T. Tusar, Videon Central, Inc., <ctusar@videon-central.com>
- */
-
-#ifndef _ETH_H
-#define _ETH_H
-
-#include <net.h>
-
-/**
- * #define this to dump device status and queue info during initialization and
- * following errors.
- */
-#undef EP93XX_MAC_DEBUG
-
-/**
- * Number of descriptor and status entries in our RX queues.
- * It must be power of 2 !
- */
-#define NUMRXDESC		PKTBUFSRX
-
-/**
- * Number of descriptor and status entries in our TX queues.
- */
-#define NUMTXDESC		1
-
-/**
- * 944 = (1024 - 64) - 16, Fifo size - Minframesize - 16 (Chip FACT)
- */
-#define TXSTARTMAX		944
-
-/**
- * Receive descriptor queue entry
- */
-struct rx_descriptor {
-	uint32_t word1;
-	uint32_t word2;
-} __attribute__((packed));
-
-/**
- * Receive status queue entry
- */
-struct rx_status {
-	uint32_t word1;
-	uint32_t word2;
-} __attribute__((packed));
-
-#define RX_STATUS_RWE(rx_status) ((rx_status->word1 >> 30) & 0x01)
-#define RX_STATUS_RFP(rx_status) ((rx_status->word1 >> 31) & 0x01)
-#define RX_STATUS_FRAME_LEN(rx_status) (rx_status->word2 & 0xFFFF)
-
-
-/**
- * Transmit descriptor queue entry
- */
-struct tx_descriptor {
-	uint32_t word1;
-	uint32_t word2;
-} __attribute__((packed));
-
-#define TX_DESC_EOF (1 << 31)
-
-/**
- * Transmit status queue entry
- */
-struct tx_status {
-	uint32_t word1;
-} __attribute__((packed));
-
-#define TX_STATUS_TXWE(tx_status) (((tx_status)->word1 >> 30) & 0x01)
-#define TX_STATUS_TXFP(tx_status) (((tx_status)->word1 >> 31) & 0x01)
-
-/**
- * Transmit descriptor queue
- */
-struct tx_descriptor_queue {
-	struct tx_descriptor *base;
-	struct tx_descriptor *current;
-	struct tx_descriptor *end;
-};
-
-/**
- * Transmit status queue
- */
-struct tx_status_queue {
-	struct tx_status *base;
-	volatile struct tx_status *current;
-	struct tx_status *end;
-};
-
-/**
- * Receive descriptor queue
- */
-struct rx_descriptor_queue {
-	struct rx_descriptor *base;
-	struct rx_descriptor *current;
-	struct rx_descriptor *end;
-};
-
-/**
- * Receive status queue
- */
-struct rx_status_queue {
-	struct rx_status *base;
-	volatile struct rx_status *current;
-	struct rx_status *end;
-};
-
-/**
- * EP93xx MAC private data structure
- */
-struct ep93xx_eth_priv {
-	struct mac_regs			*regs;
-
-	struct rx_descriptor_queue	rx_dq;
-	struct rx_status_queue		rx_sq;
-	void				*rx_buffer[NUMRXDESC];
-
-	struct tx_descriptor_queue	tx_dq;
-	struct tx_status_queue		tx_sq;
-
-	int				phy_addr;
-	phy_interface_t			interface;
-	struct mii_bus miibus;
-};
-
-#endif
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 20fe26439048..b7312ca796a9 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -90,13 +90,6 @@ config DRIVER_SERIAL_NS16550_PCI
 	help
 	  Enable this to get support for NS16550 UARTs connected over PCI
 
-config DRIVER_SERIAL_PL010
-	depends on ARCH_EP93XX
-	default y
-	bool "ARM AMBA PL010 support"
-	help
-	  Enable this to get support for AMBA PL010 based serial devices
-
 config DRIVER_SERIAL_PXA
 	bool "PXA serial driver"
 	depends on ARCH_PXA
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index f4ccb249003a..76f9f80938b4 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -11,7 +11,6 @@ obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
 obj-$(CONFIG_DRIVER_SERIAL_CLPS711X)		+= serial_clps711x.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550_PCI)		+= serial_ns16550_pci.o
-obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
 obj-$(CONFIG_DRIVER_SERIAL_STM32)		+= serial_stm32.o
 obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
 obj-$(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)	+= serial_omap4_usbboot.o
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
deleted file mode 100644
index 56b9e676102d..000000000000
--- a/drivers/serial/serial_pl010.c
+++ /dev/null
@@ -1,145 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2000 Rob Taylor <robt@flyingpig.com>, Flying Pig Systems
-// SPDX-FileCopyrightText: 2004 ARM Ltd.
-// SPDX-FileCopyrightText: 2010 Matthias Kaehlcke <matthias@kaehlcke.net>
-
-/* Contributor: Philippe Robin <philippe.robin@arm.com> */
-
-/* Simple U-Boot driver for the PrimeCell PL010/PL011 UARTs */
-
-#include <common.h>
-#include <init.h>
-#include <malloc.h>
-#include <io.h>
-#include "serial_pl010.h"
-
-static int pl010_setbaudrate(struct console_device *cdev, int baudrate)
-{
-	struct pl010_struct *pl010 = cdev->dev->priv;
-	unsigned int divisor;
-
-	switch (baudrate) {
-	case 9600:
-		divisor = UART_PL010_BAUD_9600;
-		break;
-
-	case 19200:
-		divisor = UART_PL010_BAUD_9600;
-		break;
-
-	case 38400:
-		divisor = UART_PL010_BAUD_38400;
-		break;
-
-	case 57600:
-		divisor = UART_PL010_BAUD_57600;
-		break;
-
-	case 115200:
-		divisor = UART_PL010_BAUD_115200;
-		break;
-
-	default:
-		divisor = UART_PL010_BAUD_38400;
-	}
-
-	writel((divisor & 0xf00) >> 8, &pl010->linctrlmid);
-	writel(divisor & 0xff, &pl010->linctrllow);
-
-	/* high register must always be written */
-	writel(readl(&pl010->linctrlhigh), &pl010->linctrlhigh);
-
-	return 0;
-}
-
-static int pl010_init_port(struct console_device *cdev)
-{
-	struct pl010_struct *pl010 = cdev->dev->priv;
-
-	/*
-	 * First, disable everything.
-	 */
-	writel(0x00, &pl010->ctrl);
-
-	/*
-	 * Set the UART to be 8 bits, 1 stop bit, no parity, fifo enabled.
-	 */
-	writel(UART_PL010_LCRH_WLEN_8 | UART_PL010_LCRH_FEN,
-		&pl010->linctrlhigh);
-
-	/*
-	 * Finally, enable the UART
-	 */
-	writel(UART_PL010_CR_UARTEN, &pl010->ctrl);
-
-	return 0;
-}
-
-static void pl010_putc(struct console_device *cdev, char c)
-{
-	struct pl010_struct *pl010 = cdev->dev->priv;
-
-	/* Wait until there is space in the FIFO */
-	while (readl(&pl010->flag) & UART_PL010_FR_TXFF)
-		; /* noop */
-
-	/* Send the character */
-	writel(c, &pl010->data);
-}
-
-static int pl010_getc(struct console_device *cdev)
-{
-	struct pl010_struct *pl010 = cdev->dev->priv;
-	unsigned int data;
-
-	/* Wait until there is data in the FIFO */
-	while (readl(&pl010->flag) & UART_PL010_FR_RXFE)
-		; /* noop */
-
-	data = readl(&pl010->data);
-
-	/* Check for an error flag */
-	if (data & 0xFFFFFF00) {
-		/* Clear the error */
-		writel(0xFFFFFFFF, &pl010->errclr);
-		return -1;
-	}
-
-	return (int)data;
-}
-
-static int pl010_tstc(struct console_device *cdev)
-{
-	struct pl010_struct *pl010 = cdev->dev->priv;
-
-	return !(readl(&pl010->flag) & UART_PL010_FR_RXFE);
-}
-
-static int pl010_probe(struct device *dev)
-{
-	struct resource *iores;
-	struct console_device *cdev;
-
-	cdev = xzalloc(sizeof(struct console_device));
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	dev->priv = IOMEM(iores->start);
-	cdev->dev = dev;
-	cdev->tstc = pl010_tstc;
-	cdev->putc = pl010_putc;
-	cdev->getc = pl010_getc;
-	cdev->setbrg = pl010_setbaudrate;
-
-	pl010_init_port(cdev);
-
-	console_register(cdev);
-
-	return 0;
-}
-
-static struct driver pl010_driver = {
-	.name  = "pl010_serial",
-	.probe = pl010_probe,
-};
-console_platform_driver(pl010_driver);
diff --git a/include/platform_data/eth-ep93xx.h b/include/platform_data/eth-ep93xx.h
deleted file mode 100644
index 0fb11d0acd06..000000000000
--- a/include/platform_data/eth-ep93xx.h
+++ /dev/null
@@ -1,26 +0,0 @@
-/*
- * (C) Copyright 2016 Alexander Kurz <akurz@blala.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __NET_EP93XX_ETH_H
-#define __NET_EP93XX_ETH_H
-
-#include <linux/phy.h>
-
-struct ep93xx_eth_platform_data {
-	phy_interface_t	xcv_type;
-	int		phy_addr;
-};
-
-#endif /* __NET_EP93XX_ETH_H */
-- 
2.39.5



