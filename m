Delivery-date: Wed, 04 Mar 2026 08:53:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxh3K-007uPr-2Z
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:53:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxh3L-0006xY-2g
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:53:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MLjC3ladBv2hFDIr4qOF0RrWx90huGV7cu5kUqJInrU=; b=pN+Nsgy16olswtjyspEaGG9+xe
	9wCnr3gsCKIzZC5fIjc7qrZ3I/b/2O10ryxzsSSyOSKKHHWU0PsrCdGEKSIRY/D7PvKEUgzgnTG1r
	Q2fpfQ94tyUvGmsCsDP1E7shHTL1Vj6XRbRdNzDH1Z+4AH87S4RVMOrRMqPFkMFfj70tmgJtzwU/1
	wcjpwNtAoSQtFH7pWv30Wu3YSpl6upWJ2ZfZWCYpdpRA5JvEXtj2BLEiUxkUr1172FRzBCKbOx1k+
	VI0MR/7HLrN6bB56nbWZEI1f0K4BKaBFzw5d1TxnfkiUKCj6eEJD9Qfsi/KDzds/4wZXghQSf5tl7
	PYXHxx5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxh30-0000000GfrA-434o;
	Wed, 04 Mar 2026 07:53:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxh30-0000000Gfqw-1YRA
	for barebox@bombadil.infradead.org;
	Wed, 04 Mar 2026 07:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=MLjC3ladBv2hFDIr4qOF0RrWx90huGV7cu5kUqJInrU=; b=WhmTxUmeEaMbUWn3302qHuUNFG
	0Dav1li/Objfw6A7Nj5BA0l5sT8/SSkTgO28Pbn4C33W4YEQzidU8mNiDEf2USWriqs2OuJVstZgQ
	3NR6nU+eV4IA5FIBgwO3ByR/Tw/53fsjDZF93xoFMoJy33gqoft1ZH6lr/dls5/5B9EUXsQD1dZxl
	IuqYjjf3CBlonfLOaBEIwkoX+qeZpkMzI3fIQ60vJl8BZicivVQemyeoPOdyvqVOnZNGVgvtPixcz
	XzIU344w/+4UDByPT6BJW8fTWCqQYU7ySXqllDQjyptCZZvLCmJ7aRAhuuyA6CI024wzYZzL8Wex7
	oxvYZ8Xw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxh2x-000000043Su-2f2H
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:53:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxh2p-0006n6-A4; Wed, 04 Mar 2026 08:53:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxh2n-003g4Z-2P;
	Wed, 04 Mar 2026 08:53:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxh2p-0000000GMA8-05BX;
	Wed, 04 Mar 2026 08:53:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 04 Mar 2026 08:53:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-arm-setup-c-v2-1-d26af520ab03@pengutronix.de>
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
In-Reply-To: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772610803; l=1631;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ccKmPaG/SxrqOdUq+9s1cZLfL0I/3ZJlUGfla7QFQv0=;
 b=XhV1jJc5HOPOiml+IfHc0sd0uTO8y341aJ1NZl9xnGnSIM6zd9aMaN/wLh+e6Cl44yk8AFjng
 h6p1M4YFA7DBhGiiPx126qW9ev7cAdKOFfhv+p4iLNq9NnvxEWCcOs9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_075331_821445_53F9EBCA 
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ARM: setupc_32: remove relocation code from setup_c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All callers of setup_c() already call relocate_to_current_adr() or
relocate_to_adr() before setup_c(), so the relocation (memcpy) code
in setup_c is dead and also the sync_caches_for_execution() is unnecessary
Remove it and reduce setup_c to just clearing BSS.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/setupc_32.S | 27 +++++----------------------
 1 file changed, 5 insertions(+), 22 deletions(-)

diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
index 0134637f62..c2c3f97528 100644
--- a/arch/arm/cpu/setupc_32.S
+++ b/arch/arm/cpu/setupc_32.S
@@ -7,33 +7,16 @@
 .section .text.setupc
 
 /*
- * setup_c: copy binary to link address, clear bss and
- * continue executing at new address.
- *
- * This function does not return to the address it is
- * called from, but to the same location in the copied
- * binary.
+ * setup_c: clear bss
  */
 ENTRY(setup_c)
-	push	{r4, r5}
-	mov	r5, lr
-	bl	get_runtime_offset
-	subs	r4, r0, #0
-	beq	1f			/* skip memcpy if already at correct address */
-	ldr	r0,=_text
-	ldr	r2,=__bss_start
-	sub	r2, r2, r0
-	add	r1, r0, r4
-	bl	__memcpy			/* memcpy(_text, _text + offset, __bss_start - _text) */
-1:	ldr	r0, =__bss_start
+	mov	r4, lr
+	ldr	r0, =__bss_start
 	mov	r1, #0
 	ldr	r2, =__bss_stop
 	sub	r2, r2, r0
-	bl	__memset			/* clear bss */
-	bl	sync_caches_for_execution
-	sub	lr, r5, r4		/* adjust return address to new location */
-	pop	{r4, r5}
-	ret	lr
+	bl	__memset		/* clear bss */
+	ret	r4
 ENDPROC(setup_c)
 
 /*

-- 
2.47.3



