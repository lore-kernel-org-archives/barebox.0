Delivery-date: Thu, 08 Jan 2026 17:02:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT6-002fdu-2v
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT5-000176-U8
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZOmtjFdekdrIDFmPpCClMxPuA1utoefolUoiz6liJyU=; b=odad0AcoPYehaNJup82FQkU8uC
	NR9pzySVEG2pKdIGvKCjRNopJElX0xj//ac3QMe6grsAKtFOENEeVRoS078Z3pZh2UIFwMSCLDLTp
	xCFDWztkfB0xdeh5fzejon5WikWRAacBxaOQJhQdc/4LLVd13pT0B3IRLMl1P5itCObs7Ts250BlC
	D4hPG32LN7C5TwlOWgp1WW6L0E78JIw9t/ymUwcqFSQ+5b/AgGbdCxU/1Px8qCNjiNV0p/elwKqJc
	MLLqH+euQof65gAQmJ+6qCM2BqKmNDIjuK+z0Ic/JblF8pX8ZfYvvWknLhS4RIHNU8GMRutPuZLVP
	LIPF+y6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSQ-0000000025x-1BM9;
	Thu, 08 Jan 2026 16:01:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSD-000000001vC-0om1
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ZOmtjFdekdrIDFmPpCClMxPuA1utoefolUoiz6liJyU=; b=WBxEaIE752z1EdOjuhiPoUXEHC
	AcHLG1bHtKbhVT5wRNkzhUQ/ZLuhS2n4B+R0uuM2EyAPQXpQoMATmARTZfKY9/JxR2DL59xkLhlPX
	1MuDa19LX3NLaSoaGOALu8xcDtJPTKCKPQm+l8aaLotLLbZRW/oL1LAlERLjPozY5aCnBaGYCPyvx
	qzE+Og9Fs/uIXcrZVQccyaqUNCWEn00cqTu6m2XVNYeXwwV87rwQEuBdxjsR/xSPAMexyneuLxhWc
	EFCkK/sXbjAQHH5+GTgcCXO5VBwb8Pnl7AoB15a+aogP6QbsK5jq/ACrYDLNo0xzZQtzacONX2JSB
	0BQ1Jjgg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSA-0000000DaYa-0GL5
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-0000Qn-Mr; Thu, 08 Jan 2026 17:01:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-009hWx-1E;
	Thu, 08 Jan 2026 17:01:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1Zbp;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260108-pbl-load-elf-v3-15-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=4930;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=5NW8HQ2+3KQjARJf5Iw++peAshcN1YeIENKKb2SuxHA=;
 b=Jus2ndv1tgRbVoobIsdbPTcDO5OjnAtg3Q+uLCxC4WjUpknhn5wLfIBG9ogoDZa2b3/PlLuGg
 R02Ibxjb/+4C/laYivgfFQsukJclR+Dyq3fo+AnB5dXdv7NIEgY6qra
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160138_218104_0BAD4389 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v3 15/23] ARM: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix the linker scripts to generate three distinct PT_LOAD segments with
correct permissions instead of combining .rodata with .data.

Before this fix, the linker auto-generated only two PT_LOAD segments:
1. Text segment (PF_R|PF_X)
2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.

This caused .rodata to be mapped with write permissions when
pbl_mmu_setup_from_elf() set up MMU permissions based on ELF segments,
defeating the W^X protection that commit d9ccb0cf14 intended to provide.

With explicit PHDRS directives, we now generate three segments:
1. text segment (PF_R|PF_X): .text and related code sections
2. rodata segment (PF_R): .rodata and unwind tables
3. data segment (PF_R|PF_W): .data, .bss, and related sections

This ensures pbl_mmu_setup_from_elf() correctly maps .rodata as
read-only (MAP_CACHED_RO) instead of read-write (MAP_CACHED).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/barebox.lds.S | 34 ++++++++++++++++++++++------------
 arch/arm/lib64/barebox.lds.S | 29 +++++++++++++++++++----------
 2 files changed, 41 insertions(+), 22 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index c704dd6d70f3ab157ceb67dfb14760e03f2a5d62..2fb43b4619ff29d8d21dd579d3a3002b7134ff71 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -7,14 +7,23 @@
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
+
+PHDRS
+{
+	text PT_LOAD FLAGS(5);     /* PF_R | PF_X */
+	rodata PT_LOAD FLAGS(4);   /* PF_R */
+	data PT_LOAD FLAGS(6);     /* PF_R | PF_W */
+	dynamic PT_DYNAMIC FLAGS(4); /* PF_R */
+}
+
 SECTIONS
 {
 	. = 0x0;
-	.image_start : { *(.__image_start) }
+	.image_start : { *(.__image_start) } :text
 
 	. = ALIGN(4);
 
-	._text : { *(._text) }
+	._text : { *(._text) } :text
 	.text      :
 	{
 		_stext = .;
@@ -27,7 +36,7 @@ SECTIONS
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
 		*(.text*)
-	}
+	} :text
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4096);
@@ -35,7 +44,7 @@ SECTIONS
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
-	}
+	} :rodata
 
 #ifdef CONFIG_ARM_UNWIND
 	/*
@@ -46,20 +55,21 @@ SECTIONS
 		__start_unwind_idx = .;
 		*(.ARM.exidx*)
 		__stop_unwind_idx = .;
-	}
+	} :rodata
 	.ARM.unwind_tab : {
 		__start_unwind_tab = .;
 		*(.ARM.extab*)
 		__stop_unwind_tab = .;
-	}
+	} :rodata
 #endif
 	. = ALIGN(4096);
 	__end_rodata = .;
 	_etext = .;
 	_sdata = .;
 
-	. = ALIGN(4);
-	.data : { *(.data*) }
+	.data : { *(.data*) } :data
+
+	.dynamic : { *(.dynamic) } :data :dynamic
 
 	. = .;
 
@@ -69,12 +79,12 @@ SECTIONS
 
 	BAREBOX_EFI_RUNTIME
 
-	.image_end : { *(.__image_end) }
+	.image_end : { *(.__image_end) } :data
 
 	. = ALIGN(4);
-	.__bss_start :  { *(.__bss_start) }
-	.bss : { *(.bss*) }
-	.__bss_stop :  { *(.__bss_stop) }
+	.__bss_start :  { *(.__bss_start) } :data
+	.bss : { *(.bss*) } :data
+	.__bss_stop :  { *(.__bss_stop) } :data
 
 #ifdef CONFIG_ARM_SECURE_MONITOR
 	. = ALIGN(16);
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 5ee5fbc3741e1f7644c00f9b37c0903c27704a3e..71f677a917851270e09c6d439fe5cbe4b6b41034 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -6,14 +6,23 @@
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
+
+PHDRS
+{
+	text PT_LOAD FLAGS(5);     /* PF_R | PF_X */
+	rodata PT_LOAD FLAGS(4);   /* PF_R */
+	data PT_LOAD FLAGS(6);     /* PF_R | PF_W */
+	dynamic PT_DYNAMIC FLAGS(4); /* PF_R */
+}
+
 SECTIONS
 {
 	. = 0x0;
 
-	.image_start : { *(.__image_start) }
+	.image_start : { *(.__image_start) } :text
 
 	. = ALIGN(4);
-	._text : { *(._text) }
+	._text : { *(._text) } :text
 	.text      :
 	{
 		_stext = .;
@@ -22,7 +31,7 @@ SECTIONS
 		*(.text_bare_init*)
 		__bare_init_end = .;
 		*(.text*)
-	}
+	} :text
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4096);
@@ -30,7 +39,7 @@ SECTIONS
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
-	}
+	} :rodata
 
 	. = ALIGN(4096);
 
@@ -38,20 +47,20 @@ SECTIONS
 	_etext = .;
 	_sdata = .;
 
-	.data : { *(.data*) }
+	.data : { *(.data*) } :data
 
-	BAREBOX_RELOCATION_TABLE
+	.dynamic : { *(.dynamic) } :data :dynamic
 
 	_edata = .;
 
 	BAREBOX_EFI_RUNTIME
 
-	.image_end : { *(.__image_end) }
+	.image_end : { *(.__image_end) } :data
 
 	. = ALIGN(4);
-	.__bss_start :  { *(.__bss_start) }
-	.bss : { *(.bss*) }
-	.__bss_stop :  { *(.__bss_stop) }
+	.__bss_start :  { *(.__bss_start) } :data
+	.bss : { *(.bss*) } :data
+	.__bss_stop :  { *(.__bss_stop) } :data
 	_end = .;
 	_barebox_image_size = __bss_start;
 }

-- 
2.47.3



