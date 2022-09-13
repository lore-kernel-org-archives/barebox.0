Delivery-date: Tue, 13 Sep 2022 14:52:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OV-003gQO-NR
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 14:52:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OS-0007vD-EV
	for lore@pengutronix.de; Tue, 13 Sep 2022 14:52:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TBzF+RQBR4tiuxmvk9M9bbD/EGvwLOWDYMC/fe+4q0Q=; b=Jko5sTBck3qkcdsVvW1Q0vJ7eh
	63Uh+NbO5Oe2bQxsYYScx2YLD/GiGJ8YSoR+HkDXfnHFu1Y5BEnUhmSjRMRE3R4sV4nZVuWUJp0UI
	LICs5Cic8CWCfScwYo7f1AqV+/AO3YmLgB9gNZHeUINfc5UZQLAd7qdHKzFF06NCZOL0ZhzkSbfRm
	u3xePJpXfzxoFD8CIDvT6AdzkuMZyhmpDSaZHuU9RGxW3XGKZM9LMjTA37WTa5gGYcu1LkjAg6Oh1
	6VPO+SrHqP90JnyoRrqGiFl6TkL46aAO3y0r/aJjYGqby5zhV++aOiGUTTnz0A88zAwfbFd135TSk
	u7rX+3OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5Mu-00ADMN-HE; Tue, 13 Sep 2022 12:50:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5MX-00ADAS-0q
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 12:50:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MT-0007Kn-Ek
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MU-000VCf-5L
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:56 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MR-005fn3-Kb
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 13 Sep 2022 14:49:52 +0200
Message-Id: <20220913124954.1346533-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220913124954.1346533-1-m.felsch@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_055001_274104_2E2A8570 
X-CRM114-Status: GOOD (  20.83  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] RISC-V: use m/sscratch registers for barebox_riscv_pbl_flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the dedicated scratch register for setting the pbl flags. Each mode
has it's own scratch register so we are not conflicting with M-mode
running firmware e.g. OpenSBI. Using the scratch register has two main
advantages:
 1st) It can be used in PBL and non-PBL use-case.
 2nd) It is not affected by the relocation code.

This commit prepares barebox to add support for the special cache ops
used by several T-Head CPUs.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/riscv/boot/entry.c         |  3 +-
 arch/riscv/boot/entry.h         |  6 ++--
 arch/riscv/boot/start.c         | 13 +++----
 arch/riscv/boot/uncompress.c    |  8 ++---
 arch/riscv/include/asm/system.h | 62 ++++++++++++++++++++-------------
 5 files changed, 50 insertions(+), 42 deletions(-)

diff --git a/arch/riscv/boot/entry.c b/arch/riscv/boot/entry.c
index e4a5c2208d..f5a536fc78 100644
--- a/arch/riscv/boot/entry.c
+++ b/arch/riscv/boot/entry.c
@@ -25,6 +25,7 @@ void __noreturn __naked barebox_riscv_entry(unsigned long membase,
 {
 	unsigned long stack_top = riscv_mem_stack_top(membase, membase + memsize);
 	asm volatile ("move sp, %0" : : "r"(stack_top));
-	barebox_pbl_start(membase, memsize, boarddata, flags);
+	riscv_set_flags(flags);
+	barebox_pbl_start(membase, memsize, boarddata);
 }
 
diff --git a/arch/riscv/boot/entry.h b/arch/riscv/boot/entry.h
index fb4af5eae5..b3a24d2783 100644
--- a/arch/riscv/boot/entry.h
+++ b/arch/riscv/boot/entry.h
@@ -6,12 +6,10 @@
 
 void __noreturn barebox_non_pbl_start(unsigned long membase,
 				      unsigned long memsize,
-				      void *boarddata,
-				      unsigned flags);
+				      void *boarddata);
 
 void __noreturn barebox_pbl_start(unsigned long membase,
 				  unsigned long memsize,
-				  void *boarddata,
-				  unsigned flags);
+				  void *boarddata);
 
 #endif
diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 8b4c8bb2f0..27d9066243 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -27,7 +27,6 @@ static unsigned long riscv_barebox_size;
 static unsigned long riscv_endmem;
 static void *barebox_boarddata;
 static unsigned long barebox_boarddata_size;
-unsigned barebox_riscv_pbl_flags;
 
 void *barebox_riscv_boot_dtb(void)
 {
@@ -108,7 +107,7 @@ device_initcall(barebox_memory_areas_init);
  */
 __noreturn __no_sanitize_address __section(.text_entry)
 void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
-			   void *boarddata, unsigned flags)
+			   void *boarddata)
 {
 	unsigned long endmem = membase + memsize;
 	unsigned long malloc_start, malloc_end;
@@ -121,7 +120,7 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
 
 	barrier();
 
-	irq_init_vector(__riscv_mode(flags));
+	irq_init_vector(riscv_mode());
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
@@ -171,20 +170,18 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
-	barebox_riscv_pbl_flags = flags;
-
 	pr_debug("starting barebox...\n");
 
 	start_barebox();
 }
 
-void start(unsigned long membase, unsigned long memsize, void *boarddata, unsigned flags);
+void start(unsigned long membase, unsigned long memsize, void *boarddata);
 /*
  * First function in the uncompressed image. We get here from
  * the pbl. The stack already has been set up by the pbl.
  */
 void __no_sanitize_address __section(.text_entry) start(unsigned long membase,
-		unsigned long memsize, void *boarddata, unsigned flags)
+		unsigned long memsize, void *boarddata)
 {
-	barebox_non_pbl_start(membase, memsize, boarddata, flags);
+	barebox_non_pbl_start(membase, memsize, boarddata);
 }
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index 4ed9b4d371..ee24f81e01 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -24,16 +24,16 @@ unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
 void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
-				  void *fdt, unsigned flags)
+				  void *fdt)
 {
 	uint32_t pg_len, uncompressed_len;
-	void __noreturn (*barebox)(unsigned long, unsigned long, void *, unsigned);
+	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	unsigned long endmem = membase + memsize;
 	unsigned long barebox_base;
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
 
-	irq_init_vector(__riscv_mode(flags));
+	irq_init_vector(riscv_mode());
 
 	/* piggy data is not relocated, so determine the bounds now */
 	pg_start = input_data + get_runtime_offset();
@@ -72,5 +72,5 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
 
-	barebox(membase, memsize, fdt, flags);
+	barebox(membase, memsize, fdt);
 }
diff --git a/arch/riscv/include/asm/system.h b/arch/riscv/include/asm/system.h
index 3eb50f63fd..82a8d8e77f 100644
--- a/arch/riscv/include/asm/system.h
+++ b/arch/riscv/include/asm/system.h
@@ -15,7 +15,38 @@ enum riscv_mode {
     RISCV_M_MODE	= 3,
 };
 
-static inline enum riscv_mode __riscv_mode(u32 flags)
+static inline void riscv_set_flags(unsigned flags)
+{
+	switch (flags & RISCV_MODE_MASK) {
+	case RISCV_S_MODE:
+		__asm__ volatile("csrw sscratch, %0" : : "r"(flags));
+		break;
+	case RISCV_M_MODE:
+		__asm__ volatile("csrw mscratch, %0" : : "r"(flags));
+		break;
+	default:
+		/* Other modes are not implemented yet */
+	}
+}
+
+static inline u32 riscv_get_flags(void)
+{
+	u32 flags = 0;
+
+	if (IS_ENABLED(CONFIG_RISCV_S_MODE))
+		__asm__ volatile("csrr %0, sscratch" : "=r"(flags));
+
+	/*
+	 * Since we always set the scratch register on the very beginning, a
+	 * empty flags indicates that we are running in M-mode.
+	 */
+	if (!flags)
+		__asm__ volatile("csrr %0, mscratch" : "=r"(flags));
+
+	return flags;
+}
+
+static inline enum riscv_mode riscv_mode(void)
 {
 	/* allow non-LTO builds to discard code for unused modes */
 	if (!IS_ENABLED(CONFIG_RISCV_MULTI_MODE)) {
@@ -25,14 +56,14 @@ static inline enum riscv_mode __riscv_mode(u32 flags)
 			return RISCV_S_MODE;
 	}
 
-	return flags & RISCV_MODE_MASK;
+	return riscv_get_flags() & RISCV_MODE_MASK;
 }
 
-static inline long __riscv_hartid(u32 flags)
+static inline long riscv_hartid(void)
 {
 	long hartid = -1;
 
-	switch (__riscv_mode(flags)) {
+	switch (riscv_mode()) {
 	case RISCV_S_MODE:
 		__asm__ volatile("mv %0, tp\n" : "=r"(hartid) :);
 		break;
@@ -44,12 +75,12 @@ static inline long __riscv_hartid(u32 flags)
 	return hartid;
 }
 
-static inline long __riscv_vendor_id(u32 flags)
+static inline long riscv_vendor_id(void)
 {
 	struct sbiret ret = { .error = -1 };
 	long id;
 
-	switch (__riscv_mode(flags)) {
+	switch (riscv_mode()) {
 	case RISCV_M_MODE:
 		__asm__ volatile("csrr %0, mvendorid\n" : "=r"(id));
 		return id;
@@ -68,25 +99,6 @@ static inline long __riscv_vendor_id(u32 flags)
 	return ret.error;
 }
 
-#ifndef __PBL__
-extern unsigned barebox_riscv_pbl_flags;
-
-static inline enum riscv_mode riscv_mode(void)
-{
-	return __riscv_mode(barebox_riscv_pbl_flags);
-}
-
-static inline long riscv_hartid(void)
-{
-	return __riscv_hartid(barebox_riscv_pbl_flags);
-}
-
-static inline long riscv_vendor_id(void)
-{
-	return __riscv_vendor_id(barebox_riscv_pbl_flags);
-}
-#endif
-
 #endif
 
 #endif
-- 
2.30.2



