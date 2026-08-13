Delivery-date: Thu, 13 Aug 2026 17:28:51 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXMQ-002iki-2p
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:28:51 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0CF0A2020F2
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:28:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Mj4Sm8j3;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OXDQqksK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yxQPSGOGYLB+r8bzYUWcDE4u6V9jS1qWFsKyVWtoLwY=; b=Mj4Sm8j3eQb94wFBF6xYtVlH+K
	OpWIurzYXYLJr8ehQ8/tS6NLb4K7UsCR/YhPqNGjIoUfI7A/oDHKLjmMW8xkV58SRnEH4G9cge6j8
	rP9edW3Ubr7ZTVCRC8tIJD9f5NzytF2fyWB3vpOge9XYxZdjW0TTYKl8kjCCj+LnRGiZ6dmBzSpCO
	HZWg92kiCoXCUElIHIscGVULXGe56WlkGiYSiYfFInR15VGMuKjhqsopwjfmMNfX04waCnEOP4Ojz
	vZnBwjjg07Vn06C1XyUr3uaT9CZB6SARWGeo2M7zI5s8enApXIiBME6lo/T3ePlBUp9wDtRsl5leh
	7A+MhrQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXKD-000000010Zm-3wzl;
	Thu, 13 Aug 2026 15:26:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK8-000000010TX-0QtR
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EE01843BC7;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D151DC19425;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=nv3f+ofKAW78Mvps1x+TgjyFzIQtdU9SnkYG57OtImo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OXDQqksKy0rwWlOIFA19/iI3LOQGxqv9COjv3iM1sG8vuW027g5Ps+1JvnHenYhFg
	 r8XAnonGI3WtudNDw8P0cRaw7mD1jYcK5YVq5hqQLZK07uFTJLOMHPhfu8pd0Cn9Zr
	 DmL2zqjjjXTsMf8vNEiCt22NT8QfUtrA2qKAtRZtDqwm9KYs5sH11lefKvnMl8rhQ1
	 fYTyK8zMuiEYduKYAgoUgkHUhRXchUfpZKUx5GIC0wQuItxXweKkzmUxcwm5PORJCV
	 4S7CWz8my4C84xLblvwb8riHw9VuHnn8VXBNEKj6lHo8RtCJINVNHU5WCGYYULADqA
	 zCTfA2l1B09aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12CEC5CFCF;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:34 +0200
Subject: [PATCH v4 14/14] ata: ahci: cleanup legacy code and remove unused
 paths
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260813-rn102-rn104-series-v4-14-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=4281;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=I5vaH5dAJJkDJo2zy8FvixQpCO6viZOE9A9/mdGKAS0=;
 b=gL2oMCKcrql0khzBjloB8IewfNUohDTBWbS84Wkj+ACidPwMkSsAdvoKKoE4JOoYKl7xIgeGd
 Zh11h2Fp3ORAdKnlfw+Kz+LES4oK3OxPj5RKVvvHprNYcULbcG4i4tq
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
X-Stat-Signature: w36onxqa7fo5yq7n7f89jqowyu9ao1gz
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
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
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: 0CF0A2020F2

From: Luca Lauro <famlauro93l@gmail.com>

Remove obsolete and unused AHCI initialization code inherited from older
drivers, including disabled flush helpers, legacy HOST_CAP/HOST_PORTS_IMPL
programming, outdated reset handling, and debug paths. These
changes do not alter functional behavior, as all required initialization
and shutdown logic is now implemented in dedicated commits.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/ata/ahci.c | 63 ++++++++----------------------------------------------
 1 file changed, 9 insertions(+), 54 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 9ac34b15fe..ec152ba492 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -461,43 +461,6 @@ static struct ata_port_operations ahci_ops = {
 	.write = ahci_write,
 };
 
-#if 0
-/*
- * In the general case of generic rotating media it makes sense to have a
- * flush capability. It probably even makes sense in the case of SSDs because
- * one cannot always know for sure what kind of internal cache/flush mechanism
- * is embodied therein. At first it was planned to invoke this after the last
- * write to disk and before rebooting. In practice, knowing, a priori, which
- * is the last write is difficult. Because writing to the disk in u-boot is
- * very rare, this flush command will be invoked after every block write.
- */
-static int ata_io_flush(u8 port)
-{
-	u8 fis[20];
-	struct ahci_ioports *pp = &(probe_ent->port[port]);
-	volatile u8 *port_mmio = (volatile u8 *)pp->port_mmio;
-	u32 cmd_fis_len = 5;	/* five dwords */
-
-	/* Preset the FIS */
-	memset(fis, 0, 20);
-	fis[0] = 0x27;		 /* Host to device FIS. */
-	fis[1] = 1 << 7;	 /* Command FIS. */
-	fis[2] = ATA_CMD_FLUSH_EXT;
-
-	memcpy((unsigned char *)pp->cmd_tbl, fis, 20);
-	ahci_fill_cmd_slot(pp, cmd_fis_len);
-	mywritel_with_flush(1, port_mmio + PORT_CMD_ISSUE);
-
-	if (waiting_for_cmd_completed(port_mmio + PORT_CMD_ISSUE,
-			WAIT_MS_FLUSH, 0x1)) {
-		debug("scsi_ahci: flush command timeout on port %d.\n", port);
-		return -EIO;
-	}
-
-	return 0;
-}
-#endif
-
 void ahci_print_info(struct ahci_device *ahci)
 {
 	u32 vers, cap, cap2, impl, speed;
@@ -584,7 +547,7 @@ static int ahci_detect(struct device *dev)
 
 int ahci_add_host(struct ahci_device *ahci)
 {
-	u32 tmp, cap_save;
+	u32 tmp;
 	int n_ports, i, ret;
 
 	ahci->host_flags = ATA_FLAG_SATA
@@ -597,35 +560,27 @@ int ahci_add_host(struct ahci_device *ahci)
 
 	ahci_debug(ahci, "ahci_host_init: start\n");
 
-	cap_save = ahci_ioread(ahci, HOST_CAP);
-	cap_save &= (HOST_CAP_SMPS | HOST_CAP_SPM);
-	cap_save |= HOST_CAP_SSS;  /* Staggered Spin-up. Not needed. */
-
 	/* global controller reset */
 	tmp = ahci_ioread(ahci, HOST_CTL);
-	if ((tmp & HOST_RESET) == 0)
-		ahci_iowrite_f(ahci, HOST_CTL, tmp | HOST_RESET);
+	ahci_iowrite_f(ahci, HOST_CTL, tmp | HOST_RESET);
 
-	/*
-	 * reset must complete within 1 second, or
-	 * the hardware should be considered fried.
-	 */
 	ret = wait_on_timeout(SECOND, (ahci_ioread(ahci, HOST_CTL) & HOST_RESET) == 0);
 	if (ret) {
-		ahci_debug(ahci, "controller reset failed (0x%x)\n", tmp);
+		ahci_debug(ahci, "controller reset failed (HOST_CTL=0x%x)\n",
+				ahci_ioread(ahci, HOST_CTL));
 		return -ENODEV;
 	}
 
-	ahci_iowrite_f(ahci, HOST_CTL, HOST_AHCI_EN);
-	ahci_iowrite(ahci, HOST_CAP, cap_save);
-	ahci_iowrite_f(ahci, HOST_PORTS_IMPL, 0xf);
+	tmp = ahci_ioread(ahci, HOST_CTL);
+	tmp |= HOST_AHCI_EN;
+	ahci_iowrite_f(ahci, HOST_CTL, tmp);
 
 	ahci->cap = ahci_ioread(ahci, HOST_CAP);
 	ahci->port_map = ahci_ioread(ahci, HOST_PORTS_IMPL);
 	ahci->n_ports = (ahci->cap & HOST_CAP_NP) + 1;
 
 	ahci_debug(ahci, "cap 0x%x  port_map 0x%x  n_ports %d\n",
-	      ahci->cap, ahci->port_map, ahci->n_ports);
+			ahci->cap, ahci->port_map, ahci->n_ports);
 
 	n_ports = max_t(int, ahci->n_ports, fls(ahci->port_map));
 
@@ -644,9 +599,9 @@ int ahci_add_host(struct ahci_device *ahci)
 		ata_port_register(&ahci_port->ata);
 	}
 
+	/* enable HBA level interrupts */
 	tmp = ahci_ioread(ahci, HOST_CTL);
 	ahci_iowrite(ahci, HOST_CTL, tmp | HOST_IRQ_EN);
-	tmp = ahci_ioread(ahci, HOST_CTL);
 
 	ahci->dev->detect = ahci_detect;
 	list_add(&ahci->list, &ahci_devices);

-- 
2.47.3




