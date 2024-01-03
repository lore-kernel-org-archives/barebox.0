Delivery-date: Wed, 03 Jan 2024 19:34:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64V-002Nsx-1B
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:34:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64P-0005Uo-IO
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:34:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KzWjLS0uHmy2kcdcqpHc42Jf/iukZeW+ZdbtZlVZGgM=; b=SqjN61uVvb/LvRNyN1pW2MLLF6
	o7FnnhXioXZE420KBq+XNIs1HDkWrbMzgCpqIJr/HTG7l5WIgTfs/vewardrIw9TqQ+/iy9ZZehKm
	0hfEI2/nQK9lpSHU/zcT8BjES2LiFgiRTaw3DQgHegPXhCTWvw+X/0OSQOm8LXI5eCAxM22XAN/L2
	9ABAoxS6KJ+4rd7+t/Ev8cCyWMBHcjw0ifaziaJJ6dw8CVjd0WxFGzrdqNS10qL3trmeEBPKEgWm0
	eVYI/gTNajMeRWV87ebOETBtTTLEqfSWO641kzJFXW6MrFctlBNyo3zKp7raaGPrd9e23NRM29NTe
	XZR3aptg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL62e-00BiuL-0P;
	Wed, 03 Jan 2024 18:32:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61B-00Bh1I-2w
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001bK-OM; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000Awb-BE; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-1N;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:15 +0100
Message-Id: <20240103181312.409668-56-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103105_962091_C2F923DC 
X-CRM114-Status: GOOD (  11.96  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 055/112] ARM64: cpu: setupc: rewrite to be fully PIC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code resulting from building the barebox ARM64 assembly contains
relocations, which could've been position-independent just as well.

Let's make them truly position independent by turning:

	ldr   x0, =label

into
	adr_l x0,  label

adr_l is position independent by virtue of being implemented using adrp,
so it's usuable as-is before relocation and requires no manual addition
of get_runtime_offset().

With these changes, only relocation necessary for the ARM64 generic DT
2nd stage is the one needed for get_runtime_offset() to find out
whether barebox has been relocated.

This is one step towards supporting mapping barebox PBL text section
W^X, which precludes relocation entries emitted for code.

With this change applied, there is still a data relocation entry
in assembly code for get_runtime_offset(), but that doesn't bother us
because it's in the data section.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/setupc_64.S | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index f38f893be90b..2138c2a600fa 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <linux/linkage.h>
+#include <asm/assembler.h>
 #include <asm/sections.h>
 
 .section .text.setupc
@@ -10,9 +11,9 @@
  */
 ENTRY(setup_c)
 	mov	x15, x30
-	ldr	x0, =__bss_start
+	adr_l	x0, __bss_start
 	mov	x1, #0
-	ldr	x2, =__bss_stop
+	adr_l	x2, __bss_stop
 	sub	x2, x2, x0
 	bl	__memset		/* clear bss */
 	mov	x30, x15
@@ -29,12 +30,12 @@ ENDPROC(setup_c)
 					/* x0: target address */
 #ifdef __PBL__
 ENTRY(relocate_to_adr_full)
-	ldr	x2, =__image_end
+	adr_l	x2, __image_end
 	b	1f
 #endif
 
 ENTRY(relocate_to_adr)
-	ldr	x2, =__bss_start
+	adr_l	x2, __bss_start
 	b	1f
 
 1:
@@ -45,18 +46,13 @@ ENTRY(relocate_to_adr)
 
 	mov	x21, x0
 
-	bl	get_runtime_offset
-	mov	x5, x0
-
-	ldr	x0, =_text
-	mov	x20, x0
-
-	add	x1, x0, x5		/* x1: from address */
+	adr_l	x1, _text
+	mov	x20, x1
 
 	cmp	x1, x21			/* already at correct address? */
 	beq	1f			/* yes, skip copy to new address */
 
-	sub	x2, x2, x0		/* x2: size */
+	sub	x2, x2, x1		/* x2: size */
 	mov	x0, x21			/* x0: target */
 
 	/* adjust return address */
@@ -70,7 +66,7 @@ ENTRY(relocate_to_adr)
 	mov	x0,#0
 	ic	ivau, x0	/* flush icache */
 
-	ldr	x0,=1f
+	adr_l	x0, 1f
 	sub	x0, x0, x20
 	add	x0, x0, x21
 	br	x0			/* jump to relocated address */
-- 
2.39.2



