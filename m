Delivery-date: Thu, 21 Sep 2023 11:58:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGRv-005jxl-K0
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 11:58:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGRt-00042H-KO
	for lore@pengutronix.de; Thu, 21 Sep 2023 11:58:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rYgomP0f/fxSlJxt0uuTvv4giY3+EiqJLVirYTfF5LY=; b=S7UsI1mPdAV5FrPuvTKXB0Ed7h
	wX5ueo16w/JhU2wUlGGYoAQVIDiDNsFEIOZjSdfzMKwyEpOUrhqHSxOwyRFdwp9tbSfgiXblmGRwb
	Riql1DAYr5gGA0Fklswu6yn1u3zrxE6mlkwVst052loblz5/PVUJE+gt8pJhJzpT2SbmDTmDTWfIm
	7QG+BrINb43QPrf+Ggfy4V/6aoq74eYqE9zRsD1csYFGzrKxISkPQUWGFmSzq00Spw/baJ5O1d3Xq
	UGukjQDNXEHmShXcsyHmC1iCLKHH5btS7mC7bwzS/x9s2ZmwQamVDYxmsTzNCTz5vsYOu4i36aZPS
	e3kg8enQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGQs-005e1u-2G;
	Thu, 21 Sep 2023 09:57:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGQm-005dzB-38
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 09:57:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGQa-0003SR-Rc; Thu, 21 Sep 2023 11:56:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGQa-007tX2-Di; Thu, 21 Sep 2023 11:56:56 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGQa-001Ipo-1C;
	Thu, 21 Sep 2023 11:56:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 11:56:46 +0200
Message-Id: <20230921095649.310666-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_025709_011672_BDC1018D 
X-CRM114-Status: GOOD (  12.40  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] dma: define __dma_aligned attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike the kernel, we always map barebox stack 1:1, so DMA to barebox
stack is ok if care is taken for alignment. Otherwise, cache maintenance
may end up clobbering data unintentionally.

Provide a __dma_aligned attribute for use in such situations and use the
already existing DMA_ALIGNMENT as alignment.

To be able to do that, we need to make sure that the default DMA_ALIGNMENT
is only defined when architectures don't define their own dma_alloc. If
they do, they are responsible to define their own DMA_ALIGNMENT as well.

The new attribute is intentionally not called __cacheline_aligned,
because it differs functionally: We care about the cache line size of
the outer cache, while in Linux __cacheline_aligned is for L1 cache.
A __dma_aligned wouldn't make sense for Linux as it would be too easy to
abuse (e.g. placing it on VMAP_STACK), but for barebox, we do this at
many places and an attribute would increase readability and even safety.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dma.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/dma.h b/include/dma.h
index 2a09b747d1e2..469c482e7a3a 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -17,17 +17,19 @@
 
 #define DMA_ADDRESS_BROKEN	NULL
 
+#ifndef dma_alloc
 #ifndef DMA_ALIGNMENT
 #define DMA_ALIGNMENT	32
 #endif
 
-#ifndef dma_alloc
 static inline void *dma_alloc(size_t size)
 {
 	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
 }
 #endif
 
+#define __dma_aligned __attribute__((__aligned__((DMA_ALIGNMENT))))
+
 #ifndef dma_free
 static inline void dma_free(void *mem)
 {
-- 
2.39.2



