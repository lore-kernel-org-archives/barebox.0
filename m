Delivery-date: Thu, 07 Mar 2024 09:40:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ri9Ij-00C5fK-2L
	for lore@lore.pengutronix.de;
	Thu, 07 Mar 2024 09:40:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ri9Ij-0006FE-51
	for lore@pengutronix.de; Thu, 07 Mar 2024 09:40:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fVngZ2g47ORlAXIgdwHHn7MTdwf1TBzTJcQhhW5lzSg=; b=hpFmOZNROi48YWhinZVZCxtmZ5
	9A4BY5TZTcBuKt3L4HRNYi4kRS2S6+4ms13oT8f3ApVlSBMJIqSRMqP0AqpXG264GJzfun7ncPEf1
	TdeKXqv4YyS7eszqCi5bn9A0DyN59yjvJN2egsFTqf+a4+05G4E/Quc3G90jUK63ATLpC0aFcLp0T
	/Y2UIcieVgvSAp3X0adJ3fiQPRIcmyd2ftYfjcIHrN9mgVZxbu11sFCTmlgwkapd4X3Yvj++Fs47C
	o44XGx5U+RIDVAxzr84lHM9HsoCw8D2h/osCwt1ZkrQzuLmq0T9LPPf116gkewmvDo6Lu9EIvaUEj
	w0ZW2N7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9I7-00000003g25-1GD3;
	Thu, 07 Mar 2024 08:39:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9I1-00000003fxB-3pM7
	for barebox@lists.infradead.org;
	Thu, 07 Mar 2024 08:39:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rcz@pengutronix.de>)
	id 1ri9Hy-0005f5-3p; Thu, 07 Mar 2024 09:39:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rcz@pengutronix.de>)
	id 1ri9Hx-004uDk-MC; Thu, 07 Mar 2024 09:39:41 +0100
Received: from rcz by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rcz@pengutronix.de>)
	id 1ri9Hx-0050wr-24;
	Thu, 07 Mar 2024 09:39:41 +0100
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu,  7 Mar 2024 09:39:35 +0100
Message-Id: <20240307083936.1195215-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_003946_221616_077023A0 
X-CRM114-Status: UNSURE (   7.52  )
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
Subject: [PATCH 1/2] crypto: caam: map DMA buffers before sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With dma api debugging enabled, Barebox complains correctly that the
result and desc buffer are never mapped correctly. Add the correct map
and unmap sequence.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/crypto/caam/rng_self_test.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index b6fcc3bc09..f5ab974a98 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -186,6 +186,8 @@ int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
 
 	construct_rng_self_test_jobdesc(desc, rng_st_dsc, result, desc_size);
 
+	dma_map_single(dev, desc, desc_size * sizeof(*desc), DMA_TO_DEVICE);
+	dma_map_single(dev, result, result_size * sizeof(*result), DMA_FROM_DEVICE);
 	dma_sync_single_for_device(dev, (unsigned long)desc,
 			desc_size * sizeof(*desc), DMA_TO_DEVICE);
 	dma_sync_single_for_device(dev, (unsigned long)result,
@@ -218,6 +220,8 @@ int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
 	ret = 0;
 
 err:
+	dma_unmap_single(dev, (dma_addr_t)desc, desc_size * sizeof(*desc), DMA_TO_DEVICE);
+	dma_unmap_single(dev, (dma_addr_t)result, result_size * sizeof(*result), DMA_FROM_DEVICE);
 	dma_free(desc);
 	dma_free(result);
 	return ret;
-- 
2.39.2



