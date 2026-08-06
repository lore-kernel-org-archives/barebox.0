Delivery-date: Thu, 06 Aug 2026 15:01:58 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrxjR-000BXi-2u
	for lore@lore.pengutronix.de;
	Thu, 06 Aug 2026 15:01:58 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6DD5E2020F5
	for <lore@pengutronix.de>; Thu, 06 Aug 2026 15:01:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=idp36+ik;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A1XITBJmN6AuJhUf5dxrT84+3LNf6sj4gQ7a5qoCndI=; b=idp36+ik6j2YHtA+IM8kkhnlq0
	XxRt+WhGF1ZbGHg11cJjSdf6DzNexvgQRg2y4GcHYBFNuRrSQVJmqlsWLhasPZzstRylekizUT4tI
	QYuQ2LmMQBX4WCG7xYy5bjZ4Ia9ZxiyjySuehpYGWI083w1Y/zYYCdNb//X11LFX7tHCy2PaE1cZ8
	X08s+1+OxVowMLe4jBeyrLuv7Cnc3B5T3JQ1j+DCr+OXZaBDeKLqecDB9OG73m4fESe4TniQgDkzR
	sf03rY4+6RUwa9P+d45wyImaJnMtxhsOl2M0EiHI8+6TypEYCZ3jn3bmYrW5KB6EAuMFsCk/Wpz0S
	nLeHFq4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxho-00000005pzs-3Xjg;
	Thu, 06 Aug 2026 13:00:16 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxhl-00000005pzQ-1cdH
	for barebox@lists.infradead.org;
	Thu, 06 Aug 2026 13:00:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D0B8320127A;
	Thu, 06 Aug 2026 15:00:04 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wrxhc-0005oP-2V;
	Thu, 06 Aug 2026 15:00:04 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wrxhc-00000008F6X-2e37;
	Thu, 06 Aug 2026 15:00:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] net: designware: eqos: keep virtual RX buffer address around
Date: Thu,  6 Aug 2026 15:00:03 +0200
Message-ID: <20260806130003.1964184-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_060013_583935_7F34B120 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  To free up the RX buffers in the remove and error paths we
    need their virtual address. Instead of reading back the physical address
   back from the descriptor ring and throwing phys_to_virt() at it, jus [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 6DD5E2020F5
X-Stat-Signature: 6k1bd7diad51e1gby5oqe35yt3zfuc4p
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action

To free up the RX buffers in the remove and error paths we need their
virtual address. Instead of reading back the physical address back from
the descriptor ring and throwing phys_to_virt() at it, just keep the
virtual address returned from dma_alloc() around and use that directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware_eqos.c | 6 ++++--
 drivers/net/designware_eqos.h | 1 +
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index a6e9d8677f..78e52c68b1 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -817,6 +817,8 @@ static int eqos_init_resources(struct eqos *eqos)
 	if (!p)
 		goto err_free_desc;
 
+	eqos->rx_bufs = p;
+
 	for (i = 0; i < EQOS_DESCRIPTORS_RX; i++) {
 		struct eqos_desc *rx_rf_desc = &eqos->rx_descs[i];
 		dma_addr_t dma;
@@ -836,7 +838,7 @@ static int eqos_init_resources(struct eqos *eqos)
 	return 0;
 
 err_free_rx_bufs:
-	dma_free(phys_to_virt(eqos->rx_descs[0].des0));
+	dma_free(eqos->rx_bufs);
 err_free_desc:
 	dma_free_coherent(DMA_DEVICE_BROKEN,
 			  descs, 0, EQOS_DESCRIPTORS_SIZE);
@@ -948,7 +950,7 @@ void eqos_remove(struct device *dev)
 
 	mdiobus_unregister(&eqos->miibus);
 
-	dma_free(phys_to_virt(eqos->rx_descs[0].des0));
+	dma_free(eqos->rx_bufs);
 	dma_free_coherent(DMA_DEVICE_BROKEN,
 			  eqos->tx_descs, 0, EQOS_DESCRIPTORS_SIZE);
 }
diff --git a/drivers/net/designware_eqos.h b/drivers/net/designware_eqos.h
index 9f2fc2fe6d..96b6fa71c8 100644
--- a/drivers/net/designware_eqos.h
+++ b/drivers/net/designware_eqos.h
@@ -54,6 +54,7 @@ struct eqos {
 
 	struct eqos_desc *tx_descs, *rx_descs;
 	dma_addr_t dma_rx_buf[EQOS_DESCRIPTORS_RX];
+	void *rx_bufs;
 
 	void __iomem *regs;
 	struct eqos_mac_regs __iomem *mac_regs;
-- 
2.47.3



