Delivery-date: Tue, 31 May 2022 10:30:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvxH5-00G2q6-0i
	for lore@lore.pengutronix.de; Tue, 31 May 2022 10:30:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvxH3-0002G3-KL
	for lore@pengutronix.de; Tue, 31 May 2022 10:30:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DKVYC1LS9rzEIv0h5c3NDbISWfnnqrL4Xw8yAiwTcgE=; b=ml601ajBm1D6Ep
	pFyhIahuAZ+upXFxp1Bt+sTf11+v/24SS7eqZBjn8rdbkSOwgHFDStF/XFVi8NOz6X/7Ih2+3Eea2
	xxkBS+uD9BGkzCQKLK28KkYFiO3MOpv/2e5hrtBWUlNKsRsnwZxd/89c2YpcLDFIvM7AVqHIXevaF
	Zu4obnoKvbDrywO8RLKoMZQE9G/RZZ+HpWIyiU3uzNVkzo7zzdUARqnMMmpS+VTxgekQ5tMM1nThF
	mYfVjFQZHUQHGIF+op9yKjTDFe2ki4xL9MY1tdO8I7tFHDgD1U4qX90QdpA3UYDI3rhYxrPtbeZ2m
	dbt5dtLB9aBVyVS8LScw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxFl-009pys-3C; Tue, 31 May 2022 08:29:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxFf-009pxO-NK
	for barebox@lists.infradead.org; Tue, 31 May 2022 08:29:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nvxFc-000228-Id; Tue, 31 May 2022 10:29:16 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nvxFd-005buY-82; Tue, 31 May 2022 10:29:15 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nvxFb-006wNT-1D; Tue, 31 May 2022 10:29:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 31 May 2022 10:29:14 +0200
Message-Id: <20220531082914.1654316-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_012919_831085_47E66D15 
X-CRM114-Status: GOOD (  12.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2] ARM: cpu: don't clobber sp when booted in HYP mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

arm_cpu_lowlevel_init() is usually called first thing and will ensure
barebox runs in SVC mode. If barebox is started in HYP mode instead,
like is the case on Raspberry Pi 2-3, it will do an exception return
into SVC mode, which will bank the previously used SP_Hyp and
restore SP_Svc that may not have been properly initialized by barebox.

This wasn't too bad so far, because arm_setup_stack was usually called
after arm_cpu_lowlevel_init, but with ENTRY_FUNCTION_WITHSTACK, SP is
initialized early on in the naked entry point with
arm_cpu_lowlevel_init() being called after that.

This can lead to spurious boot hangs in the Raspberry Pi 2 and 3 entry
points. Fix this by always saving sp to r3 and restoring it, like we do
with lr. This is safe to do, because r3 isn't clobbered by any
instruction in arm_cpu_lowlevel_init() and because it's an argument
register, callers have to expect it being overwritten by the callee.

Fixes: b267578d0567 ("ARM: rpi: use ENTRY_FUNCTION_WITHSTACK to prepare for ARM64 support")
Fixes: 41292192c01b ("ARM: safely switch from HYP to SVC mode if required")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add source code comment on why sp is saved (Sascha)
---
 arch/arm/cpu/lowlevel.S | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index 5a7dd3c2093f..960a92b78c0a 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -9,6 +9,8 @@
 ENTRY(arm_cpu_lowlevel_init)
 	/* save lr, since it may be banked away with a processor mode change */
 	mov	r2, lr
+	/* save sp, because possible HYP -> SVC transition below clobbers it */
+	mov	r3, sp
 
 #ifdef CONFIG_CPU_32v7
 	/* careful: the hyp install corrupts r0 and r1 */
@@ -77,6 +79,7 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
 
 	mcr	p15, 0, r12, c1, c0, 0		/* SCTLR */
 
+	mov	sp, r3
 	mov	pc, r2
 ENDPROC(arm_cpu_lowlevel_init)
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

