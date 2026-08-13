Delivery-date: Thu, 13 Aug 2026 17:28:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXMA-002ijm-1b
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:28:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F1FFF201ED5
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:28:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iOIARH3S;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XxAByt+e;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qBY+VzqHZiEmPjoFoxw4A1MxBf+RhBsE6Hd5GsokJPk=; b=iOIARH3SVckjBHwk2nW1J1lhHK
	Zjk+6vEytRhMDf624K6O85/G9b/cmG7viWXacVin161fjTqv8UDxnSSkVaY9Auauv5FArl6ohCiEn
	eRq/QIroOzM5NdjDqKaH3ZKFb/sT9e+zqG+p/MJK+mNsrxDQY3sjlTUgrNTKg/I4BxQC2Y9HpeQzN
	8SD69Y/hNWY+njijbUAunETwGLRzMcx1/JXzZwlr3rUpGB9IY/W3JPO8z+5k+lqpqxE9KoVdU7yrg
	5RHbgDOemxKKd1RnBYKJOk6BdDL8cwqzrVOUv23/HlwhbzckIp8smicmvlAOwn5DSTuEO3z1b5cnQ
	O/TjTltQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXKC-000000010Xv-3Pun;
	Thu, 13 Aug 2026 15:26:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK8-000000010TO-0ORD
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CC99443924;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF783C2BCFD;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=dayYaCYoT8/XPL7dtOvTmngFtTqIi+MVYJCCk6ggW/8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=XxAByt+eDYZNux8QPoabuLQbs8I8CRZX5Pe/62Xrt2E/tkQdvn6jsKnrVdbOPf3/U
	 CSXOLGYDpuMak424Tc9vHmbO+wqwWO9gaEwXCExR5VFDQzkcP3nTwFLY8ddCJoIpMH
	 9bOXjF04w54/WOBtr2pFoa9fKOGZVSrrOUKSXujTsFEw7Nel9FEDkDSO+oELNxEMnu
	 7Ke7y6IFO3SA6gOjL7wfQbdrltTKQnE/XJCmk0/Sbju4yLAY2X0PEWQkb+RqAL4a80
	 JWkzIVQprpk/oFnk6CtRzte2bMv11836DEoPkMVn9CtlwEdK5memoGoP2zc2FX9ucF
	 uCM/tM4tGaLEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F69AC5DF67;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:31 +0200
Subject: [PATCH v4 11/14] ata: ahci: add helper for ATA commands without
 data
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260813-rn102-rn104-series-v4-11-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=1078;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=nKzXH/Y6AGkhbhnItPtbi0KFSU18JUvmkP8cAFWyWVQ=;
 b=2pk/mbAPAu39xRx4gEFfTn2L0n90fP0oh1gFG221xRDeNZhUGpk9SZdwbb97oOjPTnGARJcpN
 KamHeCLAWl4Dv9suLTDE6Rl/wNFU66xa7lu1DMOXoxqDN2QYkCN9GYX
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
X-Stat-Signature: ggiputw3c4j6a7q8g71crzy6d811m595
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
X-Rspamd-Queue-Id: F1FFF201ED5

From: Luca Lauro <famlauro93l@gmail.com>

Introduce ahci_ata_nodata(), a small wrapper that prepares a FIS and
submits an AHCI command without PRDT entries or DMA setup. This avoids
duplicating zero-length handling logic across callers and simplifies
ATA command submission paths.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/ata/ahci.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index ea2df31515..1175d76881 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -233,6 +233,21 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 	return ret;
 }
 
+static int ahci_ata_nodata(struct ahci_port *ahci, u8 command, u8 feature)
+{
+	u8 fis[20] = {
+		0x27,        /* Host to device FIS */
+		1 << 7,      /* Command FIS */
+		command,     /* Command */
+		feature,     /* Features */
+	};
+
+	if (!ahci_link_ok(ahci, 0))
+		return -ENODEV;
+
+	return ahci_io(ahci, fis, sizeof(fis), NULL, NULL, 0);
+}
+
 /*
  * SCSI INQUIRY command operation.
  */

-- 
2.47.3




