Delivery-date: Fri, 28 Aug 2026 21:28:39 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x02Fi-008GC3-2y
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 21:28:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6E23F2016CA
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 21:28:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AO8bTx1i;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4K6npm0EyCw7rDq+X3WGbYl9etcSaY86/j7BAzlspdg=; b=AO8bTx1iUNksJYyZS6NSrQuocw
	+Ratg21Q2TcSTnz+CXBhuygBhVCFIcCMrgExac+fjZu5CDLAVRtYKWGH+DiFrWhRHc/PGmJeqEq2d
	gyNim5G7E0sCUf2Db6lVXo/pHMW/WOhA3eOmZltBjkkYS7G8b7jEJc+0jmAQMhah4+4ElA3uG5/1y
	GL/5VRzPDcbSs5r4Vahkp9YEqAcUt9JiFXga/5FGrt8jeMV5kUNbUN/4o2bAaGNGttaKXnxXnd4eG
	dDxIHgvuf8rfBMkntKTpEJ+TrLebX2835mQkadan2rGJ53AZkKaylfSYlJvCW95nyquiGZHdqFt9/
	sLj4F+QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x02Ec-00000006MGu-0XgU;
	Fri, 28 Aug 2026 19:27:30 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x02EZ-00000006MGX-1h4P
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 19:27:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9FB6520220C;
	Fri, 28 Aug 2026 21:27:19 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x02ER-003ogE-1o;
	Fri, 28 Aug 2026 21:27:19 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x02ER-000000070DU-1wHb;
	Fri, 28 Aug 2026 21:27:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] fixup! ARM: always call cache_invalidate_stale before enabling D-Cache
Date: Fri, 28 Aug 2026 21:27:08 +0200
Message-ID: <20260828192715.1669104-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_122727_594320_D19717FC 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The invalidate was removed from __barebox_arm_entry, so it
    precedes MMU setup. This was missed for ARM64 and it happened even when the
    MMU was already enabled. Additionally, the invalidate was done even if MMU
    was already enabled. We have this check for barebox as EFI payload, where
    we shouldn't really do any cache maintenance ourselves, so move it after
   the [...] 
 
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
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: opg47cisefz8mdccaj1qstr6xo9f798n
X-Rspamd-Queue-Id: 6E23F2016CA

The invalidate was removed from __barebox_arm_entry, so it precedes MMU
setup. This was missed for ARM64 and it happened even when the MMU was
already enabled.

Additionally, the invalidate was done even if MMU was already enabled.
We have this check for barebox as EFI payload, where we shouldn't really
do any cache maintenance ourselves, so move it after the check.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 4 ++--
 arch/arm/cpu/mmu_64.c | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 7b49643fd79b..6821088c4340 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -613,11 +613,11 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 
 	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
 
-	cache_invalidate_stale();
-
 	if (get_cr() & CR_M)
 		return;
 
+	cache_invalidate_stale();
+
 	set_ttbr(ttb);
 
 	set_domain(DOMAIN_CLIENT);
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index bf44cc7bccf2..a49beac350d3 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -392,6 +392,8 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	if (get_cr() & CR_M)
 		return;
 
+	cache_invalidate_stale();
+
 	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
 
 	el = current_el();
-- 
2.47.3



