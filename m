Delivery-date: Thu, 10 Apr 2025 15:03:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2rZM-00ApyP-0N
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 15:03:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2rZL-0002YP-Iz
	for lore@pengutronix.de; Thu, 10 Apr 2025 15:03:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JLXRxeEmgtubv2ZfMjCle+XYs4r3t8mdbW6IcAB6hBI=; b=YW2Ztw98EBUTKSrulgIfsusiYV
	+ZsDZUU/14LsH/1PutRatKTrWm9t91FbyhKLLVrqvvaTmAFXQLikhlgYqd8PRsj6Jhuti/cLSl9aG
	n7tMy0mDcsEp2oYegIlkBA0XghmoawpsOE4hvKuv0YNK1XpvGLyr+8n9bXOtFeO5pngD0nXfhHwdK
	GzWVS8zuIfvVjo66vnkUHo+XqTwW3Oc2cM5fz1okCfWSh40tMbqrmfexK68OyopcxH3okdNYiETgI
	u8tWhpPPhlT95VdlCXfJShWU6MjcnbBLH3jchMD3qjMFnDyvpEYNltITa1cAcW51oLCv190vUqYGc
	A+7x174g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2rYl-0000000AbNz-37lr;
	Thu, 10 Apr 2025 13:03:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2rYj-0000000AbNc-1psE
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 13:03:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2rYh-0002P8-Bx; Thu, 10 Apr 2025 15:03:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2rYh-004H7v-0Z;
	Thu, 10 Apr 2025 15:03:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2rYh-000UIn-0G;
	Thu, 10 Apr 2025 15:03:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 10 Apr 2025 15:03:02 +0200
Message-Id: <20250410130301.116356-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_060309_472733_7E52EA6E 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: stm32_sdmmc2: fix benign typo in dma_map_single
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct mci_data::src and ::dest are members of the same union and thus
can be used interchangeably, provided that the difference in type is
accounted for.

Nevertheless, it makes code easier to reason about and saves needless
casts to use the correct union member. Do that for the read case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 64a7171d2cae..30745ea7c6c0 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -271,7 +271,7 @@ static dma_addr_t stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
 
 	if (data->flags & MMC_DATA_READ) {
 		data_ctrl |= SDMMC_DCTRL_DTDIR;
-		idmabase0 = dma_map_single(priv->dev, (void *)data->src, num_bytes,
+		idmabase0 = dma_map_single(priv->dev, data->dest, num_bytes,
 					   DMA_FROM_DEVICE);
 	} else {
 		idmabase0 = dma_map_single(priv->dev, (void *)data->src, num_bytes,
-- 
2.39.5



