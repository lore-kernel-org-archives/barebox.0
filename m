Delivery-date: Sun, 02 Aug 2026 15:21:25 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqW84-005Xg5-1x
	for lore@lore.pengutronix.de;
	Sun, 02 Aug 2026 15:21:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A6D80201230
	for <lore@pengutronix.de>; Sun, 02 Aug 2026 15:21:24 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UD0Jh3lX;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OCNnfQGW;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6RR/gM2UXaZOwO0QWHeeFRTIhTqrR2scpwx2hWIuY1o=; b=UD0Jh3lXn+SJV1UplfwFJqoo5d
	dj0YfXIUUiS1k9yg08Pq3QBIBMfRBht+t91lShs9kZ8IlVtC/fJ3su6CnnrRFbnU4rftgit8LOfG5
	EemwLWPs81OghByjYo0zLk1JVl5RdJNfonQxeeupAyUPJyBLWDp31r64XeytbNnFXiS42r88EcY0i
	+JE2PrhoekstqS7HWLEj4yIgI0nuMsmYtJu3vd85NlVsQOO3DJjBSjfM+yF1/G0e78pX94M9PNpmp
	WDLhpIGp+uhXPV+OfQvJIrgZzGDJSr1mXSss/q3gmhAGdmlbET5T+MySZOM09o/67UDkADZ/wmram
	ZR11zt/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3B-0000000Fewd-2fkc;
	Sun, 02 Aug 2026 13:16:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3A-0000000FeuJ-02Fo
	for barebox@lists.infradead.org;
	Sun, 02 Aug 2026 13:16:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A27CD43EDB;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8947AC2BCFB;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676579;
	bh=FxRrUewhBz+cfOaGk5bZFtY92r0O3E2gpAzDkdQu5Xs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OCNnfQGWDBJTOyX2nhCBurytdEY0OChgEqQ5vQBH14vvNAMLmGP7KRQoR5b0iETao
	 vAUbOAry9C6C9ySEK2TPb/g/7UKtaUBIAeYGmmHR1nzq10DtvwTre2KAvPJpidn7E+
	 AVKnvV48QMUKAoy5ABZduzCIIggTqAKPRm4HDc9VPDZm5GeMRZhPCu3gqRZ4war8EQ
	 hOEGOT9YZbvEyYfD4Hu7gCcTbD4B3ipWoPkyqYmh73L751ceNHfoPa1iL9gx/vyAkJ
	 /+98uFpyh17GE3fvoJfzGDXwwM0Q2jtSYreO5ZyiQkvylGekd+sHb1ddtGtHcly0X3
	 lJAZO1zfX9bQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 775C4C55175;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Sun, 02 Aug 2026 15:16:28 +0200
Subject: [PATCH v3 12/15] ata: ahci: improve AHCI port bring-up sequence
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260802-rn102-rn104-series-v3-12-f7685a279fb5@gmail.com>
References: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
In-Reply-To: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785676613; l=7135;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=6kzDDNMpIXgqUtyt14q3Lj35MT1iqXYy/UAoYVNMToY=;
 b=HMLAf/nfFCF9Al97lH8mp3aSFGvGIAzfaXto7pOehCbP8MGUDaub74nlZUkeVTFp5ww/PMCkE
 psys3KqOgh5Cg8oozsZCAp3aQ0WHgqQzX4SeJnvdNJVrOsC5pJOe42i
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
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A6D80201230
X-Stat-Signature: pqnk6a1iknt1of7dzyj61k665exkxidt

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
 drivers/ata/ahci.c | 144 +++++++++++++++++------------------------------------
 1 file changed, 47 insertions(+), 97 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 09d37720c2..2504f4d19a 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -342,20 +342,37 @@ static int ahci_init_port(struct ahci_port *ahci_port)
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
@@ -369,9 +386,6 @@ static int ahci_init_port(struct ahci_port *ahci_port)
 	ahci_port->cmd_slot = mem;
 	ahci_port->cmd_slot_dma = mem_dma;
 
-	ahci_port_debug(ahci_port, "cmd_slot = 0x%p (0x%pad)\n",
-			ahci_port->cmd_slot, &ahci_port->cmd_slot_dma);
-
 	/*
 	 * Second item: Received-FIS area
 	 */
@@ -384,104 +398,40 @@ static int ahci_init_port(struct ahci_port *ahci_port)
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

-- 
2.47.3




