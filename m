Delivery-date: Thu, 13 Aug 2026 17:29:01 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXMa-002imH-1w
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:29:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 206792020E0
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:28:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eZCZJguU;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=aByNxhyO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jbGfv1t/3ICdJCfTqjLlaLkX0ygHJf8U6Vx+PxYZcz0=; b=eZCZJguUhlRvi6tfGh3ea0jZoJ
	QtWNXAuqJqFbqTOO2lOmnOJAo4wlp4B3Nhe/Ndi/lnqfo9K2+vtQeQGW0lWpZUadC1q29AwjqN/fO
	XxmwSgcRuP6szDcG/hv84WUzWISFHm1HDqDLXdm6TxigrB/n7MyrBxbGMKi83/vzEe3WTaVqC/9iv
	E/+xZIZne4YDzaOUZuhbUkuxdPlV7V4sgRADnqttN0qh26HzeQoPsdMVycEznoTxnd74umRF8ezGc
	EQBk49qoS3ayAN3u2EW3gtY+rs7WLYOuLPJ8hBIryUprj3YONhZn1jP9O9+zpv97ymMpiy98oxzQa
	R0lZMU3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXKB-000000010Wi-3Z6Z;
	Thu, 13 Aug 2026 15:26:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK8-000000010TW-0PCW
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E194B43BAA;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C536FC2BCF5;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=917skmZwYR3ckMH6rV9+v+21tRxVo7Y5vkrrne4rU8Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=aByNxhyOnjLwbycKUQqKeVt2b/oOa1BQtEQVxIR4v5Cr1wkaNwp42IdHwYQa0kB9F
	 piKgWn+5Q5w/tcy9Z8BveqshIDH6e9D3fZORTi7SZMIHA5l77ySLDHKYSTWsy2Bqs9
	 rXLyA+AEiKuUEu6yW4CIJW9XmyqTfXkucLEn/Lyjm3uVDV7c1CHNENluRHyiw/Vy+1
	 q2G6KAfkrUa9jB2U+BIf3WnbJsX2kZCZ021pL64gdSrfyIIAFIUAWCJ2j74HN2XB0Y
	 4bgnalmn3TDWGGEs9/Yjj094m/fSfkw7l2YULvm+PsCZMOmJ34oK+QCpzw0y1r8XHg
	 Na3KqhfY1wp9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EBDC5B572;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:33 +0200
Subject: [PATCH v4 13/14] ata: ahci: add FLUSH EXT and STANDBY IMMEDIATE
 support during shutdown
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260813-rn102-rn104-series-v4-13-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=2131;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=NB/lGclEWIk7DTAmZIt8R54Cyh8dwOTIdS/Q1rcI78U=;
 b=2aQJfCKEgF34dQuW3LWZyIUpkZQwOhOu4dSxnyeZjexYznFMVPI3CTHkqlc12Y/VFn83yLFRY
 tO9oFZNF1nSC8Kgi6XnWy2QIc1f61/oyInZZ29BUX9IpTl1dlZAUS2G
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
X-Stat-Signature: j9wesxmaie3uw3zw3fhxa5pa7h9ty8jj
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
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
X-Rspamd-Queue-Id: 206792020E0

From: Luca Lauro <famlauro93l@gmail.com>

Some AHCI controllers require ATA FLUSH EXT and STANDBY IMMEDIATE to be
issued before poweroff to ensure data integrity and proper device
shutdown. This patch introduces ahci_port_shutdown(), which sends these
commands using ahci_ata_nodata().

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/ata/ahci.c | 46 +++++-----------------------------------------
 1 file changed, 5 insertions(+), 41 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index c78d1953e4..9ac34b15fe 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -49,6 +49,11 @@
 #define ahci_debug(ahci, fmt, arg...) \
 	dev_dbg(ahci->dev, fmt, ##arg)
 
+#define ATA_CMD_FLUSH_EXT 0xEA
+#define ATA_CMD_STANDBYNOW1 0xE0
+
+static LIST_HEAD(ahci_devices);
+
 static const struct pci_device_id ahci_pci_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_MARVELL_EXT, 0x9170) },
 	{ 0, }
@@ -691,47 +696,6 @@ static void ahci_port_shutdown(struct ahci_port *port)
 		ahci_port_info(port, "STANDBY IMMEDIATE failed\n");
 }
 
-/* Full poweroff sequence */
-static void ahci_poweroff(struct poweroff_handler *handler, unsigned long flags)
-{
-	struct ahci_device *ahci;
-	int i, n_ports;
-
-	list_for_each_entry(ahci, &ahci_devices, list) {
-
-		if (!ahci->mmio_base)
-			continue;
-
-		/* FLUSH + STANDBY on all active ports */
-		n_ports = max_t(int, ahci->n_ports, fls(ahci->port_map));
-
-		for (i = 0; i < n_ports; i++) {
-			struct ahci_port *port = &ahci->ports[i];
-
-			if (!(ahci->port_map & (1 << i)))
-				continue;
-
-			ahci_port_shutdown(port);
-		}
-
-		/* (optional) shutsown controller after commands
-		* ahci_shutdown_host(ahci);
-		*/
-	}
-}
-
-static struct poweroff_handler ahci_po_handler = {
-	.poweroff = ahci_poweroff,
-	.priority = 200,   /* higher than gpio-poweroff */
-};
-
-static int ahci_register_poweroff(void)
-{
-	poweroff_handler_register(&ahci_po_handler);
-	return 0;
-}
-postcore_initcall(ahci_register_poweroff);
-
 static __maybe_unused struct of_device_id ahci_dt_ids[] = {
 	{
 		.compatible = "calxeda,hb-ahci",

-- 
2.47.3




