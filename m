Delivery-date: Wed, 14 Jan 2026 13:36:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06V-001EZC-25
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:36:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06U-0005aa-7u
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:36:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fxige9jD3szc4XhvhFk6YwkWc4LBZzbtwc92zdp6WOo=; b=mqcTRvNC7Gs9T7RH68IAhYK1I5
	0Eo9h09Ho3u5K6JCX1kDbmV0eu5Z/WYqfSiTXyetieMIwurzz6tALTmdkGDnVyNxjTAZIJTZZYqD7
	CX2NCU1pH6ALA7BBYvkel4C611RrN3rZQwt8Gs+ksAkUO2paetKjmyABgEX9b2WBebDFc4mOA4UYc
	5a9nATZ75u9m1cmoXARcPKyyxl42Pvq9vxxH/KZglO6Jp2knl5fis6Iu1SaB+rA+78uz4lCN/q7to
	MZXI/w9cAlXEUBc7UUX3t2FStI6UfY4fH2GpOle0QgAy70DS6ZrWKKvY0ZbbsjdDtiBRBXm0e4Dgj
	1PSzIauQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05r-00000009Bzu-3Is4;
	Wed, 14 Jan 2026 12:35:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05m-00000009BvM-2jbf
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:35:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05l-00050B-1Z; Wed, 14 Jan 2026 13:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05l-000afD-1g;
	Wed, 14 Jan 2026 13:35:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-18pb;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-16-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=4641;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=NzJLpwrSbBRgxF7YF/VAcXu0tC7wR8NUWJSRITYMSDc=;
 b=TUECVesZvzG6z5FCGbOaUU0NRU3szcPA6hBdkPRcTxYfaAGQD6eleBt8t0OvjKM+TzWPpRjSs
 sVIbp4nsmJgCRSHDwoOPq1fwx6GOTqX5SPpAq69/UZubNcDFDgTsrMG
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 16/22] ARM: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of linking the raw binary barebox proper image into the PBL link
the ELF image into the PBL. With this barebox proper starts with a properly
linked and fully initialized C environment, so the calls to
relocate_to_adr() and setup_c() can be removed from barebox proper.

Also we no longer have to link the entry point to the beginning of the
binary as we can jump to the correct ELF entry point. With this we can
remove the text_entry section.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig          |  1 +
 arch/arm/cpu/start.c      | 13 ++++---------
 arch/arm/cpu/uncompress.c | 24 +++++++++++++++++-------
 3 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5123e9b1402c56db94df6a7a33ae993c61d51fbc..65856977ab41298be36b78c64de857570d575744 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -18,6 +18,7 @@ config ARM
 	select HW_HAS_PCI
 	select ARCH_HAS_DMA_WRITE_COMBINE
 	select HAVE_EFI_LOADER if MMU # for payload unaligned accesses
+	select PBL_IMAGE_ELF
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f7d4507e71588ba5e241b24b952d55e2a4b0f794..2498bdb894c261f587af6542ea4574c497a6edc0 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -127,8 +127,9 @@ static int barebox_memory_areas_init(void)
 }
 device_initcall(barebox_memory_areas_init);
 
-__noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
-		unsigned long memsize, struct handoff_data *hd)
+__noreturn void barebox_non_pbl_start(unsigned long membase,
+				      unsigned long memsize,
+				      struct handoff_data *hd)
 {
 	unsigned long endmem = membase + memsize;
 	unsigned long malloc_start, malloc_end;
@@ -139,12 +140,6 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 	if (IS_ENABLED(CONFIG_CPU_V7))
 		armv7_hyp_install();
 
-	relocate_to_adr(barebox_base);
-
-	setup_c();
-
-	barrier();
-
 	pbl_barebox_break();
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
@@ -200,7 +195,7 @@ void start(unsigned long membase, unsigned long memsize, struct handoff_data *hd
  * First function in the uncompressed image. We get here from
  * the pbl. The stack already has been set up by the pbl.
  */
-void NAKED __prereloc __section(.text_entry) start(unsigned long membase,
+void __section(.text_entry) start(unsigned long membase,
 		unsigned long memsize, struct handoff_data *hd)
 {
 	barebox_non_pbl_start(membase, memsize, hd);
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b9fc1d04db96e77c8fcd7fd1930798ea1d9294d7..10df5fcba90b3d5f616a9d16e6bdc5120cf54e9d 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -20,6 +20,7 @@
 #include <asm/mmu.h>
 #include <asm/unaligned.h>
 #include <compressed-dtb.h>
+#include <elf.h>
 
 #include <debug_ll.h>
 
@@ -41,6 +42,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
 	void *handoff_data;
+	struct elf_image elf;
+	int ret;
 
 	/* piggy data is not relocated, so determine the bounds now */
 	pg_start = runtime_address(input_data);
@@ -85,21 +88,28 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
 		set_cr(get_cr() | CR_C);
 
-	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
+	pr_debug("uncompressing barebox ELF at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
 
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
+	pr_debug("relocating ELF in place\n");
+
+	ret = elf_open_binary_into(&elf, (void *)barebox_base);
+	if (ret)
+		panic("Failed to open ELF binary: %d\n", ret);
+
+	ret = elf_load_inplace(&elf);
+	if (ret)
+		panic("Failed to relocate ELF: %d\n", ret);
+
+	barebox = (void *)(unsigned long)elf.entry;
+
 	handoff_data_move(handoff_data);
 
 	sync_caches_for_execution();
 
-	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
-		barebox = (void *)(barebox_base + 1);
-	else
-		barebox = (void *)barebox_base;
-
-	pr_debug("jumping to uncompressed image at 0x%p\n", barebox);
+	pr_debug("jumping to ELF entry point at 0x%p\n", barebox);
 
 	if (IS_ENABLED(CONFIG_CPU_V7) && boot_cpu_mode() == HYP_MODE)
 		armv7_switch_to_hyp();

-- 
2.47.3



