Delivery-date: Thu, 08 Jan 2026 17:02:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTC-002ffk-1a
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTB-0001B5-1p
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mlf0ynOtS8uHWfAiSbPQ2QOoZ/5c2Q+TI+PUUvu2qKY=; b=mv3xkLv36Vm1XYs5Tp/lriz5M8
	UYaPLovlI/rmhLXYCT//nUdVcq1jPmeLE3bKUAKQ1M8PtiLHL5fvI8EAxwJQJG9LMXEvG/mXp+KtZ
	HXvMZUixgOGjM3f8NUa2vEkT/tCdO+yxNlzoSrBUB/9xdoCryMxYGfT/4Z2zQDVLrWka+emgIg9d0
	eoa1z7wJlPIP5zyA8YJ+xzwKMLHjkDZHlgcDI6Vq16ym+Y/kgJJAAQLDOpQsnu+jjIY2Unfb3/r6N
	5HWzFJt3VOd1CPaIGuxl6mlZ2k++n3HCtaeavJNoLlqDewcNzLJDnrGZC33uq3Y0rHhIGY0busHLd
	O6jkYVyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSH-000000001wN-39R2;
	Thu, 08 Jan 2026 16:01:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS6-000000001sW-2rEg
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=mlf0ynOtS8uHWfAiSbPQ2QOoZ/5c2Q+TI+PUUvu2qKY=; b=iYVYYmWd3LfFZOajpv5eRTlDlg
	eu/gLSapstbC0GkBLMKZuLnJnWABYVjk1SN3BZWl92+esfaCs0x87ITor1W+CKihC23D52V9On1Uh
	8TbTZ4G3UqHhZ5IwivYVE8Z/K5m3mayBxRQTybeuZdYw8hYsvE+4PSVgrjkusqHeeKrUyD/CAb3ym
	HLGdskScJgC7dkNS+7YHgSYx5zI7FPo3+hrBadGWVliuJHJj3uJIrOB0WddO2GZ+yekOjEU8babic
	ewQkCNrBWrhSol+Oe+lhRw9U5IU6i/Yx1TpENlDb3Y1QGO1On3A3MEpQVP8J6Ock/OdsAr1lOrG+3
	IQCJSgcg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS2-0000000DaTh-1bnS
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-0000Qy-Ot; Thu, 08 Jan 2026 17:01:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-009hX3-1r;
	Thu, 08 Jan 2026 17:01:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1cxW;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-22-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=2844;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9EweNDnd/RYm9Q2GEAav6l3TXX6E4csjF1yZVUm9kjI=;
 b=D5P3wE+bQtEn5PbrX30JEDcPn4KjbXXTvo3DInuykgTLs0iY+6uLBA6MnYKlpvtSTpP0mPdNr
 tv/DTERIb3gAAK3Vjx9nsy443AhA12/CieNjmT+g86Rxu8vLuQ67Vtn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160130_476490_71D295C7 
X-CRM114-Status: GOOD (  14.31  )
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
Subject: [PATCH v3 22/23] ARM: cleanup barebox proper entry
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
 arch/arm/cpu/start.c         | 11 -----------
 arch/arm/lib32/barebox.lds.S |  7 +------
 arch/arm/lib64/barebox.lds.S |  7 +------
 3 files changed, 2 insertions(+), 23 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 2498bdb894c261f587af6542ea4574c497a6edc0..c2f14736dac5948d0b751f2307690420ee4c23ca 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -189,14 +189,3 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	start_barebox();
 }
-
-void start(unsigned long membase, unsigned long memsize, struct handoff_data *hd);
-/*
- * First function in the uncompressed image. We get here from
- * the pbl. The stack already has been set up by the pbl.
- */
-void __section(.text_entry) start(unsigned long membase,
-		unsigned long memsize, struct handoff_data *hd)
-{
-	barebox_non_pbl_start(membase, memsize, hd);
-}
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 2fb43b4619ff29d8d21dd579d3a3002b7134ff71..e1a9495440b3330811561db2e8ea92149756ff8a 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -6,7 +6,7 @@
 
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
-ENTRY(start)
+ENTRY(barebox_non_pbl_start)
 
 PHDRS
 {
@@ -27,17 +27,12 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
-		*(.text_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
 		. = ALIGN(0x20);
 		__exceptions_start = .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
 		*(.text*)
 	} :text
-	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4096);
 	__start_rodata = .;
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 71f677a917851270e09c6d439fe5cbe4b6b41034..2255eaf503eae3d915f51d5d7ba2e6cdc10f711a 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -5,7 +5,7 @@
 
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
-ENTRY(start)
+ENTRY(barebox_non_pbl_start)
 
 PHDRS
 {
@@ -26,13 +26,8 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
-		*(.text_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
 		*(.text*)
 	} :text
-	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4096);
 	__start_rodata = .;

-- 
2.47.3



