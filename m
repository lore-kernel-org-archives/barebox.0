Delivery-date: Sun, 02 Aug 2026 15:17:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqW4T-005XbT-14
	for lore@lore.pengutronix.de;
	Sun, 02 Aug 2026 15:17:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BED6C201230
	for <lore@pengutronix.de>; Sun, 02 Aug 2026 15:17:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="agJKwMe/";
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="SGmI/040";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e1mt6npw62ZqFPZSxLOWULcKRyP2hYlgFM5dVo+KrVg=; b=agJKwMe/NlJd88n9kAX+X/UKTj
	ydjIdFzUm2ygUx7IhP0ulvhhwiiBAjd9b5m8NTKCDzNXbAQxK1PWiwan70IUFyG33faa9iONcrSBi
	DisWpcdXC4u5VcZxykgJ5VkT0Nqasow5x+fY8f9Nb88yO69lvzntFD4cm+YOq404bJhBe4NyFL2WR
	wMj96OsIl8SaoLcwX3DOBZLZf8ky5im+aTBepXcefZGvpaZ31zA/w/1noRPFBeW7l8N2e3F45xQEG
	Pkqly4o57tb4rtzobN+vw1QauUm67aKLwommbLXY5RZmzV8Epd+sWueZKUOD1GW/Mc7t1CeECTqbh
	xbXnnBDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3C-0000000FexU-0XMt;
	Sun, 02 Aug 2026 13:16:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3A-0000000FeuL-0MWb
	for barebox@lists.infradead.org;
	Sun, 02 Aug 2026 13:16:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C1CDB44FF5;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E9C2BCFD;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676579;
	bh=GqCS6bfpkxlbnmgpQkRIEjOEdSOiAvi1/fhtCu5bMwg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=SGmI/040vV5VBYm3drfO/4czTrbvb27RBKuEvjpDtIaIw9/nam0199BRqPLnp5HKx
	 wrkOxyTxGtoffrhO39qEz8Pj72oAur65eA4RIpO2qPny4+brEbdMdeFWy6NbNxItDy
	 xNSHC8KPo3Qocbb7Ep9NoMM5rzbyMfIm8Em6QYXL7GoVriaSJuv9oiKGzVcqtUdTAc
	 /wbK5/msl513DsD49pzxdRricJChxiHNyKE/B40mQpPD9uxGGmBUAdmUXtBoKAIwfy
	 aSUU8mEzzrDNwQOtCqG268NMJ9AD2e8jcoSd2KAm9xvmLdIpP3OvdK2aMZYzLeBZk/
	 arHBkcFAiz1TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B6C55180;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Sun, 02 Aug 2026 15:16:30 +0200
Subject: [PATCH v3 14/15] ata: ahci: add shutdown helpers for AHCI
 controllers
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260802-rn102-rn104-series-v3-14-f7685a279fb5@gmail.com>
References: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
In-Reply-To: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785676614; l=2392;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=BMPMiscMovgAgnONTNzG4eiPp/a1cSuATP636hFCgHQ=;
 b=7r1BPPOcIB8vegNh/e3KWFQbk+RuqlmKS1PzXEZXX1nzgevJy14y+c18jHtXKxBNVfyWf9KL+
 9PLm31seOLKAuJamxGNSUcGB65UhMHSYxh+x/Dnl/6OQfoFNgUOFzME
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
X-Rspamd-Queue-Id: BED6C201230
X-Stat-Signature: zo3ajk55hsjyaofi6buyd5s5dxkkx93e

From: Luca Lauro <famlauro93l@gmail.com>

Introduce helper functions to stop the DMA engine and FIS receive engine
before shutdown. These helpers mirror the libata shutdown sequence and
ensure that no AHCI activity is in progress when the system powers off.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/ata/ahci.c | 60 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index a9a3f43f21..e9e73069c1 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -21,6 +21,7 @@
 #include <linux/sizes.h>
 #include <linux/pci.h>
 #include <clock.h>
+#include <poweroff.h>
 
 #include "ahci.h"
 
@@ -683,6 +684,65 @@ static int ahci_probe(struct device *dev)
 	return ret;
 }
 
+/* -------------------------------- */
+/*		AHCI shutdown helpers		*/
+/* -------------------------------- */
+
+/* Stop DMA engine (clear START, wait LIST_ON=0) */
+static int ahci_stop_engine(struct ahci_port *port)
+{
+	u32 cmd;
+
+	cmd = ahci_port_read(port, PORT_CMD);
+
+	/* Already stopped? */
+	if (!(cmd & (PORT_CMD_START | PORT_CMD_LIST_ON)))
+		return 0;
+
+	/* Clear START */
+	cmd &= ~PORT_CMD_START;
+	ahci_port_write_f(port, PORT_CMD, cmd);
+
+	/* Wait for LIST_ON to clear */
+	return wait_on_timeout(500 * MSECOND,
+		!(ahci_port_read(port, PORT_CMD) & PORT_CMD_LIST_ON));
+}
+
+/* Stop FIS receive engine (clear FIS_RX, wait FIS_ON=0) */
+static int ahci_stop_fis_rx(struct ahci_port *port)
+{
+	u32 cmd;
+
+	cmd = ahci_port_read(port, PORT_CMD);
+	cmd &= ~PORT_CMD_FIS_RX;
+	ahci_port_write_f(port, PORT_CMD, cmd);
+
+	/* Wait for FIS_ON to clear */
+	return wait_on_timeout(1000 * MSECOND,
+		!(ahci_port_read(port, PORT_CMD) & PORT_CMD_FIS_ON));
+}
+
+/* Stop all ports (libata_pci_shutdown_one equivalent) */
+static void __maybe_unused ahci_shutdown_host(struct ahci_device *ahci)
+{
+	int i, n_ports;
+
+	n_ports = max_t(int, ahci->n_ports, fls(ahci->port_map));
+
+	for (i = 0; i < n_ports; i++) {
+		struct ahci_port *port = &ahci->ports[i];
+
+		if (!(ahci->port_map & (1 << i)))
+			continue;
+
+		/* Stop DMA engine */
+		ahci_stop_engine(port);
+
+		/* Stop FIS receive engine */
+		ahci_stop_fis_rx(port);
+	}
+}
+
 /* Issue FLUSH EXT + STANDBY IMMEDIATE */
 static void ahci_port_shutdown(struct ahci_port *port)
 {

-- 
2.47.3




