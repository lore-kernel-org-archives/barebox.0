Delivery-date: Tue, 03 Aug 2021 11:46:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr0A-0005q4-Oh
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 11:46:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr09-0000iH-Bd
	for lore@pengutronix.de; Tue, 03 Aug 2021 11:46:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2fngNIga+Da3QnnOxxjK1ULc4iPkC+PYML0x2/e7LU=; b=3REohaYQp6FJwL
	YG/lKbZL5O73zAduvr4OueUp5BtC/fumFWtI2bIzh4tge3qhQUWbd4i8nsCzWaolPZcywvxNGQJaw
	HyPrRMzGqyV1Sla/UpOt7KHtkIgaKM1E1ZrGSYYND0RgjpDM21IPYhZo3Xih+U6ACHbGxiuIhqJ2M
	T6FmMDpdpEYQqpd4KYSuKlgh8m+GdRb6R8/s+/nis0WS+9889hEHYUaezTji2tzyy6sbIB0ZK5nT0
	v/f4CYCsc1+HPOjffeU760FdV7Men5whVO6hkwmRRTlXUdBmX2njhcUByQc8ZcLPDoLjvim0QumGQ
	GxzlCJx+UXk1uwD1hVSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAqym-001r90-8k; Tue, 03 Aug 2021 09:44:56 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAqyN-001r18-RZ
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 09:44:33 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 870338A0FF; Tue,  3 Aug 2021 11:44:30 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:217d:6102:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id EC7B08A14D;
 Tue,  3 Aug 2021 11:44:24 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Aug 2021 11:44:17 +0200
Message-Id: <20210803094418.475609-8-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_024432_101713_322C3083 
X-CRM114-Status: GOOD (  14.71  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/8] ARM: mmu-early: map no-map entries XN & uncached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ensure that reserved map entries with the no-map flag are marked as
uncached and non-execute during the early MMU initialization.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/mmu-early.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index b985aa455f..9c3f01326b 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -3,9 +3,11 @@
 #include <errno.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
+#include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 #include <asm/cache.h>
 #include <asm-generic/sections.h>
+#include <pbl.h>
 
 #include "mmu.h"
 
@@ -24,7 +26,10 @@ static inline void map_region(unsigned long start, unsigned long size,
 void mmu_early_enable(unsigned long membase, unsigned long memsize,
 		      unsigned long _ttb)
 {
+	const struct pbl_reserved_memory *res_mem;
+	int i;
 	ttb = (uint32_t *)_ttb;
+	res_mem =  get_pbl_reserved_memory();
 
 	arm_set_cache_functions();
 
@@ -58,6 +63,14 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	/* maps main memory as cachable */
 	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
 
+	for (i = 0; i < get_pbl_reserved_memory_num(); i++) {
+		if (res_mem->flags & FDT_RES_MEM_FLAG_NOMAP)
+			map_region(res_mem->base, res_mem->size,
+				   PMD_SECT_DEF_UNCACHED | PMD_SECT_XN);
+		res_mem++;
+	}
+
+
 	/*
 	 * With HAB enabled we call into the ROM code later in imx6_hab_get_status().
 	 * Map the ROM cached which has the effect that the XN bit is not set.
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

