Delivery-date: Mon, 08 Jan 2024 11:25:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmpP-008hOX-2k
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 11:25:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmpP-0004uH-A3
	for lore@pengutronix.de; Mon, 08 Jan 2024 11:25:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nkSUHBoSHzWb4pjvnF+ilItK8tnhbdhcAAtHkyViSb4=; b=d9VXH71vJMcpNQEbpWMsLZEf9f
	6M5D0O9QnsdgQ/Byv8W4d31mVwjSKtiu0oR2cf/VpXxJvquygRyxqmbwh3OH/dgIiNuSUYfSdLSaB
	PRkIsZdVwik7scQ5hbJJ6ioPz++hwMRjQBivuol2agt3BLls68AZki/kdIL279wwAJRvpnGxkV1Y+
	2mJ4YyrwC6VEybC88CJBc4NeVwQ3oQbO/WZkiPMRwYOHYKKcUwBBCfzd7q4g8dy652avmrq2tJ2La
	MIhSROkAqtkA8Fg67OOIqdIdi4CpsMKBYgHOQ0OB5a6DDv8M9ujq88YmjrBNThMzw+VotakrdIzLf
	YTj2Yl7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmoG-004bQf-1d;
	Mon, 08 Jan 2024 10:24:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmoD-004bPy-0B
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 10:24:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmoB-0004e6-OX; Mon, 08 Jan 2024 11:24:39 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmoB-001DzI-Bf; Mon, 08 Jan 2024 11:24:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmoB-005XTO-0l;
	Mon, 08 Jan 2024 11:24:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>,
	Yann Sionneau <ysionneau@kalrayinc.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Jan 2024 11:24:38 +0100
Message-Id: <20240108102438.1318473-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240108102438.1318473-1-a.fatoum@pengutronix.de>
References: <20240108102438.1318473-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_022441_115325_BA903461 
X-CRM114-Status: UNSURE (   9.87  )
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
Subject: [PATCH 4/4] dma: don't allow override of dma_alloc/dma_free
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are no architectures left defining their own dma_alloc/dma_free.
Instead, they define DMA_ALIGNMENT and use <dma.h>'s common
implementation.

This will be useful later on, as we can use DMA_ALIGNMENT for sanity
checking with CONFIG_DMA_DEBUG_API. Till then, ensure we get no new
architecture-specific definitions of dma_alloc/dma_free, by preventing
override of the <dma.h> implementation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dma.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/dma.h b/include/dma.h
index 266a7f323fa5..df9807b4f2e4 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -21,19 +21,15 @@
 #define DMA_ALIGNMENT	32
 #endif
 
-#ifndef dma_alloc
 static inline void *dma_alloc(size_t size)
 {
 	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
 }
-#endif
 
-#ifndef dma_free
 static inline void dma_free(void *mem)
 {
 	free(mem);
 }
-#endif
 
 #define DMA_BIT_MASK(n)	(((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
 
-- 
2.39.2



