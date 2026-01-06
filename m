Delivery-date: Tue, 06 Jan 2026 14:02:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hQ-001teG-35
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:02:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hN-0003Pf-SU
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:02:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xTgqA9lNDejQW8UsCITeb4/Vbxm89ONvabyH2UQ7g0E=; b=LUaVisfI+RdJai/hJ8RFJ9wFBG
	nhCQoLOYOBGXjiAU27HZJkiJFlcO1DkCPeBaIKsdKkeb95xp8fqe0vkyQzQpQdFbCKdMk9edMTFdo
	OdlXtM5mC+VW3r/LzfB0n10vI0JWxHZZQL8jiKNpqM86hKxQIhycZj2I2D6c8cNNiNDE6Hqp+HquH
	9/C04/0CbeFTDnsamvSEp2rTErLxYSG1rggsV/pTWDZw9856RAwV4hU8IDGMOhp7l7H4IRsQ2qo1i
	cPYZH8WqmlPC5bvKR3KjJkudUSBzxD7P47qJOPXGYKp5iEloXmtvvMnaqmriP4NaZ2x618O1pwrAr
	30SSiwkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gs-0000000D2Yq-25Xi;
	Tue, 06 Jan 2026 13:01:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gl-0000000D2Qr-35Ud
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:01:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-0002pt-Ax; Tue, 06 Jan 2026 14:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-009Le7-0O;
	Tue, 06 Jan 2026 14:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3cOb;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260106-pbl-load-elf-v2-15-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=6086;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TT32aeIJjXbFLErHe6XyqKL/O8LJuOf+bylrfaonDDU=;
 b=ZuzCN7VsH+S4WBC10w6JyCpseApdcYWHk2gn8CtF4eoHDNC2PKC8BV1ilB03aMwaLQY5/rTck
 tHLwwI7kPa3ACwHXhp3sE+erIYLEEUJhs54qXpPOx/Ph/jmgcBHBZZp
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_050131_922206_BD40CD96 
X-CRM114-Status: GOOD (  12.01  )
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
Subject: [PATCH v2 15/21] ARM: linker script: create separate PT_LOAD
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
 arch/arm/include/asm/barebox.lds.h |  2 +-
 arch/arm/lib32/barebox.lds.S       | 34 ++++++++++++++++++++++------------
 arch/arm/lib64/barebox.lds.S       | 29 +++++++++++++++++++----------
 arch/riscv/lib/barebox.lds.S       |  1 +
 4 files changed, 43 insertions(+), 23 deletions(-)

diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
index 72aabe155b5c9e8b9159c7da6c6f0fa1f7b93375..7d1811645762a2ce1f58b7d86bed188a93fdb711 100644
--- a/arch/arm/include/asm/barebox.lds.h
+++ b/arch/arm/include/asm/barebox.lds.h
@@ -16,7 +16,7 @@
 
 #define BAREBOX_RELOCATION_TABLE					\
 	.rel_dyn_start : { *(.__rel_dyn_start) }			\
-	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) }	\
+	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) } \
 	.rel_dyn_end : { *(.__rel_dyn_end) }				\
 	.__dynsym_start :  { *(.__dynsym_start) }			\
 	.dynsym : { *(.dynsym) }					\
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 17e0970ba4989e5213ed38ea5ff87bdf5bfa2740..e84118ee2f43b07bd82fcd9936398847d0a3b42f 100644
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
+	dynamic PT_DYNAMIC FLAGS(6); /* PF_R | PF_W */
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
@@ -31,7 +40,7 @@ SECTIONS
 		KEEP(*(.text_inplace_exceptions*))
 		__inplace_exceptions_stop = .;
 		*(.text*)
-	}
+	} :text
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4096);
@@ -39,7 +48,7 @@ SECTIONS
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
-	}
+	} :rodata
 
 #ifdef CONFIG_ARM_UNWIND
 	/*
@@ -50,20 +59,21 @@ SECTIONS
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
 
@@ -73,12 +83,12 @@ SECTIONS
 
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
index 5ee5fbc3741e1f7644c00f9b37c0903c27704a3e..0278347e78c70318a03eddda77510e38d3e9f026 100644
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
+	dynamic PT_DYNAMIC FLAGS(6); /* PF_R | PF_W */
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
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 03b3a967193cfee1c67b96632cf972a553e8bec4..38376befe9a82ead2152f8c7fc581eb5bb35fab4 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -16,6 +16,7 @@
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
+
 SECTIONS
 {
 	. = 0x0;

-- 
2.47.3



