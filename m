Delivery-date: Thu, 09 Jul 2026 09:24:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whj7S-001pzq-06
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 09:24:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CFDFC202662
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 09:24:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iydZVjmt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gmDoTn4D+OV1bpmDBs5m7IQ++uC8doPaU6iEMrZLPEk=; b=iydZVjmt5eAWmx2vieeI9Jcvqr
	QuSQI0AR+rxaDB3NEXNFKKY+tE7nRaX7Yj2/pqiGV3nonWa9UNUuQJEsZUhLpf8w8hVPGlUWT3ElX
	BR2OPrLpRzGxzkEuTiLuWSaOgWvVWME7khGo5h/LM3Ti1sMjSmGEeVPROk1JaJ4T6BQ2XWPPXu0x8
	JaqGf8+KWjw3MPoDDfZ66xKlMSSUK88b6f2088GaFCRTXmYzjb3AzOAT1EmuSrciYzF8BlbJ+JLhB
	F5uUGyJVeZwEsQDUYScHym/98gEi5vWbjdnblaJa0RwX9JxNMd+HlY8PgAkfsT95guM6mMoj5xMRa
	7LQj1o5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whj68-00000001Gg6-491u;
	Thu, 09 Jul 2026 07:23:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whj66-00000001Gea-2z7x
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 07:23:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1whj63-0002nf-Ai; Thu, 09 Jul 2026 09:22:59 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/2] nvme: fix PRP pool resize before first use
Date: Thu,  9 Jul 2026 09:22:51 +0200
Message-ID: <20260709072255.510962-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_002302_749922_ED243302 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  It's not safe to call dma_free_coherent on a NULL pointer.
    Implement dma_realloc_coherent, which correctly handles reallocating a buffer
    without leaking memory and use it to ensure only actually alloc [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Spamd-Result: default: False [-5.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CFDFC202662
X-Stat-Signature: ez4ad88j9xjdgc6373h5xer6zn7esja3

It's not safe to call dma_free_coherent on a NULL pointer. Implement
dma_realloc_coherent, which correctly handles reallocating a buffer
without leaking memory and use it to ensure only actually allocated
buffers are freed.

Fixes: aedcb568afe4 ("drivers: Import a very basic NVME implementation from Linux")
Reported-by: Ben Pye # Matrix
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/dma/map.c       | 21 +++++++++++++++++++++
 drivers/nvme/host/pci.c | 17 +++++++++++------
 include/dma.h           |  5 +++++
 3 files changed, 37 insertions(+), 6 deletions(-)

diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index 2980d4c2e790..11671f9f663d 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -68,3 +68,24 @@ void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
 	debug_dma_unmap(dev, dma_addr, size, dir);
 }
 EXPORT_SYMBOL(dma_unmap_single);
+
+void *dma_realloc_coherent(struct device *dev, void *oldbuf,
+			   size_t oldsize, size_t newsize,
+			   dma_addr_t *dma_handle)
+{
+	dma_addr_t newdma = DMA_ERROR_CODE;
+	void *newbuf = ZERO_SIZE_PTR;
+
+	if (newsize) {
+		newbuf = dma_alloc_coherent(dev, newsize, &newdma);
+		if (!newbuf)
+			return NULL;
+	}
+
+	if (oldbuf)
+		dma_free_coherent(dev, oldbuf, *dma_handle, oldsize);
+
+	*dma_handle = newdma;
+	return newbuf;
+}
+EXPORT_SYMBOL(dma_realloc_coherent);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 6343af25026b..29a6db76e0f6 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -93,13 +93,18 @@ static int nvme_pci_setup_prps(struct nvme_dev *dev,
 
 	nprps = DIV_ROUND_UP(length, page_size);
 	if (nprps > dev->prp_pool_size) {
-		dma_free_coherent(DMA_DEVICE_BROKEN,
-				  dev->prp_pool, dev->prp_dma,
-				  dev->prp_pool_size * sizeof(u64));
+		__le64 *prp_pool;
+
+		prp_pool = dma_realloc_coherent(DMA_DEVICE_BROKEN,
+						dev->prp_pool,
+						dev->prp_pool_size * sizeof(*prp_pool),
+						nprps * sizeof(*prp_pool),
+						&dev->prp_dma);
+		if (!prp_pool)
+			return -ENOMEM;
+
+		dev->prp_pool = prp_pool;
 		dev->prp_pool_size = nprps;
-		dev->prp_pool = dma_alloc_coherent(DMA_DEVICE_BROKEN,
-						   nprps * sizeof(u64),
-						   &dev->prp_dma);
 	}
 
 	prp_list = dev->prp_pool;
diff --git a/include/dma.h b/include/dma.h
index 60937a69aa55..c285b2095a58 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -161,4 +161,9 @@ static inline bool dma_map_buf_is_aligned(struct device *dev, const void *buf, s
 	return PTR_IS_ALIGNED(buf, ARCH_DMA_MINALIGN) &&
 		IS_ALIGNED(size, ARCH_DMA_MINALIGN);
 }
+
+void *dma_realloc_coherent(struct device *dev, void *oldbuf,
+			   size_t oldsize, size_t newsize,
+			   dma_addr_t *dma_handle);
+
 #endif /* __DMA_H */
-- 
2.47.3



