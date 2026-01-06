Delivery-date: Tue, 06 Jan 2026 14:02:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hN-001tcF-05
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:02:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hL-0003Nf-D4
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:02:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oP3RfuOvC5T1IIIILhRFOq8wnfNm0GqM1NDX91UhQzI=; b=FqStudEc7JDxR/JDUU5Ci5jfOL
	71AAaBVt/ZsJgYCD5vQ/PKL+AaS8fkO1YRY8LtGLMIYvVNg4Ym0Z8l7EJMfrOtu1qLCEDRc8cgBy2
	1FvoelA+ILDrzsJR0G44QB43s+6/j4XyD1ao2Uy+f5WzPiMB7kSgH1i024Bv2vPBUKaOBbayx39Bx
	cWg2soKkXBj99R0Tx8M+LBka2pcMhOp9p+bsNFpjSNnpo94PuDgvx6eqNrW6CpWoIqLnTuCY/nQhH
	lLq0Kz8BHe1vFlHeD8yYzAqWmE5LuiNMq+Jj8Do6QYYOVuUXNfW1rp897bvw0qgf4V7Cc3gHGyKpz
	WR8Cw1OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6go-0000000D2U2-1rds;
	Tue, 06 Jan 2026 13:01:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gl-0000000D2Qo-1xmR
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-0002p5-1j; Tue, 06 Jan 2026 14:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gj-009Ldw-2k;
	Tue, 06 Jan 2026 14:01:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3cyH;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-16-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=4010;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1cIcHuQXtWDOYhHI+TZlaW2D5A2b/YcIrincKPCN9fQ=;
 b=uWtho1lLkfnrlW+aKUpzJoNmpz1lzLfKODT4ZX5K641mpvXvIh24X3qSBAC5bXWtWGPB/C/WN
 +HEfQn37FAJDW9YXENGPB0LdjG2LYC8TERHU+hqkh3KkwX6frQUzy0W
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_050131_507160_2278DCE1 
X-CRM114-Status: GOOD (  12.90  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 16/21] ARM: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of linking the raw binary barebox proper image into the PBL link
the ELF image into the PBL. With this barebox proper starts with a properly
linked and fully initialized C environment, so the calls to
relocate_to_adr() and setup_c() can be removed from barebox proper.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig          |  2 ++
 arch/arm/cpu/start.c      | 11 +++--------
 arch/arm/cpu/uncompress.c | 26 +++++++++++++++++++-------
 3 files changed, 24 insertions(+), 15 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5123e9b1402c56db94df6a7a33ae993c61d51fbc..c53c58844a9411e3777711db2900b0e01cf55eec 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -18,6 +18,8 @@ config ARM
 	select HW_HAS_PCI
 	select ARCH_HAS_DMA_WRITE_COMBINE
 	select HAVE_EFI_LOADER if MMU # for payload unaligned accesses
+	select ELF
+	select PBL_IMAGE_ELF
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f7d4507e71588ba5e241b24b952d55e2a4b0f794..f7062380cd5d265b3326f247a99b1847e16d64f0 100644
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
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b9fc1d04db96e77c8fcd7fd1930798ea1d9294d7..8cc7102290986e71d2f3a2f34df1a9f946c56ced 100644
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
@@ -85,21 +88,30 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
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
+	pr_debug("ELF entry point: 0x%llx\n", elf.entry);
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



