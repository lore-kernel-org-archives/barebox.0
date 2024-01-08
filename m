Delivery-date: Mon, 08 Jan 2024 11:26:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmph-008hQa-2v
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 11:26:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmph-0004zm-Bn
	for lore@pengutronix.de; Mon, 08 Jan 2024 11:26:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tda9V+AA6a1WJK6PZsNLcNUH8gce5r+Ms0v1QGlN+ig=; b=jOQId+qRPgZiZEfFeEONRZUNU/
	Uo9xWznWZOsCuhQzgUnVGbUGKWsHFuSaU94QpripYx/83Guo1i7DS9QyycxMRDi9XaWvSFB1q7W2P
	xxdbZmOt7AqKJOQZ26blMznnXGMquNC8JC2/rTUhKGanCw75yeleABBHvEz0DR0r/kP9bVob/oxIr
	7YFqYBxOtfoqA9qXORm7N1csT0kmp6G3ulaZ6IXjeWfaT0Nue3V+B9HyzJyvQxAB61hIQPOGXRfSX
	qK6Uym5SEdS8FzrhfLj0lQI/TKU8nvtNA/7Jpu0rP2BgNHOWNHs7JkM6ggyHiZlFS7j5x/cYTHmVY
	ZK3jS+kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmoW-004bUP-0J;
	Mon, 08 Jan 2024 10:25:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmoS-004bTM-2p
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 10:24:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmoB-0004e4-Lv; Mon, 08 Jan 2024 11:24:39 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmoB-001DzC-7z; Mon, 08 Jan 2024 11:24:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmoB-005XTO-0N;
	Mon, 08 Jan 2024 11:24:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>,
	Yann Sionneau <ysionneau@kalrayinc.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Jan 2024 11:24:36 +0100
Message-Id: <20240108102438.1318473-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240108102438.1318473-1-a.fatoum@pengutronix.de>
References: <20240108102438.1318473-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_022456_909464_773CE242 
X-CRM114-Status: UNSURE (   9.24  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] kvx: set DMA_ALIGNMENT instead of defining dma_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

<dma.h> will take care to define dma_alloc with DMA_ALIGNMENT as
alignment. As 32 is the default and we for need 64 for kvx,
define DMA_ALIGNMENT and drop the now duplicate code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/kvx/include/asm/dma.h | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
index f35eafba8fae..c6f67e76d024 100644
--- a/arch/kvx/include/asm/dma.h
+++ b/arch/kvx/include/asm/dma.h
@@ -6,11 +6,7 @@
 
 #include <common.h>
 
-#define dma_alloc dma_alloc
-static inline void *dma_alloc(size_t size)
-{
-	return xmemalign(64, ALIGN(size, 64));
-}
+#define DMA_ALIGNMENT	64
 
 #define dma_alloc_coherent dma_alloc_coherent
 static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
-- 
2.39.2



