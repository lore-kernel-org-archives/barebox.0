Delivery-date: Mon, 18 May 2026 17:34:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOzzY-001BEO-27
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 17:34:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOzzX-0002kn-II
	for lore@pengutronix.de; Mon, 18 May 2026 17:34:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7ncoyCGzMJR/zm44R3LsTXD+Px/WukhXB2/ffzy4hmM=; b=N9b4X2BImlR4PISfcyZzpk53oq
	Xt9cHXQYpmPSmQ3m/4TCpty/ier5AOLuLSiM1oPqBCu9L2LMsX/EblRZOW065kzTqmYn+EBYS9oK+
	hoaMP7rwNdGmgcaUVzhg3UKtMe7hcx54Rqq/hcj8roNZbzD8PToBmt62eTPTmTpC61/QHT76MjFYK
	lGAhz8UJQb2zz6BEhK4f+EaUS7/biXNGzW56vuQaViykEKbrBNJcOlPcl1YBsOjJlIV5vkfSJq0pi
	jyQ/1ehO8VVqRFojKfaIEJlTEzsMPtnmeH88j6rw7ix+xLJ72Lfeb4R6Mhb3Qi3ODPthsg8WF6gNR
	bJU8xD8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOzx4-0000000GAIn-1tg1;
	Mon, 18 May 2026 15:32:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOzx2-0000000GAHG-0pzZ
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 15:32:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOzx0-0002TL-2g; Mon, 18 May 2026 17:32:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOzwz-000cKk-1T;
	Mon, 18 May 2026 17:32:14 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOzwz-00000000m7r-3sb8;
	Mon, 18 May 2026 17:32:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 18 May 2026 17:32:11 +0200
Message-ID: <20260518153212.184983-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_083216_387152_FB0A20E3 
X-CRM114-Status: GOOD (  19.98  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] pbl: cleanup early malloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All architectures using PBL define the same variables free_mem_ptr and
free_mem_end_ptr and initialize them. create a helper for that in
pbl/malloc.c and rename simple_*() to pbl_*().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/uncompress.c              |  6 +---
 arch/mips/boot/uncompress.c            |  6 +---
 arch/riscv/boot/uncompress.c           |  6 +---
 arch/riscv/include/asm/barebox-riscv.h |  6 ----
 include/linux/decompress/mm.h          | 44 ++++----------------------
 include/mach/bcm283x/debug_ll.h        | 10 ------
 include/pbl.h                          |  7 ++--
 pbl/Makefile                           |  1 +
 pbl/malloc.c                           | 43 +++++++++++++++++++++++++
 9 files changed, 57 insertions(+), 72 deletions(-)
 create mode 100644 pbl/malloc.c

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 38f7dbc113..c7802226e6 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -27,9 +27,6 @@
 
 #include "entry.h"
 
-unsigned long free_mem_ptr;
-unsigned long free_mem_end_ptr;
-
 extern unsigned char input_data[];
 extern unsigned char input_data_end[];
 
@@ -78,8 +75,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	handoff_data = (void *)barebox_base + uncompressed_len + MAX_BSS_SIZE;
 
-	free_mem_ptr = barebox_base - ARM_MEM_EARLY_MALLOC_SIZE;
-	free_mem_end_ptr = barebox_base;
+	pbl_malloc_init(barebox_base - ARM_MEM_EARLY_MALLOC_SIZE, ARM_MEM_EARLY_MALLOC_SIZE);
 
 #ifdef DEBUG
 	print_pbl_mem_layout(membase, endmem, barebox_base);
diff --git a/arch/mips/boot/uncompress.c b/arch/mips/boot/uncompress.c
index 0630d03c6b..b58b23ea6b 100644
--- a/arch/mips/boot/uncompress.c
+++ b/arch/mips/boot/uncompress.c
@@ -16,9 +16,6 @@
 extern void *input_data;
 extern void *input_data_end;
 
-unsigned long free_mem_ptr;
-unsigned long free_mem_end_ptr;
-
 void barebox_pbl_start(void *fdt, void *fdt_end, unsigned long ram_size);
 
 void __section(.text_entry) barebox_pbl_start(void *fdt, void *fdt_end,
@@ -34,8 +31,7 @@ void __section(.text_entry) barebox_pbl_start(void *fdt, void *fdt_end,
 	memset(__bss_start, 0, __bss_stop - __bss_start);
 
 	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
-	free_mem_ptr = TEXT_BASE - SZ_128K;
-	free_mem_end_ptr = free_mem_ptr + SZ_128K;
+	pbl_malloc_init(barebox_base - TEXT_BASE - SZ_128K, SZ_128K);
 
 	piggy_len = (unsigned long)&input_data_end - (unsigned long)&input_data;
 
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index e51f1b0121..df60b14ed8 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -23,9 +23,6 @@
 
 #include "entry.h"
 
-unsigned long free_mem_ptr;
-unsigned long free_mem_end_ptr;
-
 void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 				  void *fdt)
 {
@@ -63,8 +60,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
-	free_mem_ptr = riscv_mem_early_malloc(membase, endmem);
-	free_mem_end_ptr = riscv_mem_early_malloc_end(membase, endmem);
+	pbl_malloc_init(riscv_mem_early_malloc(), SZ_128K);
 
 	/*
 	 * Enable MMU early to enable caching for faster decompression.
diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index 083889817b..9fef0c213a 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -57,12 +57,6 @@ static inline unsigned long riscv_mem_early_malloc(unsigned long membase,
 	return riscv_mem_stack(membase, endmem) - SZ_128K;
 }
 
-static inline unsigned long riscv_mem_early_malloc_end(unsigned long membase,
-						       unsigned long endmem)
-{
-	return riscv_mem_stack(membase, endmem);
-}
-
 static inline unsigned long riscv_mem_ramoops(unsigned long membase,
 					      unsigned long endmem)
 {
diff --git a/include/linux/decompress/mm.h b/include/linux/decompress/mm.h
index 1891a51368..27b13ec9c8 100644
--- a/include/linux/decompress/mm.h
+++ b/include/linux/decompress/mm.h
@@ -14,6 +14,8 @@
 
 #ifdef STATIC
 
+#include <pbl.h>
+
 /* Code active when included from pre-boot environment: */
 
 /*
@@ -26,45 +28,11 @@
 #define STATIC_RW_DATA static
 #endif
 
-/* A trivial malloc implementation, adapted from
- *  malloc by Hannu Savolainen 1993 and Matthias Urlichs 1994
- */
-STATIC_RW_DATA unsigned long malloc_ptr;
-STATIC_RW_DATA int malloc_count;
-
-static __maybe_unused void *simple_malloc(int size)
-{
-	void *p;
-
-	if (size < 0)
-		return NULL;
-	if (!malloc_ptr)
-		malloc_ptr = free_mem_ptr;
-
-	malloc_ptr = (malloc_ptr + 3) & ~3;     /* Align */
-
-	p = (void *)malloc_ptr;
-	malloc_ptr += size;
-
-	if (free_mem_end_ptr && malloc_ptr >= free_mem_end_ptr)
-		return NULL;
-
-	malloc_count++;
-	return p;
-}
-
-static __maybe_unused void simple_free(void *where)
-{
-	malloc_count--;
-	if (!malloc_count)
-		malloc_ptr = free_mem_ptr;
-}
-
-#define large_malloc(a) simple_malloc(a)
-#define large_free(a) simple_free(a)
+#define large_malloc(a) pbl_malloc(a)
+#define large_free(a) pbl_free(a)
 
-#define MALLOC simple_malloc
-#define FREE simple_free
+#define MALLOC pbl_malloc
+#define FREE pbl_free
 
 #else
 
diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/debug_ll.h
index 8bbff4fd9a..68542fd6a3 100644
--- a/include/mach/bcm283x/debug_ll.h
+++ b/include/mach/bcm283x/debug_ll.h
@@ -42,16 +42,6 @@ static inline void debug_ll_init(void)
 
 #elif defined CONFIG_DEBUG_RPI3_MINI_UART
 
-static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
-{
-	return readb(base + (reg << 2));
-}
-
-static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
-{
-	writeb(val, base + (reg << 2));
-}
-
 #include <linux/bits.h>
 
 #define BCM2836_AUX_CLOCK_ENB		0x3f215004 /* BCM2835 AUX Clock enable register */
diff --git a/include/pbl.h b/include/pbl.h
index 514f114370..e30db16088 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -11,9 +11,6 @@
 #include <linux/types.h>
 #include <linux/compiler.h>
 
-extern unsigned long free_mem_ptr;
-extern unsigned long free_mem_end_ptr;
-
 void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
 int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len);
 
@@ -33,6 +30,10 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 		       const void *hash, unsigned int hash_len);
 int pbl_load_fdt(const void *fdt, void *dest, int destsize);
 
+void *pbl_malloc(int size);
+void pbl_free(void *where);
+void pbl_malloc_init(unsigned long base, size_t size);
+
 #endif
 
 void __noreturn barebox_pbl_entry(ulong, ulong, void *);
diff --git a/pbl/Makefile b/pbl/Makefile
index b78124cdcd..45cfbf5fba 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -5,6 +5,7 @@
 #
 pbl-y += misc.o
 pbl-y += string.o
+pbl-y += malloc.o
 pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) += decomp.o
 pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
diff --git a/pbl/malloc.c b/pbl/malloc.c
new file mode 100644
index 0000000000..d5ee8ac7ee
--- /dev/null
+++ b/pbl/malloc.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <pbl.h>
+
+static unsigned long free_mem_ptr;
+static unsigned long free_mem_end_ptr;
+static unsigned long malloc_ptr;
+static int malloc_count;
+
+void *pbl_malloc(int size)
+{
+	void *p;
+
+	if (size < 0)
+		return NULL;
+	if (!malloc_ptr)
+		malloc_ptr = free_mem_ptr;
+
+	malloc_ptr = (malloc_ptr + 3) & ~3;     /* Align */
+
+	p = (void *)malloc_ptr;
+	malloc_ptr += size;
+
+	if (free_mem_end_ptr && malloc_ptr >= free_mem_end_ptr)
+		return NULL;
+
+	malloc_count++;
+	return p;
+}
+
+void pbl_free(void *where)
+{
+	malloc_count--;
+	if (!malloc_count)
+		malloc_ptr = free_mem_ptr;
+}
+
+void pbl_malloc_init(unsigned long base, size_t size)
+{
+	free_mem_ptr = base;
+	malloc_ptr = base;
+	malloc_count = 0;
+	free_mem_end_ptr = base + size;
+}
\ No newline at end of file
-- 
2.47.3



