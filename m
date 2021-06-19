Delivery-date: Sat, 19 Jun 2021 06:52:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyS-0004Ue-TY
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:52:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyR-0000dO-NI
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:52:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+J9dvGVL0/RQPnfYutMMLF4jBA6RHdyJwRVEmsxsJL8=; b=UyomOgwad7HM3p
	ahs1vGx2hp3GkTcD7n7ZttaV4Wun9Wm1RPJ1wP7yw47lyDIsV2Q16HshvsYbJK+RDOehESAtK2bn5
	Q3pjfxY+DNBgCPw2A+Q6dGI01LIPW3v/mgEeZTS1/kMzquxhtASmpo2OnBBKTt3eWbQfwcsenIr3U
	W2mjn7ON96J/6eNNgdBEaZormnAFx/3SaUUycBNVZkI54fvt4JOQZay9vrVWfe6xbt23kdFeRWSSA
	A7RUnaoyICA7MfuJdQXgB1uBRfBjTDPH5mEzxgCQ5z3BfO1Nj3sYMgzRUq/NmTjCoDMNlIzAaMv9I
	cxa2D7IPT77xAxgpUWmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSx5-00GHqs-2S; Sat, 19 Jun 2021 04:51:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwi-00GHfo-RB
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MG-CB; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001LM-Tj; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:45 +0200
Message-Id: <20210619045055.779-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215104_990594_88DCB844 
X-CRM114-Status: GOOD (  10.50  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 19/29] dma: allocate 32-byte aligned buffers by default
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

