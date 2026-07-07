Delivery-date: Tue, 07 Jul 2026 10:08:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wh0qt-00198t-2N
	for lore@lore.pengutronix.de;
	Tue, 07 Jul 2026 10:08:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8BBE5202597
	for <lore@pengutronix.de>; Tue, 07 Jul 2026 10:08:23 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sM2eWAa7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FoIECzV9Z1J/DyCPhySNyFkSg1C8twKWuC21T3sFhJw=; b=sM2eWAa7HqhYHTznA9/iDVYEXA
	56SBG9gMz3d27XqmM+QF3MFzv6RQ/ejnoEWLn3NDFhUCfp8cNiv7UD5D7CYLK7CQjNq0PwMc2geL5
	4cJF48fAJ29qr729B8h89h3RVT7aHVWAH5gI6Js7j1y3s9ARNoemQ3BEROsF93hcRC0cnLjU0qJ99
	iUhaOeQAWbhgjPlsey3fW3Bf9ciqAWVYxbH+hRbXIurS5gTf/diDQLZFG9FUBVQ1UmZkMXzOQpPGx
	vKF0a78VJrPa38zi7kQWEKFP+YDsm7d5BaiYcG6wYu9Z/kjzNAOjz5CMnl2sl1QY+DZI+R8Ul8s3o
	kS+gUhLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0pq-0000000EPqt-1i1N;
	Tue, 07 Jul 2026 08:07:18 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0pi-0000000EPo6-0pe6
	for barebox@lists.infradead.org;
	Tue, 07 Jul 2026 08:07:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 41A96201CD7;
	Tue, 07 Jul 2026 10:07:08 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wh0pg-000XYf-0W;
	Tue, 07 Jul 2026 10:07:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wh0pg-00000005Cmo-0DKd;
	Tue, 07 Jul 2026 10:07:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/3] ARM: cpu: suppress arm_early_mmu_cache_invalidate if dcache enabled
Date: Tue,  7 Jul 2026 10:05:27 +0200
Message-ID: <20260707080707.997606-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_010710_383556_89CF7AAD 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox built as EFI payload on ARM invalidates the data caches
    inside barebox_arm_entry(), which may lead to memory corruption. Generally,
    calling arm_early_mmu_cache_invalidate() while the caches are enabled is
   a bad idea, so add a function that protects against that and use it in common
    code. 
 
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
X-Spamd-Result: default: False [-5.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8BBE5202597
X-Stat-Signature: ciifab5c5q16h6zkm5ky16nn3zdj9bpm

barebox built as EFI payload on ARM invalidates the data caches inside
barebox_arm_entry(), which may lead to memory corruption.

Generally, calling arm_early_mmu_cache_invalidate() while the caches are
enabled is a bad idea, so add a function that protects against that and
use it in common code.

Fixes: 742e78976dd4 ("ARM64: add optional EFI stub")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/common.c        | 16 ++++++++++++++++
 arch/arm/cpu/entry_ll_32.S   |  2 +-
 arch/arm/cpu/entry_ll_64.S   |  2 +-
 arch/arm/include/asm/cache.h |  3 +++
 4 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index adb5d6a02bc8..d41da73d7e83 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -37,6 +37,22 @@ void sync_caches_for_execution(void)
 	arm_early_mmu_cache_flush();
 }
 
+/**
+ * dcache_invalidate_stale - invalidate data cache prior to enabling it
+ *
+ * Some SoCs can come up with invalid entries, but with the valid bit set.
+ * This function discards them, as that would lead to memory corruption
+ * otherwise.
+ */
+void dcache_invalidate_stale(void)
+{
+	/* if caches are already enabled, don't cause data loss */
+	if (get_cr() & CR_C)
+		return;
+
+	arm_early_mmu_cache_invalidate();
+}
+
 void pbl_barebox_break(void)
 {
 	__asm__ __volatile__ (
diff --git a/arch/arm/cpu/entry_ll_32.S b/arch/arm/cpu/entry_ll_32.S
index 0d4c47c1c870..eb1793b54e66 100644
--- a/arch/arm/cpu/entry_ll_32.S
+++ b/arch/arm/cpu/entry_ll_32.S
@@ -15,7 +15,7 @@ ENTRY(__barebox_arm_entry)
 	mov	r4, r0
 	mov	r5, r1
 	mov	r6, r2
-	bl	arm_early_mmu_cache_invalidate
+	bl	dcache_invalidate_stale
 	mov	r0, r4
 	mov	r1, r5
 	mov	r2, r6
diff --git a/arch/arm/cpu/entry_ll_64.S b/arch/arm/cpu/entry_ll_64.S
index 5eb6efed5baf..3404f6d05802 100644
--- a/arch/arm/cpu/entry_ll_64.S
+++ b/arch/arm/cpu/entry_ll_64.S
@@ -15,7 +15,7 @@ ENTRY(__barebox_arm_entry)
 	mov	x19, x0
 	mov	x20, x1
 	mov	x21, x2
-	bl	arm_early_mmu_cache_invalidate
+	bl	dcache_invalidate_stale
 	mov	x0, x19
 	mov	x1, x20
 	mov	x2, x21
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index ea78ae123aec..64f369f865db 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -26,6 +26,9 @@ static inline void icache_invalidate(void)
 #endif
 }
 
+
+void dcache_invalidate_stale(void);
+
 void arm_early_mmu_cache_flush(void);
 void arm_early_mmu_cache_invalidate(void);
 
-- 
2.47.3



