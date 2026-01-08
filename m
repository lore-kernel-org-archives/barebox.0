Delivery-date: Thu, 08 Jan 2026 17:02:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTB-002ff8-1t
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsTA-0001Aq-Ro
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=15PWQZSKDKSC+UIj8yVt2OJxWcN111xsVXw/4BwEKqY=; b=is85v7BVGmbcZCszauvQUoh1Ca
	KhMeLbSXOk3rexkzbgI/Us+xrAkXFsJEhWL+OePZ7yTX0WaYaJK2YLGzUlbgfCRS9bSK/xuuAmlwk
	kXG3fqnaSPP9FJI7rvlmOrNQ995+oqJ3vr3FloN8it04K8bMWT71kOdJHvufZMOwikqQ+MlHDRz/L
	+cwCBDM/8lqF9JuZkXZHhpVfkcM7N9WWTKh1FrsMEpgFFJlQFMgyn4wPEqr8jDQ+9il00IHwspGPz
	vPmTKI/E80Z1WxMrjr/7j036jokJ9wQkrMWCwp0c85IgctW4D0TsC7wDIR875FpCINvLkhyPhVnbh
	qV7TN/Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSI-000000001wW-08tW;
	Thu, 08 Jan 2026 16:01:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS6-000000001sU-2mKM
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=15PWQZSKDKSC+UIj8yVt2OJxWcN111xsVXw/4BwEKqY=; b=gTFkc1j4i3wYXVXUD2TXwi9KnG
	VKz9PRwJ6+N97a7292qkTeiAu1AzkSsHr3Dw7LEkLUd8hCRHQbmlfemzjyKoGah1qZbs00Np2xqEV
	Xc8U2BrUC4nCLeDdbKjkuwRmuAWzzoCfU0WU6RYKOQNDDOd+Zgg0JVAiw4BPBje4w5pt6EYUBKefo
	B6QNewF6LotkvlqNjpSx3c8cwcfM8JadTu772sSqOQKZySiT3aqQmxsu8hNQ4ikM8oQs51+ueebeC
	ZvczkC8CQXitNh1sBEuAkUHV0MritWYjo+6Vq3aUftMQFodOWDUIJM8HRS/7ikgks1rgq28PImlvu
	A0sM3org==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS2-0000000DaTn-22jC
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-0000S7-5l; Thu, 08 Jan 2026 17:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS1-009hXJ-35;
	Thu, 08 Jan 2026 17:01:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1bKj;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-18-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=2982;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tPTrVMFgz0TmafvcKSbelnMGnc8nW6wMVqVesmq94Co=;
 b=qAx8hPuzKqC1hMoH+LWkLrTIL9/qfmOckToKAhKjK0u+gW8ioeCYtJpi/R4PP/i6e1UA4g3ie
 izdgxtm4+fhDKWJcLKzHbXEn6x41w5gXRjgzCzhqdkHebEZTGzfh/V2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160130_598526_5B1C0D9D 
X-CRM114-Status: UNSURE (   9.89  )
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
Subject: [PATCH v3 18/23] riscv: linker script: create separate PT_LOAD
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

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/barebox.lds.S | 38 +++++++++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 03b3a967193cfee1c67b96632cf972a553e8bec4..77f854e73e2013ca332a0a94fd1deaa2b9978a1d 100644
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

-- 
2.47.3



