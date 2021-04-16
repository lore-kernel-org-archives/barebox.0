Delivery-date: Fri, 16 Apr 2021 08:28:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHxp-0000pS-IW
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 08:28:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHxo-0007mH-L9
	for lore@pengutronix.de; Fri, 16 Apr 2021 08:28:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G4Nq2bzwmQn3SPkn6YKBR8AoBGQWBdBpq0CNMUq4DQY=; b=jKM4zvyA9YHjHd0nEr1iXThA9
	36Ij4STVcvmFregiYZ12fCBnYTu0vtq3u4MiBiEFSGU3Bc8Jn+DI4nsfAvNitAtBosMhlPxugRcCk
	N7Y6YfPXHqkM/+t7SkUOYeAleXg8HQTdCIMPRI7nfeYdSnjn8qDoLGSR94lAVQO9I/p/NwzXWaHks
	R2uh6WTu6EjQ7ZX14rcae8SD6jZTPTO3WBZZl2ObbKgtoVhMmFKn1rX40gvMpTFpAWJ/k0Zgd2VpL
	fvcPNXLunX/Pk5kYtPZbVBtFsVFk25V9kxpg/Q5npP8CYhwX/RIgZfLDGwSmRG+q76qQJ9txeE9Ag
	BmA/ejR6w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXHvM-00125y-Ls; Fri, 16 Apr 2021 06:25:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuO-0011qH-RS
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 06:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=ggdV+tZVUUdIAcf3tWqvqAY2TzvAyb7Pok0Bw8XWem0=; b=OXekQJpM9FsxjrCT6fdH/yB3BL
 6v6VAQO2xryMvuJZeCKwQa596ws63O5pacprJvq9gwlFvT3ZIQ6s9IT5IJZPBsbzPjfyEURooWnDk
 KgjKk2PJE9WfSKBTdOhsfOtab8DYhE62MJHk3V8RryZMyXLaCDHWoucOG1YfGbjEgF+z3R+DbZJhM
 1Iq9sX9Nj4glPw26XHpb1Y4U3F6qI5I831eP9juIcBj9jn3vrt3Dez5X92v5JrxwcIhxBNGvQFHvV
 gk5T1DrJMoEI29KBC8Q9o0O29LdoZjMYH0bEdGzqMHUcA0FWfr/iOFKoloIw4cfDIB10DDeYDjXBx
 jIcHRwbw==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuK-0097Ec-BY
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 06:24:51 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id F3BB91C0006;
 Fri, 16 Apr 2021 06:24:42 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Fri, 16 Apr 2021 08:24:33 +0200
Message-Id: <20210416062436.332665-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210416062436.332665-1-ahmad@a3f.at>
References: <20210416062436.332665-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_232448_552991_92417609 
X-CRM114-Status: GOOD (  12.98  )
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
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] x86: add DMA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both interconnect and PCI are cache coherent on x86, so we shouldn't
need any special CPU barriers for DMA. Indeed, Linux defined neither
ARCH_HAS_SYNC_DMA_FOR_CPU nor ARCH_HAS_SYNC_DMA_FOR_DEVICE on x86.

It thus seems that the only reordering we need to take care of is
compiler-induced reordering. The Linux memory model that barebox adheres
to as well demands that all accesses to shared data are volatile.

volatile accesses are already guarnateed to not be reordered against
each other, so we don't even need an explicit barrier(), which is
already the case on other architectures that have a disabled MMU.

Cc: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/Kconfig           |  1 +
 arch/x86/include/asm/dma.h | 36 +++++++++++++++++++++++++++++++++++-
 2 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 311c3d1a8ec5..bcb44b23f05a 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -4,6 +4,7 @@
 config X86
 	bool
 	select HAS_KALLSYMS
+	select HAS_DMA
 	select GENERIC_FIND_NEXT_BIT
 	default y
 
diff --git a/arch/x86/include/asm/dma.h b/arch/x86/include/asm/dma.h
index 3dab2b688d8e..8a3b044f3a9c 100644
--- a/arch/x86/include/asm/dma.h
+++ b/arch/x86/include/asm/dma.h
@@ -4,6 +4,40 @@
 #ifndef __ASM_DMA_H
 #define __ASM_DMA_H
 
-/* empty */
+#include <linux/string.h>
+#include <linux/compiler.h>
+#include <xfuncs.h>
+#include <malloc.h>
+
+/*
+ * x86 is cache coherent, so we need not do anything special here
+ */
+
+static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	void *ret = xmemalign(4096, size);
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	memset(ret, 0, size);
+
+	return ret;
+}
+
+static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
+				     size_t size)
+{
+	free(mem);
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
 
 #endif /* __ASM_DMA_H */
-- 
2.31.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

