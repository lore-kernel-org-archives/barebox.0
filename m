Delivery-date: Thu, 08 Jan 2026 17:02:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTA-002fem-1b
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT8-00019x-TX
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mGzW1mHMqCEgpQzLJu9S6XSjRnCB3+74hinmM56n5zw=; b=kV+Rz93/hbn4WYIKXdovikz4vK
	shXX4+UYQudC44OlQa2FEWmJbDg0gRiX19TbUAmnewbHmxD262b9VVgSz70LRy6xYezkDIMpePVXX
	bGarmD03TzozPpp8Ln+YjN6t4hcf5iUZadJ91WFquLlOLRsefsUNOyTHs2BqPbtd1kNDgew8CwPVv
	QBOpC6kRQIkWLatExhV6rSwqe33KsoTR9Lvk6HlQ2XfT88G0EIhi2VpZVi1sATB7MVXILQV5+5FDi
	u9lUZQQUOpFZxMl1c7ItCfcTTxethvdPgW+bOwhLaPntq5aklQvbfZo9ZdDJTz6eM3YQTgvQlsNHl
	1ci3TH+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSL-000000001zo-2LUx;
	Thu, 08 Jan 2026 16:01:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS8-000000001th-1nGx
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=mGzW1mHMqCEgpQzLJu9S6XSjRnCB3+74hinmM56n5zw=; b=UoU5JqzTnyjf733eLaGWGMAvJE
	f1jVhAK8/ytnhE6UA6aXD8Br/MfOkWqGXmILESzxsFnDQqc74BYKmKVhP2lTsI11xUvmXMvBVqqrY
	8lZp7QHSoN3WzYm1P6s/x1Gh2B2w0+CSrRqVnol5ZVcl+jCPSg8mi8WhlafPI46ZAMqCWEc4gG3/h
	VD1l+ys8iLuYdYyT1kWN50jnPLEZ/THvpFfq5m+6pBCSQsHdvANJfPclrXTQYWiJB2gAgXmOj3c2b
	FLVv1i+YySMzOLnZdHJwq7n7vpQAfHuh7kH1JjbHzTqjgSdVTC+FTjiV0koE5HQGmbBPmjhq3ycMD
	Fc59GB1g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS2-0000000DaVY-46J2
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-0000TO-I9; Thu, 08 Jan 2026 17:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-009hXZ-16;
	Thu, 08 Jan 2026 17:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1bk8;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-19-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=2851;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sO+UFTqYFMwMZyhoqYxVUmQ07CKzdCJpo8Pb+fpTzzY=;
 b=kd/zIO4os4ZhM608fAbGAjGeAXE0eaEx4eZaLo/3fursliS6rP4L/Rwyl2GKq2kgM9urzDF7R
 VOldCkANcgxC2GzaApwktASJ5V/4fM5uuWTz5d9gJdt8YwfB82a8ZLD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160131_105484_852439EB 
X-CRM114-Status: GOOD (  11.65  )
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
Subject: [PATCH v3 19/23] riscv: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of linking the raw binary barebox proper image into the PBL link
the ELF image into the PBL. With this barebox proper starts with a properly
linked and fully initialized C environment, so the calls to
relocate_to_adr() and setup_c() can be removed from barebox proper.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/Kconfig           |  1 +
 arch/riscv/boot/start.c      |  6 ------
 arch/riscv/boot/uncompress.c | 21 ++++++++++++++++++++-
 3 files changed, 21 insertions(+), 7 deletions(-)

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
index 5091340c8a374fc360ab732ba01ec8516e82a83d..002ab3eccb4292d8d88a95f8b93163c970cb1d64 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
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
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index 84142acf9c66fe1fcceb6ae63d15ac078ccddee7..fba04cf4fb6ed450d80b83a8a595346a3186f1e7 100644
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
+	barebox = (void *)elf.entry;
 
 	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
 

-- 
2.47.3



