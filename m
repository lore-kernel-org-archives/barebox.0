Delivery-date: Thu, 07 Mar 2024 09:40:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ri9Ij-00C5f9-1Z
	for lore@lore.pengutronix.de;
	Thu, 07 Mar 2024 09:40:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ri9Ii-0006Ej-9e
	for lore@pengutronix.de; Thu, 07 Mar 2024 09:40:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WmjZw3MLVaNZEa4UNEXHeunaKjY0JMFixSo66fr47KQ=; b=wOqFOIG1SdnxnZPbln4lIAeUcI
	OJheFs/YuCqYK+hBz5QkuxNZDYfNHWNy6DaoUDhQDc+cjSK0RXRLgU4dTVlKPknp1DIEuDmr61E0l
	qPeSmR+E3K3apT9oiFxpXAQMA8Z+zRw7lXT+UMuL42S7Q/tuHfdOTPQfIRYJM4sdb1bpL1q6VAC+Q
	Zx9Z2S+YbjcKuKJFexJDweSxIAnC5bamtshvV1NfJBUxbfwMe2e0ro/Lq7+9JwsE84sqW4OFeXZ6K
	cmrkNYCQWVA686afG5uCRvMdBbimLh0272XW9AnrdFMIwTldn13xpUj7mF65u5zI8E6F08MWjXyL7
	MUuA3v2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9I6-00000003g1I-0L5Y;
	Thu, 07 Mar 2024 08:39:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9I2-00000003fxD-02tu
	for barebox@lists.infradead.org;
	Thu, 07 Mar 2024 08:39:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rcz@pengutronix.de>)
	id 1ri9Hy-0005f6-4L; Thu, 07 Mar 2024 09:39:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rcz@pengutronix.de>)
	id 1ri9Hx-004uDl-Mx; Thu, 07 Mar 2024 09:39:41 +0100
Received: from rcz by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rcz@pengutronix.de>)
	id 1ri9Hx-0050x0-26;
	Thu, 07 Mar 2024 09:39:41 +0100
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu,  7 Mar 2024 09:39:36 +0100
Message-Id: <20240307083936.1195215-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240307083936.1195215-1-r.czerwinski@pengutronix.de>
References: <20240307083936.1195215-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_003946_278705_941E6ADA 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] crypto: caam: caamrng: map desc and buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With DMA API debugging Barebox complains that some buffers are never
mapped before a sync. Add the map and unmap function calls.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/crypto/caam/caamrng.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index ea154913ca..1b5713f978 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -91,6 +91,7 @@ static void rng_done(struct device *jrdev, u32 *desc, u32 err, void *context)
 
 	/* Buffer refilled, invalidate cache */
 	dma_sync_single_for_cpu(jrdev, bd->addr, RN_BUF_SIZE, DMA_FROM_DEVICE);
+	dma_unmap_single(jrdev, (unsigned long)desc, desc_bytes(desc), DMA_TO_DEVICE);
 }
 
 static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
@@ -102,6 +103,7 @@ static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
 
 	dev_dbg(jrdev, "submitting job %d\n", !(to_current ^ ctx->current_buf));
 
+	dma_map_single(jrdev, (void *)desc, desc_bytes(desc), DMA_TO_DEVICE);
 	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
@@ -180,6 +182,7 @@ static inline int rng_create_sh_desc(struct caam_rng_ctx *ctx)
 
 	ctx->sh_desc_dma = (dma_addr_t)desc;
 
+	dma_map_single(ctx->jrdev, desc, desc_bytes(desc), DMA_TO_DEVICE);
 	dma_sync_single_for_device(ctx->jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
@@ -210,6 +213,7 @@ static int caam_init_buf(struct caam_rng_ctx *ctx, int buf_id)
 	int err;
 
 	bd->buf = dma_alloc_coherent(RN_BUF_SIZE, &bd->addr);
+	dma_map_single(ctx->jrdev, (void *)bd->addr, RN_BUF_SIZE, DMA_FROM_DEVICE);
 
 	err = rng_create_job_desc(ctx, buf_id);
 	if (err)
-- 
2.39.2



