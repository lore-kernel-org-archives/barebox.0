Delivery-date: Fri, 12 May 2023 13:11:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgi-00F2TL-Io
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgg-00053u-JM
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=khnBmvnMSZOBSTNe8EGPizqsXFMS2/Puml+ubM4ruD8=; b=wVKIlzp/bALtJh//irsBIUxDwr
	zLGEjXWeFUFWG2XelX3fZcOyAHVnrCMi89cxu/1gke8YkD+k5FQj8FlmZ9rsHIDCahlXngbwg3JeS
	qrwkpTembnGIzu9Jy5o/U3jLUVKuP1BsfQS9qDzoxIkLPyDDoPEwkCoDv9WIZ6YO+8fayN3j36FTo
	YhUV4kO4ARe25pFLdk1ckZyW8KNoVcw47faCfZaGmZJc1c0tx1Qr8g2GU7/UHD+mbLeswo6xTy/Iq
	N3NVDIwo0av47SLNznIFq7DoxhzccPRVQKF1mMQsEnJn9C5tf/ABRbHoYfXmf6p5oGY0ml8wH4l7B
	RCbwqf5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfZ-00BkFN-1j;
	Fri, 12 May 2023 11:10:41 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfH-00Bjyo-1c
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-0003e3-Aw; Fri, 12 May 2023 13:10:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-002wjZ-Kn; Fri, 12 May 2023 13:10:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055EI-9G; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:55 +0200
Message-Id: <20230512111008.1120833-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041023_550247_7D81F43C 
X-CRM114-Status: GOOD (  14.36  )
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
Subject: [PATCH 14/27] ARM: mmu: alloc 64k for early page tables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a preparation for using two level page tables in the PBL.
To do that we need a way to allocate page tables in PBL. As malloc
is not available in PBL, increase the area we use for the TTB to
make some space available for page tables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c              | 6 ++++++
 arch/arm/include/asm/barebox-arm.h | 8 ++------
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 12fe892400..4050d96846 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -24,6 +24,12 @@
 #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
 #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
 
+/*
+ * We have a 4GiB address space split into 1MiB sections, with each
+ * section header taking 4 bytes
+ */
+#define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
+
 static uint32_t *ttb;
 
 /*
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 711ccd2510..f3398e3902 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -23,11 +23,7 @@
 #include <asm/reloc.h>
 #include <linux/stringify.h>
 
-/*
- * We have a 4GiB address space split into 1MiB sections, with each
- * section header taking 4 bytes
- */
-#define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
+#define ARM_EARLY_PAGETABLE_SIZE	SZ_64K
 
 void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
 
@@ -90,7 +86,7 @@ static inline unsigned long arm_mem_ttb(unsigned long membase,
 					unsigned long endmem)
 {
 	endmem = arm_mem_stack(membase, endmem);
-	endmem = ALIGN_DOWN(endmem, ARM_TTB_SIZE) - ARM_TTB_SIZE;
+	endmem = ALIGN_DOWN(endmem, ARM_EARLY_PAGETABLE_SIZE) - ARM_EARLY_PAGETABLE_SIZE;
 
 	return endmem;
 }
-- 
2.39.2



