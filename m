Delivery-date: Tue, 28 Feb 2023 11:36:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWxLN-004bTQ-1w
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 11:36:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWxLK-0007ZM-Qb
	for lore@pengutronix.de; Tue, 28 Feb 2023 11:36:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sV0RaDo4etDHVC/gesZggI+uPAeOIWgjpoqoaXiJ0Og=; b=x6QFOVdMe5+neX
	IqLc4EA4tc0wIxR6tw2KmzeuYUkwFqPgrUSbEy3I/Mba4QSu64CjZbUSpw89oK5EY99RuF+t4Agt5
	AO/dARBcqv2IqtE6P1EOEnvKxMDhO70lSkahWkYG+wrpbUSLoH+qN/PfZu5Kv3jA7Y5aN6OMqwy6I
	7Yx+GoRGUh6Sj6De1SF8ZNl6ys4xLBM1kJjVoZFbupudMBne7Qy4rxuFpi2uBirBrReEO31lnj1SY
	QUZFa0q+KdOibS7Zx4jITm0jagQ48UozxvI+2y9ZRG6NzSYHydriPx/nepHIrHFOB8WiAphKHDEZk
	G/T5yy8gTk30RXvuDNPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWxJk-00CgGl-Uw; Tue, 28 Feb 2023 10:34:45 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWxIR-00Cfkr-N2
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 10:33:29 +0000
Received: by mail-lj1-x236.google.com with SMTP id h9so9668316ljq.2
        for <barebox@lists.infradead.org>; Tue, 28 Feb 2023 02:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sV0RaDo4etDHVC/gesZggI+uPAeOIWgjpoqoaXiJ0Og=;
        b=Km/ohr0P45gUlUr7IM+Pa4fcABpmzBuBTZoeaDXn70XZSwna5P1LIkEu7be7yGK5Aq
         Wrapff2I3arEF0CM9JPt6ULmFD7TsfaUoYRcucLi0OwzvOY8rq5FXaY9QfkPeUy+ZEJK
         508Ys/NmLLFzNl7Hq/sBka6nrU55Sj0tY39Wm4eqekBkDHuG6R3Yy47MmyXh4xC/OElO
         Y/3bIkzGre0MPfoZMyQJKVS6vpC0JrL+jApQlNLlvnGPsFQjZ7egyEGiWRTEE7GXMhgP
         wEisyflhiibLQ3leOn1pvfIGzh6fRDnsLzmRREjYCLj4A54KPu1bTi9jB9rOlPsptj6/
         Ye1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sV0RaDo4etDHVC/gesZggI+uPAeOIWgjpoqoaXiJ0Og=;
        b=UIb04tI2psCoCPa/ZoySyh5XCOw8OhmnXSHCGkKVjhjkOn3p/0SuwTLQeHHOLTorC+
         IAJIWavvFNiiEBLJJW6xrn/iv5G7QcA8RzrETjih1gtYmZ3pbNm58B0q5fkqx7qiIw/G
         OxxmCa9jy4e7rKHTVicVPV/DHaqrDO2ozRq0Si9pj7g6SpSK8MvPgYDvbaAVoVXav4cx
         6Q1451Y6x3XfGU3sy2omdqDn8KWjOqaPT+kiiO9eWD2k8tPTD4sJ+K4tNaPxkDAmraz4
         kNbuDl9Kfo2UKdAFp+gmxBZnzCuYrm+ruSG/uIYrpdtvNWpEwbkh0VFpM7wWPtq0SZxf
         ulVQ==
X-Gm-Message-State: AO0yUKXco9zRnoDbW2ef0IYV5PgntCO27modwcympZZOT7qp+MTTFIG1
	vaJ3OX6OllB3MVNg16l3JU+u/1NIv4MOYkeEcXY=
X-Google-Smtp-Source: AK7set8ipbteG7xVKDE0tsmEsJ9RXnr5wxZvxSEbR7LItgUVcdFm1ATynDaxv9avKMLjFd1XjtQpCQ==
X-Received: by 2002:a2e:99cf:0:b0:295:ae72:d08d with SMTP id l15-20020a2e99cf000000b00295ae72d08dmr557614ljj.23.1677580401013;
        Tue, 28 Feb 2023 02:33:21 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id p18-20020a2ea4d2000000b002953cc656dasm1127003ljm.87.2023.02.28.02.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 02:33:20 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 28 Feb 2023 13:32:48 +0300
Message-Id: <20230228103248.2118342-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228103248.2118342-1-denorl2009@gmail.com>
References: <20230228103248.2118342-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_023323_952208_3CF9F04C 
X-CRM114-Status: GOOD (  17.88  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 2/2] dma: update dma_sync_single uses in drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the previous commit that changes dma_sync_single_for_* API, every
callsite that uses it needs to be updated. Driver code is now required
to pass a corresponding pointer to device struct as the first argument.
Some drivers don't seem to have an appropriate device handle handy, so
just use NULL for those. This should not make any functional change, as
there is no driver at the moment that requires non 1-to-1 dma mappings,
and thus would actually utilize those device pointers.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/arm/mach-bcm283x/mbox.c        |  4 ++--
 drivers/crypto/caam/caam-blobgen.c  | 28 ++++++++++++++--------------
 drivers/crypto/caam/caamrng.c       |  6 +++---
 drivers/crypto/caam/rng_self_test.c |  6 +++---
 drivers/mci/dove-sdhci.c            |  8 ++++----
 drivers/mci/stm32_sdmmc2.c          |  8 ++++----
 drivers/mci/tegra-sdmmc.c           |  8 ++++----
 drivers/net/ag71xx.c                |  8 ++++----
 drivers/net/arc_emac.c              | 10 +++++-----
 drivers/net/at91_ether.c            |  8 ++++----
 drivers/net/bcmgenet.c              |  4 ++--
 drivers/net/cpsw.c                  |  8 ++++----
 drivers/net/davinci_emac.c          |  8 ++++----
 drivers/net/designware.c            | 10 +++++-----
 drivers/net/designware_eqos.c       |  4 ++--
 drivers/net/e1000/main.c            |  4 ++--
 drivers/net/fec_imx.c               |  4 ++--
 drivers/net/fsl-fman.c              |  7 ++++---
 drivers/net/macb.c                  | 20 ++++++++++----------
 drivers/net/mvneta.c                |  8 ++++----
 drivers/net/orion-gbe.c             |  8 ++++----
 drivers/net/rtl8169.c               | 12 +++++++-----
 drivers/usb/gadget/fsl_udc.c        |  4 ++--
 drivers/usb/host/ohci-hcd.c         |  6 +++---
 24 files changed, 102 insertions(+), 99 deletions(-)

diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index 4959a1a652..c432c1153f 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -66,7 +66,7 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 	/* Send the request */
 	val = BCM2835_MBOX_PACK(chan, send);
 	pr_debug("mbox: TX raw: 0x%08x\n", val);
-	dma_sync_single_for_device((unsigned long)send, buffer->buf_size,
+	dma_sync_single_for_device(NULL, (unsigned long)send, buffer->buf_size,
 				   DMA_BIDIRECTIONAL);
 	writel(val, mbox_base + MAIL1_WRT);
 
@@ -84,7 +84,7 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 	/* Read the response */
 	val = readl(mbox_base + MAIL0_RD);
 	pr_debug("mbox: RX raw: 0x%08x\n", val);
-	dma_sync_single_for_cpu((unsigned long)send, buffer->buf_size,
+	dma_sync_single_for_cpu(NULL, (unsigned long)send, buffer->buf_size,
 				DMA_BIDIRECTIONAL);
 
 	/* Validate the response */
diff --git a/drivers/crypto/caam/caam-blobgen.c b/drivers/crypto/caam/caam-blobgen.c
index 5ab7ad3a6e..1ce636a716 100644
--- a/drivers/crypto/caam/caam-blobgen.c
+++ b/drivers/crypto/caam/caam-blobgen.c
@@ -129,14 +129,14 @@ static int caam_blob_decrypt(struct blobgen *bg, const char *modifier,
 
 	jr_jobdesc_blob_decap(ctx, modifier_len, blobsize);
 
-	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
-	dma_sync_single_for_device((unsigned long)modifier, modifier_len,
+	dma_sync_single_for_device(jrdev, (unsigned long)modifier, modifier_len,
 				   DMA_TO_DEVICE);
-	dma_sync_single_for_device((unsigned long)*plain, *plainsize,
+	dma_sync_single_for_device(jrdev, (unsigned long)*plain, *plainsize,
 				   DMA_FROM_DEVICE);
-	dma_sync_single_for_device((unsigned long)blob, blobsize,
+	dma_sync_single_for_device(jrdev, (unsigned long)blob, blobsize,
 				   DMA_TO_DEVICE);
 
 	testres.err = 0;
@@ -147,11 +147,11 @@ static int caam_blob_decrypt(struct blobgen *bg, const char *modifier,
 
 	ret = testres.err;
 
-	dma_sync_single_for_cpu((unsigned long)modifier, modifier_len,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)modifier, modifier_len,
 				DMA_TO_DEVICE);
-	dma_sync_single_for_cpu((unsigned long)*plain, *plainsize,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)*plain, *plainsize,
 				DMA_FROM_DEVICE);
-	dma_sync_single_for_cpu((unsigned long)blob, blobsize,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)blob, blobsize,
 				DMA_TO_DEVICE);
 
 	return ret;
@@ -178,14 +178,14 @@ static int caam_blob_encrypt(struct blobgen *bg, const char *modifier,
 
 	jr_jobdesc_blob_encap(ctx, modifier_len, plainsize);
 
-	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
-	dma_sync_single_for_device((unsigned long)modifier, modifier_len,
+	dma_sync_single_for_device(jrdev, (unsigned long)modifier, modifier_len,
 				   DMA_TO_DEVICE);
-	dma_sync_single_for_device((unsigned long)plain, plainsize,
+	dma_sync_single_for_device(jrdev, (unsigned long)plain, plainsize,
 				   DMA_TO_DEVICE);
-	dma_sync_single_for_device((unsigned long)blob, *blobsize,
+	dma_sync_single_for_device(jrdev, (unsigned long)blob, *blobsize,
 				   DMA_FROM_DEVICE);
 
 	testres.err = 0;
@@ -196,11 +196,11 @@ static int caam_blob_encrypt(struct blobgen *bg, const char *modifier,
 
 	ret = testres.err;
 
-	dma_sync_single_for_cpu((unsigned long)modifier, modifier_len,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)modifier, modifier_len,
 				DMA_TO_DEVICE);
-	dma_sync_single_for_cpu((unsigned long)plain, plainsize,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)plain, plainsize,
 				DMA_TO_DEVICE);
-	dma_sync_single_for_cpu((unsigned long)blob, *blobsize,
+	dma_sync_single_for_cpu(jrdev, (unsigned long)blob, *blobsize,
 				DMA_FROM_DEVICE);
 
 	return ret;
diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.c
index 240a440c76..ede35cea7f 100644
--- a/drivers/crypto/caam/caamrng.c
+++ b/drivers/crypto/caam/caamrng.c
@@ -90,7 +90,7 @@ static void rng_done(struct device *jrdev, u32 *desc, u32 err, void *context)
 	bd->empty = BUF_NOT_EMPTY;
 
 	/* Buffer refilled, invalidate cache */
-	dma_sync_single_for_cpu(bd->addr, RN_BUF_SIZE, DMA_FROM_DEVICE);
+	dma_sync_single_for_cpu(jrdev, bd->addr, RN_BUF_SIZE, DMA_FROM_DEVICE);
 
 	print_hex_dump_debug("rng refreshed buf@: ", DUMP_PREFIX_OFFSET,
 			     16, 4, bd->buf, RN_BUF_SIZE, 1);
@@ -105,7 +105,7 @@ static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
 
 	dev_dbg(jrdev, "submitting job %d\n", !(to_current ^ ctx->current_buf));
 
-	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
 	err = caam_jr_enqueue(jrdev, desc, rng_done, ctx);
@@ -183,7 +183,7 @@ static inline int rng_create_sh_desc(struct caam_rng_ctx *ctx)
 
 	ctx->sh_desc_dma = (dma_addr_t)desc;
 
-	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+	dma_sync_single_for_device(ctx->jrdev, (unsigned long)desc, desc_bytes(desc),
 				   DMA_TO_DEVICE);
 
 	print_hex_dump_debug("rng shdesc@: ", DUMP_PREFIX_OFFSET, 16, 4,
diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index c02f4072df..3b20f8aad2 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -186,9 +186,9 @@ int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
 
 	construct_rng_self_test_jobdesc(desc, rng_st_dsc, result, desc_size);
 
-	dma_sync_single_for_device((unsigned long)desc,
+	dma_sync_single_for_device(dev, (unsigned long)desc,
 			desc_size * sizeof(*desc), DMA_TO_DEVICE);
-	dma_sync_single_for_device((unsigned long)result,
+	dma_sync_single_for_device(dev, (unsigned long)result,
 			result_size * sizeof(*result), DMA_FROM_DEVICE);
 
 	/* wait for job completion */
@@ -205,7 +205,7 @@ int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
 		goto err;
 	}
 
-	dma_sync_single_for_cpu((unsigned long)result, result_size * sizeof(*result),
+	dma_sync_single_for_cpu(dev, (unsigned long)result, result_size * sizeof(*result),
 			DMA_FROM_DEVICE);
 
 	if (memcmp(result, exp_result, sizeof(*result) * result_size) != 0) {
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index ff75bb8059..54def4c0d3 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -97,10 +97,10 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_device((unsigned long)data->src,
+			dma_sync_single_for_device(host->mci.hw_dev, (unsigned long)data->src,
 						    num_bytes, DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_device((unsigned long)data->dest,
+			dma_sync_single_for_device(host->mci.hw_dev, (unsigned long)data->dest,
 						    num_bytes, DMA_FROM_DEVICE);
 	}
 
@@ -126,10 +126,10 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	if (data) {
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_cpu((unsigned long)data->src,
+			dma_sync_single_for_cpu(host->mci.hw_dev, (unsigned long)data->src,
 						num_bytes, DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_cpu((unsigned long)data->dest,
+			dma_sync_single_for_cpu(host->mci.hw_dev, (unsigned long)data->dest,
 					 num_bytes, DMA_FROM_DEVICE);
 
 		ret = dove_sdhci_wait_for_done(host, SDHCI_INT_XFER_COMPLETE);
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index b7bf41ee50..90e969a867 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -282,10 +282,10 @@ static void stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
 	writel(data_ctrl, priv->base + SDMMC_DCTRL);
 
 	if (data->flags & MMC_DATA_WRITE)
-		dma_sync_single_for_device((unsigned long)idmabase0,
+		dma_sync_single_for_device(priv->dev, (unsigned long)idmabase0,
 					   num_bytes, DMA_TO_DEVICE);
 	else
-		dma_sync_single_for_device((unsigned long)idmabase0,
+		dma_sync_single_for_device(priv->dev, (unsigned long)idmabase0,
 					   num_bytes, DMA_FROM_DEVICE);
 
 	/* Enable internal DMA */
@@ -437,10 +437,10 @@ static int stm32_sdmmc2_end_data(struct stm32_sdmmc2_priv *priv,
 	}
 
 	if (data->flags & MMC_DATA_WRITE)
-		dma_sync_single_for_cpu((unsigned long)data->src,
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)data->src,
 					num_bytes, DMA_TO_DEVICE);
 	else
-		dma_sync_single_for_cpu((unsigned long)data->dest,
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)data->dest,
 					num_bytes, DMA_FROM_DEVICE);
 
 	if (status & SDMMC_STA_DCRCFAIL) {
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index d3eb39bb32..1359663a73 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -113,11 +113,11 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		num_bytes = data->blocks * data->blocksize;
 
 		if (data->flags & MMC_DATA_WRITE) {
-			dma_sync_single_for_device((unsigned long)data->src,
+			dma_sync_single_for_device(mci->hw_dev, (unsigned long)data->src,
 						   num_bytes, DMA_TO_DEVICE);
 			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->src);
 		} else {
-			dma_sync_single_for_device((unsigned long)data->dest,
+			dma_sync_single_for_device(mci->hw_dev, (unsigned long)data->dest,
 						   num_bytes, DMA_FROM_DEVICE);
 			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->dest);
 		}
@@ -220,10 +220,10 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 
 		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_cpu((unsigned long)data->src,
+			dma_sync_single_for_cpu(mci->hw_dev, (unsigned long)data->src,
 						num_bytes, DMA_TO_DEVICE);
 		else
-			dma_sync_single_for_cpu((unsigned long)data->dest,
+			dma_sync_single_for_cpu(mci->hw_dev, (unsigned long)data->dest,
 						num_bytes, DMA_FROM_DEVICE);
 	}
 
diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 13e104d225..5979d974da 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -403,7 +403,7 @@ static int ag71xx_ether_rx(struct eth_device *edev)
 		rx_pkt = priv->rx_pkt[priv->next_rx];
 
 		/* invalidate */
-		dma_sync_single_for_cpu((unsigned long)rx_pkt, pktlen,
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)rx_pkt, pktlen,
 						DMA_FROM_DEVICE);
 
 		net_receive(edev, rx_pkt, pktlen - 4);
@@ -431,7 +431,7 @@ static int ag71xx_ether_send(struct eth_device *edev, void *packet, int length)
 	int ret = 0;
 
 	/* flush */
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	f->pkt_start_addr = virt_to_phys(packet);
 	f->res1 = 0;
@@ -441,7 +441,7 @@ static int ag71xx_ether_send(struct eth_device *edev, void *packet, int length)
 	ag71xx_wr(priv, AG71XX_REG_TX_CTRL, TX_CTRL_TXE);
 
 	/* flush again?! */
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	start = get_time_ns();
 	while (!f->is_empty) {
@@ -491,7 +491,7 @@ static int ag71xx_ether_init(struct eth_device *edev)
 		fr->next_desc = virt_to_phys(&priv->fifo_rx[(i + 1) % NO_OF_RX_FIFOS]);
 
 		/* invalidate */
-		dma_sync_single_for_device((unsigned long)rxbuf, MAX_RBUFF_SZ,
+		dma_sync_single_for_device(priv->dev, (unsigned long)rxbuf, MAX_RBUFF_SZ,
 					DMA_FROM_DEVICE);
 
 		rxbuf += MAX_RBUFF_SZ;
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 6a68405889..fe9bcf5bb8 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -189,7 +189,7 @@ static int arc_emac_open(struct eth_device *edev)
 		rxbd->data = cpu_to_le32(rxbuf);
 
 		/* Return ownership to EMAC */
-		dma_sync_single_for_device((unsigned long)rxbuf, PKTSIZE,
+		dma_sync_single_for_device(NULL, (unsigned long)rxbuf, PKTSIZE,
 					   DMA_FROM_DEVICE);
 		rxbd->info = cpu_to_le32(FOR_EMAC | PKTSIZE);
 
@@ -240,7 +240,7 @@ static int arc_emac_send(struct eth_device *edev, void *data, int length)
 		length = EMAC_ZLEN;
 	}
 
-	dma_sync_single_for_device((unsigned long)data, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(NULL, (unsigned long)data, length, DMA_TO_DEVICE);
 
 	bd->data = cpu_to_le32(data);
 	bd->info = cpu_to_le32(FOR_EMAC | FIRST_OR_LAST_MASK | length);
@@ -249,7 +249,7 @@ static int arc_emac_send(struct eth_device *edev, void *data, int length)
 	ret = wait_on_timeout(20 * MSECOND,
 			      (arc_reg_get(priv, R_STATUS) & TXINT_MASK) != 0);
 
-	dma_sync_single_for_cpu((unsigned long)data, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(NULL, (unsigned long)data, length, DMA_TO_DEVICE);
 
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
@@ -297,12 +297,12 @@ static int arc_emac_recv(struct eth_device *edev)
 
 		pktlen = info & LEN_MASK;
 
-		dma_sync_single_for_cpu((unsigned long)rxbd->data, pktlen,
+		dma_sync_single_for_cpu(NULL, (unsigned long)rxbd->data, pktlen,
 					DMA_FROM_DEVICE);
 
 		net_receive(edev, (unsigned char *)rxbd->data, pktlen);
 
-		dma_sync_single_for_device((unsigned long)rxbd->data, pktlen,
+		dma_sync_single_for_device(NULL, (unsigned long)rxbd->data, pktlen,
 					   DMA_FROM_DEVICE);
 
 		rxbd->info = cpu_to_le32(FOR_EMAC | PKTSIZE);
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 6cf700ad90..0cda213922 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -186,7 +186,7 @@ static int at91_ether_send(struct eth_device *edev, void *packet, int length)
 {
 	while (!(at91_emac_read(AT91_EMAC_TSR) & AT91_EMAC_TSR_BNQ));
 
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(NULL, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	/* Set address of the data in the Transmit Address register */
 	at91_emac_write(AT91_EMAC_TAR, (unsigned long) packet);
@@ -198,7 +198,7 @@ static int at91_ether_send(struct eth_device *edev, void *packet, int length)
 	at91_emac_write(AT91_EMAC_TSR,
 		at91_emac_read(AT91_EMAC_TSR) | AT91_EMAC_TSR_COMP);
 
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(NULL, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	return 0;
 }
@@ -214,10 +214,10 @@ static int at91_ether_rx(struct eth_device *edev)
 
 	size = rbfp->size & RBF_SIZE;
 
-	dma_sync_single_for_cpu((unsigned long)rbfp->addr, size,
+	dma_sync_single_for_cpu(NULL, (unsigned long)rbfp->addr, size,
 				DMA_FROM_DEVICE);
 	net_receive(edev, (unsigned char *)(rbfp->addr & RBF_ADDR), size);
-	dma_sync_single_for_device((unsigned long)rbfp->addr, size,
+	dma_sync_single_for_device(NULL, (unsigned long)rbfp->addr, size,
 				   DMA_FROM_DEVICE);
 
 	rbfp->addr &= ~RBF_OWNER;
diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
index 3ae341a658..9ec6aaf1e8 100644
--- a/drivers/net/bcmgenet.c
+++ b/drivers/net/bcmgenet.c
@@ -326,7 +326,7 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
 	addr_hi = readl(desc_base + DMA_DESC_ADDRESS_HI);
 	addr = (u64)addr_hi << 32 | addr_lo;
 
-	dma_sync_single_for_cpu(addr, length, DMA_FROM_DEVICE);
+	dma_sync_single_for_cpu(priv->dev, addr, length, DMA_FROM_DEVICE);
 
 	/* To cater for the IP header alignment the hardware does.
 	 * This would actually not be needed if we don't program
@@ -334,7 +334,7 @@ static int bcmgenet_gmac_eth_recv(struct eth_device *edev)
 	 */
 	net_receive(edev, (void *)addr + RX_BUF_OFFSET, length - RX_BUF_OFFSET);
 
-	dma_sync_single_for_device(addr, length, DMA_FROM_DEVICE);
+	dma_sync_single_for_device(priv->dev, addr, length, DMA_FROM_DEVICE);
 
 	/* Tell the MAC we have consumed that last receive buffer. */
 	priv->c_index = (priv->c_index + 1) & 0xffff;
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 82a1fb974e..0a8e4191dc 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1021,10 +1021,10 @@ static int cpsw_send(struct eth_device *edev, void *packet, int length)
 
 	dev_dbg(&slave->dev, "%s: %i bytes @ 0x%p\n", __func__, length, packet);
 
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 	ret = cpdma_submit(priv, &priv->tx_chan, packet,
 			   length, BIT(slave->slave_num));
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	return ret;
 }
@@ -1037,10 +1037,10 @@ static int cpsw_recv(struct eth_device *edev)
 	int len;
 
 	while (cpdma_process(slave, &priv->rx_chan, &buffer, &len) >= 0) {
-		dma_sync_single_for_cpu((unsigned long)buffer, len,
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)buffer, len,
 				DMA_FROM_DEVICE);
 		net_receive(edev, buffer, len);
-		dma_sync_single_for_device((unsigned long)buffer, len,
+		dma_sync_single_for_device(priv->dev, (unsigned long)buffer, len,
 				DMA_FROM_DEVICE);
 		cpdma_submit(priv, &priv->rx_chan, buffer, PKTSIZE, 0);
 	}
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 2415aa7443..72741b4626 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -430,7 +430,7 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 				    EMAC_CPPI_OWNERSHIP_BIT |
 				    EMAC_CPPI_EOP_BIT),
 		priv->emac_tx_desc + EMAC_DESC_PKT_FLAG_LEN);
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 	/* Send the packet */
 	writel(BD_TO_HW(priv->emac_tx_desc), priv->adap_emac + EMAC_TX0HDP);
 
@@ -448,7 +448,7 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 			break;
 		}
 	}
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(priv->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	dev_dbg(priv->dev, "- emac_send (ret_status %i)\n", ret_status);
 	return ret_status;
@@ -480,9 +480,9 @@ static int davinci_emac_recv(struct eth_device *edev)
 		pkt = (unsigned char *)readl(rx_curr_desc + EMAC_DESC_BUFFER);
 		len = readl(rx_curr_desc + EMAC_DESC_BUFF_OFF_LEN) & 0xffff;
 		dev_dbg(priv->dev, "| emac_recv got packet (length %i)\n", len);
-		dma_sync_single_for_cpu((unsigned long)pkt, len, DMA_FROM_DEVICE);
+		dma_sync_single_for_cpu(priv->dev, (unsigned long)pkt, len, DMA_FROM_DEVICE);
 		net_receive(edev, pkt, len);
-		dma_sync_single_for_device((unsigned long)pkt, len, DMA_FROM_DEVICE);
+		dma_sync_single_for_device(priv->dev, (unsigned long)pkt, len, DMA_FROM_DEVICE);
 		ret = len;
 	}
 
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index e9bc46da00..18ddc22cb7 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -156,7 +156,7 @@ static void rx_descs_init(struct eth_device *dev)
 		else
 			desc_p->dmamac_cntl |= DESC_RXCTRL_RXCHAIN;
 
-		dma_sync_single_for_cpu(desc_p->dmamac_addr,
+		dma_sync_single_for_cpu(NULL, desc_p->dmamac_addr,
 					CONFIG_ETH_BUFSIZE, DMA_FROM_DEVICE);
 		desc_p->txrx_status = DESC_RXSTS_OWNBYDMA;
 	}
@@ -286,7 +286,7 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 	}
 
 	memcpy(dmamac_addr(desc_p), packet, length);
-	dma_sync_single_for_device(desc_p->dmamac_addr, length,
+	dma_sync_single_for_device(NULL, desc_p->dmamac_addr, length,
 				   DMA_TO_DEVICE);
 
 	if (priv->enh_desc) {
@@ -314,7 +314,7 @@ static int dwc_ether_send(struct eth_device *dev, void *packet, int length)
 
 	/* Start the transmission */
 	writel(POLL_DATA, &dma_p->txpolldemand);
-	dma_sync_single_for_cpu(desc_p->dmamac_addr, length,
+	dma_sync_single_for_cpu(NULL, desc_p->dmamac_addr, length,
 				DMA_TO_DEVICE);
 
 	return 0;
@@ -358,10 +358,10 @@ static int dwc_ether_rx(struct eth_device *dev)
 		length = (status & DESC_RXSTS_FRMLENMSK) >>
 			 DESC_RXSTS_FRMLENSHFT;
 
-		dma_sync_single_for_cpu(desc_p->dmamac_addr,
+		dma_sync_single_for_cpu(NULL, desc_p->dmamac_addr,
 					length, DMA_FROM_DEVICE);
 		net_receive(dev, dmamac_addr(desc_p), length);
-		dma_sync_single_for_device(desc_p->dmamac_addr,
+		dma_sync_single_for_device(NULL, desc_p->dmamac_addr,
 					   length, DMA_FROM_DEVICE);
 		ret = length;
 	}
diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index ee5a10a007..17eef7c935 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -739,9 +739,9 @@ static int eqos_recv(struct eth_device *edev)
 	frame = phys_to_virt(rx_desc->des0);
 	length = rx_desc->des3 & 0x7fff;
 
-	dma_sync_single_for_cpu((unsigned long)frame, length, DMA_FROM_DEVICE);
+	dma_sync_single_for_cpu(NULL, (unsigned long)frame, length, DMA_FROM_DEVICE);
 	net_receive(edev, frame, length);
-	dma_sync_single_for_device((unsigned long)frame, length, DMA_FROM_DEVICE);
+	dma_sync_single_for_device(NULL, (unsigned long)frame, length, DMA_FROM_DEVICE);
 
 	rx_desc->des0 = (unsigned long)frame;
 	rx_desc->des1 = 0;
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index c259d72f27..76acea563e 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3438,12 +3438,12 @@ static int e1000_poll(struct eth_device *edev)
 	if (readb(&rd->status) & E1000_RXD_STAT_DD) {
 		const uint16_t len = readw(&rd->length);
 
-		dma_sync_single_for_cpu(hw->packet_dma, len,
+		dma_sync_single_for_cpu(hw->dev, hw->packet_dma, len,
 					DMA_FROM_DEVICE);
 
 		net_receive(edev, hw->packet, len);
 
-		dma_sync_single_for_device(hw->packet_dma, len,
+		dma_sync_single_for_device(hw->dev, hw->packet_dma, len,
 					   DMA_FROM_DEVICE);
 		e1000_fill_rx(hw);
 		return 1;
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index c817d6c767..afac0d40ed 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -589,7 +589,7 @@ static int fec_recv(struct eth_device *dev)
 			 * fixup and net_receive below would get
 			 * proper data
 			 */
-			dma_sync_single_for_cpu((unsigned long)frame,
+			dma_sync_single_for_cpu(fec->dev, (unsigned long)frame,
 						data_length,
 						DMA_FROM_DEVICE);
 			if (fec_is_imx28(fec))
@@ -601,7 +601,7 @@ static int fec_recv(struct eth_device *dev)
 			 */
 			len = data_length - 4;
 			net_receive(dev, frame, len);
-			dma_sync_single_for_device((unsigned long)frame,
+			dma_sync_single_for_device(fec->dev, (unsigned long)frame,
 						   data_length,
 						   DMA_FROM_DEVICE);
 		}
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 0b85283040..1191f7b612 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -641,7 +641,8 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 					i * MAX_RXBUF_LEN));
 		buf_lo = lower_32_bits(virt_to_phys(rx_buf_pool +
 					i * MAX_RXBUF_LEN));
-		dma_sync_single_for_device((unsigned long)rx_buf_pool + i * MAX_RXBUF_LEN,
+		dma_sync_single_for_device(fm_eth->dev,
+					   (unsigned long)rx_buf_pool + i * MAX_RXBUF_LEN,
 					   MAX_RXBUF_LEN, DMA_FROM_DEVICE);
 		muram_writew(&rxbd->buf_ptr_hi, (u16)buf_hi);
 		out_be32(&rxbd->buf_ptr_lo, buf_lo);
@@ -911,13 +912,13 @@ static int fm_eth_recv(struct eth_device *edev)
 			data = (u8 *)((unsigned long)(buf_hi << 16) << 16 | buf_lo);
 			len = muram_readw(&rxbd->len);
 
-			dma_sync_single_for_cpu((unsigned long)data,
+			dma_sync_single_for_cpu(fm_eth->dev, (unsigned long)data,
 						len,
 						DMA_FROM_DEVICE);
 
 			net_receive(edev, data, len);
 
-			dma_sync_single_for_device((unsigned long)data,
+			dma_sync_single_for_device(fm_eth->dev, (unsigned long)data,
 						len,
 						DMA_FROM_DEVICE);
 		} else {
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 3d7627fed8..2dda5f934b 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -119,7 +119,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 	macb->tx_ring[tx_head].ctrl = ctrl;
 	macb->tx_ring[tx_head].addr = (ulong)packet;
 	barrier();
-	dma_sync_single_for_device((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_device(macb->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 	macb_writel(macb, NCR, MACB_BIT(TE) | MACB_BIT(RE) | MACB_BIT(TSTART));
 
 	start = get_time_ns();
@@ -132,7 +132,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 			break;
 		}
 	} while (!is_timeout(start, 100 * MSECOND));
-	dma_sync_single_for_cpu((unsigned long)packet, length, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(macb->dev, (unsigned long)packet, length, DMA_TO_DEVICE);
 
 	if (ctrl & MACB_BIT(TX_UNDERRUN))
 		dev_err(macb->dev, "TX underrun\n");
@@ -182,10 +182,10 @@ static int gem_recv(struct eth_device *edev)
 		status = macb->rx_ring[macb->rx_tail].ctrl;
 		length = MACB_BFEXT(RX_FRMLEN, status);
 		buffer = macb->rx_buffer + macb->rx_buffer_size * macb->rx_tail;
-		dma_sync_single_for_cpu((unsigned long)buffer, length,
+		dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
 					DMA_FROM_DEVICE);
 		net_receive(edev, buffer, length);
-		dma_sync_single_for_device((unsigned long)buffer, length,
+		dma_sync_single_for_device(macb->dev, (unsigned long)buffer, length,
 					   DMA_FROM_DEVICE);
 		macb->rx_ring[macb->rx_tail].addr &= ~MACB_BIT(RX_USED);
 		barrier();
@@ -229,22 +229,22 @@ static int macb_recv(struct eth_device *edev)
 				headlen = macb->rx_buffer_size * (macb->rx_ring_size
 						 - macb->rx_tail);
 				taillen = length - headlen;
-				dma_sync_single_for_cpu((unsigned long)buffer,
+				dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer,
 							headlen, DMA_FROM_DEVICE);
 				memcpy(macb->rx_packet_buf, buffer, headlen);
-				dma_sync_single_for_cpu((unsigned long)macb->rx_buffer,
+				dma_sync_single_for_cpu(macb->dev, (unsigned long)macb->rx_buffer,
 							taillen, DMA_FROM_DEVICE);
 				memcpy(macb->rx_packet_buf + headlen, macb->rx_buffer, taillen);
-				dma_sync_single_for_device((unsigned long)buffer,
+				dma_sync_single_for_device(macb->dev, (unsigned long)buffer,
 							headlen, DMA_FROM_DEVICE);
-				dma_sync_single_for_device((unsigned long)macb->rx_buffer,
+				dma_sync_single_for_device(macb->dev, (unsigned long)macb->rx_buffer,
 							taillen, DMA_FROM_DEVICE);
 				net_receive(edev, macb->rx_packet_buf, length);
 			} else {
-				dma_sync_single_for_cpu((unsigned long)buffer, length,
+				dma_sync_single_for_cpu(macb->dev, (unsigned long)buffer, length,
 							DMA_FROM_DEVICE);
 				net_receive(edev, buffer, length);
-				dma_sync_single_for_device((unsigned long)buffer, length,
+				dma_sync_single_for_device(macb->dev, (unsigned long)buffer, length,
 							DMA_FROM_DEVICE);
 			}
 			barrier();
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 779cc636a0..fc23c0c993 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -383,7 +383,7 @@ static int mvneta_send(struct eth_device *edev, void *data, int len)
 	int ret, error, last_desc;
 
 	/* Flush transmit data */
-	dma_sync_single_for_device((unsigned long)data, len, DMA_TO_DEVICE);
+	dma_sync_single_for_device(&priv->dev, (unsigned long)data, len, DMA_TO_DEVICE);
 
 	memset(txdesc, 0, sizeof(*txdesc));
 	/* Fill the Tx descriptor */
@@ -400,7 +400,7 @@ static int mvneta_send(struct eth_device *edev, void *data, int len)
 	 * the Tx port status register (PTXS).
 	 */
 	ret = wait_on_timeout(TRANSFER_TIMEOUT, !mvneta_pending_tx(priv));
-	dma_sync_single_for_cpu((unsigned long)data, len, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(&priv->dev, (unsigned long)data, len, DMA_TO_DEVICE);
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
 		return ret;
@@ -451,7 +451,7 @@ static int mvneta_recv(struct eth_device *edev)
 	}
 
 	/* invalidate current receive buffer */
-	dma_sync_single_for_cpu((unsigned long)rxdesc->buf_phys_addr,
+	dma_sync_single_for_cpu(&priv->dev, (unsigned long)rxdesc->buf_phys_addr,
 				ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 	/* received packet is padded with two null bytes (Marvell header) */
@@ -459,7 +459,7 @@ static int mvneta_recv(struct eth_device *edev)
 			  rxdesc->data_size - MVNETA_MH_SIZE);
 	ret = 0;
 
-	dma_sync_single_for_device((unsigned long)rxdesc->buf_phys_addr,
+	dma_sync_single_for_device(&priv->dev, (unsigned long)rxdesc->buf_phys_addr,
 				   ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 recv_err:
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index abd588e013..908e847a76 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -228,7 +228,7 @@ static int port_send(struct eth_device *edev, void *data, int len)
 	int ret;
 
 	/* flush transmit data */
-	dma_sync_single_for_device((unsigned long)data, len, DMA_TO_DEVICE);
+	dma_sync_single_for_device(&port->dev, (unsigned long)data, len, DMA_TO_DEVICE);
 
 	txdesc->cmd_sts = TXDESC_OWNED_BY_DMA;
 	txdesc->cmd_sts |= TXDESC_FIRST | TXDESC_LAST;
@@ -243,7 +243,7 @@ static int port_send(struct eth_device *edev, void *data, int len)
 	/* wait for packet transmit completion */
 	ret = wait_on_timeout(TRANSFER_TIMEOUT,
 		      (readl(&txdesc->cmd_sts) & TXDESC_OWNED_BY_DMA) == 0);
-	dma_sync_single_for_cpu((unsigned long)data, len, DMA_TO_DEVICE);
+	dma_sync_single_for_cpu(&port->dev, (unsigned long)data, len, DMA_TO_DEVICE);
 	if (ret) {
 		dev_err(&edev->dev, "transmit timeout\n");
 		return ret;
@@ -287,13 +287,13 @@ static int port_recv(struct eth_device *edev)
 	}
 
 	/* invalidate current receive buffer */
-	dma_sync_single_for_cpu((unsigned long)rxdesc->buf_ptr,
+	dma_sync_single_for_cpu(&port->dev, (unsigned long)rxdesc->buf_ptr,
 				ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 	/* received packet is padded with two null bytes */
 	net_receive(edev, rxdesc->buf_ptr + 0x2, rxdesc->byte_cnt - 0x2);
 
-	dma_sync_single_for_device((unsigned long)rxdesc->buf_ptr,
+	dma_sync_single_for_device(&port->dev, (unsigned long)rxdesc->buf_ptr,
 				   ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
 
 	ret = 0;
diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index ffc4ef238b..b5adaf1d0f 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -353,6 +353,7 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 				int packet_length)
 {
 	struct rtl8169_priv *priv = edev->priv;
+	struct device *dev = &priv->pci_dev->dev;
 	unsigned int entry;
 
 	entry = priv->cur_tx % NUM_TX_DESC;
@@ -360,8 +361,8 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 	if (packet_length < ETH_ZLEN)
 		memset(priv->tx_buf + entry * PKT_BUF_SIZE, 0, ETH_ZLEN);
 	memcpy(priv->tx_buf + entry * PKT_BUF_SIZE, packet, packet_length);
-	dma_sync_single_for_device(priv->tx_buf_phys + entry *
-				   PKT_BUF_SIZE, PKT_BUF_SIZE, DMA_TO_DEVICE);
+	dma_sync_single_for_device(dev, priv->tx_buf_phys + entry * PKT_BUF_SIZE,
+				   PKT_BUF_SIZE, DMA_TO_DEVICE);
 
 	priv->tx_desc[entry].buf_Haddr = 0;
 	priv->tx_desc[entry].buf_addr =
@@ -382,7 +383,7 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 	while (le32_to_cpu(priv->tx_desc[entry].status) & BD_STAT_OWN)
 		;
 
-	dma_sync_single_for_cpu(priv->tx_buf_phys + entry * PKT_BUF_SIZE,
+	dma_sync_single_for_cpu(dev, priv->tx_buf_phys + entry * PKT_BUF_SIZE,
 				PKT_BUF_SIZE, DMA_TO_DEVICE);
 
 	priv->cur_tx++;
@@ -393,6 +394,7 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 static int rtl8169_eth_rx(struct eth_device *edev)
 {
 	struct rtl8169_priv *priv = edev->priv;
+	struct device *dev = &priv->pci_dev->dev;
 	unsigned int entry, pkt_size = 0;
 	u8 status;
 
@@ -402,13 +404,13 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 		if (!(le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_RX_RES)) {
 			pkt_size = (le32_to_cpu(priv->rx_desc[entry].status) & 0x1fff) - 4;
 
-			dma_sync_single_for_cpu(priv->rx_buf_phys + entry * PKT_BUF_SIZE,
+			dma_sync_single_for_cpu(dev, priv->rx_buf_phys + entry * PKT_BUF_SIZE,
 						pkt_size, DMA_FROM_DEVICE);
 
 			net_receive(edev, priv->rx_buf + entry * PKT_BUF_SIZE,
 			            pkt_size);
 
-			dma_sync_single_for_device(priv->rx_buf_phys + entry * PKT_BUF_SIZE,
+			dma_sync_single_for_device(dev, priv->rx_buf_phys + entry * PKT_BUF_SIZE,
 						   pkt_size, DMA_FROM_DEVICE);
 
 			if (entry == NUM_RX_DESC - 1)
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 2f2f4caebb..26859458c3 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -197,7 +197,7 @@ static void done(struct fsl_ep *ep, struct fsl_req *req, int status)
 		dma_free_coherent(curr_td, 0, sizeof(struct ep_td_struct));
 	}
 
-	dma_sync_single_for_cpu((unsigned long)req->req.buf, req->req.length,
+	dma_sync_single_for_cpu(NULL, (unsigned long)req->req.buf, req->req.length,
 				DMA_BIDIRECTIONAL);
 
 	if (status && (status != -ESHUTDOWN))
@@ -885,7 +885,7 @@ fsl_ep_queue(struct usb_ep *_ep, struct usb_request *_req)
 
 	req->ep = ep;
 
-	dma_sync_single_for_device((unsigned long)req->req.buf, req->req.length,
+	dma_sync_single_for_device(NULL, (unsigned long)req->req.buf, req->req.length,
 				   DMA_BIDIRECTIONAL);
 
 	req->req.status = -EINPROGRESS;
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index fcec5eee5e..39e946d2ef 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -842,7 +842,7 @@ static void td_fill(struct ohci *ohci, unsigned int info,
 
 	td->hwNextTD = virt_to_phys((void *)m32_swap((unsigned long)td_pt));
 
-	dma_sync_single_for_device((unsigned long)data, len, DMA_BIDIRECTIONAL);
+	dma_sync_single_for_device(NULL, (unsigned long)data, len, DMA_BIDIRECTIONAL);
 
 	/* append to queue */
 	td->ed->hwTailP = td->hwNextTD;
@@ -1078,7 +1078,7 @@ static int dl_done_list(struct ohci *ohci)
 	unsigned long ptdphys = virt_to_phys(ptd);
 	struct td *td_list;
 
-	dma_sync_single_for_device((unsigned long)ptdphys,
+	dma_sync_single_for_device(NULL, (unsigned long)ptdphys,
 				sizeof(struct td) * NUM_TD, DMA_BIDIRECTIONAL);
 
 	td_list = dl_reverse_done_list(ohci);
@@ -1515,7 +1515,7 @@ static int submit_common_msg(struct usb_device *dev, unsigned long pipe, void *b
 	dev->status = stat;
 	dev->act_len = urb->actual_length;
 
-	dma_sync_single_for_cpu((unsigned long)buffer, transfer_len,
+	dma_sync_single_for_cpu(NULL, (unsigned long)buffer, transfer_len,
 				DMA_BIDIRECTIONAL);
 
 	pkt_print(urb, dev, pipe, buffer, transfer_len,
-- 
2.30.2



