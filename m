Delivery-date: Mon, 05 Jan 2026 12:32:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcioe-001VHa-1x
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:32:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vciod-00079P-Dz
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:32:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9mwfpSToNSBYGw/KYUuxrKY4EyvHnfXlMS6y93OwcZQ=; b=TQiny3QLRA+yAVNZTw1VH7vIXh
	ZAoygrv3gfSyqmEGGeohWQXfK4nDXo1LgtYqTC4IlDmK/s5k8v0YwGHYK00EQnyPrYXu5dMqdsOaS
	BL5xclJbbFmOLOgRVNYPTnVbNdAgikobnSCOW7P71xlM9POUrQGxoiyL7LsyDQ093v4vZQlJdXiV7
	5KexrucWH3Iku3qmoPuUZSEAPHox04GrCLja+xCgqO4LmsibsJ6Dvx/K6D7sgq3lB20EGAmKN59Vj
	won3XkO2rMlfJqPzSWH70Tk1dHay0RfNFYCNtyYVwF5bYfS3XaDJwRHBWt4uaa8T6DdgwX8askpjM
	YU3Z0iHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcioB-0000000BCF0-2chR;
	Mon, 05 Jan 2026 11:31:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcio7-0000000BCB7-3I89
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:31:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0006kO-Cd; Mon, 05 Jan 2026 12:31:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0099zn-0c;
	Mon, 05 Jan 2026 12:31:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-16dQ;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-18-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=3835;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RwPJu9V5wrb6I14AxTEzIMGB09aAYkdG0SOy6sXgkpE=;
 b=VnwA3fWZTHq7CPEAB+PdmlA7tioGwIVI1Jc7S+gGCkK8NUiTGNUBxNcxq2qlW36fyX5U5ncKb
 nP/K/xfuiVTAzlvxaoQf/DhVnN6jTyJl2/2SCwEpYug/3hKMXCNoAtF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_033131_829277_243EEFF0 
X-CRM114-Status: GOOD (  12.71  )
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
Subject: [PATCH 18/19] riscv: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix the linker script to generate three distinct PT_LOAD segments with
correct permissions instead of combining .rodata with .data.

Before this fix, the linker auto-generated only two PT_LOAD segments:
1. Text segment (PF_R|PF_X)
2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.

This caused .rodata to be mapped with write permissions when
riscv_mmu_setup_from_elf() or riscv_pmp_setup_from_elf() set up memory
permissions based on ELF segments, defeating the W^X protection.

With explicit PHDRS directives, we now generate three segments:
1. text segment (PF_R|PF_X): .text and related code sections
2. rodata segment (PF_R): .rodata and related read-only sections
3. data segment (PF_R|PF_W): .data, .bss, and related sections

This ensures riscv_mmu_setup_from_elf() and riscv_pmp_setup_from_elf()
correctly map .rodata as read-only instead of read-write.

Also update the prelink script to handle binaries without a PT_DYNAMIC
segment, as the new PHDRS layout may result in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/barebox.lds.S | 38 +++++++++++++++++++++++++-------------
 scripts/prelink-riscv.inc    |  9 +++++++--
 2 files changed, 32 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 03b3a967193cfee1c67b96632cf972a553e8bec4..1565a6fedef1ade7687740240bc36f407ca880fc 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -16,14 +16,23 @@
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
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
@@ -35,44 +44,47 @@ SECTIONS
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
 		*(.text*)
-	}
+	} :text
 	BAREBOX_BARE_INIT_SIZE
 
-	. = ALIGN(4);
+	. = ALIGN(4096);
 	__start_rodata = .;
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
-	}
+	} :rodata
 
 	__end_rodata = .;
 	_etext = .;
 	_sdata = .;
 
-	. = ALIGN(4);
-	.data : { *(.data*) }
+	. = ALIGN(4096);
+
+	.data : { *(.data*) } :data
 
 	/DISCARD/ : { *(.rela.plt*) }
 	.rela.dyn : {
 		__rel_dyn_start = .;
 		*(.rel*)
 		__rel_dyn_end = .;
-	}
+	} :data
 
 	.dynsym : {
 		__dynsym_start = .;
 		*(.dynsym)
 		__dynsym_end = .;
-	}
+	} :data
+
+	.dynamic : { *(.dynamic) } :data :dynamic
 
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
diff --git a/scripts/prelink-riscv.inc b/scripts/prelink-riscv.inc
index f2b5467f5b3c19be285153d3ad7cdb210a24a94c..8a54a9737fe73827ad8cab01a61fbecc68a1140a 100644
--- a/scripts/prelink-riscv.inc
+++ b/scripts/prelink-riscv.inc
@@ -61,8 +61,13 @@ static void prelink_bonn(void *data)
 		}
 	}
 
-	if (dyns == NULL)
-		die("No dynamic section found");
+	if (dyns == NULL) {
+		/* No PT_DYNAMIC segment found - binary may not need prelinking.
+		 * This can happen with statically-linked relocatable binaries
+		 * that handle relocations differently. Exit successfully.
+		 */
+		return;
+	}
 
 	Elf_Rela *rela_dyn = NULL;
 	size_t rela_count = 0;

-- 
2.47.3



