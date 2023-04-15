Delivery-date: Sat, 15 Apr 2023 10:36:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnbOY-004FIW-U5
	for lore@lore.pengutronix.de; Sat, 15 Apr 2023 10:36:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnbOY-0004an-Jk
	for lore@pengutronix.de; Sat, 15 Apr 2023 10:36:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rq0CQ+cQjSi1fwAJSbvBTSux1muAgWsSUAOTHCzHD3U=; b=CfqoD41mR066yOwuBt0OtfvH8E
	Z4HtNSMK3csAl2tLwYIvf+vuU/0xJLdV3sU1MPksJg6Vmzurp1ttNfghm5WAfk7Uzk8w+wn9J0ll0
	7weIiiZmaRx4BxZsI15CvFUDFVhyQThhjEhJjng9F7U48P2SXV1R1YRob2Kwbd19K0UCDfwEHxOGX
	nfwQ+oqAGsLvP3pReDp01pWLAOyIShh04hmsH2CYkzEWbio4iDXGuAQ2aLxYkR81dp51Z6EqxHeUf
	gNLv8OU5g4ekSGEI2wnqE32kiTdsfj6i0G0QBagWRBLCPenS+tQt17KVrdIbx/Tkuv94V1DBhyIYi
	6xgGFzSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnbN7-00Be59-0j;
	Sat, 15 Apr 2023 08:35:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnbN3-00Be4I-2z
	for barebox@lists.infradead.org;
	Sat, 15 Apr 2023 08:34:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnbMv-0004Jc-Ro; Sat, 15 Apr 2023 10:34:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnbMv-00BNry-5X; Sat, 15 Apr 2023 10:34:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnbMu-00CseF-Iy; Sat, 15 Apr 2023 10:34:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 15 Apr 2023 10:34:47 +0200
Message-Id: <20230415083447.3069903-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230415_013457_965333_47854DC9 
X-CRM114-Status: GOOD (  12.62  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM64: setupc: don't invoke KASAN before relocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Plain memset and memcpy are checked by KASAN if enabled before calling
unchecked __memset and __memcpy respectively.

KASAN uses a kasan_initialized variable as first condition in its memory
check, but that only works after relocation. For that reason, we must
take care not to invoke KASAN before then. This was done for ARM32, but
was missing for ARM64. Do so now.

This fixes an annoying issue where network booting a KASAN-enabled barebox
twice in a row would fail: The first happened to work because the memory
kasan_initialized was placed at was zero. The second would behave
erratically, because BSS initialization would silently fail and barebox
static storage would then be initialized with the final values of the
previous run.

Fixes: 932ef7a02e2f ("ARM: Add KASan support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I wondered if there's a way to print a KASAN error that early, but it's
not easy. Calling even global_variable_offset() in kasan_report caused
infinite recursion, despite use of __no_sanitize_address. Printing
unconditionally could be a way around this.
---
 arch/arm/cpu/setupc_64.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index d64281c148fc..f38f893be90b 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -14,7 +14,7 @@ ENTRY(setup_c)
 	mov	x1, #0
 	ldr	x2, =__bss_stop
 	sub	x2, x2, x0
-	bl	memset			/* clear bss */
+	bl	__memset		/* clear bss */
 	mov	x30, x15
 	ret
 ENDPROC(setup_c)
@@ -63,7 +63,7 @@ ENTRY(relocate_to_adr)
 	sub	x19, x19, x1		/* sub address where we are actually running */
 	add	x19, x19, x0		/* add address where we are going to run */
 
-	bl	memcpy			/* copy binary */
+	bl	__memcpy		/* copy binary */
 
 	bl	sync_caches_for_execution
 
-- 
2.39.2



