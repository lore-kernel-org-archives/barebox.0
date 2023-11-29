Delivery-date: Wed, 29 Nov 2023 07:12:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8DoF-00Cua6-28
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 07:12:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8DoF-0002LW-Mm
	for lore@pengutronix.de; Wed, 29 Nov 2023 07:12:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/PKBGJJB2TRPwDwG65ToxPJqS2BWEpCmu3Zedj9Ewtg=; b=NOEL+zB3Plh1KU0hxoraDA7mBc
	c9k1IY9nThC7aTZEMdBcKvBQ9m7AX8xdgPvBd91R7VbKU1JW0qY94BUuMRk7iEmaK3fiYcP0BSSrj
	UyENGTbi/O90ZtifzYt2xNaG05zM0RKylVxZ8iZV8zwBxLvWk9IgfKAn3fFBJ51BooZLXMPTYAw+N
	ECyU9XWeH6Sv14ueZeJyWXWsHCIYJG31zktE69YPxeA0IWCEUMIneBtaii/1FN2OlgUxUQ5agnB0C
	Ev4ex5fym1YcnXJYT405wNcRZBYTYLooQ+uCqAmFXiztHxx2G0QNuFiyncCyBFEaI8Ab48RSCfwSq
	LCDL59hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8DmU-007Bkw-1W;
	Wed, 29 Nov 2023 06:10:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8DmP-007BkT-1G
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 06:10:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8DmM-0002Ab-LN; Wed, 29 Nov 2023 07:10:34 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8DmM-00CLPi-8y; Wed, 29 Nov 2023 07:10:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8DmM-007TIt-0c;
	Wed, 29 Nov 2023 07:10:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Nov 2023 07:10:30 +0100
Message-Id: <20231129061030.1780596-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_221037_430837_87B9A788 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: dma: define DMA_ALIGNMENT instead of defining dma_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's a suitable fallback dma_alloc implementation already in dma.h,
which we can use as soon as we define DMA_ALIGNMENT.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/dma.h | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index 53953a486393..0774a11c5a30 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -3,11 +3,7 @@
 
 #include <common.h>
 
-#define dma_alloc dma_alloc
-static inline void *dma_alloc(size_t size)
-{
-	return xmemalign(64, ALIGN(size, 64));
-}
+#define DMA_ALIGNMENT	64
 
 #ifndef CONFIG_MMU
 #define dma_alloc_coherent dma_alloc_coherent
-- 
2.39.2



