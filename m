Delivery-date: Sun, 21 Mar 2021 16:21:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzti-00027W-Tn
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:21:46 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNztf-0002zY-0j
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:21:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TMWOFvRKJ63a6Bv+6ZdLgDPtZMsdHwgiGy9ZICI5apE=; b=OMhk/0EJKfinOTsRGOMPcSffD
	JXHX+SrzimX/6psFsWKkdjBpOhPfD+QA8vGF448/u18zmRx98JqIQzFqYU30TPgu/NEFj2Q0AFYyA
	flIdPGXUC9ygunnwnsxx2MXLKVGt+5dMwV1RdNmwQG87iPN/pSY4kYsX+KC8GyScNiZAtNtikAGh6
	pigRBNbLLTBhjtYZ1ql1AotLZ5nOEGfUw7LG2Hrd7+FCLi79TGo9xOwB9RjqySLgXvSEEXlYfR8mp
	40GVGmehHTb3UyS490YzhB1Zcy7jIW0D28foyTAKUdqXtCBSn61bLIKBSW67gH/DGsIPi4N/9KGca
	vvvqVP+BA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzsJ-00A524-LD; Sun, 21 Mar 2021 15:20:19 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNznr-00A48j-GY
 for barebox@desiato.infradead.org; Sun, 21 Mar 2021 15:15:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=WmiGSLNiHlymzSseFsuD/gPYDn/KaNAf2kNObAMVkUQ=; b=mXYWDCU5FbWikibdEkxg5g2jNs
 PTWRprykQ2XOPEg5ETpd80wS8Ky6Ru8lYQGpKfsNdtqe+xWPEEgYsf9Lw97hu29JSYT+C0zIBzNKO
 60z5C4DyRTTR3OoOtQkw0S+TzQm/B2IDkx6hMjM0t8Z2AAXud7Bii6s6YPKiBtBGTszEe2BDne7B0
 TVthRZnyjiqalXAd8BuEDUDGPktMVqGsJVj34POhVxvaQ3dDGF+a7/XbM81h6e38SY2boU3p3lcfq
 hZ7MNh57340D+nbGJLothytL9DQUuNz5VC0ma1l3BhGX2O4VnEsTCtCCeFEh3XefeSnB5BKZRilSz
 VAO5QRAA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzme-007FnD-1N
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011S-6I; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm0-0007wJ-V1; Sun, 21 Mar 2021 16:13:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:32 +0100
Message-Id: <20210321151344.5810-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151434_063354_9AFB1643 
X-CRM114-Status: GOOD (  15.33  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 09/21] RISC-V: add cacheless HAS_DMA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Define some stubs, so we can get virtio MMIO working on RISC-V
in QEMU. As we don't yet have MMU support, this is sufficient.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig           |  1 +
 arch/riscv/include/asm/dma.h | 44 ++++++++++++++++++++++++++++++++++++
 include/dma.h                |  1 +
 3 files changed, 46 insertions(+)
 create mode 100644 arch/riscv/include/asm/dma.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index c8d63f99bb28..a7f362d8e80c 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -8,6 +8,7 @@ config RISCV
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
+	select HAS_DMA
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/riscv/include/asm/dma.h b/arch/riscv/include/asm/dma.h
new file mode 100644
index 000000000000..4204653984a3
--- /dev/null
+++ b/arch/riscv/include/asm/dma.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_DMA_MAPPING_H
+#define _ASM_DMA_MAPPING_H
+
+#include <common.h>
+#include <xfuncs.h>
+#include <linux/build_bug.h>
+#include <malloc.h>
+
+#ifdef CONFIG_MMU
+#error DMA stubs need be replaced when using MMU and caches
+#endif
+
+static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	void *ret;
+
+	ret = xmemalign(PAGE_SIZE, size);
+
+	memset(ret, 0, size);
+
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	return ret;
+}
+
+static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
+				     size_t size)
+{
+	free(vaddr);
+}
+
+static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
+					   enum dma_data_direction dir)
+{
+}
+
+static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
+					      enum dma_data_direction dir)
+{
+}
+
+#endif /* _ASM_DMA_MAPPING_H */
diff --git a/include/dma.h b/include/dma.h
index 07b79cd91893..1b1cb3a40796 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -11,6 +11,7 @@
 
 #include <dma-dir.h>
 #include <asm/dma.h>
+#include <driver.h>
 
 #define DMA_ADDRESS_BROKEN	NULL
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

