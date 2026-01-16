Delivery-date: Fri, 16 Jan 2026 09:36:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJM-001tqE-0D
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:36:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJK-00084d-MT
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:36:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z9sMXm6kSNfhZP6ctDmmyfsA2Z3VBT6HBx7juZh3uo8=; b=zvyagH9rszb+1SJ5XQJaoTkkEX
	CHRRE0qrGzL+tmjCbls6ZeQ9mdydKj1S4LD+Gv90jQScqJgdVki01GIcp+GRQo1vP7ffBLx+5cutk
	HtBHMzGm6iNe/oMRcJD5dVOzrQI5bKbSe8oxWDeN2qlPlBmekg3oQGzuKqZKh6Ur4y4OW8Qhpp16t
	tjQsGhbg8rnBz694nN6INH4cIyzzpfoQaGffNS/CI3FFohZKLnRcnRbrbbu0/UO22AU3+xPcLlwcC
	oTtccqDz8p5ktywO0d52BU2SODwpPQ8jRrcZC6njX/NbCTXBG6Kj5lRXQyP0k546nikxrNBnuzzT7
	utHVfErQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfIm-0000000Dlu1-2l1U;
	Fri, 16 Jan 2026 08:35:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfId-0000000Dlh6-1QH5
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:35:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-0007T1-Pv; Fri, 16 Jan 2026 09:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIc-000tED-0p;
	Fri, 16 Jan 2026 09:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1kbC;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-20-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=4755;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JZyBk0FRFjA2iXeblDHu86qmT2kMgH+L6ecBFATrj3c=;
 b=Y/+qgugEmgsV9FFO6FOa6wQXTDOmTL1gDteSGv2Fvc+PyqyzwFMF4YoaB6sPJ9GpRUigdCN4M
 NuL5AZg08/pAuI5v1zxZcM1Wsl2HU4LQJ/cRo0JIDAnkl8JcE7k7/5S
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_003519_380748_2B4EEAC6 
X-CRM114-Status: GOOD (  17.66  )
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
Subject: [PATCH v5 20/22] riscv: link ELF image into PBL
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
 arch/riscv/boot/uncompress.c | 17 ++++++++++++++++-
 arch/riscv/lib/barebox.lds.S |  7 +------
 4 files changed, 19 insertions(+), 25 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 96d013d851..d9794354f4 100644
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
index 5091340c8a..15bb91ac1b 100644
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
index 84142acf9c..9527dd1d7d 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -32,6 +32,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	unsigned long barebox_base;
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
+	struct elf_image elf;
+	int ret;
 
 	irq_init_vector(riscv_mode());
 
@@ -68,7 +70,20 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	sync_caches_for_execution();
 
-	barebox = (void *)barebox_base;
+	ret = elf_open_binary_into(&elf, (void *)barebox_base);
+	if (ret)
+		panic("Failed to open ELF binary: %d\n", ret);
+
+	ret = elf_load_inplace(&elf);
+	if (ret)
+		panic("Failed to relocate ELF: %d\n", ret);
+
+	/*
+	 * TODO: Add pbl_mmu_setup_from_elf() call when RISC-V PBL
+	 * MMU support is implemented, similar to ARM
+	 */
+
+	barebox = (void *)(unsigned long)elf.entry;
 
 	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
 
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 0cfa4bff57..e266693809 100644
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



