Delivery-date: Wed, 17 May 2023 11:41:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfH-0049t0-Ts
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfF-0002jL-H7
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gEYSs9DzDCAaABDTD6yj+EzomtAvHYMbDuL42uJFc/Q=; b=LEKD5K5S6/OUM27n43kMPQYngM
	Pzki/Tkc3bAJ2Gixzk+nMimzl41Lunfxah5KbGKHSVsQzAXzaT6QPArolnz+tSIXALIZMsMTrFj19
	l2uDPeGCwwMLDnGaHf1QZnbyWdRBafjQjBcSQlV53hOO6BsMZC/ZOehOyfWYg5HxXO59puoKFyoHP
	Dw4VfOWmQ/YZ/h3AEw8VW62DnD9wQ9fMVaDRJ8IoJOqIihrVERI6Z3hAeiORWV/1Uwso3sp9iULDw
	b4EuABVQhCPpUrYyXUEX1iFJ9YIsLycd9tq7i1AHVHOcRmheMoYc+lDV0acecdtM7+1f5Y5goFKjL
	bdV+PrAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeC-0096Yg-33;
	Wed, 17 May 2023 09:40:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe2-0096Lj-23
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gEYSs9DzDCAaABDTD6yj+EzomtAvHYMbDuL42uJFc/Q=; b=lSXFavunzS6LzpqlX8+jrg2nWS
	J010UfS40NVlBYg3MLHNWRcNOddD2iXBuH7K6ziGaTcozqJY+Y1/iZ8URgOMG+EqA5ZJmVtrxWFHJ
	LWwbdZcfeVxu17byVBsDWnn/99fY+Nq9iZHzBlvDPGpChUqx1h9eZjoZXN6DgnC6nLGadd5Es3lJI
	AYS9aWVqPFX0ITtXvrvxTjT59ZTs8CgMvpxAFTfTn39HLHFAXhcJh0jWkMaV2etQ3K4iGX/adI+0A
	n7/o2oyP2AvA7kp14EWtjUXat0wroM1Q3MVUZYLgczE7sglF/p9N946g/+WT+YgoMcIKUooeKM1VK
	gu40r8tg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-00DAxs-2T
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00040h-0T; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7Q-Aj; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00Gas4-TL; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:25 +0200
Message-Id: <20230517090340.3954615-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_133490_0E358D06 
X-CRM114-Status: GOOD (  18.17  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 19/34] ARM: mmu: move dma_sync_single_for_device to extra file
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



