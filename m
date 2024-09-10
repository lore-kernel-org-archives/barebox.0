Delivery-date: Tue, 10 Sep 2024 13:49:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzMz-0038tl-1G
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 13:49:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzMy-0001MS-4R
	for lore@pengutronix.de; Tue, 10 Sep 2024 13:49:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KS/0RAhNKDrjt0IuUgikV5iKJiIuNSQYjsVysJanLBQ=; b=3dYsrUJEjlu5SKuhMcp0uLeDn3
	HZwb/yh4ubYM5oWQ1gHzVHLREcyD8T/ny0rOsXNsMzwamPVz7rsSHo44YpjZfQGuGl77wpu74Ot8o
	CNtanZBbY7+FV4IQiUWu4r1rCtpzPgZkeKPIPu0FxHKlYHKKsYp8KgeoN4nON1+XIdUfF4/qYpEmU
	6YGemRlPpknG7R0HoKtU1C/jr6oHKoupwkU1s1xhxE5RK3BlpWd5BDuRKTDaDtz5hvnQ9ix0wBNK4
	eInkTaEzbmLTXYuZFOUWfYXkonOC1oaW5R8d7KV+3oUBlR9/cZ01TJ+UuAUoWfoFn+lZvwypWtJDt
	Mb7oknjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMP-00000005R8e-21RV;
	Tue, 10 Sep 2024 11:48:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMK-00000005R6W-3g0m
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 11:48:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMJ-0000q9-A8; Tue, 10 Sep 2024 13:48:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-006sxF-TZ; Tue, 10 Sep 2024 13:48:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-00CWph-1B;
	Tue, 10 Sep 2024 13:48:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Sep 2024 13:48:32 +0200
Message-Id: <20240910114832.2984195-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
References: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_044837_006298_F6827917 
X-CRM114-Status: GOOD (  12.47  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] dma: debug: detect repeated DMA sync using KASAN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we poison/unpoison DMA buffers as part of ownership transfer,
it's possible for us to detect repeated sync's that are unnecessary at a
granularity of cache lines, which was not possible with the initial
approach in commit 1ad4b32702dd ("dma: debug: detect repeated DMA
sync").

Such repeated sync's are usually a result of mapping a buffer and then
calling dma_sync_single_for_device on it. This is unnecessary and warrants
a renewed look at the DMA management scheme, which this warning hopefully
accomplishes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/debug.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
index fd279be5be02..01a3832ea30a 100644
--- a/drivers/dma/debug.c
+++ b/drivers/dma/debug.c
@@ -213,7 +213,14 @@ void debug_dma_sync_single_for_cpu(struct device *dev,
 
 	cpu_addr = dma_debug_entry_cpu_addr(entry, dma_handle);
 	if (cpu_addr) {
-		kasan_unpoison_shadow(cpu_addr, DMA_KASAN_ALIGN(size));
+		size_t kasan_size = DMA_KASAN_ALIGN(size);
+
+		if (kasan_is_poisoned_shadow(cpu_addr, kasan_size) == 0) {
+			dma_dev_warn(dev, "unexpected sync for CPU of already CPU-mapped %s buffer 0x%llx+0x%zx!\n",
+				     dir2name[direction], (u64)dma_handle, size);
+		} else {
+			kasan_unpoison_shadow(cpu_addr, kasan_size);
+		}
 	}
 }
 
@@ -239,6 +246,15 @@ void debug_dma_sync_single_for_device(struct device *dev,
 
 	cpu_addr = dma_debug_entry_cpu_addr(entry, dma_handle);
 	if (cpu_addr) {
-		kasan_poison_shadow(cpu_addr, DMA_KASAN_ALIGN(size), KASAN_DMA_DEV_MAPPED);
+		size_t kasan_size = DMA_KASAN_ALIGN(size);
+
+		/* explicit == 1 check as function may return negative value on error */
+		if (kasan_is_poisoned_shadow(cpu_addr, kasan_size) == 1) {
+			dma_dev_warn(dev, "unexpected sync for device of already device-mapped %s buffer 0x%llx+0x%zx!\n",
+				     dir2name[direction], (u64)dma_handle, size);
+		} else {
+			kasan_poison_shadow(cpu_addr, kasan_size, KASAN_DMA_DEV_MAPPED);
+		}
+
 	}
 }
-- 
2.39.2



