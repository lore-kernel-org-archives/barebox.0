Delivery-date: Fri, 12 May 2023 13:12:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQh3-00F2XS-By
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:12:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgy-0005MQ-EK
	for lore@pengutronix.de; Fri, 12 May 2023 13:12:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gEYSs9DzDCAaABDTD6yj+EzomtAvHYMbDuL42uJFc/Q=; b=U0k9lmCl6MUBpveHIesHkCMPxX
	/Ymdgi2KMCETFVeXM5Z8qEghtn+xUHpzPYUj8IVOwQ176u2tnjL8Vslx+aguvF93LBT1PChtLbNFO
	NRPzWC6snER6dZTb0yDdGjT6iZuLYkRwFtN7p8x90+Xrrutv2jZKytTALFuXPG7tW+nodP+lOfLUd
	q/R0fcE2I2CCLmz1GI1d0VmpMqzbP14kp42upEJ63E6EitqJkXX/CURQhSjj1BAn6hBAMiW1HdHzz
	a98W6yhOMwE/xOgsNaWQs0tuOlZey6oerwoKB0borfIPNLsY9V9UHhl9QLHR3Pjt63nhtyuPiIE6a
	zyN5neCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfn-00BkX3-1J;
	Fri, 12 May 2023 11:10:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfL-00Bk1p-3B
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gEYSs9DzDCAaABDTD6yj+EzomtAvHYMbDuL42uJFc/Q=; b=icewBF1IZcQ8XZ8GTLzSkFmQ0E
	Yq8rc6mZUAdoKNVrHi+t9rVS0PIMr7WsBSU4KolNg3iNSH3RnWj2Z7XRSYDpTAFFMzDgA7UOlvp+d
	mk+NVjbz0IbLQVfS9KXRBR2xdGb/qqzBXAbGCIB2VvK3hs3hr9MzqkzUXgnW8Pp7ic969uHqLdPo4
	BD7Yvo1xV1l4WGRAv0+saunmKCLYN1iPyXzOnutkQTG2tbUlyKQAXXp3pT5TjefUG4yAe7tULTX1Q
	jJx8KjPEdTIrrbrmWwHWxElgtuh+R2LLxw31mKYwBur6QAiYjR9bKTG23xKcs7vH4bLK19EcMS6uV
	biDU8xEw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-009834-1W
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf9-0003gg-CS; Fri, 12 May 2023 13:10:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-002wkH-OT; Fri, 12 May 2023 13:10:14 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055EA-7d; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:53 +0200
Message-Id: <20230512111008.1120833-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121021_615567_3CE467FB 
X-CRM114-Status: GOOD (  17.55  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/27] ARM: mmu: move dma_sync_single_for_device to extra file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The next patch merges the mmu.c files with their corresponding
mmu-early.c files. Before doing that move functions which can't
be compiled for PBL out to extra files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile |  1 +
 arch/arm/cpu/dma_32.c | 20 ++++++++++++++++++++
 arch/arm/cpu/dma_64.c | 16 ++++++++++++++++
 arch/arm/cpu/mmu_32.c | 18 ------------------
 arch/arm/cpu/mmu_64.c | 13 -------------
 5 files changed, 37 insertions(+), 31 deletions(-)
 create mode 100644 arch/arm/cpu/dma_32.c
 create mode 100644 arch/arm/cpu/dma_64.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index fef2026da5..cd5f36eb49 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -4,6 +4,7 @@ obj-y += cpu.o
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_$(S64_32).o interrupts_$(S64_32).o
 obj-$(CONFIG_MMU) += mmu_$(S64_32).o mmu-common.o
+obj-$(CONFIG_MMU) += dma_$(S64_32).o
 obj-pbl-y += lowlevel_$(S64_32).o
 obj-pbl-$(CONFIG_MMU) += mmu-early_$(S64_32).o
 obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
diff --git a/arch/arm/cpu/dma_32.c b/arch/arm/cpu/dma_32.c
new file mode 100644
index 0000000000..a66aa26b9b
--- /dev/null
+++ b/arch/arm/cpu/dma_32.c
@@ -0,0 +1,20 @@
+#include <dma.h>
+#include <asm/mmu.h>
+
+void dma_sync_single_for_device(dma_addr_t address, size_t size,
+				enum dma_data_direction dir)
+{
+	/*
+	 * FIXME: This function needs a device argument to support non 1:1 mappings
+	 */
+
+	if (dir == DMA_FROM_DEVICE) {
+		__dma_inv_range(address, address + size);
+		if (outer_cache.inv_range)
+			outer_cache.inv_range(address, address + size);
+	} else {
+		__dma_clean_range(address, address + size);
+		if (outer_cache.clean_range)
+			outer_cache.clean_range(address, address + size);
+	}
+}
diff --git a/arch/arm/cpu/dma_64.c b/arch/arm/cpu/dma_64.c
new file mode 100644
index 0000000000..b4ae736c9b
--- /dev/null
+++ b/arch/arm/cpu/dma_64.c
@@ -0,0 +1,16 @@
+#include <dma.h>
+#include <asm/mmu.h>
+#include <asm/cache.h>
+
+void dma_sync_single_for_device(dma_addr_t address, size_t size,
+                                enum dma_data_direction dir)
+{
+	/*
+	 * FIXME: This function needs a device argument to support non 1:1 mappings
+	 */
+
+	if (dir == DMA_FROM_DEVICE)
+		v8_inv_dcache_range(address, address + size - 1);
+	else
+		v8_flush_dcache_range(address, address + size - 1);
+}
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 7b31938ecd..10f447874c 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -494,21 +494,3 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 {
 	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
-
-void dma_sync_single_for_device(dma_addr_t address, size_t size,
-				enum dma_data_direction dir)
-{
-	/*
-	 * FIXME: This function needs a device argument to support non 1:1 mappings
-	 */
-
-	if (dir == DMA_FROM_DEVICE) {
-		__dma_inv_range(address, address + size);
-		if (outer_cache.inv_range)
-			outer_cache.inv_range(address, address + size);
-	} else {
-		__dma_clean_range(address, address + size);
-		if (outer_cache.clean_range)
-			outer_cache.clean_range(address, address + size);
-	}
-}
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index c7c16b527b..9150de1676 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -241,16 +241,3 @@ void dma_flush_range(void *ptr, size_t size)
 
 	v8_flush_dcache_range(start, end);
 }
-
-void dma_sync_single_for_device(dma_addr_t address, size_t size,
-                                enum dma_data_direction dir)
-{
-	/*
-	 * FIXME: This function needs a device argument to support non 1:1 mappings
-	 */
-
-	if (dir == DMA_FROM_DEVICE)
-		v8_inv_dcache_range(address, address + size - 1);
-	else
-		v8_flush_dcache_range(address, address + size - 1);
-}
-- 
2.39.2



