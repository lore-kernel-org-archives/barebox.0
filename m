Delivery-date: Thu, 26 Feb 2026 13:24:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvaPR-005sfY-0b
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 13:24:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvaPR-0001eb-Eg
	for lore@pengutronix.de; Thu, 26 Feb 2026 13:24:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mzuEzn4SpLUEh7HHnuqTvQb4+32h9+YcDmp1hIfxBzM=; b=LDEKjx1IrQbDpJs4Pas/aSbxJh
	LVGK1vDIDssayBbp8ox42Fnnd76WMi3Msxo/gLfA10jDAggvdJHM2aCv0mpDppSIDEkjKvRviQlNy
	79tiLyn6uFNQN04gss9QrZh2mLpCEjxOB4Z7gPMZkHzwzz62GmleFF209eRn+ePgta6bF3Sx8wiCV
	zkdcv71nBI6bXg/5N+vk3wHdlwIw/8z7C5CkI9XHozgKpeDS2zXKExFuwYdgyqtKERBREaFoGvzba
	6HDbY7THzJMr/KSXDuN6YOmElQVg818KflaVGxDlsYsgb6/7l/qumkcODtLLJ0PsXyDNa0VsYT/aY
	TUBxZ+fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaP1-000000066yj-036h;
	Thu, 26 Feb 2026 12:23:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaOy-000000066yK-2eYj
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 12:23:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaOw-0001Sm-UE; Thu, 26 Feb 2026 13:23:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaOv-002jCW-0n;
	Thu, 26 Feb 2026 13:23:30 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaOw-0000000A78X-2At7;
	Thu, 26 Feb 2026 13:23:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Feb 2026 13:23:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-arm-setup-c-v1-2-f52fe8ee81ba@pengutronix.de>
References: <20260226-arm-setup-c-v1-0-f52fe8ee81ba@pengutronix.de>
In-Reply-To: <20260226-arm-setup-c-v1-0-f52fe8ee81ba@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772108610; l=2085;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/K9YU2sKUC4mlzuVVH95caxyvXIW/maV8y9aPz7y1LI=;
 b=g+UEo0gpv++iBSVr5AP+jw5zykaQsgdG/jvhZVoHbLKKqUtDkMNnWOnlGFfMjMDbLd9mmts1e
 xtz9lmRTq7vBduQwFmD0dfM7of9loV0UD9MjBiw6L7adLU1zPmrmGrY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_042332_677474_500028CD 
X-CRM114-Status: GOOD (  10.14  )
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
Subject: [PATCH 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a bss_cleared variable that is set after the first call to
setup_c(). On subsequent calls, the BSS clear is skipped to avoid
wiping already-initialized data.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/common.c    |  2 ++
 arch/arm/cpu/setupc_32.S | 10 +++++++++-
 arch/arm/cpu/setupc_64.S | 10 ++++++++--
 3 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index e86c89f808..40742894c2 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -77,6 +77,8 @@ int __pure cpu_architecture(void)
 }
 #endif
 
+int bss_cleared;
+
 extern int __boot_cpu_mode;
 
 int boot_cpu_mode(void)
diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
index c2c3f97528..d923a8f621 100644
--- a/arch/arm/cpu/setupc_32.S
+++ b/arch/arm/cpu/setupc_32.S
@@ -7,16 +7,24 @@
 .section .text.setupc
 
 /*
- * setup_c: clear bss
+ * setup_c: clear bss if not yet done
  */
 ENTRY(setup_c)
+	ldr	r0, =bss_cleared
+	ldr	r1, [r0]
+	cmp	r1, #0
+	bne	1f			/* skip if already done */
 	mov	r4, lr
 	ldr	r0, =__bss_start
 	mov	r1, #0
 	ldr	r2, =__bss_stop
 	sub	r2, r2, r0
 	bl	__memset		/* clear bss */
+	ldr	r0, =bss_cleared
+	mov	r1, #1
+	str	r1, [r0]		/* mark bss cleared */
 	ret	r4
+1:	ret	lr
 ENDPROC(setup_c)
 
 /*
diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index fd95187a04..8262deb512 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -7,17 +7,23 @@
 .section .text.setupc
 
 /*
- * setup_c: clear bss
+ * setup_c: clear bss if not yet done
  */
 ENTRY(setup_c)
+	adr_l	x0, bss_cleared
+	ldr	w1, [x0]
+	cbnz	w1, 1f			/* skip if already done */
 	mov	x15, x30
 	adr_l	x0, __bss_start
 	mov	x1, #0
 	adr_l	x2, __bss_stop
 	sub	x2, x2, x0
 	bl	__memset		/* clear bss */
+	adr_l	x0, bss_cleared
+	mov	w1, #1
+	str	w1, [x0]		/* mark bss cleared */
 	mov	x30, x15
-	ret
+1:	ret
 ENDPROC(setup_c)
 
 /*

-- 
2.47.3



