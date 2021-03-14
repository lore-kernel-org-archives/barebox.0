Delivery-date: Sun, 14 Mar 2021 13:30:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsi-0007pA-Uo
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:30:04 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPsd-0007Kn-Ua
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:30:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TMWOFvRKJ63a6Bv+6ZdLgDPtZMsdHwgiGy9ZICI5apE=; b=Gjiac7tEfwP4VbAtldpwd0Pw1
	QljJ37m5Z6tyy3p1jcCCu5GJMInenudyuMCQALryH4fgAAFop0kuyj7ZOJ2Uc446j0MMSGCNYw7vd
	K6w4WdsOXj9yrYYlSsRmb283wyiffWzMKOeDq7Kkib9h8md3NC+BNRtXLYOeBDmNqOu80ZhlXBf71
	hrpQ9xemKExq5hRl7WQdDQ8e/bVwFcsdI8QKg08QngT5W++oznLiYGtx9ESElIpq9DC07tEDgZ3wR
	A39obnrg34DIue1aMU6zhakU3eAWy6EM2R7wwSORik+GYAb+vX8m/zlGRfSx7KfkFHDr0M8Sw3Yvt
	M1EBkgKzg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLPrc-00ECDz-3M; Sun, 14 Mar 2021 12:28:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLPqx-00EBue-EX
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:28:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqo-0006Lb-VN; Sun, 14 Mar 2021 13:28:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqn-00016L-KH; Sun, 14 Mar 2021 13:28:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:27:54 +0100
Message-Id: <20210314122804.4128-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210314122804.4128-1-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_122815_709248_F2DF62BA 
X-CRM114-Status: GOOD (  13.09  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/20] RISC-V: add cacheless HAS_DMA support
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

