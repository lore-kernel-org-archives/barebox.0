Delivery-date: Wed, 19 Aug 2026 16:14:28 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwh3j-004t9b-35
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 16:14:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7638520240D
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 16:14:24 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UGzo6baU;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p9y+iRhpVmpyyyqVMxN18GMQrJsVN5JXyUJeWO1ycos=; b=UGzo6baUoMPQDca2owG7BO09OS
	7UcTXz3lC50uvKdOTe5F5Z4NLHSFW7r5mn/XpFa2YWT4XFVDi0Etx0Esy8hNCegRVwrlHBTFU1ZBE
	eqZXxQxTt5WZEOJElztFOXyZunXjPuMBoIW2nT5A1V/VG6ByPmW9N/N2k8RrsCiWyrleE2wdS7EkB
	JXoqTnGrV9omMU0Ae119eEhDJf/Xt8kSOsbESyYChW6kfy8yBHO+JMO5Rte8EAVLksxEunpfCj6yv
	hRqlLMIqo0gNrsSSgI1J4ccrIbmK+6Toag3QRmWB/RRGlA+nYW4iN8DpCv+oPJeZ9YcYPChRf/zap
	IjKf8NpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh2S-00000009wwb-2l3E;
	Wed, 19 Aug 2026 14:13:08 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh2N-00000009wtK-1cEL
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 14:13:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EB8DE20240F;
	Wed, 19 Aug 2026 16:12:55 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wwh2F-002JDv-2k;
	Wed, 19 Aug 2026 16:12:55 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wwh2F-00000007Ree-3L9C;
	Wed, 19 Aug 2026 16:12:55 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 19 Aug 2026 16:12:51 +0200
Subject: [PATCH 2/2] ARM64: setup_c: abi safe link register storage
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260819-next-v1-2-c1a1a8b44d02@pengutronix.de>
References: <20260819-next-v1-0-c1a1a8b44d02@pengutronix.de>
In-Reply-To: <20260819-next-v1-0-c1a1a8b44d02@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_071303_604892_04DABE40 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The ARM64 setup_c function saved the link register (x30) in
    the caller save register (x15). This is fragile as a constructor might use
    x15, thus save it on the stack just like ARM32 and RISC-V. Fixes: bb07ef11d6
    ("ARM/ARM64/RISC-V: pbl: add constructor support") Signed-off-by: Stefan
   Kerkmann <s.kerkmann@pengutronix.de> --- arch/arm/cpu/setupc_64.S | 7 ++++---
    1 file changed, 4 insertions(+) [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: j1aqr63w4ipi4k69xf9iuxufcxfybmhz
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 7638520240D

The ARM64 setup_c function saved the link register (x30) in the caller
save register (x15). This is fragile as a constructor might use x15,
thus save it on the stack just like ARM32 and RISC-V.

Fixes: bb07ef11d6 ("ARM/ARM64/RISC-V: pbl: add constructor support")
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/cpu/setupc_64.S | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index e3c6149e27..b1cfea47b1 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -10,10 +10,10 @@
  * setup_c: clear bss if not yet done
  */
 ENTRY(setup_c)
+	str x30, [sp, #-16]!
 	adr_l	x0, bss_cleared
 	ldr	w1, [x0]
 	cbnz	w1, 1f			/* skip if already done */
-	mov	x15, x30
 	adr_l	x0, __bss_start
 	mov	x1, #0
 	adr_l	x2, __bss_stop
@@ -25,8 +25,9 @@ ENTRY(setup_c)
 #ifdef __PBL__
 	bl	pbl_do_ctors
 #endif
-	mov	x30, x15
-1:	ret
+1:
+	ldr x30, [sp], #16
+	ret
 ENDPROC(setup_c)
 
 .section .data.bss_cleared

-- 
2.47.3



