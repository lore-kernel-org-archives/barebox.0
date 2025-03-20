Delivery-date: Thu, 20 Mar 2025 13:23:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvEvr-001t3x-2P
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 13:23:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvEvq-0002Qm-Lx
	for lore@pengutronix.de; Thu, 20 Mar 2025 13:23:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4N0TO9UGCXOV5oMdXVspVx+FjYfnjns1Bq3tthGuJjk=; b=VR4V36QaKIwLgVhOq+Xy9p8Ims
	yeKmzf5vBnkz8ybf8TXM2riFUxZ+oc20z5YDid2nA8LGkp8Z7IHc0VRLBq9Ox48fRY5BkzxWxeo51
	pOvbG1C1Y4T9LIkrRC/RVS5CKFaOkPC5rM3bs3UuCfGPpKdke0ZrZmJKrzYYJcseVxtEaODjmUODh
	j9OFFe2Sh+Q0HO/RkEM/PLTc3jq5uJ2WAYHo/Lga48hHKik6UvfhKplXcxKciqSUN/HZuYniccmdB
	cuVxGmaip6G1+u+att4NMGe44NdtYZD5ZIZxSFei3F9HkHNf5VXsUtTDdHkjbAZbu+fJ5z0oxwHfg
	iKYHPQxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvEvP-0000000C6CP-37Pe;
	Thu, 20 Mar 2025 12:23:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvEhy-0000000C3sJ-0yMe
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 12:09:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEhx-000774-2T; Thu, 20 Mar 2025 13:09:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEhw-000kwB-1U;
	Thu, 20 Mar 2025 13:09:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEhw-000r4i-2R;
	Thu, 20 Mar 2025 13:09:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Mar 2025 13:09:07 +0100
Message-Id: <20250320120907.204013-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_050910_277331_A2C5C20A 
X-CRM114-Status: UNSURE (   9.99  )
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
Subject: [PATCH] dma: add function to check a buffer for proper DMA alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add dma_map_buf_is_aligned() which can be used to check if a buffer is
sufficiently aligned for DMA.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/dma.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/dma.h b/include/dma.h
index 5877f4b13c..41eeacc478 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -141,4 +141,9 @@ void dma_free_coherent(struct device *dev, void *mem, dma_addr_t dma_handle, siz
 void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle);
 #endif
 
+static inline bool dma_map_buf_is_aligned(struct device *dev, void *buf, size_t size)
+{
+	return IS_ALIGNED((uintptr_t)buf, ARCH_DMA_MINALIGN) &&
+		IS_ALIGNED(size, ARCH_DMA_MINALIGN);
+}
 #endif /* __DMA_H */
-- 
2.39.5



