Delivery-date: Wed, 14 Jan 2026 13:36:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06S-001EXO-2E
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:36:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06R-0005Xk-0H
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:36:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cy1ix9oltCzSkxEJwxGE0Fe1jgABm7brOw+s8Ayb/Yo=; b=juYXwluRYzy7P6wOUCVRFld3rm
	j8NP77BzuOF7xpiE7XBESlFRP4qzoqf9fbVmIIj4y3EFPLZbFWW+YxYD9GMf6Ji8V8PIRGxMr8BQZ
	jKYBE0B2e7RjFRFjSnYwUzwnXxO1tIkpkHMS0SNLRxsJKXTzYXjxn0jruzuDIi+OIYfwlhLy4p8KO
	KPvCGLj6I86Q4HZPYJyUkmiYjf73TNMaM9QmDtIKNcN3kb+OKYkf0z3lB0R/TrGE+ZP0OaW9ayQ+x
	5J+fa/dpGibiZhzOzoqb5ucTAeLJp71N0e+yN95ti9WjXU8fImWp6IRaA8MeMsohHeyb42zZ2GED2
	eNdkLI8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05t-00000009C2H-3jla;
	Wed, 14 Jan 2026 12:35:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05m-00000009BvF-2HAP
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:35:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05k-00050A-Un; Wed, 14 Jan 2026 13:35:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05l-000afA-1O;
	Wed, 14 Jan 2026 13:35:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-1A72;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-19-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=2713;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CGtTH9zz6R5CFJoOrmBtRlpttPjjxqCzsMpWq0BS7uA=;
 b=U82DOhudL1cXt5PQrtbgfTKyb2y3+3UGjy1fli2sYh36qotqKVGHTqKpXJ23HawFq/VdEazVS
 ATrA3f4UDHCBv6jqXtvQXtTjrReIg/fIfsMitZVJ59ai76e697oelKL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_043520_208717_DB5E562C 
X-CRM114-Status: UNSURE (   9.17  )
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
Subject: [PATCH v4 19/22] riscv: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix the linker script to generate three distinct PT_LOAD segments with
correct permissions instead of combining .rodata with .data.

Before this fix, the linker auto-generated only two PT_LOAD segments:
1. Text segment (PF_R|PF_X)
2. Data segment (PF_R|PF_W) - containing .rodata, .data, .bss, etc.

With explicit PHDRS directives, we now generate three segments:
1. text segment (PF_R|PF_X): .text and related code sections
2. rodata segment (PF_R): .rodata and related read-only sections
3. data segment (PF_R|PF_W): .data, .bss, and related sections

With this we can setup the MMU properly from outside the ELF binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/lib/barebox.lds.S | 38 +++++++++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 03b3a967193cfee1c67b96632cf972a553e8bec4..0cfa4bff57920bfaed822cb62c553c49f543994c 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -16,14 +16,23 @@
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
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
+
+	.dynamic : { *(.dynamic) } :rodata :dynamic
 
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



