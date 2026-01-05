Delivery-date: Mon, 05 Jan 2026 12:32:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcioe-001VHl-2j
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:32:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vciod-00079N-Cr
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:32:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9WI9zMyR4qSpl9qUBy02i6hSa2TVbl7Ixbkx6wl5zE8=; b=ypusuRcJdZYJ4VLTsaxY/Km1+a
	1THlqqAD1YK7sAN5yg8x1owaXQpVxswU++vzGWHMOi+ByrQPJe6AVIEHeWlRbjMgrFZVuEPvNATt5
	LfYUjRHIZZP8TCJ4YwhLDYXByanUEA5jF1HyHXLlWwp/h7zr9FI6maqb7zGJ+nNUBrAi5kEBvG3gW
	JsYOLGHokQL6raSzHpWUh0Fx1KnDjLMXc9RXfkHilbtYL9vAPUx/M0egFgvUTgBdSUjrB5NI5Q0tD
	UIXyw7IbUgTgvHeORYyu5Nu+CoLvUzNTK7grzdJWrxLDH+pmU9wMU79lIimk4K4iJs2gama1u7CYF
	Ru7wmi0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcioB-0000000BCFQ-3wBe;
	Mon, 05 Jan 2026 11:31:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcio7-0000000BCB3-2KKM
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:31:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0006jP-0U; Mon, 05 Jan 2026 12:31:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio5-0099zX-2e;
	Mon, 05 Jan 2026 12:31:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-13sH;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-pbl-load-elf-v1-14-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=6542;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=90pUqVUoA6oFNjzro4QdzC0ZmtU/OIfM6MQW4bhh7AQ=;
 b=MsaTJnSDCvPzoKWWVPdveDFmS6RSbq+pCqphIllxqHppI0vT4WvXXppaw2CUfb3OeLTTk+v+K
 +xU08anbs9rDWd5TSAjG9SP7ULnCFrVKmR8mzb9VE0veZnPradpk9Fe
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_033131_748349_C9D1DAAF 
X-CRM114-Status: GOOD (  10.89  )
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
Subject: [PATCH 14/19] ARM: linker script: create separate PT_LOAD segments
 for text, rodata, and data
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
 arch/arm/include/asm/barebox.lds.h | 14 +++++++-------
 arch/arm/lib/pbl.lds.S             |  2 +-
 arch/arm/lib32/barebox.lds.S       | 35 +++++++++++++++++++++++------------
 arch/arm/lib64/barebox.lds.S       | 31 +++++++++++++++++++++----------
 4 files changed, 52 insertions(+), 30 deletions(-)

diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
index 72aabe155b5c9e8b9159c7da6c6f0fa1f7b93375..a3ccea91196ccce71c54483c5e1ad5caeb3c1d32 100644
--- a/arch/arm/include/asm/barebox.lds.h
+++ b/arch/arm/include/asm/barebox.lds.h
@@ -14,13 +14,13 @@
 #define BAREBOX_RELOCATION_TYPE	rela
 #endif
 
-#define BAREBOX_RELOCATION_TABLE					\
-	.rel_dyn_start : { *(.__rel_dyn_start) }			\
-	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) }	\
-	.rel_dyn_end : { *(.__rel_dyn_end) }				\
-	.__dynsym_start :  { *(.__dynsym_start) }			\
-	.dynsym : { *(.dynsym) }					\
-	.__dynsym_end : { *(.__dynsym_end) }
+#define BAREBOX_RELOCATION_TABLE(PHDR)					\
+	.rel_dyn_start : { *(.__rel_dyn_start) } PHDR			\
+	.BAREBOX_RELOCATION_TYPE.dyn : { *(.BAREBOX_RELOCATION_TYPE*) }	PHDR \
+	.rel_dyn_end : { *(.__rel_dyn_end) } PHDR			\
+	.__dynsym_start :  { *(.__dynsym_start) } PHDR			\
+	.dynsym : { *(.dynsym) } PHDR					\
+	.__dynsym_end : { *(.__dynsym_end) } PHDR
 
 
 #include <asm-generic/barebox.lds.h>
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 53b21084cff2e3d916cd37485281f2f78166c37d..98e25a543525e2bc16b8d10ec24c2ba6b8cbec90 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -95,7 +95,7 @@ SECTIONS
 	}
 	__shasum_end = .;
 
-	BAREBOX_RELOCATION_TABLE
+	BAREBOX_RELOCATION_TABLE()
 
 	pbl_code_size =  .;
 
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 9b2b65e2f17d62d5134fc367621cce733dcea06a..c91c101d6aa5c2a0fcbf79a151a4234d924b3881 100644
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
@@ -50,12 +59,12 @@ SECTIONS
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
@@ -65,19 +74,21 @@ SECTIONS
 	. = ALIGN(4);
 	.data : { *(.data*)
 		CONSTRUCTORS
-	}
+	} :data
+
+	.dynamic : { *(.dynamic) } :data :dynamic
 
 	. = .;
 
-	BAREBOX_RELOCATION_TABLE
+	BAREBOX_RELOCATION_TABLE(:data)
 
 	_edata = .;
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
index e2f1164c47f7e5d300028d112a6e90e2fa368c65..603e0ab77490d3221fbfd3341250e6dcae840d91 100644
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
 
@@ -38,18 +47,20 @@ SECTIONS
 	_etext = .;
 	_sdata = .;
 
-	.data : { *(.data*) }
+	.data : { *(.data*) } :data
+
+	.dynamic : { *(.dynamic) } :data :dynamic
 
-	BAREBOX_RELOCATION_TABLE
+	BAREBOX_RELOCATION_TABLE(:data)
 
 	_edata = .;
 
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



