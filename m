Delivery-date: Mon, 08 Jan 2024 11:26:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmpb-008hPR-2x
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 11:26:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmpb-0004yA-BQ
	for lore@pengutronix.de; Mon, 08 Jan 2024 11:26:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0cD/UlinBbpxdK1U2UrA4tcDTg33m0LBHzHacjsvGhU=; b=Ivba6uZeIkUQhG11gdMyUEZi62
	0bd50hkApVbTn5N8ZZ2tYsQAFS/M76km5ruBQtwawCXApPLAZj1nMRBmNLqV8clJOhaB/y/D9w1c3
	13kKqpRhRmiz3l9RUesC7svMWcjcp1xrv87fwdi/TImgPxJAsBYWrixeflGjjwBMn5ZxzoauL8Rwu
	+By8agelbStCk9DO6jRd9tLGX+aL6TvWRPMV2eOuaTDDS3J6xdBnt7u3er+320ZoOGQnKL/q4VLUZ
	nUcKHgKafe/CbchTXc9X9k+fER00Oeu9pzOnYCNsGX9RRrKgr67CRZolWfaBaIAwGFn8x951ZjcnQ
	ELf84KCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmoO-004bSF-0s;
	Mon, 08 Jan 2024 10:24:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmoK-004bRC-2d
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 10:24:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmoB-0004e5-Mc; Mon, 08 Jan 2024 11:24:39 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmoB-001DzF-9x; Mon, 08 Jan 2024 11:24:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmoB-005XTO-0c;
	Mon, 08 Jan 2024 11:24:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>,
	Yann Sionneau <ysionneau@kalrayinc.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Jan 2024 11:24:37 +0100
Message-Id: <20240108102438.1318473-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240108102438.1318473-1-a.fatoum@pengutronix.de>
References: <20240108102438.1318473-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_022448_850341_5AFFBFD7 
X-CRM114-Status: UNSURE (   9.58  )
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
Subject: [PATCH 3/4] mips: set DMA_ALIGNMENT instead of defining dma_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

<dma.h> will take care to define dma_alloc with DMA_ALIGNMENT as
alignment. As 32 is the default and may not be applicable to the used
processor, we define DMA_ALIGNMENT and drop the now duplicate code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/include/asm/dma.h | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index d7570cce7109..5c5b6d5b3a58 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -14,13 +14,8 @@
 #include <asm/io.h>
 #include <asm/types.h>
 
-#define dma_alloc dma_alloc
-static inline void *dma_alloc(size_t size)
-{
-	unsigned long max_linesz = max(current_cpu_data.dcache.linesz,
-				       current_cpu_data.scache.linesz);
-	return xmemalign(max_linesz, ALIGN(size, max_linesz));
-}
+#define DMA_ALIGNMENT	\
+	max(current_cpu_data.dcache.linesz, current_cpu_data.scache.linesz)
 
 #define dma_alloc_coherent dma_alloc_coherent
 static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
-- 
2.39.2



