Delivery-date: Thu, 09 Jun 2022 08:00:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBE3-008RzZ-Ut
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:00:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBE1-0000Zw-Ll
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:00:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqLvbdPiE9Xl79aZ6fKdetn1OhX4YuCRloHmdUCXwA0=; b=ez5+4qBFJTJPzI
	m8On/HrFCzpbDPVHTMm9jwB85U7cVcMTJWC5ljWsDrv93jyoAA4GAhL+3lNXvMiOX7zi86dZSWpHp
	GXTeH068vx/Lb/VQYIc3gxNCQmLtIWPuvTOZxffiK7tEKYxC0PmagejYrtC/DUebqTCWKiElez3CH
	gLOFGcBGwF/AXnC/qVKnv+3THQlwlS5dmZruC+0DXZZSHHcanEYQZBq4vs0nyB7EXDoSb6Efatak+
	H5hZsrRprn7gR2YnWpsV6dJoaVGPtr6RwO3+5PrzJiBGNAeuF205ySc7u6oLQbPHVsFYD3gufjGoq
	uP0NxTE3hZF0HBbCRGtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCh-00Gv4n-6z; Thu, 09 Jun 2022 05:59:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCZ-00GuyU-AV
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCX-0008GK-SQ; Thu, 09 Jun 2022 07:59:25 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-007K8y-9m; Thu, 09 Jun 2022 07:59:24 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZW-9I; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:03 +0200
Message-Id: <20220609055922.667016-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225927_394017_922700AD 
X-CRM114-Status: UNSURE (   9.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 02/21] dma: add dma_sync nop stubs for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We can implement dma_sync functions as compiler barriers when we are
certain that the buffers are in coherent/uncached memory, e.g. because
MMU is only enabled in barebox_arm_entry which hasn't run yet.

This will come in handy when doing mailbox communication in PBL on the
Raspberry Pi.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dma.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/dma.h b/include/dma.h
index 90f9254ea80f..aeaba7d9316d 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -8,6 +8,7 @@
 
 #include <malloc.h>
 #include <xfuncs.h>
+#include <pbl.h>
 #include <linux/kernel.h>
 
 #include <dma-dir.h>
@@ -56,12 +57,30 @@ static inline int dma_mapping_error(struct device_d *dev, dma_addr_t dma_addr)
 		(dev->dma_mask && dma_addr > dev->dma_mask);
 }
 
+#ifndef __PBL__
 /* streaming DMA - implement the below calls to support HAS_DMA */
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir);
 
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir);
+#else
+/*
+ * assumes buffers are in coherent/uncached memory, e.g. because
+ * MMU is only enabled in barebox_arm_entry which hasn't run yet.
+ */
+static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
+			     enum dma_data_direction dir)
+{
+	barrier_data((void *)address);
+}
+
+static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
+				enum dma_data_direction dir)
+{
+	barrier_data((void *)address);
+}
+#endif
 
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
 void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

