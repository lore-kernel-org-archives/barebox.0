Delivery-date: Thu, 20 Mar 2025 13:51:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvFNB-001tWB-2w
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 13:51:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvFNA-0000YZ-QO
	for lore@pengutronix.de; Thu, 20 Mar 2025 13:51:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zLqNXImzBoXmEAiZ/Y2CFxGUkv9KASlwiy1/0S1eXZY=; b=4KoWpzCGGM+OK4g5jtzlJhp/tJ
	CDy4SbqgxSAYzxI6QX2UVPOqzZ5Ohi+LlJfmUJcR91HCvbJBC0x0Lvhau6PZqVjwPJWQ1P/T7UAoi
	lCG01ky+WTmWODEofNmAaX4XCbQeMgGFFgSHj3HkwWA2XrPJUak94umqQimLBcXkdRNhCnsmn2Egs
	eCiaOh5oCEwFGFbNN0Qd0+WoHrnZSDJ+m6Db2jeunykPeE6Ds5jXKEwq5I2jeNazUtBOD2rAxJA+W
	WY1o8fzVfQHqwO6/cbqKbjm0r9kH51LlgfZE94qs5R30v5lqOPFhAO/qPxTIg0ogJhHp1V3H270qR
	i2BAIHKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvFMg-0000000C9HO-2QdB;
	Thu, 20 Mar 2025 12:51:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvFMe-0000000C9H4-1q34
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 12:51:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvFMd-0000P8-5d; Thu, 20 Mar 2025 13:51:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvFMc-000lEh-1o;
	Thu, 20 Mar 2025 13:51:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvFMc-000sqV-2o;
	Thu, 20 Mar 2025 13:51:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Mar 2025 13:51:09 +0100
Message-Id: <20250320125109.210820-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_055112_472323_842041C3 
X-CRM114-Status: GOOD (  10.76  )
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
Subject: [PATCH v2] dma: add function to check a buffer for proper DMA alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add dma_map_buf_is_aligned() which can be used to check if a buffer is
sufficiently aligned for DMA.

Link: https://lore.kernel.org/r/20250320120907.204013-1-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

---

Changes since v2:
- make buf argument const
- use PTR_IS_ALIGNED for pointer checking
---
 include/dma.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/dma.h b/include/dma.h
index 5877f4b13c..cb44963cc0 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -141,4 +141,9 @@ void dma_free_coherent(struct device *dev, void *mem, dma_addr_t dma_handle, siz
 void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle);
 #endif
 
+static inline bool dma_map_buf_is_aligned(struct device *dev, const void *buf, size_t size)
+{
+	return PTR_IS_ALIGNED(buf, ARCH_DMA_MINALIGN) &&
+		IS_ALIGNED(size, ARCH_DMA_MINALIGN);
+}
 #endif /* __DMA_H */
-- 
2.39.5



