Delivery-date: Wed, 24 Apr 2024 09:09:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkk-00ER64-1U
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWke-0006PA-KS
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZPtw3fLFO4pabMriRXatmHaIjsHopg0Lo+ViTvt5oi0=; b=1owny0U/PPrqaGpiEwUVsVLceY
	OVUU37LXc1HfKOKfBEbHfexEw/todHOGs33iu2LnQdDCIyMwTDS201nYvVXwtl3LSrytSYSDqBC1D
	3DJm9srZqIdXbGaN02MtdojvU77qnFKm3NTKOLuZu3Ka7demGF6+IFJDT87IlFBgAXc6kMALVlvMl
	uW7KfJV3fEfcu7r/vp7e+1WTh3thOT7E0oUoo41mJ5ztGWrXCCbKR46MNLzkurIn0fgabpiD6a+H0
	vNO9LBR37vXz8IkacuUcdS2rrORnTuMVP9TKgPBSHkE0T3HjCZRMUOQ5DUPsbmgEca2oFlq/bQabZ
	II9Q7Ppg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWk7-0000000321R-2Mo4;
	Wed, 24 Apr 2024 07:08:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjx-000000031t7-0sht
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-0005cT-Oq; Wed, 24 Apr 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E24b-BS; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-3C;
	Wed, 24 Apr 2024 08:41:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:58 +0200
Message-Id: <20240424064058.3608016-24-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_924591_DA4A4067 
X-CRM114-Status: UNSURE (   8.70  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 23/23] dma: debug: add alignment check when mapping buffers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dma_map_single should only be called on buffers that have suitable DMA
alignment, otherwise cache maintenance may corrupt adjacent memory due
the cache line granularity. Let's verify this is indeed the case at
runtime.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/debug.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
index f4272e8f5822..32a417504479 100644
--- a/drivers/dma/debug.c
+++ b/drivers/dma/debug.c
@@ -128,6 +128,10 @@ void debug_dma_map(struct device *dev, void *addr,
 	list_add(&entry->list, &dma_mappings);
 
 	dma_debug(entry, "allocated\n");
+
+	if (!IS_ALIGNED(dev_addr, DMA_ALIGNMENT))
+		dma_dev_warn(dev, "Mapping insufficiently aligned %s buffer 0x%llx+0x%zx: %u bytes required!\n",
+			     dir2name[direction], (u64)addr, size, DMA_ALIGNMENT);
 }
 
 void debug_dma_unmap(struct device *dev, dma_addr_t addr,
-- 
2.39.2



