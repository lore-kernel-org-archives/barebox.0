Delivery-date: Tue, 14 Jun 2022 11:24:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12mz-0024hU-2N
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 11:24:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12my-0006vQ-IR
	for lore@pengutronix.de; Tue, 14 Jun 2022 11:24:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lepcENfuSm9uoUA16xoo5xFX7S/9s7rKojaSEi4Qxz0=; b=Ro0Jrkk4cxvrxZ
	mb+m8084bCOYXbnEOdby7ppjp8a7fJl5ecdUEcD6ioB6ZivwmtfnjV1ul9FgfXl1KEe/jr/LeVi/s
	WCSja8z+iZOJkOTaVnWM9lrkbq2VVpEzg9iyqpXjaNVFtl9X3PhfBdccHuAy3kZ+vwzb95cShNg6r
	S/5ifw1+QS5NnlS26b/iHXV1Dm2LMQXDtyz+u963cy3a2482z/TvybuueJeKt+BPYWwvni7s0h+xH
	H33lod4XnL1S2Ceb3G5soB1t1ZdwP1YFrsJyMR0f5zG982aegYj8lYPHoNQIegtdad5KkCzyT+xs/
	HeG106FvPCKIsG9stH5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12lT-008gTa-PB; Tue, 14 Jun 2022 09:23:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12eZ-008ctg-V1
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 09:16:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o12eW-0005K5-K0; Tue, 14 Jun 2022 11:16:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o12eU-000SaS-GT; Tue, 14 Jun 2022 11:15:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o12eV-004HFm-82; Tue, 14 Jun 2022 11:15:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 14 Jun 2022 11:15:56 +0200
Message-Id: <20220614091556.1018102-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614091556.1018102-1-a.fatoum@pengutronix.de>
References: <20220614091556.1018102-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_021604_046258_0177A18F 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] dma: add dma_sync nop stubs for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We can implement dma_sync functions as compiler barriers when we are
certain that the buffers are in coherent/uncached memory, e.g. because
MMU is only enabled in barebox_arm_entry which hasn't run yet.

This will come in handy when doing mailbox communication in PBL on the
Raspberry Pi.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please replace equally-named patch in next with this.
Should fix breakage for !MMU SoCFPGA
---
 include/dma.h | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/include/dma.h b/include/dma.h
index 2a271044f61c..2c4bdfc98fb5 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -56,6 +56,7 @@ static inline int dma_mapping_error(struct device_d *dev, dma_addr_t dma_addr)
 		(dev->dma_mask && dma_addr > dev->dma_mask);
 }
 
+#ifndef __PBL__
 /* streaming DMA - implement the below calls to support HAS_DMA */
 #ifndef dma_sync_single_for_cpu
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
@@ -66,6 +67,27 @@ void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir);
 #endif
+#else
+#ifndef dma_sync_single_for_cpu
+/*
+ * assumes buffers are in coherent/uncached memory, e.g. because
+ * MMU is only enabled in barebox_arm_entry which hasn't run yet.
+ */
+static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
+			     enum dma_data_direction dir)
+{
+	barrier_data((void *)address);
+}
+#endif
+
+#ifndef dma_sync_single_for_device
+static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
+				enum dma_data_direction dir)
+{
+	barrier_data((void *)address);
+}
+#endif
+#endif
 
 #ifndef dma_alloc_coherent
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

