Delivery-date: Mon, 31 May 2021 09:40:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncXj-0003Cu-GR
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:40:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncXg-0000us-SC
	for lore@pengutronix.de; Mon, 31 May 2021 09:40:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+J9dvGVL0/RQPnfYutMMLF4jBA6RHdyJwRVEmsxsJL8=; b=XYtXE1sNbs2ysC
	n4SnplWQKRshBmpP/k8GUDpXEcVZgdmtBdpY1P6FJWlpAmwXelZUI8nIosK9MbQTyoos3OsZsN93W
	XbelCv4zQo5+7eb3R5BqbeqRUIMaU5jTxXG591Ad7CpHEG20LwTWKIQEEcHjmY7K/Yg07nKiBElIV
	Sbfmrd5Y6w0fy867NFrSqQUQ1IZR5CgaZyVya1KvtYgEEe3vIjjqI1ojkVhP4XxUD6EtDNbXqqm8R
	u5IQkNN1b2B5M1GNAVNzZjbsLousC06f7DPesYiFla8u/HwfZFQDcqbLvrEpOPpNuVeXZo+X8hnHL
	Z5p1neG+WF2Xm8NUidMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncWL-00BDGk-9I; Mon, 31 May 2021 07:39:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVN-00BChr-Sa
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080P-GF; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVD-00046E-4F; Mon, 31 May 2021 09:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:15 +0200
Message-Id: <20210531073821.15257-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003834_032621_AC7B988B 
X-CRM114-Status: GOOD (  10.88  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/20] dma: allocate 32-byte aligned buffers by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If dma_alloc() is really used for streaming-dma between cache-incoherent
masters, it should return cache-line aligned buffers, so we don't risk
invalidating shared cache lines. Bump up the default alignment to 32-bytes.

This doesn't affect ARM, as it defines its own implementation with
64-byte buffers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dma.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/include/dma.h b/include/dma.h
index 1b1cb3a40796..90f9254ea80f 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -8,6 +8,7 @@
 
 #include <malloc.h>
 #include <xfuncs.h>
+#include <linux/kernel.h>
 
 #include <dma-dir.h>
 #include <asm/dma.h>
@@ -15,10 +16,14 @@
 
 #define DMA_ADDRESS_BROKEN	NULL
 
+#ifndef DMA_ALIGNMENT
+#define DMA_ALIGNMENT	32
+#endif
+
 #ifndef dma_alloc
 static inline void *dma_alloc(size_t size)
 {
-	return xmalloc(size);
+	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
 }
 #endif
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

