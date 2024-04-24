Delivery-date: Wed, 24 Apr 2024 08:41:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKK-00EONH-19
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:41:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKI-0000Xx-Tz
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:41:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mGd5S73/xqdaUzVfy8bDql4ON6TE3YBvMDV9rLAy55g=; b=IgI0cObz0eKPxxQfOxnmkmovbn
	WXNVyD0I5HWf6hO81ez8G1NaaTHyA6C7P5+sK0XDKCkkHk8fJQ3/Ux0rzcNeFyt14/OV51uRQYIsT
	JuwmmeO4JwV0uMP3CjUHFclMNDTMFepXX8P/kyFBdZTgOp/hBpDZkLeCABtynH0pigplmFbGIdvEx
	h+2JOeV3dJFYbmUE58gCI4WjgKOSJeMDKITzy0UwKJJf+AFbFqdGCr9hKbwtIJg9LHXwZ91vIQHhK
	aLrPe9XVqPgIYKPWt8OPNCUgYIoGeIsC/+5bXhl7SwGW7GRbuEZe/tFPu/4lbCMm/ZmlvnEpxK/QG
	9uNwUfyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJc-00000002v6H-3DcC;
	Wed, 24 Apr 2024 06:41:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJW-00000002uzc-2O8X
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-0008BX-Ka; Wed, 24 Apr 2024 08:41:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00E1yb-5e; Wed, 24 Apr 2024 08:41:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-0I;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:38 +0200
Message-Id: <20240424064058.3608016-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234106_702457_370FF105 
X-CRM114-Status: UNSURE (   8.41  )
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
Subject: [PATCH master 03/23] dma: add definition for dma_zalloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by functions that want a zeroed buffer for DMA use, implement
dma_zalloc(). Having this in a single place instead of open-coding makes
it easier in future to possibly optimize zeroing of the buffer and makes
follow-up changes more concise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/map.c | 11 +++++++++++
 include/dma.h     |  6 ++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index ed7d3b68ffb1..e2656a27f183 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -7,6 +7,17 @@ void *dma_alloc(size_t size)
 	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
 }
 
+void *dma_zalloc(size_t size)
+{
+	void *buf;
+
+	buf = dma_alloc(size);
+	if (buf)
+		memset(buf, 0x00, size);
+
+	return buf;
+}
+
 void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
 			     size_t size, enum dma_data_direction dir)
 {
diff --git a/include/dma.h b/include/dma.h
index 0b77949eaf05..a69072280bd5 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -23,11 +23,17 @@
 
 #ifdef CONFIG_HAS_DMA
 void *dma_alloc(size_t size);
+void *dma_zalloc(size_t size);
 #else
 static inline void *dma_alloc(size_t size)
 {
 	return malloc(size);
 }
+
+static inline void *dma_zalloc(size_t size)
+{
+	return calloc(size, 1);
+}
 #endif
 
 static inline void dma_free(void *mem)
-- 
2.39.2



