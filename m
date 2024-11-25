Delivery-date: Mon, 25 Nov 2024 16:33:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb5k-000GEJ-1h
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:33:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb5k-0004Jy-D6
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:33:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ySmLiBY0mbBoQggiqpIwY3lapIO+ZvMjJO4MuW2xJFg=; b=EiUO+C32TzW3rgaUUZDRP9T8GH
	qsBXvkiNfW5xzMB5JlVpLwGKh3mR2cnUKJpmlzI6f592aECbAQoLt6Kc/+UkxbomktSOwe1/YOk8M
	m7vk3qNOuc28w+oszd26bAyTUQPa2QO8M4wTju3zjC+4d0lLIpaSiIrc/M9pevttPdNZKCApVoo8Y
	vFHEmoPWeeQ7vkSKEnQ5zKgZZTxNm3mombEnOgGGvt8AsmOD0lVRExes2605OIRwOX2cMtx9za7FU
	fdl6tyNXQ2H4veONfHO5IWJ2xrKq+bVgDFA3P73cC65Ep3nNcgDmFkI4Z7p8Wni1A3IjlFrzgVtmn
	N3xawM3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb5O-00000008VNP-24NT;
	Mon, 25 Nov 2024 15:33:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb2M-00000008URJ-3E5J
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:30:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb2L-0003GA-Cu; Mon, 25 Nov 2024 16:30:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb2K-0006Qn-1R;
	Mon, 25 Nov 2024 16:30:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb2K-003Ytw-1c;
	Mon, 25 Nov 2024 16:30:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:30:03 +0100
Message-Id: <20241125153003.708512-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073006_813180_DF3642F3 
X-CRM114-Status: GOOD (  12.65  )
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
Subject: [PATCH] dma: define compile-time ARCH_DMA_MINALIGN constant for all archs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

DMA_ALIGNMENT is not a compile-time constant on MIPS. This didn't bother
us so far, but will when we need to use it as argument to __aligned().

Let's additionally define ARCH_DMA_MINALIGN like Linux does and require
that all architectures define it to a compile-time constant if
DMA_ALIGNMENT isn't one.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/include/asm/dma.h       |  2 ++
 arch/openrisc/include/asm/cache.h | 14 ++------------
 arch/openrisc/include/asm/dma.h   |  6 +++++-
 include/dma.h                     |  4 ++++
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index 2ae75f047bd7..e5c8abd0bf1e 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -19,6 +19,8 @@
 #define DMA_ALIGNMENT	\
 	max(current_cpu_data.dcache.linesz, current_cpu_data.scache.linesz)
 
+#define ARCH_DMA_MINALIGN	128
+
 struct device;
 
 #define dma_alloc_coherent dma_alloc_coherent
diff --git a/arch/openrisc/include/asm/cache.h b/arch/openrisc/include/asm/cache.h
index 5dee26b190e1..4bba6923b1e8 100644
--- a/arch/openrisc/include/asm/cache.h
+++ b/arch/openrisc/include/asm/cache.h
@@ -16,6 +16,8 @@
 #ifndef __ASM_OPENRISC_CACHE_H_
 #define __ASM_OPENRISC_CACHE_H_
 
+#include <asm/dma.h>
+
 void flush_dcache_range(unsigned long addr, unsigned long stop);
 void invalidate_dcache_range(unsigned long addr, unsigned long stop);
 void flush_cache(unsigned long addr, unsigned long size);
@@ -28,16 +30,4 @@ void dcache_disable(void);
 void icache_enable(void);
 void icache_disable(void);
 
-/*
- * Valid L1 data cache line sizes for the OpenRISC architecture are
- * 16 and 32 bytes.
- * If the board configuration has not specified one we default to the
- * largest of these values for alignment of DMA buffers.
- */
-#ifdef CONFIG_SYS_CACHELINE_SIZE
-#define ARCH_DMA_MINALIGN       CONFIG_SYS_CACHELINE_SIZE
-#else
-#define ARCH_DMA_MINALIGN       32
-#endif
-
 #endif /* __ASM_OPENRISC_CACHE_H_ */
diff --git a/arch/openrisc/include/asm/dma.h b/arch/openrisc/include/asm/dma.h
index 27d269f49182..090e01cb7e44 100644
--- a/arch/openrisc/include/asm/dma.h
+++ b/arch/openrisc/include/asm/dma.h
@@ -8,6 +8,10 @@
 #ifndef __ASM_DMA_H
 #define __ASM_DMA_H
 
-/* empty */
+/*
+ * Valid L1 data cache line sizes for the OpenRISC architecture are
+ * 16 and 32 bytes.
+ */
+#define DMA_ALIGNMENT       32
 
 #endif /* __ASM_DMA_H */
diff --git a/include/dma.h b/include/dma.h
index 53cb50b707f4..1f650aecb950 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -22,6 +22,10 @@
 #define DMA_ALIGNMENT	32
 #endif
 
+#ifndef ARCH_DMA_MINALIGN
+#define ARCH_DMA_MINALIGN	DMA_ALIGNMENT
+#endif
+
 #ifdef CONFIG_HAS_DMA
 void *dma_alloc(size_t size);
 void *dma_zalloc(size_t size);
-- 
2.39.5



