Delivery-date: Tue, 27 Oct 2026 08:45:17 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbrx-003pTH-0T
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:45:17 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1426920292B
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:45:17 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Qvzz/+SN";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793087117; a=rsa-sha256;
	cv=none;
	b=RPVepDbZScAkoG2PxLlYV4wxYcN52ulJbyH6ZTgOi2PRZuIeB+nTLbWeY3J4op8/3aE7cy
	LFbPuDXGw6LQJ/3r/79vnY+Une8O1xReqVcBGuTEUJB/hUzgrv1QJ45UdZRgI1sJXjCfjM
	x6GPuA8hNYSUx8snizZrMI3/KplgBJfQAE0r/Bqk4dMz3a3Dz6cMuvIr915jr0VWiOLYJd
	4/0vJVGxE4HYZIjSwEcY2zQmCJK696v26PEdtp0vSJwpeDq0O5MQZKk+XrgNnLY6tF+avy
	20uepmHtu9LYEiImooU9wmcVz/uKmDaxIQEYWzT0b2GMeXG7tMVSQ2LM3H/V0A==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Qvzz/+SN";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793087117;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=H5cvw2mTOH/Z5oobe9TzOcvlL/fYr9ezkIqLq0gNZ+U=;
	b=CH7+ZpD73gqDhBL7g9Ko5vTm3cjAg9ixV2XkYHix9Z/f47d+1DfgVCISdtlSytCgpUKdJA
	PLdZh9hAiQg3pGvVFPQLUxk+G8EsDGjNeYSDCd6ebXrFk81fBM8bkNIQ6ZVJjnKefq0n4m
	P5pH3AtPWQlPzenfOvyoeXymQZOFaJNU5N+YBJGWuO0e+0SRKRja7JC9EE8xKh2/xrfeo8
	DclsdoX0lzKuB1JdG2im79QsklFmz2qPuG6EMhhUlMwmhEfCTM6HehajyGcMKHem0MX0y9
	s6CWl0AQqjJWiYBv4pw2ciZsEKySwjmT8kZHwv9zmehIgt7s/Wvun34/qg84bQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=H5cvw2mTOH/Z5oobe9TzOcvlL/fYr9ezkIqLq0gNZ+U=; b=Qvzz/+SN4w8gXd
	d+B1Zrpilh7dNSCAjaQ4BAAXgM3wbOFpWPvC6gUohRuAmfwZrjnNDZ3EcRc/vuCeGcZvu9jYZLM+/
	u465/avJb88yqJHri7Y+36rshMMCCic2htPT52x9HaGyYBx/V6TDAsPEkFhkvIkE1xMSt/m5ISJJS
	gU8SV6lTs89Zo/XCuIskHsZ3KsoRkYv1lFhm9nyNcg4oabmT86Ot/pZY//duCO/d+vgSX2Oo2Ka+l
	oM9JFUaEa1RvEHdUpdIQzxZEL9/SqZxClSwU1+Ze//ZG3L/DuxF+Lg0zwxq0Kziv6JDb3iZGG3AHI
	9JUetLzr4VoSAdFvkBPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnH-00000003uzs-1Fz2;
	Tue, 27 Oct 2026 07:40:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003uu4-1tUi
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn8-0003zV-B8; Tue, 27 Oct 2026 08:40:18 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 09/17] RISC-V: board-dt-2nd: migrate to board info entry point
Date: Tue, 27 Oct 2026 08:24:42 +0100
Message-ID: <20261027074014.3280396-10-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_532264_2123C8CF 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The Linux image header moves into a head of its own, which
    branches into the supervisor mode PBL head. That head records the mode and
    stashes the hart ID already, so the entry point no longer needs to [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1426920292B
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: cf7ct4ads8nzy8xkgrxbj4dtxtpb1k3d

The Linux image header moves into a head of its own, which branches into
the supervisor mode PBL head. That head records the mode and stashes the
hart ID already, so the entry point no longer needs to.

The generic image can't know its UART in advance, so the board init
callback still looks it up by root compatible. The chainload callback
keeps barebox proper clear of QEMU's FDT as before.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/boot/Makefile            |  2 +-
 arch/riscv/boot/board-dt-2nd-head.S | 36 ++++++++++++
 arch/riscv/boot/board-dt-2nd.c      | 89 +++++++++++++----------------
 3 files changed, 78 insertions(+), 49 deletions(-)
 create mode 100644 arch/riscv/boot/board-dt-2nd-head.S

diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index d98adf7f724b..7878d85b3e64 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 pbl-y += head.o entry.o entry_ll.o uncompress.o
 pbl-y += nmon_entry.o
-pbl-$(CONFIG_BOARD_GENERIC_DT) += board-dt-2nd.o
+pbl-$(CONFIG_BOARD_GENERIC_DT) += board-dt-2nd.o board-dt-2nd-head.o
diff --git a/arch/riscv/boot/board-dt-2nd-head.S b/arch/riscv/boot/board-dt-2nd-head.S
new file mode 100644
index 000000000000..32f84412dcfe
--- /dev/null
+++ b/arch/riscv/boot/board-dt-2nd-head.S
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <linux/linkage.h>
+#include <asm/image.h>
+
+#if __riscv_xlen == 64
+#define IMAGE_LOAD_OFFSET 0x200000 /* Image load offset (2MB) from start of RAM */
+#else
+#define IMAGE_LOAD_OFFSET 0x400000 /* Image load offset (4MB) from start of RAM */
+#endif
+
+/*
+ * Linux RISC-V image header, so barebox-dt-2nd.img boots like a kernel.
+ * The stack grows down from the image start into the load offset.
+ */
+.section .text_image_header_dt_2nd, "ax"
+ENTRY(__dt_2nd_head)
+	/* Relaxation and compressed instructions would shift the fields */
+	.option push
+	.option norelax
+	.option norvc
+	nop				/* code0 */
+	j	1f			/* code1 */
+	.balign	8
+	.dword	IMAGE_LOAD_OFFSET	/* Image load offset from start of RAM */
+	.dword	_barebox_image_size	/* Effective Image size */
+	.dword	__HEAD_FLAGS		/* Kernel flags */
+	.word	RISCV_HEADER_VERSION	/* version */
+	.word	0			/* reserved */
+	.dword	0			/* reserved */
+	.ascii	RISCV_IMAGE_MAGIC	/* magic 1 */
+	.ascii	RISCV_IMAGE_MAGIC2	/* magic 2 */
+	.word	0			/* reserved (PE-COFF offset) */
+	.option pop
+1:
+	j	__barebox_pbl_head_v1_supervisor
+ENDPROC(__dt_2nd_head)
diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
index a5e82257e269..36c0d5faa984 100644
--- a/arch/riscv/boot/board-dt-2nd.c
+++ b/arch/riscv/boot/board-dt-2nd.c
@@ -4,70 +4,57 @@
 #include <asm/sections.h>
 #include <linux/sizes.h>
 #include <asm/ns16550.h>
-#include <pbl.h>
-#include <fdt.h>
-
-#if __riscv_xlen == 64
-#define IMAGE_LOAD_OFFSET 0x200000 /* Image load offset(2MB) from start of RAM */
-#else
-#define IMAGE_LOAD_OFFSET 0x400000 /* Image load offset(4MB) from start of RAM */
-#endif
-
-/* because we can depend on being loaded at an offset, we can just use
- * our load address as stack top
- */
-#define __barebox_riscv_head() \
-	__barebox_riscv_header("auipc sp, 0", IMAGE_LOAD_OFFSET, \
-			       RISCV_HEADER_VERSION, "RISCV", RISCV_IMAGE_MAGIC2)
-
 #include <asm/barebox-riscv.h>
+#include <pbl.h>
+#include <pbl/entry.h>
+#include <fdt.h>
 
 static void virt_ns16550_putc(void *base, int ch)
 {
-	early_ns16550_putc(ch, base, 0, readb, writeb);
+	early_ns16550_putc(ch, IOMEM(base), 0, readb, writeb);
 }
 
-static void virt_ns16550_init(void)
+static void virt_ns16550_setup(void *base)
 {
-	void __iomem *base = IOMEM(0x10000000);
-
-	early_ns16550_init(base, 3686400 / CONFIG_BAUDRATE, 0, writeb);
-	pbl_set_putc(virt_ns16550_putc, base);
+	early_ns16550_init(IOMEM(base), 3686400 / CONFIG_BAUDRATE, 0, writeb);
 }
 
+static struct pbl_console riscv_virtio_console = {
+	.setup = virt_ns16550_setup,
+	.arg = (void *)0x10000000,
+	.driver = &(struct pbl_console_driver) { virt_ns16550_putc }
+};
+
 static const struct fdt_device_id console_ids[] = {
-	{ .compatible = "riscv-virtio", .data = virt_ns16550_init },
+	{ .compatible = "riscv-virtio", .data = &riscv_virtio_console },
 	{ /* sentinel */ }
 };
 
-static void noinline __noreturn start_dt_2nd_nonnaked(unsigned long hartid,
-						      unsigned long _fdt)
+/* entry_data is the device tree the image was started with, if any */
+static void dt_2nd_bdinit(unsigned long entry_data)
 {
-	unsigned long membase, memsize, endmem, endfdt, barebox_size;
-	struct fdt_header *fdt = (void *)_fdt;
-	void (*pbl_uart_init)(void);
+	struct fdt_header *fdt = (void *)entry_data;
+	const struct pbl_console *console;
 
 	if (!fdt)
 		hang();
 
-	/*
-	 * We need to call this here, as a multiplatform build
-	 * depends on querying mode for riscv_vendor_id()
-	 */
-	riscv_set_flags(RISCV_S_MODE);
+	console = fdt_device_get_match_data(fdt, "/", console_ids);
+	if (console)
+		__pbl_board_info.console = *console;
 
-	relocate_to_current_adr();
-	setup_c();
+	pbl_get_stage()->board_data = fdt;
+}
 
-	pbl_uart_init = fdt_device_get_match_data(fdt, "/", console_ids);
-	if (pbl_uart_init) {
-		pbl_uart_init();
-		putchar('>');
-	}
+static void __noreturn dt_2nd_chainload(void *boarddata)
+{
+	unsigned long membase, memsize, endmem, endfdt, barebox_size;
+	unsigned long boarddata_ul = (unsigned long)boarddata;
+	struct fdt_header *fdt = boarddata;
 
 	fdt_find_mem(fdt, &membase, &memsize);
 	endmem = membase + memsize;
-	endfdt = _fdt + be32_to_cpu(fdt->totalsize);
+	endfdt = boarddata_ul + be32_to_cpu(fdt->totalsize);
 
 	/*
 	 * QEMU likes to place the FDT at the end of RAM, where barebox
@@ -80,13 +67,19 @@ static void noinline __noreturn start_dt_2nd_nonnaked(unsigned long hartid,
 	handoff_data_add_dt(fdt);
 
 	if (riscv_mem_barebox_image(membase, endmem, barebox_size, NULL) < endfdt &&
-	    _fdt < riscv_mem_stack_top(membase, endmem))
-		memsize = ALIGN_DOWN(_fdt - membase, SZ_1M);
+	    boarddata_ul < riscv_mem_stack_top(membase, endmem))
+		memsize = ALIGN_DOWN(boarddata_ul - membase, SZ_1M);
 
-	barebox_riscv_supervisor_entry(membase, memsize, hartid, NULL);
+	/* The head has set the mode and the hart ID in tp already */
+	barebox_riscv_entry(membase, memsize, NULL, RISCV_S_MODE);
 }
 
-ENTRY_FUNCTION(start_dt_2nd, hartid, _fdt, a2)
-{
-	start_dt_2nd_nonnaked(hartid, _fdt);
-}
+/* The console depends on the machine, so dt_2nd_bdinit() looks it up */
+extern char __dt_2nd_head[];
+
+ENTRY_POINT_HEAD(start_dt_2nd, __dt_2nd_head)
+	.soc_type = SOC_TYPE_GENERIC_DT,
+	.second_stage.stacktop = PBL_STACKTOP_BEFORE_BAREBOX,
+	.second_stage.board_init = dt_2nd_bdinit,
+	.second_stage.soc_chainload = dt_2nd_chainload,
+ENTRY_POINT_END
-- 
2.47.3



