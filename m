Delivery-date: Mon, 11 Sep 2023 17:10:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYf-00BcvI-Gd
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:10:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYd-0005Nq-0p
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:10:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bGgHwn+eMA2ZGGv23McLDOX9Y9CKXyTbk4ukJW2kV7M=; b=UUsO3guJ37h7+7FvPGv9hSpEjp
	bhRA1vVxa4CU/oEUSZpkQyQu/r08Qw2karvr0b/XITdhVEn3crhl3EE0HY8NU6PWCJicyN96ZSTv/
	W7bqlyfrQETs8ajCew0tnDr2LU3mbClQ2SOm2eFgublM7tbgn9GOjPdnP5UnAKn3tWwemmDm2BPrq
	WL9eDzkdnHP/p0M/cGFhB2KY0NdRe5ICKWCSp1WQWr70hFG6hbbVvUYHkC535+BbyleuTAkqTwXcr
	Q8bsA6I0vbPCfsGtxImF81CcrnMc1JQPSJK4xEJKivZ2LW+7fe0VfiUIUcMosGoeGr4rNvwcZ6mso
	Mr3l5DyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXL-000pSa-1a;
	Mon, 11 Sep 2023 15:09:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXG-000pOu-12
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:09:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-0004xW-Mc; Mon, 11 Sep 2023 17:09:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-005a6H-9K; Mon, 11 Sep 2023 17:09:03 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX8-00F2ra-2L;
	Mon, 11 Sep 2023 17:09:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:08:57 +0200
Message-Id: <20230911150900.3584523-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
References: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_080910_359798_57E1153A 
X-CRM114-Status: GOOD (  15.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] ARM: mark early C setup functions as __prereloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding stack protector support, we need to start
marking functions run before the C environment is completely set up.

Introduce a __prereloc attribute for this use case and an even stronger
no noinstr (no instrumentation) attribute and start adding it at enough
places for bareboxproper to start up with -fstack-protector-all.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/common.c          | 2 +-
 arch/arm/cpu/start.c           | 4 ++--
 arch/arm/include/asm/reloc.h   | 2 +-
 arch/arm/lib64/string.c        | 2 +-
 include/linux/compiler_types.h | 7 +++++++
 lib/string.c                   | 2 +-
 6 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 47da9fbe494f..e9118b450d3f 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -59,7 +59,7 @@ void pbl_barebox_break(void)
 /*
  * relocate binary to the currently running address
  */
-void relocate_to_current_adr(void)
+void __prereloc relocate_to_current_adr(void)
 {
 	unsigned long offset;
 	unsigned long __maybe_unused *dynsym, *dynend;
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 2e987ec41d1e..15f5b2937227 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -137,7 +137,7 @@ static int barebox_memory_areas_init(void)
 }
 device_initcall(barebox_memory_areas_init);
 
-__noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membase,
+__noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	unsigned long endmem = membase + memsize;
@@ -245,7 +245,7 @@ void start(unsigned long membase, unsigned long memsize, void *boarddata);
  * First function in the uncompressed image. We get here from
  * the pbl. The stack already has been set up by the pbl.
  */
-void NAKED __no_sanitize_address __section(.text_entry) start(unsigned long membase,
+void NAKED __prereloc __section(.text_entry) start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	barebox_non_pbl_start(membase, memsize, boarddata);
diff --git a/arch/arm/include/asm/reloc.h b/arch/arm/include/asm/reloc.h
index 0002c96c014c..95b4ef0af88b 100644
--- a/arch/arm/include/asm/reloc.h
+++ b/arch/arm/include/asm/reloc.h
@@ -12,7 +12,7 @@ unsigned long get_runtime_offset(void);
  * Get the offset of global variables when not running at the address we are
  * linked at.
  */
-static inline unsigned long global_variable_offset(void)
+static inline __prereloc unsigned long global_variable_offset(void)
 {
 #ifdef CONFIG_CPU_V8
 	unsigned long text;
diff --git a/arch/arm/lib64/string.c b/arch/arm/lib64/string.c
index 26a284be5a77..938790e1a9b2 100644
--- a/arch/arm/lib64/string.c
+++ b/arch/arm/lib64/string.c
@@ -7,7 +7,7 @@
 void *__arch_memset(void *dst, int c, __kernel_size_t size);
 void *__arch_memcpy(void * dest, const void *src, size_t count);
 
-static void *_memset(void *dst, int c, __kernel_size_t size)
+static __prereloc void *_memset(void *dst, int c, __kernel_size_t size)
 {
 	if (likely(get_cr() & CR_M))
 		return __arch_memset(dst, c, size);
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index bc1b43aab0dc..9ce272bba5f3 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -305,4 +305,11 @@ struct ftrace_likely_data {
  */
 #define noinline_for_stack noinline
 
+/* code that can't be instrumented at all */
+#define noinstr \
+	noinline notrace __no_sanitize_address
+
+#define __prereloc \
+	notrace __no_sanitize_address
+
 #endif /* __LINUX_COMPILER_TYPES_H */
diff --git a/lib/string.c b/lib/string.c
index 8ea68044cc0a..166ef190d6aa 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -534,7 +534,7 @@ void *__default_memset(void * s, int c, size_t count)
 }
 EXPORT_SYMBOL(__default_memset);
 
-void __no_sanitize_address *__nokasan_default_memset(void * s, int c, size_t count)
+void __prereloc __no_sanitize_address *__nokasan_default_memset(void * s, int c, size_t count)
 {
 	char *xs = (char *) s;
 
-- 
2.39.2



