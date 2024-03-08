Delivery-date: Fri, 08 Mar 2024 08:36:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riUlu-00DPbb-1H
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 08:36:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riUlt-0008Vk-QT
	for lore@pengutronix.de; Fri, 08 Mar 2024 08:36:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/GBhEDI24tzAsAdScFftuqpXRAcAC3G5ZqRfJ8q4ZbA=; b=34+DChvjqQJytUYPKTZvFp2X8w
	ThOS1RgssRS1UwpgGUxAeU742oNn4EFExUSkxNPW7RH1Ly0qtuIyx0MiagEiC3G5yQyDRqgDzxCCg
	FAMsmZatwIfDCVYk0VILajXQGpirwdQA6m8ABWQXjhbJuy8PWUaKboYO4dUAoht1cMY1xtC06+Duy
	RRk28fLalCg646JVIpgx25/h1rr0zJmaUyGkiSsK5SXJ3+/S81ioyFPD5u1kuyX4YGugJH98xbi14
	gO5Pq4zO0KWXywgcSqbJlsfN8BQ+3RJeap98qmH/mRCddhynydcegGewXO7WqMNpPh6Cep7fkVHdI
	Aio6hlSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riUlM-000000089zt-0EOd;
	Fri, 08 Mar 2024 07:35:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riUlI-000000089yv-33KG
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 07:35:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rcz@pengutronix.de>)
	id 1riUlH-00082e-K4; Fri, 08 Mar 2024 08:35:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rcz@pengutronix.de>)
	id 1riUlH-0055q8-7J; Fri, 08 Mar 2024 08:35:23 +0100
Received: from rcz by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rcz@pengutronix.de>)
	id 1riUlH-00GSLw-0a;
	Fri, 08 Mar 2024 08:35:23 +0100
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri,  8 Mar 2024 08:35:18 +0100
Message-Id: <20240308073518.3922205-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240308073518.3922205-1-r.czerwinski@pengutronix.de>
References: <20240308073518.3922205-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_233524_785680_85075E97 
X-CRM114-Status: UNSURE (   7.98  )
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
Subject: [PATCH v2 2/2] crypto: caam: caamrng: dma map descriptors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With DMA API debugging Barebox complains that the descriptors are never
mapped before a sync. Add the map and unmap function calls.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
v2:
- remove dma_map_sync_single_for_device() calls
- remove dma_map_single for dma coherent memory

 drivers/crypto/caam/caamrng.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index ea154913ca..03e75d0b7b 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -91,6 +91,7 @@ static void rng_done(struct device *jrdev, u32 *desc, u32 err, void *context)
 
 	/* Buffer refilled, invalidate cache */
 	dma_sync_single_for_cpu(jrdev, bd->addr, RN_BUF_SIZE, DMA_FROM_DEVICE);
+	dma_unmap_single(jrdev, (unsigned long)desc, desc_bytes(desc), DMA_TO_DEVICE);
 }
 
 static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
@@ -102,8 +103,7 @@ static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
 
 	dev_dbg(jrdev, "submitting job %d\n", !(to_current ^ ctx->current_buf));
 
-	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc),
-				   DMA_TO_DEVICE);
+	dma_map_single(jrdev, (void *)desc, desc_bytes(desc), DMA_TO_DEVICE);
 
 	err = caam_jr_enqueue(jrdev, desc, rng_done, ctx);
 	if (!err)
@@ -180,8 +180,7 @@ static inline int rng_create_sh_desc(struct caam_rng_ctx *ctx)
 
 	ctx->sh_desc_dma = (dma_addr_t)desc;
 
-	dma_sync_single_for_device(ctx->jrdev, (unsigned long)desc, desc_bytes(desc),
-				   DMA_TO_DEVICE);
+	dma_map_single(ctx->jrdev, desc, desc_bytes(desc), DMA_TO_DEVICE);
 
 	print_hex_dump_debug("rng shdesc@: ", DUMP_PREFIX_OFFSET, 16, 4,
 		       desc, desc_bytes(desc), 1);
-- 
2.39.2



