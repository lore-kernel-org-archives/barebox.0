Delivery-date: Thu, 13 Aug 2026 17:29:09 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXMi-002ind-1A
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:29:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DA1BE202106
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:29:04 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dEZGQNKN;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TwYnbZUq;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TesxpRN4wnC5Il+KKlHeDyUifttRYe0jHUu4cHnnK7Y=; b=dEZGQNKNSUyt2kIGR93A4ZtdEv
	8IRCPsyJmp/phblVHIgAMaZFYuzGfgzZwR+t2i941YEnhg28GyI7GrJYntm1tAOzkV1OUqsOBsrMo
	+KuYUQADGp0IrwwQej/8zmkerhQnxtpPSy+ip5e/Xyr/GWjE7PogxkudGF+bu4KvGJ3bfulPwJHd7
	X45ovjjRL5FxTNeN2E1yZuYWC16kNSRxthAshs+ZMSwC/nbDdAG+rRP9d+d2BuTx8cG4cpIYlkLyl
	LiTXptwgsY91z+uWdRpGf65XKqYMZzPamqkMKvwNjxK2mpylQMAVMl+MQYn0iQy3VDKeSANSn2717
	uI7oNgKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXKC-000000010Wx-0KbO;
	Thu, 13 Aug 2026 15:26:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK8-000000010TQ-0OXf
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BEF654385A;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5732C19425;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=5nI+0P3G/h1dWZVorf0DLo2/efPsxsEtUGU0WOH9KZo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=TwYnbZUq28SfRng/0ZQxNy4xqZkUGgsOceI0tWtxU9xsHUWny+L0jkMRZfa8d6tHR
	 Y3A+Z27kyJjCJnmSDtx0vafB/oQdtXc+aUZpjh9yi/uiLryFxI4XvMYcpX760b+sUJ
	 gRgtdV24PInCeXNJgNU/2gvo8VC8pml1y6Y5/JEHaL3x4oB+wDG0wjAu9QXRYydN7r
	 ULo+KDDRTx2O/l0brZs/jaztpf5YLMIEsBwCYG+g9z1eygf1u8cr2VR4pHftSQkHEp
	 sxjgqwMcXaZCCN3k5A+SqHtWlvgl2fWkQvLIvTX/Y1k9zLjsxQu7IrBlwPPBcYukLU
	 siIKIqX6E5OBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958B3C5DF69;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:30 +0200
Subject: [PATCH v4 10/14] ata: ahci: fix zero-length DMA handling
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260813-rn102-rn104-series-v4-10-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=2309;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=U28sDr11sjBGnOLVYdX8Njnzc51JgZyNTmxXitpA2yk=;
 b=V+u2H5j+C5I8nE/Uu5gVQ8XBi1KELNwV6EbKP5ZO9NaYMn/04u++HAZLe4TdOPSQozjuRcCa/
 K3mTaSg2fQ1AsBeF0mrZfzlMp04V1lN9qRc/S/fFliNrFtgxyYFmo5m
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
X-Stat-Signature: po7ebeb3qay7nnw97th5cbot8ry8kiwo
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
X-Rspamd-Queue-Id: DA1BE202106

From: Luca Lauro <famlauro93l@gmail.com>

ata: ahci: fix zero-length DMA handling

Commands without a data buffer must not trigger DMA setup. The previous
code unconditionally programmed PRDT entries and attempted DMA mapping
even when buf_len was zero, leading to invalid PRD tables and spurious
DMA operations.

This patch ensures that DMA mapping, PRDT setup and unmapping are only
performed when buf_len > 0.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/ata/ahci.c | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index fd27da40f2..ea2df31515 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -193,30 +193,32 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 		const void *wbuf, int buf_len)
 {
 	u32 opts;
-	int sg_count;
+	int sg_count = 0;
 	int ret;
-	void *buf;
-	dma_addr_t buf_dma;
-	enum dma_data_direction dma_dir;
+	void *buf = NULL;
+	dma_addr_t buf_dma = 0;
+	enum dma_data_direction dma_dir = DMA_NONE;
 
 	if (!ahci_link_ok(ahci_port, 1))
 		return -EIO;
 
-	if (wbuf) {
-		buf = (void *)wbuf;
-		dma_dir = DMA_TO_DEVICE;
-	} else {
-		buf = rbuf;
-		dma_dir = DMA_FROM_DEVICE;
-	}
+	if (buf_len > 0) {
+		if (wbuf) {
+			buf = (void *)wbuf;
+			dma_dir = DMA_TO_DEVICE;
+		} else {
+			buf = rbuf;
+			dma_dir = DMA_FROM_DEVICE;
+		}
 
-	buf_dma = dma_map_single(ahci_port->ahci->dev, buf, buf_len, dma_dir);
+		buf_dma = dma_map_single(ahci_port->ahci->dev, buf, buf_len, dma_dir);
+		sg_count = ahci_fill_sg(ahci_port, buf_dma, buf_len);
+	}
 
 	memcpy(ahci_port->cmd_tbl, fis, fis_len);
 
-	sg_count = ahci_fill_sg(ahci_port, buf_dma, buf_len);
 	opts = (fis_len >> 2) | (sg_count << 16);
-	if (wbuf)
+	if (wbuf && buf_len > 0)
 		opts |= CMD_LIST_OPTS_WRITE;
 	ahci_fill_cmd_slot(ahci_port, opts);
 
@@ -225,7 +227,8 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 	ret = wait_on_timeout(WAIT_DATAIO,
 			(ahci_port_read(ahci_port, PORT_CMD_ISSUE) & 0x1) == 0);
 
-	dma_unmap_single(ahci_port->ahci->dev, buf_dma, buf_len, dma_dir);
+	if (buf_len > 0)
+		dma_unmap_single(ahci_port->ahci->dev, buf_dma, buf_len, dma_dir);
 
 	return ret;
 }

-- 
2.47.3




