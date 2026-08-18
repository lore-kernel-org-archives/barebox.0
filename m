Delivery-date: Tue, 18 Aug 2026 14:10:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwIdu-004TvS-2i
	for lore@lore.pengutronix.de;
	Tue, 18 Aug 2026 14:10:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6CDE7201288
	for <lore@pengutronix.de>; Tue, 18 Aug 2026 14:10:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sDDymPvx;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qAuqAwsgEoNd/8STKk3QPKXWiVIZ07CCTLtUKc24Mpk=; b=sDDymPvxwNZLZO5obNo5EUP1JX
	oXqEb+sIHKrO9P8ORETat97rDPLsdxBjkgeWZTmyVR8n31GDNcwLuaDDFvm/cx5+A5NBXxTwgJGVl
	eY2dfRGuLThrlcZk+86BzLQ9nInFLnKWCcvWN4bim/zBJYzNgtSUQZWHyCInkHIxdEq0H1KhsYr3J
	UDj9uMnOFhl6vR48acW8LE/A7h69IiWum+KevUR1f1nnlyvYiyT0hMjgWoqbPl/+ovx7iFDqjkKnM
	H0kKIUW5cSt8pp0kYhiZxlJnigW/FwWlSzuUnPR+tbpk1JTxBAjwVCjDsv+aTjKXewigc7B8zPg91
	ucLYk5wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwIcZ-00000007tdK-3mLv;
	Tue, 18 Aug 2026 12:08:47 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwIcW-00000007tcy-3Nzw
	for barebox@lists.infradead.org;
	Tue, 18 Aug 2026 12:08:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 73325201021;
	Tue, 18 Aug 2026 14:08:42 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wwIcU-0027kg-1F;
	Tue, 18 Aug 2026 14:08:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wwIcU-00000001Roz-1BlI;
	Tue, 18 Aug 2026 14:08:42 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	"open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Subject: [PATCH] amend! ARM/ARM64/RISC-V: pbl: add constructor support
Date: Tue, 18 Aug 2026 14:08:19 +0200
Message-ID: <20260818120818.345207-2-s.kerkmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-2-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-2-9874c1438855@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_050845_004048_70B9A4D3 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ARM/ARM64/RISC-V: pbl: add constructor support This commit
    allows running functions marked with __attribute__((constructor))[1] automatically
    after the C environment is setup in setup_c, which most likely will be early
    setup code shared across SoC [...] 
 
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
X-Stat-Signature: zywoe38my55wucoydcd49yyho7g49oip
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 6CDE7201288

ARM/ARM64/RISC-V: pbl: add constructor support

This commit allows running functions marked with
__attribute__((constructor))[1] automatically after the C environment is
setup in setup_c, which most likely will be early setup code shared
across SoCs/Arches in the PBL.

The ARM64 setup_c function saved the link register (x30) in the caller
save register (x15). This is fragile as a constructor might use x15,
thus save it on the stack just like ARM32 and RISC-V.

[1]: https://gcc.gnu.org/onlinedocs/gcc-16.2.0/gcc/Common-Attributes.html#index-constructor

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



