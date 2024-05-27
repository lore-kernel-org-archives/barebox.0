Delivery-date: Mon, 27 May 2024 12:28:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaT-000f11-0Z
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 12:28:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaR-0005tq-01
	for lore@pengutronix.de; Mon, 27 May 2024 12:28:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLplZZAjwQfqv+/KcsjooGXYpmrgEWKygyH5aOiAYe4=; b=iYF7b3/JYrRXvH
	emcc0D7FVnag4O5ucyBwZAdnNTkgcp20CvcB8HQPeChRpIlX3H934TaDArd6U1UmIy8QR3KkzESVZ
	RSEs3RM8f/nH7ZoIcHjtbg9LCab/RoT8COZoUcrE9k+bo/8oYtkhcmO+XAspFkZIzH/QpcvAaXDRV
	5GGk/oLizzBwnO6TP3CwTSrp3Q+R9rbqsEiGU5ZnFuAnLqMGYOhDZh/To7FPHCaiylLzlBiNOdYwC
	mQVV0x65DRKtGkG97MX6xY8LX8ctEV/rhBETvRMqcRRfwb0lcIo7p8uJcT/cTlj4LkA1tPZ3ozLw8
	dzMoz9u4DFV71FXcAVsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZo-0000000EaBK-2lA1;
	Mon, 27 May 2024 10:27:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZe-0000000Ea6s-2M8L
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 10:27:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-0005SA-LN; Mon, 27 May 2024 12:27:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-003At7-7r; Mon, 27 May 2024 12:27:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-00Ejyk-0P;
	Mon, 27 May 2024 12:27:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 12:27:23 +0200
Message-Id: <20240527102723.3504270-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240527102723.3504270-1-s.hauer@pengutronix.de>
References: <20240527102723.3504270-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_032726_958637_68C9DE38 
X-CRM114-Status: GOOD (  21.78  )
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
Cc: jianqiang wang <wjq.sec@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 7/7] net: let net rx hook return void
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The return value of the net rx hook is quite inconsistent over the
different drivers. Some return the length of the received packet,
some return the number of packets and others just return 0. Nobody
checks the return value anyway, so just change the hook to return void.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/ag71xx.c          |  4 +---
 drivers/net/ar231x.c          |  3 +--
 drivers/net/arc_emac.c        |  4 +---
 drivers/net/at91_ether.c      |  6 ++----
 drivers/net/bcmgenet.c        |  6 ++----
 drivers/net/cpsw.c            |  4 +---
 drivers/net/cs8900.c          |  6 ++----
 drivers/net/davinci_emac.c    | 11 +++--------
 drivers/net/designware.c      |  9 ++-------
 drivers/net/designware_eqos.c |  6 ++----
 drivers/net/dm9k.c            | 12 +++++-------
 drivers/net/dsa.c             |  6 ++----
 drivers/net/e1000/main.c      |  5 +----
 drivers/net/efi-snp.c         |  8 +++-----
 drivers/net/enc28j60.c        |  4 +---
 drivers/net/ep93xx.c          |  9 +--------
 drivers/net/ethoc.c           | 10 +++-------
 drivers/net/fec_imx.c         |  8 +++-----
 drivers/net/fec_mpc5200.c     |  5 ++---
 drivers/net/fsl-fman.c        |  6 +-----
 drivers/net/fsl_enetc.c       |  6 ++----
 drivers/net/gianfar.c         |  6 ++----
 drivers/net/ks8851_mll.c      |  6 ++----
 drivers/net/liteeth.c         | 12 ++++--------
 drivers/net/macb.c            | 12 ++++--------
 drivers/net/r8169_main.c      |  7 +------
 drivers/net/rtl8139.c         |  6 ++----
 drivers/net/smc91111.c        |  7 ++-----
 drivers/net/smc911x.c         |  4 +---
 drivers/net/tap.c             |  4 +---
 drivers/net/usb/usbnet.c      |  8 +++-----
 drivers/net/virtio.c          |  6 ++----
 include/net.h                 |  2 +-
 33 files changed, 66 insertions(+), 152 deletions(-)

diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index cf00c2eb09..a6ca437b03 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -384,7 +384,7 @@ static void ag71xx_ether_halt(struct eth_device *edev)
 	}
 }
 
-static int ag71xx_ether_rx(struct eth_device *edev)
+static void ag71xx_ether_rx(struct eth_device *edev)
 {
 	struct ag71xx *priv = edev->priv;
 	ag7240_desc_t *f;
@@ -418,8 +418,6 @@ static int ag71xx_ether_rx(struct eth_device *edev)
 		ag71xx_wr(priv, AG71XX_REG_RX_DESC, virt_to_phys(f));
 		ag71xx_wr(priv, AG71XX_REG_RX_CTRL, RX_CTRL_RXE);
 	}
-
-	return work_done;
 }
 
 static int ag71xx_ether_send(struct eth_device *edev, void *packet, int length)
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
index 1af34a3117..0e12267d7f 100644
--- a/drivers/net/ar231x.c
+++ b/drivers/net/ar231x.c
@@ -193,7 +193,7 @@ static int ar231x_eth_open(struct eth_device *edev)
 			ar231x_adjust_link, 0, PHY_INTERFACE_MODE_MII);
 }
 
-static int ar231x_eth_recv(struct eth_device *edev)
+static void ar231x_eth_recv(struct eth_device *edev)
 {
 	struct ar231x_eth_priv *priv = edev->priv;
 
@@ -221,7 +221,6 @@ static int ar231x_eth_recv(struct eth_device *edev)
 		ar231x_flash_rxdsc(rxdsc);
 	}
 	priv->kill_rx_ring = 0;
-	return 0;
 }
 
 static int ar231x_eth_send(struct eth_device *edev, void *packet,
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index fa6e3955db..c32b60174c 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -264,7 +264,7 @@ static int arc_emac_send(struct eth_device *edev, void *data, int length)
 	return 0;
 }
 
-static int arc_emac_recv(struct eth_device *edev)
+static void arc_emac_recv(struct eth_device *edev)
 {
 	struct arc_emac_priv *priv = edev->priv;
 	unsigned int work_done;
@@ -307,8 +307,6 @@ static int arc_emac_recv(struct eth_device *edev)
 
 		rxbd->info = cpu_to_le32(FOR_EMAC | PKTSIZE);
 	}
-
-	return work_done;
 }
 
 static void arc_emac_halt(struct eth_device *edev)
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 0959a3c503..02b3d9622d 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -205,14 +205,14 @@ static int at91_ether_send(struct eth_device *edev, void *packet, int length)
 	return 0;
 }
 
-static int at91_ether_rx(struct eth_device *edev)
+static void at91_ether_rx(struct eth_device *edev)
 {
 	struct ether_device *etdev = to_ether(edev);
 	int size;
 	struct rbf_t *rbfp = etdev->rbfp;
 
 	if (!(rbfp->addr & RBF_OWNER))
-		return 0;
+		return;
 
 	size = rbfp->size & RBF_SIZE;
 
@@ -230,8 +230,6 @@ static int at91_ether_rx(struct eth_device *edev)
 
 	at91_emac_write(AT91_EMAC_RSR,
 		at91_emac_read(AT91_EMAC_RSR) | AT91_EMAC_RSR_REC);
-
-	return size;
 }
 
 static void at91_ether_halt (struct eth_device *edev)
diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index acbb973a92..15bdaa0e5d 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -309,7 +309,7 @@ static int bcmgenet_gmac_eth_send(struct eth_device *edev, void *packet, int len
 	return 0;
 }
 
-static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
+static void bcmgenet_gmac_eth_recv(struct eth_device *edev)
 {
 	struct bcmgenet_eth_priv *priv = edev->priv;
 	void *desc_base = priv->mac_reg + GENET_RX_OFF + priv->rx_index * DMA_DESC_SIZE;
@@ -318,7 +318,7 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
 	dma_addr_t addr;
 
 	if (prod_index == priv->c_index)
-		return -EAGAIN;
+		return;
 
 	length = readl(desc_base + DMA_DESC_LENGTH_STATUS);
 	length = (length >> DMA_BUFLENGTH_SHIFT) & DMA_BUFLENGTH_MASK;
@@ -343,8 +343,6 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
 	/* Forward our descriptor pointer, wrapping around if needed. */
 	if (++priv->rx_index >= RX_DESCS)
 		priv->rx_index = 0;
-
-	return 0;
 }
 
 static void rx_descs_init(struct bcmgenet_eth_priv *priv)
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 3aafebaad4..3e4f6502f9 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1048,7 +1048,7 @@ static int cpsw_send(struct eth_device *edev, void *packet, int length)
 	return ret;
 }
 
-static int cpsw_recv(struct eth_device *edev)
+static void cpsw_recv(struct eth_device *edev)
 {
 	struct cpsw_slave *slave = edev->priv;
 	struct cpsw_priv *priv = slave->cpsw;
@@ -1062,8 +1062,6 @@ static int cpsw_recv(struct eth_device *edev)
 		dma_sync_single_for_device(priv->dev, dma, len, DMA_FROM_DEVICE);
 		cpdma_submit(priv, &priv->rx_chan, buffer, dma, PKTSIZE, 0);
 	}
-
-	return 0;
 }
 
 static void cpsw_slave_init_data(struct cpsw_slave *slave, int slave_num,
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index bce26d4def..89eb0a3ee5 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -278,7 +278,7 @@ static int cs8900_send(struct eth_device *dev, void *eth_data,
 	return 0;
 }
 
-static int cs8900_recv(struct eth_device *dev)
+static void cs8900_recv(struct eth_device *dev)
 {
 	struct cs8900_priv *priv = (struct cs8900_priv *)dev->priv;
 	int len = 0;
@@ -289,7 +289,7 @@ static int cs8900_recv(struct eth_device *dev)
 	status = cs8900_ior(priv, PP_REG_RXEVENT);
 	if ((status & RXEVENT_RXOK) == 0) {
 		/* No packet received. */
-		return 0;
+		return;
 	}
 
 	status = readw(priv->regs + CS8900_RTDATA0);
@@ -303,8 +303,6 @@ static int cs8900_recv(struct eth_device *dev)
 		for (addr = (u16 *)priv->rx_buf, i = (len + 1) >> 1; i > 0; i--)
 			(void)readw(priv->regs + CS8900_RTDATA0);
 	}
-
-	return len;
 }
 
 static void cs8900_halt(struct eth_device *dev)
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 04277e6924..fcf7483cd2 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -457,21 +457,19 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 /*
  * This function handles receipt of a packet from the network
  */
-static int davinci_emac_recv(struct eth_device *edev)
+static void davinci_emac_recv(struct eth_device *edev)
 {
 	struct davinci_emac_priv *priv = edev->priv;
 	void __iomem *rx_curr_desc, *curr_desc, *tail_desc;
 	unsigned char *pkt;
-	int status, len, ret = -1;
+	int status, len;
 
 	dev_dbg(priv->dev, "+ emac_recv\n");
 
 	rx_curr_desc = priv->emac_rx_active_head;
 	status = readl(rx_curr_desc + EMAC_DESC_PKT_FLAG_LEN);
-	if (status & EMAC_CPPI_OWNERSHIP_BIT) {
-		ret = 0;
+	if (status & EMAC_CPPI_OWNERSHIP_BIT)
 		goto out;
-	}
 
 	if (status & EMAC_CPPI_RX_ERROR_FRAME) {
 		/* Error in packet - discard it and requeue desc */
@@ -483,7 +481,6 @@ static int davinci_emac_recv(struct eth_device *edev)
 		dma_sync_single_for_cpu(priv->dev, (unsigned long)pkt, len, DMA_FROM_DEVICE);
 		net_receive(edev, pkt, len);
 		dma_sync_single_for_device(priv->dev, (unsigned long)pkt, len, DMA_FROM_DEVICE);
-		ret = len;
 	}
 
 	/* Ack received packet descriptor */
@@ -529,8 +526,6 @@ static int davinci_emac_recv(struct eth_device *edev)
 
 out:
 	dev_dbg(priv->dev, "- emac_recv\n");
-
-	return ret;
 }
 
 static int davinci_emac_probe(struct device *dev)
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 6936c844cd..183feba2ea 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -320,7 +320,7 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 	return 0;
 }
 
-static int dwc_ether_rx(struct eth_device *dev)
+static void dwc_ether_rx(struct eth_device *dev)
 {
 	struct dw_eth_dev *priv = dev->priv;
 	u32 desc_num = priv->rx_currdescnum;
@@ -328,11 +328,10 @@ static int dwc_ether_rx(struct eth_device *dev)
 
 	u32 status = desc_p->txrx_status;
 	int length = 0;
-	int ret = 0;
 
 	/* Check  if the owner is the CPU */
 	if (status & DESC_RXSTS_OWNBYDMA)
-		return 0;
+		return;
 
 	if ((status & (DESC_RXSTS_ERROR | DESC_RXSTS_DAFILTERFAIL |
 		       DESC_RXSTS_SAFILTERFAIL)) ||
@@ -353,7 +352,6 @@ static int dwc_ether_rx(struct eth_device *dev)
 				   DESC_RXSTS_RXWATCHDOG |
 				   DESC_RXSTS_RXMIIERROR |
 				   DESC_RXSTS_RXCRC));
-		ret = -EIO;
 	} else {
 		length = (status & DESC_RXSTS_FRMLENMSK) >>
 			 DESC_RXSTS_FRMLENSHFT;
@@ -363,7 +361,6 @@ static int dwc_ether_rx(struct eth_device *dev)
 		net_receive(dev, dmamac_addr(desc_p), length);
 		dma_sync_single_for_device(dev->parent, desc_p->dmamac_addr,
 					   length, DMA_FROM_DEVICE);
-		ret = length;
 	}
 
 	/*
@@ -377,8 +374,6 @@ static int dwc_ether_rx(struct eth_device *dev)
 		desc_num = 0;
 
 	priv->rx_currdescnum = desc_num;
-
-	return ret;
 }
 
 static void dwc_ether_halt (struct eth_device *dev)
diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index ccce51b6af..2ce5e9089f 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -741,7 +741,7 @@ static int eqos_send(struct eth_device *edev, void *packet, int length)
 	return ret;
 }
 
-static int eqos_recv(struct eth_device *edev)
+static void eqos_recv(struct eth_device *edev)
 {
 	struct eqos *eqos = edev->priv;
 	struct eqos_desc *rx_wbf_desc, *rx_rf_desc;
@@ -763,7 +763,7 @@ static int eqos_recv(struct eth_device *edev)
 	/* Write-Back Format RX descriptor */
 	rx_wbf_desc = &eqos->rx_descs[eqos->rx_currdescnum];
 	if (readl(&rx_wbf_desc->des3) & EQOS_DESC3_OWN)
-		return 0;
+		return;
 
 	dma = eqos->dma_rx_buf[eqos->rx_currdescnum];
 	frame = phys_to_virt(dma);
@@ -792,8 +792,6 @@ static int eqos_recv(struct eth_device *edev)
 
 	eqos->rx_currdescnum++;
 	eqos->rx_currdescnum %= EQOS_DESCRIPTORS_RX;
-
-	return 0;
 }
 
 static int eqos_init_resources(struct eqos *eqos)
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 29defece4e..b580a66968 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -597,7 +597,7 @@ static int dm9k_validate_entry(struct dm9k *priv)
 	return 1; /* entry is valid */
 }
 
-static int dm9k_eth_rx(struct eth_device *edev)
+static void dm9k_eth_rx(struct eth_device *edev)
 {
 	struct dm9k *priv = (struct dm9k *)edev->priv;
 	struct device *dev = edev->parent;
@@ -605,12 +605,12 @@ static int dm9k_eth_rx(struct eth_device *edev)
 	bool p_valid;
 
 	if (dm9k_check_for_rx_packet(priv) == 0)
-		return 0;	/* no data present */
+		return;	/* no data present */
 
 	do {
 		if (!dm9k_validate_entry(priv)) {
 			dm9k_iow(priv, DM9K_ISR, ISR_PR); /* clear PR status latched in bit 0 */
-			return 0;
+			return;
 		}
 
 		/* assume this packet is valid */
@@ -649,7 +649,7 @@ static int dm9k_eth_rx(struct eth_device *edev)
 			dm9k_dump(priv->buswidth, priv->iodata, rx_len);
 			dm9k_reset(priv);
 			dm9k_enable(priv);
-			return 0;
+			return;
 		}
 
 		if (p_valid == true) {
@@ -657,14 +657,12 @@ static int dm9k_eth_rx(struct eth_device *edev)
 			dm9k_rd(priv->buswidth, priv->iodata, priv->pckt, rx_len);
 			dev_dbg(dev, "passing %u bytes packet to upper layer\n", rx_len);
 			net_receive(edev, priv->pckt, rx_len);
-			return 0;
+			return;
 		} else {
 			dev_dbg(dev, "Discarding packet\n");
 			dm9k_dump(priv->buswidth, priv->iodata, rx_len); /* discard packet */
 		}
 	} while (1);
-
-	return 0;
 }
 
 
diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index ccd7d87550..5343ce9e8e 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -207,19 +207,17 @@ static int dsa_port_send(struct eth_device *edev, void *packet, int length)
 	return eth_send_raw(ds->edev_master, tx_buf, full_length);
 }
 
-static int dsa_port_recv(struct eth_device *edev)
+static void dsa_port_recv(struct eth_device *edev)
 {
 	struct dsa_port *dp = edev->priv;
 	int length;
 
 	if (!dp->rx_buf_length)
-		return 0;
+		return;
 
 	net_receive(edev, dp->rx_buf, dp->rx_buf_length);
 	length = dp->rx_buf_length;
 	dp->rx_buf_length = 0;
-
-	return length;
 }
 
 static int dsa_ether_set_ethaddr(struct eth_device *edev,
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 76acea563e..275c9326be 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3430,7 +3430,7 @@ static void e1000_configure_rx(struct e1000_hw *hw)
 	e1000_fill_rx(hw);
 }
 
-static int e1000_poll(struct eth_device *edev)
+static void e1000_poll(struct eth_device *edev)
 {
 	struct e1000_hw *hw = edev->priv;
 	struct e1000_rx_desc *rd = &hw->rx_base[hw->rx_last];
@@ -3446,10 +3446,7 @@ static int e1000_poll(struct eth_device *edev)
 		dma_sync_single_for_device(hw->dev, hw->packet_dma, len,
 					   DMA_FROM_DEVICE);
 		e1000_fill_rx(hw);
-		return 1;
 	}
-
-	return 0;
 }
 
 static int e1000_transmit(struct eth_device *edev, void *txpacket, int length)
diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 476015f1c2..119358b6c8 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -158,7 +158,7 @@ static int efi_snp_eth_send(struct eth_device *edev, void *packet, int length)
 	return -ETIMEDOUT;
 }
 
-static int efi_snp_eth_rx(struct eth_device *edev)
+static void efi_snp_eth_rx(struct eth_device *edev)
 {
 	struct efi_snp_priv *priv = to_priv(edev);
 	long bufsize = PKTSIZE;
@@ -166,16 +166,14 @@ static int efi_snp_eth_rx(struct eth_device *edev)
 
 	efiret = priv->snp->receive(priv->snp, NULL, &bufsize, priv->rx_buf, NULL, NULL, NULL);
 	if (efiret == EFI_NOT_READY)
-		return 0;
+		return;
 
 	if (EFI_ERROR(efiret)) {
 		dev_err(priv->dev, "failed to receive: %s\n", efi_strerror(efiret));
-		return -efi_errno(efiret);
+		return;
 	}
 
 	net_receive(edev, priv->rx_buf, bufsize);
-
-	return 0;
 }
 
 static efi_guid_t snp_guid = EFI_SIMPLE_NETWORK_PROTOCOL_GUID;
diff --git a/drivers/net/enc28j60.c b/drivers/net/enc28j60.c
index 9455c6f5ea..614f42a241 100644
--- a/drivers/net/enc28j60.c
+++ b/drivers/net/enc28j60.c
@@ -846,7 +846,7 @@ static void enc28j60_check_link_status(struct eth_device *edev)
 	}
 }
 
-static int enc28j60_eth_rx(struct eth_device *edev)
+static void enc28j60_eth_rx(struct eth_device *edev)
 {
 	struct enc28j60_net *priv = edev->priv;
 	int pk_counter;
@@ -864,8 +864,6 @@ static int enc28j60_eth_rx(struct eth_device *edev)
 
 	while (pk_counter-- > 0)
 		enc28j60_hw_rx(edev);
-
-	return 0;
 }
 
 static int enc28j60_init_dev(struct eth_device *edev)
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index bd954e7a17..70fe298d76 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -311,11 +311,10 @@ static void ep93xx_eth_halt(struct eth_device *edev)
  * Copy a frame of data from the MAC into the protocol layer for further
  * processing.
  */
-static int ep93xx_eth_rcv_packet(struct eth_device *edev)
+static void ep93xx_eth_rcv_packet(struct eth_device *edev)
 {
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	struct mac_regs *regs = ep93xx_get_regs(edev);
-	int ret = -1;
 
 	pr_debug("+ep93xx_eth_rcv_packet\n");
 
@@ -335,8 +334,6 @@ static int ep93xx_eth_rcv_packet(struct eth_device *edev)
 			pr_debug("reporting %d bytes...\n",
 				RX_STATUS_FRAME_LEN(priv->rx_sq.current));
 
-			ret = 0;
-
 		} else {
 			/* Do we have an erroneous packet? */
 			pr_err("packet rx error, status %08X %08X\n",
@@ -370,13 +367,9 @@ static int ep93xx_eth_rcv_packet(struct eth_device *edev)
 		 */
 		writel(1, &regs->rxdqenq);
 		writel(1, &regs->rxstsqenq);
-	} else {
-		ret = 0;
 	}
 
 	pr_debug("-ep93xx_eth_rcv_packet %d\n", ret);
-
-	return ret;
 }
 
 /**
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index a31d3bb521..fe53eb577e 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -341,7 +341,7 @@ static unsigned int ethoc_update_rx_stats(struct eth_device *edev,
 	return ret;
 }
 
-static int ethoc_rx(struct eth_device *edev, int limit)
+static void ethoc_rx(struct eth_device *edev, int limit)
 {
 	struct ethoc *priv = edev->priv;
 	int count;
@@ -381,18 +381,14 @@ static int ethoc_rx(struct eth_device *edev, int limit)
 		if (++priv->cur_rx == priv->num_rx)
 			priv->cur_rx = 0;
 	}
-
-	return count;
 }
 
-static int ethoc_recv_packet(struct eth_device *edev)
+static void ethoc_recv_packet(struct eth_device *edev)
 {
 	struct ethoc *priv = edev->priv;
 
 	if (ethoc_read(priv, INT_SOURCE) & INT_MASK_RX)
-		return ethoc_rx(edev, PKTBUFSRX);
-
-	return 0;
+		ethoc_rx(edev, PKTBUFSRX);
 }
 
 static int ethoc_init_dev(struct eth_device *edev)
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 75a6596282..3147e62c41 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -529,7 +529,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
  * @param[in] dev Our ethernet device to handle
  * @return Length of packet read
  */
-static int fec_recv(struct eth_device *dev)
+static void fec_recv(struct eth_device *dev)
 {
 	struct fec_priv *fec = (struct fec_priv *)dev->priv;
 	struct buffer_descriptor __iomem *rbd = &fec->rbd_base[fec->rbd_index];
@@ -549,7 +549,7 @@ static int fec_recv(struct eth_device *dev)
 		fec_halt(dev);
 		fec_init(dev);
 		dev_err(&dev->dev, "some error: 0x%08x\n", ievent);
-		return 0;
+		return;
 	}
 	if (!fec_is_imx28(fec)) {
 		if (ievent & FEC_IEVENT_HBERR) {
@@ -574,7 +574,7 @@ static int fec_recv(struct eth_device *dev)
 	bd_status = readw(&rbd->status);
 
 	if (bd_status & FEC_RBD_EMPTY)
-		return 0;
+		return;
 
 	if (bd_status & FEC_RBD_ERR) {
 		dev_warn(&dev->dev, "error frame: 0x%p 0x%08x\n",
@@ -613,8 +613,6 @@ static int fec_recv(struct eth_device *dev)
 	fec_rbd_clean(fec->rbd_index == (FEC_RBD_NUM - 1) ? 1 : 0, rbd);
 	fec_rx_task_enable(fec);
 	fec->rbd_index = (fec->rbd_index + 1) % FEC_RBD_NUM;
-
-	return len;
 }
 
 static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 9c9b795f14..b13f7c6ec2 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -564,7 +564,7 @@ static int mpc5xxx_fec_send(struct eth_device *dev, void *eth_data,
 	return 0;
 }
 
-static int mpc5xxx_fec_recv(struct eth_device *dev)
+static void mpc5xxx_fec_recv(struct eth_device *dev)
 {
 	/*
 	 * This command pulls one frame from the card
@@ -586,7 +586,7 @@ static int mpc5xxx_fec_recv(struct eth_device *dev)
 		/* BABT, Rx/Tx FIFO errors */
 		mpc5xxx_fec_halt(dev);
 		mpc5xxx_fec_init(dev);
-		return 0;
+		return;
 	}
 	if (ievent & FEC_IEVENT_HBERR) {
 		/* Heartbeat error */
@@ -635,7 +635,6 @@ static int mpc5xxx_fec_recv(struct eth_device *dev)
 	}
 
 	SDMA_CLEAR_IEVENT (FEC_RECV_TASK_NO);
-	return len;
 }
 
 static int mpc5xxx_fec_probe(struct device *dev)
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index bdb2359815..332856a3b3 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -883,7 +883,7 @@ static int fm_eth_send(struct eth_device *edev, void *buf, int len)
 	return ret;
 }
 
-static int fm_eth_recv(struct eth_device *edev)
+static void fm_eth_recv(struct eth_device *edev)
 {
 	struct fm_eth *fm_eth = to_fm_eth(edev);
 	struct fm_port_global_pram *pram;
@@ -892,7 +892,6 @@ static int fm_eth_recv(struct eth_device *edev)
 	u32 buf_lo, buf_hi;
 	u8 *data;
 	u16 offset_out;
-	int ret = 1;
 
 	pram = fm_eth->rx_pram;
 
@@ -920,7 +919,6 @@ static int fm_eth_recv(struct eth_device *edev)
 						DMA_FROM_DEVICE);
 		} else {
 			dev_err(&edev->dev, "Rx error\n");
-			ret = 0;
 		}
 
 		/* clear the RxBDs */
@@ -937,8 +935,6 @@ static int fm_eth_recv(struct eth_device *edev)
 			offset_out = 0;
 		muram_writew(&pram->rxqd.offset_out, offset_out);
 	}
-
-	return ret;
 }
 
 static void memac_init_mac(struct fm_eth *fm_eth)
diff --git a/drivers/net/fsl_enetc.c b/drivers/net/fsl_enetc.c
index 4812ed4363..1695758fd3 100644
--- a/drivers/net/fsl_enetc.c
+++ b/drivers/net/fsl_enetc.c
@@ -489,7 +489,7 @@ static int enetc_send(struct eth_device *edev, void *packet, int length)
  * - clean up the descriptor
  * - move on and indicate to HW that the cleaned BD is available for Rx
  */
-static int enetc_recv(struct eth_device *edev)
+static void enetc_recv(struct eth_device *edev)
 {
 	struct enetc_priv *priv = edev->priv;
 	struct bd_ring *rxr = &priv->rx_bdr;
@@ -503,7 +503,7 @@ static int enetc_recv(struct eth_device *edev)
 
 	/* check if current BD is ready to be consumed */
 	if (!ENETC_RXBD_STATUS_R(status))
-		return 0;
+		return;
 
 	len = readw(&priv->enetc_rxbd[pi].r.buf_len);
 
@@ -523,8 +523,6 @@ static int enetc_recv(struct eth_device *edev)
 	dmb();
 	/* free up the slot in the ring for HW */
 	enetc_write_reg(rxr->cons_idx, ci);
-
-	return 0;
 }
 
 static int enetc_probe(struct pci_dev *pdev, const struct pci_device_id *id)
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 21ffe822e1..35cd6e7f0a 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -387,7 +387,7 @@ static int gfar_send(struct eth_device *edev, void *packet, int length)
 	return 0;
 }
 
-static int gfar_recv(struct eth_device *edev)
+static void gfar_recv(struct eth_device *edev)
 {
 	struct gfar_private *priv = edev->priv;
 	struct device *dev = edev->parent;
@@ -395,7 +395,7 @@ static int gfar_recv(struct eth_device *edev)
 	uint16_t status, length;
 
 	if (in_be16(&priv->rxbd[priv->rxidx].status) & RXBD_EMPTY)
-		return 0;
+		return;
 
 	length = in_be16(&priv->rxbd[priv->rxidx].length);
 
@@ -420,8 +420,6 @@ static int gfar_recv(struct eth_device *edev)
 		out_be32(regs + GFAR_IEVENT_OFFSET, GFAR_IEVENT_BSY);
 		out_be32(regs + GFAR_RSTAT_OFFSET, GFAR_RSTAT_CLEAR_RHALT);
 	}
-
-	return 0;
 }
 
 /* Read a MII PHY register. */
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 4e2a05158e..76a90aaf05 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -731,14 +731,14 @@ static void ks8851_rx_frame(struct ks_net *ks)
 	}
 }
 
-static int ks8851_eth_rx(struct eth_device *edev)
+static void ks8851_eth_rx(struct eth_device *edev)
 {
 	struct ks_net *ks = (struct ks_net *)edev->priv;
 	struct device *dev = &edev->dev;
 	u16 frame_cnt;
 
 	if (!(ks_rdreg16(ks, KS_ISR) & IRQ_RXI))
-		return 0;
+		return;
 	ks_wrreg16(ks, KS_ISR, IRQ_RXI);
 
 	frame_cnt = RXFCTR_RXFC_GET(ks_rdreg16(ks, KS_RXFCTR));
@@ -747,8 +747,6 @@ static int ks8851_eth_rx(struct eth_device *edev)
 		dev_dbg(dev, "%s frame %d\n", __func__, frame_cnt);
 		ks8851_rx_frame(ks);
 	}
-
-	return 0;
 }
 
 static int ks8851_eth_send(struct eth_device *edev,
diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
index 0d63e1da16..11469d1147 100644
--- a/drivers/net/liteeth.c
+++ b/drivers/net/liteeth.c
@@ -210,7 +210,7 @@ static int liteeth_eth_send(struct eth_device *edev, void *packet,
 	return 0;
 }
 
-static int liteeth_eth_rx(struct eth_device *edev)
+static void liteeth_eth_rx(struct eth_device *edev)
 {
 	struct liteeth *priv = edev->priv;
 	u8 rx_slot;
@@ -218,16 +218,15 @@ static int liteeth_eth_rx(struct eth_device *edev)
 	u8 reg;
 
 	reg = litex_read8(priv->base + LITEETH_WRITER_EV_PENDING);
-	if (!reg) {
-		goto done;
-	}
+	if (!reg)
+		return;
 
 	len = litex_read32(priv->base + LITEETH_WRITER_LENGTH);
 	if (len == 0 || len > PKTSIZE) {
 		len = 0;
 		dev_err(priv->dev, "%s: invalid len %d\n", __func__, len);
 		litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, reg);
-		goto done;
+		return;
 	}
 
 	rx_slot = litex_read8(priv->base + LITEETH_WRITER_SLOT);
@@ -237,9 +236,6 @@ static int liteeth_eth_rx(struct eth_device *edev)
 	net_receive(edev, priv->rx_buf, len);
 
 	litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, reg);
-
-done:
-	return len;
 }
 
 static void liteeth_eth_halt(struct eth_device *edev)
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index bcad88f60e..c473525ecd 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -171,7 +171,7 @@ static void reclaim_rx_buffers(struct macb_device *macb,
 	macb->rx_tail = new_tail;
 }
 
-static int gem_recv(struct eth_device *edev)
+static void gem_recv(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
 	dma_addr_t buffer;
@@ -180,7 +180,7 @@ static int gem_recv(struct eth_device *edev)
 
 	for (;;) {
 		if (!(readl(&macb->rx_ring[macb->rx_tail].addr) & MACB_BIT(RX_USED)))
-			return -1;
+			return;
 
 		status = readl(&macb->rx_ring[macb->rx_tail].ctrl);
 		length = MACB_BFEXT(RX_FRMLEN, status);
@@ -196,11 +196,9 @@ static int gem_recv(struct eth_device *edev)
 		if (macb->rx_tail >= macb->rx_ring_size)
 			macb->rx_tail = 0;
 	}
-
-	return 0;
 }
 
-static int macb_recv(struct eth_device *edev)
+static void macb_recv(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
 	unsigned int rx_tail = macb->rx_tail;
@@ -211,7 +209,7 @@ static int macb_recv(struct eth_device *edev)
 
 	for (;;) {
 		if (!(readl(&macb->rx_ring[rx_tail].addr) & MACB_BIT(RX_USED)))
-			return -1;
+			return;
 
 		status = readl(&macb->rx_ring[rx_tail].ctrl);
 		if (status & MACB_BIT(RX_SOF)) {
@@ -257,8 +255,6 @@ static int macb_recv(struct eth_device *edev)
 			}
 		}
 	}
-
-	return 0;
 }
 
 static int macb_set_tx_clk(struct macb_device *macb, int speed)
diff --git a/drivers/net/r8169_main.c b/drivers/net/r8169_main.c
index fd53ec1bc3..cd45677131 100644
--- a/drivers/net/r8169_main.c
+++ b/drivers/net/r8169_main.c
@@ -3007,7 +3007,7 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 	return ret;
 }
 
-static int rtl8169_eth_rx(struct eth_device *edev)
+static void rtl8169_eth_rx(struct eth_device *edev)
 {
 	struct rtl8169_private *tp = edev->priv;
 	struct device *dev = &tp->pci_dev->dev;
@@ -3042,16 +3042,11 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 		}
 
 		tp->cur_rx++;
-
-		return pkt_size;
-
 	} else {
 		status = RTL_R8(tp, IntrStatus);
 		RTL_W8(tp, IntrStatus, status & ~(TxErr | RxErr | SYSErr));
 		udelay(100);	/* wait */
 	}
-
-	return 0;
 }
 
 static int rtl8169_get_ethaddr(struct eth_device *edev, unsigned char *mac_addr)
diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index 5c91c10fea..b342c67b36 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -497,7 +497,7 @@ static int rtl8139_eth_send(struct eth_device *edev, void *packet,
 	return 0;
 }
 
-static int rtl8139_eth_rx(struct eth_device *edev)
+static void rtl8139_eth_rx(struct eth_device *edev)
 {
 	struct rtl8139_priv *priv = edev->priv;
 	unsigned char *rx_ring = priv->rx_ring;
@@ -512,7 +512,7 @@ static int rtl8139_eth_rx(struct eth_device *edev)
 
 	if (RTL_R8(priv, ChipCmd) & RxBufEmpty) {
 		/* no data */
-		return 0;
+		return;
 	}
 
 	rx_status = le32_to_cpu(*(__le32 *) (rx_ring + ring_offset));
@@ -526,8 +526,6 @@ static int rtl8139_eth_rx(struct eth_device *edev)
 	RTL_W16(priv, RxBufPtr, (u16) (cur_rx - 16));
 
 	priv->cur_rx = cur_rx;
-
-	return pkt_size /* size */;
 }
 
 static int rtl8139_probe(struct pci_dev *pdev, const struct pci_device_id *id)
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 4bbb2a3dee..d529a38eb2 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1256,7 +1256,7 @@ static void smc91c111_eth_halt(struct eth_device *edev)
 	SMC_outb(priv, TCR_CLEAR, TCR_REG);
 }
 
-static int smc91c111_eth_rx(struct eth_device *edev)
+static void smc91c111_eth_rx(struct eth_device *edev)
 {
 	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
 	int	packet_number;
@@ -1275,7 +1275,7 @@ static int smc91c111_eth_rx(struct eth_device *edev)
 	packet_number = SMC_inw(priv, RXFIFO_REG);
 
 	if (packet_number & RXFIFO_REMPTY)
-		return 0;
+		return;
 
 	/*  start reading from the start of the packet */
 	SMC_outw(priv, PTR_READ | PTR_RCV | PTR_AUTOINC, PTR_REG );
@@ -1345,10 +1345,7 @@ static int smc91c111_eth_rx(struct eth_device *edev)
 	if (!is_error) {
 		/* Pass the packet up to the protocol layers. */
 		net_receive(edev, priv->rx_buf, packet_length);
-		return 0;
 	}
-
-	return -EINVAL;
 }
 
 static int smc91c111_get_ethaddr(struct eth_device *edev, unsigned char *m)
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 4b2bd79392..1c99460eb4 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -446,7 +446,7 @@ static void smc911x_eth_halt(struct eth_device *edev)
 //	smc911x_reset(edev);
 }
 
-static int smc911x_eth_rx(struct eth_device *edev)
+static void smc911x_eth_rx(struct eth_device *edev)
 {
 	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
 	u32 *data = priv->rx_buf;
@@ -474,8 +474,6 @@ static int smc911x_eth_rx(struct eth_device *edev)
 		else if (tmplen <= PKTSIZE / sizeof(u32))
 			net_receive(edev, priv->rx_buf, pktlen);
 	}
-
-	return 0;
 }
 
 static int smc911x_init_dev(struct eth_device *edev)
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 18f83c6a2c..8bc52b1e15 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -26,7 +26,7 @@ static int tap_eth_send(struct eth_device *edev, void *packet, int length)
 	return 0;
 }
 
-static int tap_eth_rx(struct eth_device *edev)
+static void tap_eth_rx(struct eth_device *edev)
 {
 	struct tap_priv *priv = edev->priv;
 	int length;
@@ -35,8 +35,6 @@ static int tap_eth_rx(struct eth_device *edev)
 
 	if (length > 0)
 		net_receive(edev, priv->rx_buf, length);
-
-	return 0;
 }
 
 static int tap_eth_open(struct eth_device *edev)
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 3c3da3171b..7f6b13198f 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -115,7 +115,7 @@ static int usbnet_send(struct eth_device *edev, void *eth_data, int data_length)
 	return ret;
 }
 
-static int usbnet_recv(struct eth_device *edev)
+static void usbnet_recv(struct eth_device *edev)
 {
 	struct usbnet		*dev = (struct usbnet*) edev->priv;
 	struct driver_info	*info = dev->driver_info;
@@ -127,16 +127,14 @@ static int usbnet_recv(struct eth_device *edev)
 
 	ret = usb_bulk_msg(dev->udev, dev->in, dev->rx_buf, len, &alen, 2);
 	if (ret)
-		return ret;
+		return;
 
 	if (alen) {
 		if (info->rx_fixup)
-			return info->rx_fixup(dev, dev->rx_buf, alen);
+			info->rx_fixup(dev, dev->rx_buf, alen);
 		else
 			net_receive(edev, dev->rx_buf, alen);
 	}
-
-        return 0;
 }
 
 static int usbnet_init(struct eth_device *edev)
diff --git a/drivers/net/virtio.c b/drivers/net/virtio.c
index 8605f67ae2..058e457547 100644
--- a/drivers/net/virtio.c
+++ b/drivers/net/virtio.c
@@ -101,7 +101,7 @@ static int virtio_net_send(struct eth_device *edev, void *packet, int length)
 	return 0;
 }
 
-static int virtio_net_recv(struct eth_device *edev)
+static void virtio_net_recv(struct eth_device *edev)
 {
 	struct virtio_net_priv *priv = to_priv(edev);
 	struct virtio_sg sg;
@@ -111,7 +111,7 @@ static int virtio_net_recv(struct eth_device *edev)
 
 	sg.addr = virtqueue_get_buf(priv->rx_vq, &len);
 	if (!sg.addr)
-		return -EAGAIN;
+		return;
 
 	sg.length = VIRTIO_NET_RX_BUF_SIZE;
 
@@ -122,8 +122,6 @@ static int virtio_net_recv(struct eth_device *edev)
 
 	/* Put the buffer back to the rx ring */
 	virtqueue_add(priv->rx_vq, sgs, 0, 1);
-
-	return 0;
 }
 
 static void virtio_net_stop(struct eth_device *dev)
diff --git a/include/net.h b/include/net.h
index 5a6dd9ca7b..29d3d66cf9 100644
--- a/include/net.h
+++ b/include/net.h
@@ -38,7 +38,7 @@ struct eth_device {
 
 	int  (*open) (struct eth_device*);
 	int  (*send) (struct eth_device*, void *packet, int length);
-	int  (*recv) (struct eth_device*);
+	void (*recv) (struct eth_device*);
 	void (*halt) (struct eth_device*);
 	int  (*get_ethaddr) (struct eth_device*, u8 adr[6]);
 	int  (*set_ethaddr) (struct eth_device*, const unsigned char *adr);
-- 
2.39.2



