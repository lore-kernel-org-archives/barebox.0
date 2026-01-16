Delivery-date: Fri, 16 Jan 2026 09:36:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJM-001tql-25
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:36:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJK-00084i-Pn
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:36:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l7Vw4yKnLflSbJSA3S50BDndBOLixw7Qe8+b2b5HEhc=; b=nyDFuEpzqqQdyZbhvYzLScxDzp
	pk5dkXlSR0aR4elktlITZwwfU4Wn58lD6P7yQc5tcIo9qi6hah5OiOyYy2mvDKOBa7TRm37DVqUyo
	9j0cNLEqDmIcmqwx8funihukFcLo6Z+3uOxzosEnOdoqVW8/AiZvU56dmVWDbSSzbXJ1KwfAQLkht
	zzk/7om/M2um6Ovt7XxqV7/kZAkRYVFI763d0abFvWzyIgU0dVqdun6fWrX+YNq9MZ410CqEafSK/
	KqXAY73HO6sXvneMC1sxtbigU0hAQ40pucMHZ5XHJYN9GkUlWd9GZwCXDMV1wvqT7+BB3lSUkxvHA
	0tJ4GKRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfIl-0000000Dlsk-0qBn;
	Fri, 16 Jan 2026 08:35:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfId-0000000Dlh4-0W5k
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:35:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-0007SF-JV; Fri, 16 Jan 2026 09:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIc-000tE5-0E;
	Fri, 16 Jan 2026 09:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1iU6;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-15-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=4523;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=N8PdPeWhf2fZ97Kl5zS3X/56xEibQheQgi7yNdId6d0=;
 b=7g7OYvhL0kNGsHK9Cj9x0E7gmHUJMzwP2yGzZ9S5twdLo0l5+5PKLbwfQXdK4dy/B15C4HwjY
 C9zPFjcNiCJDeVKNW0sHfHPoU+WDEbsHPcIggJE4vj/wEH0m/5YbJrK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_003519_207351_086933CE 
X-CRM114-Status: UNSURE (   9.96  )
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
Subject: [PATCH v5 15/22] ARM: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix the linker scripts to generate three distinct PT_LOAD segments with
correct permissions instead of combining .rodata with .data.

Before this fix, the linker auto-generated only two PT_LOAD segments:
1. Text segment (PF_R|PF_X)
2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.

With explicit PHDRS directives, we now generate three segments:
1. text segment (PF_R|PF_X): .text and related code sections
2. rodata segment (PF_R): .rodata and unwind tables
3. data segment (PF_R|PF_W): .data, .bss, and related sections

With this we can setup the MMU properly from outside the ELF binary.

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/barebox.lds.S | 35 +++++++++++++++++++++++------------
 arch/arm/lib64/barebox.lds.S | 31 ++++++++++++++++++++-----------
 2 files changed, 43 insertions(+), 23 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index c704dd6d70..c098993615 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -7,14 +7,23 @@
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
+
+PHDRS
+{
+	text PT_LOAD FLAGS(5);		/* PF_R | PF_X */
+	rodata PT_LOAD FLAGS(4);	/* PF_R */
+	dynamic PT_DYNAMIC FLAGS(4);	/* PF_R */
+	data PT_LOAD FLAGS(6);		/* PF_R | PF_W */
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
@@ -46,20 +55,22 @@ SECTIONS
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
+	.dynamic : { *(.dynamic) } :rodata :dynamic
+
 	. = ALIGN(4096);
+
 	__end_rodata = .;
 	_etext = .;
 	_sdata = .;
 
-	. = ALIGN(4);
-	.data : { *(.data*) }
+	.data : { *(.data*) } :data
 
 	. = .;
 
@@ -69,12 +80,12 @@ SECTIONS
 
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
index 5ee5fbc374..1ce2c67df0 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -6,14 +6,23 @@
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
+
+PHDRS
+{
+	text PT_LOAD FLAGS(5);		/* PF_R | PF_X */
+	rodata PT_LOAD FLAGS(4);	/* PF_R */
+	dynamic PT_DYNAMIC FLAGS(4);	/* PF_R */
+	data PT_LOAD FLAGS(6);		/* PF_R | PF_W */
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
@@ -30,7 +39,9 @@ SECTIONS
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
-	}
+	} :rodata
+
+	.dynamic : { *(.dynamic) } :rodata :dynamic
 
 	. = ALIGN(4096);
 
@@ -38,20 +49,18 @@ SECTIONS
 	_etext = .;
 	_sdata = .;
 
-	.data : { *(.data*) }
-
-	BAREBOX_RELOCATION_TABLE
+	.data : { *(.data*) } :data
 
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



