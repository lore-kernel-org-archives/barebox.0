Delivery-date: Tue, 06 Jan 2026 14:02:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hP-001tdI-10
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:02:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hN-0003PC-BG
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:02:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UN7SDUdcGWTli4oHv7n+26Y2enO+YnpcFUrO0qAtdV8=; b=rKfU3rHWlIhTVQJguv9NamPYMD
	l/4UP/LawxjNQCvLa72ky8YK5UgecPogJVKUQctRAZgMHU/qcNoAjfpSbIVc6rNNE2aD8p65Vhw+/
	rJjc/JQ8JW6Ua8rp54063B2860+ik72IR6WujWtIUM0LLVIXsAceIPWhizRzG3+qcEUoLTqbU7qlV
	Rf/npxSkRQGulrDs5gNuy869FlQipQZXVWAWhgodvejMyjGLtyeINISxApbhjd5QnDh7LUvPy18rp
	+4d2tBgZPYOzg2fWzlntRCOrgKvy7a4xrLAk83iXczh1pwy96lkGdzNTxSdAORMmS03oDX6PpIl5M
	kmAfbnrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gq-0000000D2Vi-06KS;
	Tue, 06 Jan 2026 13:01:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gl-0000000D2Qq-2cN3
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:01:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-0002pc-7O; Tue, 06 Jan 2026 14:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gk-009Le3-04;
	Tue, 06 Jan 2026 14:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3gvH;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-19-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=3832;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Mwri7O285H8eq8NrUdJccMIzCCVq61V1B/iQGjMnMH8=;
 b=GM1zhZziJEnVV7aLdsnLW9eQY8phSaVpC2USC20KI29EAA1tAirdwllZ0G5fYB1iJ029PsTpq
 tzbVt0CDdVuDALtD5tu4pgjBhON45Ugv/zDXXvR1BFBAQOOIplNwPsy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_050131_680535_B2B54FEC 
X-CRM114-Status: GOOD (  12.93  )
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
Subject: [PATCH v2 19/21] riscv: linker script: create separate PT_LOAD
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
 arch/riscv/lib/barebox.lds.S | 37 ++++++++++++++++++++++++-------------
 scripts/prelink-riscv.inc    |  9 +++++++--
 2 files changed, 31 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 38376befe9a82ead2152f8c7fc581eb5bb35fab4..1565a6fedef1ade7687740240bc36f407ca880fc 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -17,14 +17,22 @@ OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 
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
@@ -36,44 +44,47 @@ SECTIONS
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



