Delivery-date: Fri, 17 May 2024 08:11:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qoU-000t0m-0W
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:11:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qoT-00020h-Gc
	for lore@pengutronix.de; Fri, 17 May 2024 08:11:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5r9Go+TRyQxj7mkdLlUjmSRWyyXd+ajo0dXi3+8Og3Q=; b=eeti0A0phYszRSlF2lfjPmsSlE
	AZmdoDhW+R4NTZR71NUFqj7Qk4JVzUU5Y1f5QhsmTuHlZuORRWAvgnJD5qjmABrTbHkukHn3mG4um
	O/ZSSwxTZhcxNBBCFgSGJP97wTJewE5gjVKY07ODLE3CXusfGj1ulr9Oy/r0SQEGZyk6zHxtVSTpw
	HDjx02ZpCWRn4+LndtpjeN4feNK8riJn/kzeTzS0UntlhfaDiqFWja3+QFtkyzXIVw3Gk/iPglfx3
	X4XCS8Kus6JKpEVlztOB+5Eg+qFOej+s2pte9S9YA0URVHuOwQi+8+NVi1SmMSPnRdkP2aWQ1tQNt
	pLL+AXrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qo3-00000006uxC-47Lb;
	Fri, 17 May 2024 06:11:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qnz-00000006uwS-3prR
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:11:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qny-0001sH-LY; Fri, 17 May 2024 08:10:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qny-001pYT-9I; Fri, 17 May 2024 08:10:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qny-00DqRn-0e;
	Fri, 17 May 2024 08:10:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 08:10:57 +0200
Message-Id: <20240517061057.3299857-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517061057.3299857-1-a.fatoum@pengutronix.de>
References: <20240517061057.3299857-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_231100_299480_53E75E26 
X-CRM114-Status: GOOD (  11.34  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] ARM: fix overlap between ramoops area and early malloc area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ramoops is usually a few megabytes and the early malloc area is just
128K, so the effect of this overlap was likely limited, but depending on
size of the data stored to pstore, this could still lead to problems.

Avoid this by locating the early malloc area before the barebox binary.
That way that space is reclaimed in barebox proper for the non-early
malloc region.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/uncompress.c          |  4 ++--
 arch/arm/include/asm/barebox-arm.h | 24 +++++++++---------------
 2 files changed, 11 insertions(+), 17 deletions(-)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index aa1a49bfc96a..612a5b65ff4c 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -66,8 +66,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	if (IS_ENABLED(CONFIG_MMU))
 		mmu_early_enable(membase, memsize);
 
-	free_mem_ptr = arm_mem_early_malloc(endmem);
-	free_mem_end_ptr = arm_mem_early_malloc_end(endmem);
+	free_mem_ptr = barebox_base - ARM_MEM_EARLY_MALLOC_SIZE;
+	free_mem_end_ptr = barebox_base;
 
 	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 30834233fb96..c64e74f8f03a 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -73,12 +73,10 @@ void *barebox_arm_boot_dtb(void);
  *                                   ↑
  *                       ARM_EARLY_PAGETABLE_SIZE
  *                                   ↓
- *  ------------ arm_mem_ttb() / arm_mem_early_malloc_end() ------------
- *                                   ↑                          ↑
- *                     CONFIG_FS_PSTORE_RAMOOPS_SIZE         SZ_128K
- *                     (depends on FS_PSTORE_RAMOOPS)           |
- *                                   |                          ↓
- *                                   | ------ arm_mem_early_malloc() ---
+ *  --------------------------- arm_mem_ttb() -------------------------
+ *                                   ↑
+ *                     CONFIG_FS_PSTORE_RAMOOPS_SIZE
+ *                     (depends on FS_PSTORE_RAMOOPS)
  *                                   ↓
  *  ------------------------- arm_mem_ramoops() ------------------------
  *                                   ↑
@@ -86,6 +84,10 @@ void *barebox_arm_boot_dtb(void);
  *                       + BSS) rounded to SZ_1M
  *                                   ↓
  *  ---------------------- arm_mem_barebox_image() ---------------------
+ *                                   ↑
+ *                                SZ_128K
+ *                                   ↓
+ *  ------------------------ arm_mem_early_malloc ----------------------
  */
 
 static inline unsigned long arm_mem_optee(unsigned long endmem)
@@ -121,15 +123,7 @@ static inline unsigned long arm_mem_ttb(unsigned long endmem)
 	return endmem;
 }
 
-static inline unsigned long arm_mem_early_malloc(unsigned long endmem)
-{
-	return arm_mem_ttb(endmem) - SZ_128K;
-}
-
-static inline unsigned long arm_mem_early_malloc_end(unsigned long endmem)
-{
-	return arm_mem_ttb(endmem);
-}
+#define ARM_MEM_EARLY_MALLOC_SIZE	SZ_128K
 
 static inline unsigned long arm_mem_ramoops(unsigned long endmem)
 {
-- 
2.39.2



