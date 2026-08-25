Delivery-date: Tue, 25 Aug 2026 10:16:59 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wymL5-0070Mi-0G
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 10:16:59 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 543AE201B02
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 10:16:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=37dbvQbA;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66cRNGrXlART8LKKeQHEhH7vlcB9KEWq7o6sXEPwiYA=; b=37dbvQbAVP06JT
	dcPrTGtZRlSxdmzB8e+qJLEo3O2oG2AIUWaosC9YmXdia5LYK3YVNgPwaz3lejdCH7nC/oWdWwSGw
	5Vz2hjEyCIHUvMHJb7Wxs+CwQq4feNtxZc1TSAcQCsSIa3L1nheFrdi7DqsIRDeeXTP1VSo1n1pkI
	DfXnhSWPdQB93M5iL1jBr5tGlzzfWhsDa57A2jkjr59dpzEiEgiRQOgNINmp2n3Kb1Y0LoK66xy9i
	XUQitroVHpTLhpZ251sYqVus52XZyjiSgN0S2JltSYYAaML4u/xp0MHH9fYMoIxI8MbfGSKoIPIqV
	VvKEf6mErglfpF3rgmig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymJr-00000000MAF-1CQL;
	Tue, 25 Aug 2026 08:15:43 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymJn-00000000M8s-3cEG
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 08:15:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C2091201D0F;
	Tue, 25 Aug 2026 10:15:37 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wymJl-003Ezq-2D;
	Tue, 25 Aug 2026 10:15:37 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wymJl-00000005D0c-2QxL;
	Tue, 25 Aug 2026 10:15:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH v2 3/3] ARM: always call cache_invalidate_stale before enabling D-Cache
Date: Tue, 25 Aug 2026 10:13:17 +0200
Message-ID: <20260825081533.1240832-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260825081533.1240832-1-a.fatoum@pengutronix.de>
References: <20260825081533.1240832-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_011540_055066_B7021DF7 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  cache_invalidate_stale() needs to be executed prior to enabling
    the MMU. This was so far guaranteed by __barebox_arm_entry() invoking it
   prior to barebox_pbl_start(), which does mmu_early_enable(). As there's more
    boot time to be saved by calling mmu_early_enable() earlier, some SoC support
    has already started calling mmu_early_enable() prior to barebox_pbl_start().
    Should this be extended to ol [...] 
 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: br1nb1zk7pkdeqbe7rswt3xx6egdm4z8
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 543AE201B02

cache_invalidate_stale() needs to be executed prior to enabling the
MMU. This was so far guaranteed by __barebox_arm_entry() invoking it
prior to barebox_pbl_start(), which does mmu_early_enable().

As there's more boot time to be saved by calling mmu_early_enable()
earlier, some SoC support has already started calling mmu_early_enable()
prior to barebox_pbl_start(). Should this be extended to older CPUs like
Cortex-A9, we would introduce a regression as the data cache would not be
discarded prior to enabling it.

Avoid this failure mode altogether by having cache_invalidate_stale()
precede the code that depends on it having run.

This function invalidates both I-Cache and D-Cache, but only D-Cache is
interesting to us here as I-Cache has already been invalidated in
arm_cpu_lowlevel_init().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - point out that arm_cpu_lowlevel_init() invalidates (Lucas)
---
 arch/arm/cpu/armv7r-mpu.c  |  1 +
 arch/arm/cpu/entry_ll_32.S |  7 -------
 arch/arm/cpu/entry_ll_64.S |  7 -------
 arch/arm/cpu/mmu_32.c      |  2 ++
 arch/arm/cpu/uncompress.c  | 12 ++++++++++--
 5 files changed, 13 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/armv7r-mpu.c b/arch/arm/cpu/armv7r-mpu.c
index d494aec583ef..47e108133178 100644
--- a/arch/arm/cpu/armv7r-mpu.c
+++ b/arch/arm/cpu/armv7r-mpu.c
@@ -34,6 +34,7 @@
 
 void armv7r_cache_enable(void)
 {
+	cache_invalidate_stale();
 	set_cr(get_cr() | CR_C);
 }
 
diff --git a/arch/arm/cpu/entry_ll_32.S b/arch/arm/cpu/entry_ll_32.S
index 0763581fded4..981722ab7b05 100644
--- a/arch/arm/cpu/entry_ll_32.S
+++ b/arch/arm/cpu/entry_ll_32.S
@@ -12,12 +12,5 @@
 .section .text.__barebox_arm_entry
 ENTRY(__barebox_arm_entry)
 	mov	sp, r3
-	mov	r4, r0
-	mov	r5, r1
-	mov	r6, r2
-	bl	cache_invalidate_stale
-	mov	r0, r4
-	mov	r1, r5
-	mov	r2, r6
 	b	barebox_pbl_start
 ENDPROC(__barebox_arm_entry)
diff --git a/arch/arm/cpu/entry_ll_64.S b/arch/arm/cpu/entry_ll_64.S
index c80a23c6506d..71fb74b48f7e 100644
--- a/arch/arm/cpu/entry_ll_64.S
+++ b/arch/arm/cpu/entry_ll_64.S
@@ -12,12 +12,5 @@
 .section .text.__barebox_arm_entry
 ENTRY(__barebox_arm_entry)
 	mov	sp, x3
-	mov	x19, x0
-	mov	x20, x1
-	mov	x21, x2
-	bl	cache_invalidate_stale
-	mov	x0, x19
-	mov	x1, x20
-	mov	x2, x21
 	b	barebox_pbl_start
 ENDPROC(__barebox_arm_entry)
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index efdb867532f9..7b49643fd79b 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -613,6 +613,8 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 
 	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
 
+	cache_invalidate_stale();
+
 	if (get_cr() & CR_M)
 		return;
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 8f0d0f55f862..4d954b3eaaae 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -85,10 +85,18 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 #ifdef DEBUG
 	print_pbl_mem_layout(membase, endmem, barebox_base);
 #endif
-	if (IS_ENABLED(CONFIG_MMU))
+
+	/* Enable Caches to speed up the decompression below. */
+	if (IS_ENABLED(CONFIG_MMU)) {
 		mmu_early_enable(membase, memsize);
-	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
+	} else if (IS_ENABLED(CONFIG_ARMV7R_MPU)) {
 		armv7r_cache_enable();
+	} else {
+		/* Even if we don't use the cache right now, it may be used later.
+		 * Some CPUs may boot up with dirty cache lines, get rid of them.
+		 */
+		cache_invalidate_stale();
+	}
 
 	pr_debug("uncompressing barebox ELF at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
-- 
2.47.3



