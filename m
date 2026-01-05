Delivery-date: Mon, 05 Jan 2026 12:32:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcioc-001VGt-1x
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:32:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vciob-00077R-Mi
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:32:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U8oIoZpbA181R5vlp2z+fYoJl71/UaTmto/Qq28vJuQ=; b=DSIn4aBFHGaVWIKXWL/qDMeYSf
	LCNj7eyDlTlI0e/l8q839byeDkU+PkEIKIJ4VhCeayRsCu+zk47YxB3C8umy/EouhbTg0sKQGzYyc
	Mtlz6hoLDEjbgwY3e7Q5BPVLZm+aSD+TjFaqp5m26/lzpAHsu5sXIfkJELaOdg9iyalAgo/cdG6HS
	BWdTo4jPrRZMiaxAfSDjmRLCbeXsLNom8DHAWObYL4eIOJ6Y/Z/so/l83/8UiDGN6VVSlKy7mrG67
	jn57zCYepdV03oTAj8ZhQzGpQKG5RBOOiOYZUSq1r6Wf0/IGB4UzT3oN5anIZV5dKFYRgJ0lJo4wp
	K6qdFH4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcio9-0000000BCDd-2dfc;
	Mon, 05 Jan 2026 11:31:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcio7-0000000BCB1-2Kpy
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:31:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio5-0006jN-Qu; Mon, 05 Jan 2026 12:31:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio5-0099zR-23;
	Mon, 05 Jan 2026 12:31:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-16DZ;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-17-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=2608;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1y66pqL8rPeZQGQAZfvFOBkB1Fziu4JYjQERNexxuoY=;
 b=aRuWiPylZGWroojuH+6iZG/PjQZeGQXJQzPbBvyODU+4O1lfbay3k6K2V1JuazlHhoDNddY9g
 8lqZgMz/jWoDVLXLGCeDUUqrev3gFi6K0pkUAjp3mznOtdcq9kF5aPR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_033131_621867_B94429F7 
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
Subject: [PATCH 17/19] riscv: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of linking the raw binary barebox proper image into the PBL link
the ELF image into the PBL. With this barebox proper starts with a properly
linked and fully initialized C environment, so the calls to
relocate_to_adr() and setup_c() can be removed from barebox proper.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/Kconfig           |  2 ++
 arch/riscv/boot/start.c      |  4 ----
 arch/riscv/boot/uncompress.c | 16 +++++++++++++++-
 3 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 96d013d8514ac12de5c34a426262d85f8cf021b9..f8c8b38ed6d7fdae48669e6d7b737f695f1c4cc9 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -17,6 +17,8 @@ config RISCV
 	select HAS_KALLSYMS
 	select RISCV_TIMER if RISCV_SBI
 	select HW_HAS_PCI
+	select ELF
+	select PBL_IMAGE_ELF
 	select HAVE_ARCH_BOARD_GENERIC_DT
 	select HAVE_ARCH_BOOTM_OFTREE
 
diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 5091340c8a374fc360ab732ba01ec8516e82a83d..874f4e72ae46fe7435c9defedceaf5b4e9662b55 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -123,10 +123,6 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
 	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
 	unsigned long barebox_base = riscv_mem_barebox_image(membase, endmem, barebox_size);
 
-	relocate_to_current_adr();
-
-	setup_c();
-
 	barrier();
 
 	irq_init_vector(riscv_mode());
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index 84142acf9c66fe1fcceb6ae63d15ac078ccddee7..dc0d1fd5d41a88acea8717a7f5fcdb8da3298663 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -32,6 +32,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	unsigned long barebox_base;
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
+	struct elf_image elf;
+	int ret;
 
 	irq_init_vector(riscv_mode());
 
@@ -68,7 +70,19 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
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
+	barebox = (void *)elf.entry;
 
 	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
 

-- 
2.47.3



