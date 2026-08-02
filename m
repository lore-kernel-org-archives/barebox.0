Delivery-date: Sun, 02 Aug 2026 16:16:25 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqWzI-005YW4-27
	for lore@lore.pengutronix.de;
	Sun, 02 Aug 2026 16:16:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 11E692010F4
	for <lore@pengutronix.de>; Sun, 02 Aug 2026 16:16:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Xv+ayM3Q;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VIc8s4JK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sfxEDIuaNJlDOfKrbRGqkGvxl5DfZri2gjg5UcBBiNE=; b=Xv+ayM3Q2Y1qpB4tpsCbU2Hy+y
	L0HkxEBCV2hGioIuTTAk96sJOlxxZlaB+TD68t2o2IwOgNbbePIdxeDKa0xW5p0GTppLl33uJZigs
	02t90+ny3uRyBwqpyf9EwfUBK3Opi9qj3PD3YAFe5o4WMuU98WA7E+Z5LPe0nNVc0qh5QDDGjracy
	UsME1QUS4HPWCaXTf5NhbJFx02OgYzAj7DdmgEO24SkNpkw0OF4z+80ihnkfQYYQ6TZvYw+MbrSdF
	wewJQ39oKFLrA/byzw7DN2W+Rc330IZoJ2BQ8auRPAyEYxR/xFFQvZenulnPpOBXQFUa8sC7z/6BG
	xclNeZEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3B-0000000FexF-3oj7;
	Sun, 02 Aug 2026 13:16:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3A-0000000FeuK-08HU
	for barebox@lists.infradead.org;
	Sun, 02 Aug 2026 13:16:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B1B4D44FF3;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95246C2BCFC;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676579;
	bh=DxxPlMhm7AIyYigEHomQkOVdsP12BYbaIE0mChCEI7s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=VIc8s4JK41w6Tz0FqAs0CfzUVlisSBu8PmyRTKT9bPfTeXpjXTDGfJOE+yi1T1sWm
	 Te8s9By6CTMjCvngvfIadt8uRcD3bmV+hGcBvqUYLAGAK/HU255Yv+StIS5HjiXWER
	 /1pPye4qHJDsyl3QWgTZtnXuBy844cstb3PYlq3w7RxiATwXxLtIpSTPw9RLdojfyf
	 dzrWGZt9Iqgc9ipO+tj8ITfQ1e9Cr2Q2niER9arqIGQHRa6x6ZNjYbxJbTu3qG13XM
	 Mh/nYIKG+J+JJj9U27ng+DV0aL3mZqGDmx9EkLoDHEt8sxFuHHF9hfA+VTSeCjF0mG
	 hdJ7xxpmpLzhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8522DC55162;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Sun, 02 Aug 2026 15:16:29 +0200
Subject: [PATCH v3 13/15] ata: ahci: add FLUSH EXT and STANDBY IMMEDIATE
 support during shutdown
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260802-rn102-rn104-series-v3-13-f7685a279fb5@gmail.com>
References: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
In-Reply-To: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785676613; l=2481;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=T34Iau6B1i8z0A6pC6fbqFrYkore0PACx4qG1mlBxKM=;
 b=WqsUhhnpNUC7/4ufNipUfuTgWBywUOcPwZEGVHZJR5LSVT1sDIwcfWOHsDR0JZABte0u5Y6g/
 xODpyVdmKbHDe5uLjVcVDIaRjZAl1pdNwu1jcKkHV6b+IgBzly2j0z0
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
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
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
X-Rspamd-Queue-Id: 11E692010F4
X-Stat-Signature: bb36b4677wb8iihg8dkznwkgcun9b1nz

From: Luca Lauro <famlauro93l@gmail.com>

Some AHCI controllers require ATA FLUSH EXT and STANDBY IMMEDIATE to be
issued before poweroff to ensure data integrity and proper device
shutdown. This patch introduces ahci_port_shutdown(), which sends these
commands using ahci_ata_nodata(), and integrates it into a new AHCI
poweroff handler.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/ata/ahci.c | 60 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 2504f4d19a..a9a3f43f21 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -48,6 +48,9 @@
 #define ahci_debug(ahci, fmt, arg...) \
 	dev_dbg(ahci->dev, fmt, ##arg)
 
+#define ATA_CMD_FLUSH_EXT 0xEA
+#define ATA_CMD_STANDBYNOW1 0xE0
+
 #ifndef PCI_VENDOR_ID_MARVELL_EXT
 #define PCI_VENDOR_ID_MARVELL_EXT 0x1b4b
 #endif
@@ -680,6 +683,63 @@ static int ahci_probe(struct device *dev)
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




