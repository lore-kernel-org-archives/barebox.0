Delivery-date: Thu, 08 Jan 2026 17:02:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT6-002fdt-2h
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT6-00017H-1a
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AOgaaHWBivwArl8dHhvNZ6eQP3jeI7wow1knDObnx8s=; b=tTMeHXdIDO1VcjN8R/icLCiN0R
	W1q50cI1vRpzLOzBTv0MzTkLsgPuHAlI21Zq/71vldogQg4+v3fbFbTSe1Es96iBeIuvIRax5vda0
	FG/L7K/WCbipApkNzHriQyp8Xk+nN2tMM9UNj6L7D9cTr8t+HVdG94qPsvtZb2N/t3avCjIR/OPaf
	XqowrIlY3iaKYHyXjTEcfvOUtgDHX2mUfHr6qx7cKWyw4rGV3o1uemjJbqTHF8E4Kbif9NjlZniMP
	jf1ujFkRD5Y/s86sYfOuyl7BYSguhnFmtKH3veBM1qLSlXSn1OFyvb7cps5anZIEGEK1JjlH6uTd4
	MH46awWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSI-000000001wl-2b2Y;
	Thu, 08 Jan 2026 16:01:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS5-000000001sK-0Hmx
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=AOgaaHWBivwArl8dHhvNZ6eQP3jeI7wow1knDObnx8s=; b=BKhsjGuH14k6eZlwMpVvme4K1j
	/1uVivwphud94DtTln4zCPCru1BqSTpQAwwN/1N5YXAfND6G4HW5gkdTpK5HYkzZJTwevxck8EHy8
	FOeQUx00h4ikxN1XYqXOUQucd/AYmjbvw3fpmgZxjbSjBYx1dNb3NPLBGslLso6Oa6O0Hh9O8DWZ+
	ZZ5fVr0yRK3sJOqeLCUQoV0h8NvDQgqLjJfu04LerMM2NY2t3+OMe7gwCKrJNsW75UKcMo1WFxKnh
	hHVXhuAR/9fkEDcbaXdI7kxzXk9fum2FyTlmg9YhvxSH/zriygshftSKglKCCXbuQviQcOi1iZlqU
	LgAgVCHg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS2-0000000DaTl-1bhg
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-0000RO-Vg; Thu, 08 Jan 2026 17:01:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-009hX9-2T;
	Thu, 08 Jan 2026 17:01:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1dJL;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-23-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=3185;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+uA78lYr+alzKRER8yjGPCDNGG0LnwN7YopDjA/5NlM=;
 b=X2T1RjxcDSLYdPT+ozAt2x6JXhbQ1z77mvtY3Kh1dArW16zADCMjr0f7v0iIa8zirFFszn4Qj
 u/O+N//LZPUC2/Je9YoW5fRPJLd28rO4VPnojN9DCzkfdPIKWgVtbpE
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160130_474878_A920E9C5 
X-CRM114-Status: GOOD (  15.20  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 23/23] riscv: cleanup barebox proper entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As barebox proper is now an ELF file we no longer need to map the entry
function to the start of the image. Just link it to wherever the linker
wants it and drop the text_entry section. Also, remove the start()
function and set the ELF entry to barebox_non_pbl_start() directly.

While at it also remove the bare_init stuff from the barebox proper
linker script as it's only relevant to the PBL linker script which
is a separate script.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/boot/start.c      | 13 +------------
 arch/riscv/boot/uncompress.c |  2 +-
 arch/riscv/lib/barebox.lds.S |  7 +------
 3 files changed, 3 insertions(+), 19 deletions(-)

diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 002ab3eccb4292d8d88a95f8b93163c970cb1d64..15bb91ac1b49ada66375507120256daff6b563f4 100644
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
@@ -177,14 +177,3 @@ void barebox_non_pbl_start(unsigned long membase, unsigned long memsize,
 
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
index d34926c7eba9439aa8794cd0cd6e7d80a774e4e6..73b9cab7ea39bfbdd2184e074d07b0df56ab8b0d 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -102,7 +102,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 			panic("Failed to setup memory protection from ELF: %d\n", ret);
 	}
 
-	barebox = (void *)elf.entry;
+	barebox = (void *)(unsigned long)elf.entry;
 
 	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
 
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 77f854e73e2013ca332a0a94fd1deaa2b9978a1d..1435ce3318a466d875d583bab876f63a2368ae69 100644
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



