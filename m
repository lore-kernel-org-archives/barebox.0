Delivery-date: Thu, 13 Aug 2026 17:29:18 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXMr-002ioL-2C
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:29:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DF2FE2021A6
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:29:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HaFlsV7c;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=QsUMQ8Dr;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lOokuhWTd99Afh5CGBo54i10K0LMB57gcwNv6g/KBfY=; b=HaFlsV7co99yOTbdI6nzCFsX8n
	uI0387fKoCADC8xIzkwVpzFJ9XvD8WUzGYiee4ahDDszeM9gEGSvbFEfLM7F/JvIvjxeSf/zrMNo0
	+K6pGZckSy1WvqakZT3yOs3V7jOf8wsCFN5HRT4h2f4jW1NXjDqklarbzjknOAI+MAx5QpjJ0CsoV
	28gvwspD8fy97+AQlyTlqVxt5WnzTcz3Jl31n1cBCSTKEgYkhDLX/iSAttLi0d4msq7Dv/KW5/iQ3
	nsDmehRoiV4JssglnLne3Aw8JzWi+jx+Cdcf0jevuYWDReC2SO7LfZzir+HvfsMjoL/l5EWRDaAIW
	vA9QPlDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXKC-000000010XR-1jKH;
	Thu, 13 Aug 2026 15:26:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK8-000000010TU-0QwN
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D833943B9C;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB626C2BCF4;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=62JSTmLD5GK5reqTF+PQKx2tnOpFiJtBNwI0i8W4mus=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=QsUMQ8DrCmLQtfmfW0FcNBEmJz1mYApqk1qGVY1+u1qNBAzMJn3NofxB5jFmTKTP2
	 iSW1Cja3KCCS2BIT6v+hEyfV7njdoGH/ZHNSiSLbtfME5i1tAigq8I9aarwpgu77tO
	 J2YAP5TMyhlBHsyQwMzXB+K7u6UdRZ0vLb+FeX+UJDXlfSdnvEvWRJAL/l16kiTZON
	 8YNuEuxknKQE1xRXLKNHn6DV1T66j7+uMRESWWyzN4qsCIIEs3l1zJXPZQKE7HY0Jv
	 DKwp8NiZHB4Mn1F1W0H0WyqPf/PnyQxF89cvQMFeS7OihdJdm1a3DQsRBYsSWfd6Zi
	 TdF7AKUmEWS7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB06AC5DF6D;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:32 +0200
Subject: [PATCH v4 12/14] ata: ahci: improve AHCI port bring-up sequence
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260813-rn102-rn104-series-v4-12-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=8725;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=5ODRngi2rqx5yf6ZKw7AVZrT5hNaFT5+ktSs1026R8g=;
 b=wxmLTG90Mf9dLzG5EbnYP3FMnMXMIEQzY6UNhG4IatGoxhI8EKkTgzjYgIc++g+n2IAU5p4sO
 4vp3qF/HfILCysnE4Jt+qpcKAMH4wvPyPk8iHp+cAWK8RKwsP2vTToG
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 196megouaowaehyemat5oipzweoesccs
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: DF2FE2021A6

From: Luca Lauro <famlauro93l@gmail.com>

The existing code only attempted a partial port disable and relied on
spin-up and link-up paths that are not reliable on some platforms like
Marvell 9170-based systems; which require a stricter and more complete
port initialization sequence than the generic AHCI specification.

This patch improves the port bring-up sequence by:
- fully disabling the port and waiting for FR/CR to clear
- clearing PORT_SCR_ERR before initialization
- issuing a COMRESET and waiting for PHY readiness
- programming both 32-bit and 64-bit base address registers
- enabling FIS receive and port start in the correct order
- waiting for device readiness via TFDATA
- removing obsolete spin-up, ICC and link-up logic

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/ata/ahci.c | 201 +++++++++++++++++++++++++++--------------------------
 1 file changed, 104 insertions(+), 97 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 1175d76881..c78d1953e4 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -337,20 +337,37 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	int ret;
 
 	/* make sure port is not active */
-	val = ahci_port_read(ahci_port, PORT_CMD);
-	if (val & (PORT_CMD_LIST_ON | PORT_CMD_FIS_ON | PORT_CMD_FIS_RX | PORT_CMD_START)) {
-		ahci_port_debug(ahci_port, "Port is active. Deactivating.\n");
-		val &= ~(PORT_CMD_LIST_ON | PORT_CMD_FIS_ON |
-			 PORT_CMD_FIS_RX | PORT_CMD_START);
-		ahci_port_write(ahci_port, PORT_CMD, val);
-
-		/*
-		 * spec says 500 msecs for each bit, so
-		 * this is slightly incorrect.
-		 */
-		mdelay(500);
+	cmd = ahci_port_read(ahci_port, PORT_CMD);
+	cmd &= ~(PORT_CMD_START | PORT_CMD_FIS_RX | PORT_CMD_FIS_ON |
+			PORT_CMD_LIST_ON | PORT_CMD_SPIN_UP);
+	ahci_port_write_f(ahci_port, PORT_CMD, cmd);
+
+	/* Wait for FR=0 and CR=0 */
+	ret = wait_on_timeout(SECOND,
+		!(ahci_port_read(ahci_port, PORT_CMD) &
+			(PORT_CMD_FIS_ON | PORT_CMD_LIST_ON)));
+	if (ret)
+		dev_warn(ahci_port->ahci->dev, "timeout waiting for port disable\n");
+
+	/* Clear errors */
+	val = ahci_port_read(ahci_port, PORT_SCR_ERR);
+	if (val)
+		ahci_port_write(ahci_port, PORT_SCR_ERR, val);
+
+	/* COMRESET: write DET=1 then DET=0 */
+	ahci_port_write(ahci_port, PORT_SCR_CTL, 1);
+	udelay(1000);
+	ahci_port_write(ahci_port, PORT_SCR_CTL, 0);
+
+	/* Wait for PHY ready */
+	ret = wait_on_timeout(SECOND,
+		(ahci_port_read(ahci_port, PORT_SCR_STAT) & PORT_SCR_STAT_DET) == 0x3);
+	if (ret) {
+		ahci_port_info(ahci_port, "PHY not ready after COMRESET\n");
+		return -ETIMEDOUT;
 	}
 
+	/* Allocate DMA memory */
 	mem = dma_alloc_coherent(DMA_DEVICE_BROKEN,
 				 AHCI_PORT_PRIV_DMA_SZ, &mem_dma);
 	if (!mem) {
@@ -364,9 +381,6 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ahci_port->cmd_slot = mem;
 	ahci_port->cmd_slot_dma = mem_dma;
 
-	ahci_port_debug(ahci_port, "cmd_slot = 0x%p (0x%pad)\n",
-			ahci_port->cmd_slot, &ahci_port->cmd_slot_dma);
-
 	/*
 	 * Second item: Received-FIS area
 	 */
@@ -379,104 +393,40 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	 */
 	ahci_port->cmd_tbl = mem + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
 	ahci_port->cmd_tbl_dma = mem_dma + AHCI_CMD_LIST_SZ + AHCI_RX_FIS_SZ;
-
-	ahci_port_debug(ahci_port, "cmd_tbl = 0x%p (0x%pad)\n",
-			ahci_port->cmd_tbl, &ahci_port->cmd_tbl_dma);
-
 	ahci_port->cmd_tbl_sg = ahci_port->cmd_tbl + AHCI_CMD_TBL_HDR_SZ;
 
-	ahci_port_write_f(ahci_port, PORT_LST_ADDR, lower_32_bits(ahci_port->cmd_slot_dma));
+	/* Program command list + FIS base addresses */
+	ahci_port_write_f(ahci_port, PORT_LST_ADDR,
+		lower_32_bits(ahci_port->cmd_slot_dma));
 	if (ahci_port->ahci->cap & HOST_CAP_64)
-		ahci_port_write_f(ahci_port, PORT_LST_ADDR_HI, upper_32_bits(ahci_port->cmd_slot_dma));
-	ahci_port_write_f(ahci_port, PORT_FIS_ADDR, lower_32_bits(ahci_port->rx_fis_dma));
+		ahci_port_write_f(ahci_port, PORT_LST_ADDR_HI,
+			upper_32_bits(ahci_port->cmd_slot_dma));
+
+	ahci_port_write_f(ahci_port, PORT_FIS_ADDR,
+		lower_32_bits(ahci_port->rx_fis_dma));
 	if (ahci_port->ahci->cap & HOST_CAP_64)
-		ahci_port_write_f(ahci_port, PORT_FIS_ADDR_HI, upper_32_bits(ahci_port->rx_fis_dma));
+		ahci_port_write_f(ahci_port, PORT_FIS_ADDR_HI,
+			upper_32_bits(ahci_port->rx_fis_dma));
 
-	/*
-	 * Add the spinup command to whatever mode bits may
-	 * already be on in the command register.
-	 */
+	/* Enable FIS receive engine */
 	cmd = ahci_port_read(ahci_port, PORT_CMD);
 	cmd |= PORT_CMD_FIS_RX;
-	cmd |= PORT_CMD_SPIN_UP;
-	cmd |= PORT_CMD_ICC_ACTIVE;
 	ahci_port_write_f(ahci_port, PORT_CMD, cmd);
 
-	mdelay(10);
-
-	cmd = ahci_port_read(ahci_port, PORT_CMD);
+	/* Enable port start */
 	cmd |= PORT_CMD_START;
 	ahci_port_write_f(ahci_port, PORT_CMD, cmd);
 
-	/*
-	 * Bring up SATA link.
-	 * SATA link bringup time is usually less than 1 ms; only very
-	 * rarely has it taken between 1-2 ms. Never seen it above 2 ms.
-	 */
-	ret = wait_on_timeout(WAIT_LINKUP,
-			(ahci_port_read(ahci_port, PORT_SCR_STAT) & PORT_SCR_STAT_DET) == 0x3);
-	if (ret) {
-		ahci_port_info(ahci_port, "SATA link timeout\n");
-		ret = -ETIMEDOUT;
-		goto err_init;
-	}
-
-	ahci_port_info(ahci_port, "SATA link ok\n");
-
-	/* Clear error status */
-	val = ahci_port_read(ahci_port, PORT_SCR_ERR);
-	if (val)
-		ahci_port_write(ahci_port, PORT_SCR_ERR, val);
-
-	ahci_port_info(ahci_port, "Spinning up device...\n");
-
+	/* Wait for device ready (TFDATA not BUSY) */
 	ret = wait_on_timeout(WAIT_SPINUP,
-			((ahci_port_read(ahci_port, PORT_TFDATA) &
-			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) == 0) ||
-			((ahci_port_read(ahci_port, PORT_SCR_STAT) &
-			 PORT_SCR_STAT_DET) == 1));
+			!(ahci_port_read(ahci_port, PORT_TFDATA) &
+			(ATA_STATUS_BUSY | ATA_STATUS_DRQ)));
 	if (ret) {
-		ahci_port_info(ahci_port, "timeout.\n");
-		ret = -ENODEV;
-		goto err_init;
-	}
-
-	if ((ahci_port_read(ahci_port, PORT_SCR_STAT) & PORT_SCR_STAT_DET) == 1) {
-		ahci_port_info(ahci_port, "down.\n");
-		ret = -ENODEV;
-		goto err_init;
+		ahci_port_info(ahci_port, "device not ready\n");
+		return -ENODEV;
 	}
 
-	ahci_port_info(ahci_port, "ok.\n");
-
-	val = ahci_port_read(ahci_port, PORT_SCR_ERR);
-
-	ahci_port_write(ahci_port, PORT_SCR_ERR, val);
-
-	/* ack any pending irq events for this port */
-	val = ahci_port_read(ahci_port, PORT_IRQ_STAT);
-	if (val)
-		ahci_port_write(ahci_port, PORT_IRQ_STAT, val);
-
-	ahci_iowrite(ahci_port->ahci, HOST_IRQ_STAT, 1 << ahci_port->num);
-
-	/* set irq mask (enables interrupts) */
-	ahci_port_write(ahci_port, PORT_IRQ_MASK, DEF_PORT_IRQ);
-
-	/* register linkup ports */
-	val = ahci_port_read(ahci_port, PORT_SCR_STAT);
-
-	ahci_port_debug(ahci_port, "status: 0x%08x\n", val);
-
-	if ((val & PORT_SCR_STAT_DET) == 0x3)
-		return 0;
-
-	ret = -ENODEV;
-
-err_init:
-	dma_free_coherent(DMA_DEVICE_BROKEN,
-			  mem, mem_dma, AHCI_PORT_PRIV_DMA_SZ);
-	return ret;
+	return 0;
 }
 
 static int ahci_port_start(struct ata_port *ata_port)
@@ -725,6 +675,63 @@ static int ahci_probe(struct device *dev)
 	return ret;
 }
 
+/* Issue FLUSH EXT + STANDBY IMMEDIATE */
+static void ahci_port_shutdown(struct ahci_port *port)
+{
+	if (!port->cmd_tbl || !port->cmd_slot)
+		return;
+
+	if (!ahci_link_ok(port, 0))
+		return;
+
+	if (ahci_ata_nodata(port, ATA_CMD_FLUSH_EXT, 0))
+		ahci_port_info(port, "FLUSH EXT failed\n");
+
+	if (ahci_ata_nodata(port, ATA_CMD_STANDBYNOW1, 0))
+		ahci_port_info(port, "STANDBY IMMEDIATE failed\n");
+}
+
+/* Full poweroff sequence */
+static void ahci_poweroff(struct poweroff_handler *handler, unsigned long flags)
+{
+	struct ahci_device *ahci;
+	int i, n_ports;
+
+	list_for_each_entry(ahci, &ahci_devices, list) {
+
+		if (!ahci->mmio_base)
+			continue;
+
+		/* FLUSH + STANDBY on all active ports */
+		n_ports = max_t(int, ahci->n_ports, fls(ahci->port_map));
+
+		for (i = 0; i < n_ports; i++) {
+			struct ahci_port *port = &ahci->ports[i];
+
+			if (!(ahci->port_map & (1 << i)))
+				continue;
+
+			ahci_port_shutdown(port);
+		}
+
+		/* (optional) shutsown controller after commands
+		* ahci_shutdown_host(ahci);
+		*/
+	}
+}
+
+static struct poweroff_handler ahci_po_handler = {
+	.poweroff = ahci_poweroff,
+	.priority = 200,   /* higher than gpio-poweroff */
+};
+
+static int ahci_register_poweroff(void)
+{
+	poweroff_handler_register(&ahci_po_handler);
+	return 0;
+}
+postcore_initcall(ahci_register_poweroff);
+
 static __maybe_unused struct of_device_id ahci_dt_ids[] = {
 	{
 		.compatible = "calxeda,hb-ahci",

-- 
2.47.3




