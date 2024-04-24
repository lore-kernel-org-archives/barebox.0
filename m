Delivery-date: Wed, 24 Apr 2024 08:42:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKO-00EOQr-1x
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:42:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKN-0000dP-W7
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:42:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RIQKKSSFJwqxAN+LObIl9SK4FR+ulLmNQcwSyI9LbMw=; b=mJCTJhG8ADWLyDTsfA6RuFtf4a
	REMtRgG4vLhNt40KCaln2ujCA9cKL/ExuRVH8LuMS8r6exiKybzj6uPLFeWB5Zo9cZz7A9+y+3hPi
	jVTBuP8vuDhUSLLkqMBQLmJJ4icHlM6ScTtkLvXmI5jKVpX2Q8phzJlqlCyeoXTx2/uFSiLvDjIcN
	zmxpogSMap/fat6Rj1apOR+K5pJ0KmSb9MT7E2kFAe6T8Ufljqbeu2PCxmye4Dx1TPfjLxEY4Uxt/
	6fBWTLgYjqbj7cly/GUZ9gXPT7lZwIh/L5tY73nUDPvnqsAVLoW9al7hWG1K0GQrDJjITzX3yYDX5
	Byr3e14Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJu-00000002vKK-2mPq;
	Wed, 24 Apr 2024 06:41:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJk-00000002vBc-43mQ
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:41:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-0008BW-Kb; Wed, 24 Apr 2024 08:41:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00E1yY-4A; Wed, 24 Apr 2024 08:41:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-08;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:37 +0200
Message-Id: <20240424064058.3608016-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234121_161345_98D5B5A2 
X-CRM114-Status: UNSURE (   9.29  )
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
Subject: [PATCH master 02/23] dma: give inline dma_alloc a single external definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll be adding more calls to dma_alloc shortly, so move it
out-of-line.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/map.c | 5 +++++
 include/dma.h     | 6 +++++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index ab86a8c7b139..ed7d3b68ffb1 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -2,6 +2,11 @@
 #include <dma.h>
 #include "debug.h"
 
+void *dma_alloc(size_t size)
+{
+	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
+}
+
 void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 			     size_t size, enum dma_data_direction dir)
 {
diff --git a/include/dma.h b/include/dma.h
index df9807b4f2e4..0b77949eaf05 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -21,10 +21,14 @@
 #define DMA_ALIGNMENT	32
 #endif
 
+#ifdef CONFIG_HAS_DMA
+void *dma_alloc(size_t size);
+#else
 static inline void *dma_alloc(size_t size)
 {
-	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
+	return malloc(size);
 }
+#endif
 
 static inline void dma_free(void *mem)
 {
-- 
2.39.2



