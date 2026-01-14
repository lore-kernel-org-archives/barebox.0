Delivery-date: Wed, 14 Jan 2026 13:36:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06V-001EYg-0S
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:36:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06T-0005ZV-2e
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:36:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EGm7tRXOTEVXFoCNqP2ch4kNK/LgJCrVwzBoSsWXduQ=; b=AQykb9OtWWeJ+4k93Ow2Zh8qGs
	biH9m+grfKdsdNKCHJ4hSW+uyRtmxumLMoXcKgTpqZeYSpHR1t2XNnn5s159HkyYU73kSOfTiel3z
	bt6W5c6NUxlXCsDxhOThq6+SrUUD7LdzMaaUEVA8DqkP38rZc9USYDB1/kdUC7MnjOEUQhvS8pcKU
	fAP1p+kHV+feEe5m5r6j+2lGiy9wdY3kZ7jhB1DBhq4Sqm5kZ/tJLTZXaF9PhziuYyrYAkMVu8904
	UoVYe7Mr7GYaS8i1ib2FtyFoUzMg7tatW62EaAhIOq2im2TEBGNpL7klwK9Sv/yL1ipaVjevbtwqC
	ddQHDQRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05t-00000009C1w-2ZMA;
	Wed, 14 Jan 2026 12:35:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05m-00000009Bvh-3uHr
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:35:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05l-000510-DF; Wed, 14 Jan 2026 13:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05l-000afS-2p;
	Wed, 14 Jan 2026 13:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-1AS2;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-20-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=5039;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iMLjYgkMvk/eXecoVNmcAoXFKLSv6JCypNt6TPDeayU=;
 b=eLmzPQWrSzx7rQNuUxpGUsNSHZSNOC/RUt5X4sqb0xQSRgxm+MblsT+TSFlBptbvHBjBPduLN
 AgqjNZpRysbAWx8I33LaCcavB7dVOkW/5omYsyeQmyNf7l7HHUcbJGC
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
Subject: [PATCH v4 20/22] riscv: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of linking the raw binary barebox proper image into the PBL link
the ELF image into the PBL. With this barebox proper starts with a properly
linked and fully initialized C environment, so the calls to
relocate_to_adr() and setup_c() can be removed from barebox proper.

As barebox proper is now an ELF file we no longer need to map the entry
function to the start of the image. Just link it to wherever the linker
wants it and drop the text_entry section. Also, remove the start()
function and set the ELF entry to barebox_non_pbl_start() directly.

While at it also remove the bare_init stuff from the barebox proper
linker script as it's only relevant to the PBL linker script which
is a separate script.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/Kconfig           |  1 +
 arch/riscv/boot/start.c      | 19 +------------------
 arch/riscv/boot/uncompress.c | 21 ++++++++++++++++++++-
 arch/riscv/lib/barebox.lds.S |  7 +------
 4 files changed, 23 insertions(+), 25 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 96d013d8514ac12de5c34a426262d85f8cf021b9..d9794354f4ed2e8bf7276e03b968c566002c2ec6 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -17,6 +17,7 @@ config RISCV
 	select HAS_KALLSYMS
 	select RISCV_TIMER if RISCV_SBI
 	select HW_HAS_PCI
+	select PBL_IMAGE_ELF
 	select HAVE_ARCH_BOARD_GENERIC_DT
 	select HAVE_ARCH_BOOTM_OFTREE
 
diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 5091340c8a374fc360ab732ba01ec8516e82a83d..15bb91ac1b49ada66375507120256daff6b563f4 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -114,7 +114,7 @@ device_initcall(barebox_memory_areas_init);
  * First function in the uncompressed image. We get here from
  * the pbl. The stack already has been set up by the pbl.
  */
-__noreturn __no_sanitize_address __section(.text_entry)
+__noreturn
 void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
 			   void *boarddata)
 {
@@ -123,12 +123,6 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
 	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
 	unsigned long barebox_base = riscv_mem_barebox_image(membase, endmem, barebox_size);
 
-	relocate_to_current_adr();
-
-	setup_c();
-
-	barrier();
-
 	irq_init_vector(riscv_mode());
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
@@ -183,14 +177,3 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
 
 	start_barebox();
 }
-
-void start(unsigned long membase, unsigned long memsize, void *boarddata);
-/*
- * First function in the uncompressed image. We get here from
- * the pbl. The stack already has been set up by the pbl.
- */
-void __no_sanitize_address __section(.text_entry) start(unsigned long membase,
-		unsigned long memsize, void *boarddata)
-{
-	barebox_non_pbl_start(membase, memsize, boarddata);
-}
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index 84142acf9c66fe1fcceb6ae63d15ac078ccddee7..d0eb36accb04bfd27504a931a0b30effc3b8237b 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -32,6 +32,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	unsigned long barebox_base;
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
+	struct elf_image elf;
+	int ret;
 
 	irq_init_vector(riscv_mode());
 
@@ -68,7 +70,24 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	sync_caches_for_execution();
 
-	barebox = (void *)barebox_base;
+	ret = elf_open_binary_into(&elf, (void *)barebox_base);
+	if (ret) {
+		pr_err("Failed to open ELF binary: %d\n", ret);
+		hang();
+	}
+
+	ret = elf_load_inplace(&elf);
+	if (ret) {
+		pr_err("Failed to relocate ELF: %d\n", ret);
+		hang();
+	}
+
+	/*
+	 * TODO: Add pbl_mmu_setup_from_elf() call when RISC-V PBL
+	 * MMU support is implemented, similar to ARM
+	 */
+
+	barebox = (void *)(unsigned long)elf.entry;
 
 	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
 
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 0cfa4bff57920bfaed822cb62c553c49f543994c..e2666938097d2a732067f4bd69140a9969eb0cbb 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -14,7 +14,7 @@
 #include <asm/barebox.lds.h>
 
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
-ENTRY(start)
+ENTRY(barebox_non_pbl_start)
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 
 PHDRS
@@ -36,16 +36,11 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
-		*(.text_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
 		__exceptions_start = .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
 		*(.text*)
 	} :text
-	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4096);
 	__start_rodata = .;

-- 
2.47.3



