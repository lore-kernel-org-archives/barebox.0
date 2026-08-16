Delivery-date: Sun, 16 Aug 2026 20:01:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfAy-003pgT-22
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:01:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D9AD9201BAA
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:01:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oeQhMv2f;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1dcn9gXxpJi4rHzbBEW0mzHh5CnOsvIgk1hhTn0M5Vw=; b=oeQhMv2f7gyd9Tc1k9e84cWG7M
	eZt0QfNL0JtCamEUhOETsqg/jmfFwfLmSYOsQZ9n6yPl/olxyMo57Fk/KwVvUOf7Y+ejlK9l70YIY
	bWowp5cpLnj9D/Tvmg5T3Img9VRuLVAzwkuckQoZwxIWvdo8+uCjJvbpY5SK7XoRqtTTIJK53P/SQ
	BECdw6L0ySHPuMR+gjbJg9NR3SCIQkD2afWNYRTp80XnUehKP0a5sDaM6J8Pp/gq+1AiNHFa1vJpq
	Buc5/f0LbjVlbwwdCtttFFPJlwLboOQr+M4Y3334HtjGy6ew6DAA8XmxuEfS7CQYSgwEEDJnwQRyN
	2RK8zKlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf66-00000004wg6-28xB;
	Sun, 16 Aug 2026 17:56:38 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf63-00000004wdJ-0l3R
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 17:56:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 87573201CD8;
	Sun, 16 Aug 2026 19:56:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-001oeN-19;
	Sun, 16 Aug 2026 19:56:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-0vG4;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:23 +0200
Subject: [PATCH 03/27] ARM: cache: drive the XSC3 cache with the ARMv4
 functions
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-3-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=3828;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lByhfUD5dGcgIWVB/AJyBjZDZ8xjOjBdKjH5aXEvYWk=;
 b=rL7ifkmirv+7LMox6QhUbvKaOfRmG7Dr4rQ5GGWkh9xKL6sLFBBuMEmUFFNEHfe3fS9951DKh
 SQv/Dn1IEA/DHOHjoyav7qdaczJjk8KxCAZOFTPgE3Pg8eD2Xzhm1v8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_105635_383481_8EE9B057 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  XSC3 reports ARMv5TE and is dispatched to the ARMv5 cache
   functions accordingly, where v5_mmu_cache_flush() cleans the D-cache with
   1: mrc p15, 0, r15, c7, c14, 3 @ test,clean,invalidate bne 1b XSC3 does not
    implement that operation - Linux' xsc3_flush_kern_cache_all() uses a set/way
    loop instead - so the condition flags never come back with the cache reported
    clean and the loop does not end [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: fzux8k5qfkqaajtg7end8xtzhkdt4gzs
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D9AD9201BAA

XSC3 reports ARMv5TE and is dispatched to the ARMv5 cache functions
accordingly, where v5_mmu_cache_flush() cleans the D-cache with

	1:	mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate
		bne	1b

XSC3 does not implement that operation - Linux' xsc3_flush_kern_cache_all()
uses a set/way loop instead - so the condition flags never come back with
the cache reported clean and the loop does not end. The board hangs in
sync_caches_for_execution(), between the PBL and barebox proper, before
anything has been printed.

The ARMv4 functions flush by reading through the cache and use nothing
XScale is missing, so send XSC3 there.

This only shows up in a build that has another ARMv5 core in it, which is
why the PXA board defconfigs are unaffected and multi_v5_v6_defconfig
hangs. On its own CONFIG_CPU_XSC3 selects CPU_32v4T and no other CPU_32v*,
so ARM_MULTIARCH is never defined, cpu_architecture() is the compile time
constant CPU_ARCH_ARMv4T, and the same functions are reached by accident.
Add an ARM926 or an ARM1176 to the config and the runtime detection takes
over, correctly returns ARMv5TE, and picks code the core cannot run.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache_32.c            | 31 +++++++++++++++++++++++++++++++
 arch/arm/include/asm/system_info.h |  9 +++++++++
 2 files changed, 40 insertions(+)

diff --git a/arch/arm/cpu/cache_32.c b/arch/arm/cpu/cache_32.c
index 0ac50c4d9a..e82cd212d2 100644
--- a/arch/arm/cpu/cache_32.c
+++ b/arch/arm/cpu/cache_32.c
@@ -39,10 +39,35 @@ DEFINE_CPU_FNS(v5)
 DEFINE_CPU_FNS(v6)
 DEFINE_CPU_FNS(v7)
 
+/*
+ * XSC3 reports ARMv5TE, and it is - but its cache is not the one the ARMv5
+ * code drives. v5_mmu_cache_flush() cleans the D-cache with the ARM926
+ * test-and-clean operation (c7, c14, 3), which XSC3 does not implement, so
+ * the loop waiting for it to report the cache clean never ends. The ARMv4
+ * code flushes by reading through the cache instead and uses nothing XScale
+ * is missing, so send these cores there.
+ *
+ * This only ever comes up in a build that has another ARMv5 core in it. On
+ * its own CPU_XSC3 selects CPU_32v4T and no other CPU_32v*, which leaves
+ * cpu_architecture() a compile time ARMv4T and lands on the same functions
+ * by accident.
+ */
+static struct cache_fns *cache_fns_by_core(void)
+{
+	if (IS_ENABLED(CONFIG_CPU_32v4T) && cpu_is_xsc3())
+		return &cache_fns_armv4;
+
+	return NULL;
+}
+
 static struct cache_fns *cache_functions(void)
 {
 	static struct cache_fns *cache_fns;
 
+	if (cache_fns)
+		return cache_fns;
+
+	cache_fns = cache_fns_by_core();
 	if (cache_fns)
 		return cache_fns;
 
@@ -119,6 +144,12 @@ void __mmu_cache_flush(void)
  */
 void arm_early_mmu_cache_flush(void)
 {
+	/* see cache_fns_by_core() */
+	if (IS_ENABLED(CONFIG_CPU_32v4T) && cpu_is_xsc3()) {
+		v4_mmu_cache_flush();
+		return;
+	}
+
 	switch (arm_early_get_cpu_architecture()) {
 #ifdef CONFIG_CPU_32v4T
 	case CPU_ARCH_ARMv4T:
diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
index 5a84fde75b..1fde203063 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -59,6 +59,9 @@
 #define CPU_IS_PXA270		0x69054110
 #define CPU_IS_PXA270_MASK	0xfffff7f0
 
+#define CPU_IS_XSC3		0x69056000
+#define CPU_IS_XSC3_MASK	0xffffe000
+
 #define cpu_is_arm(core) ((read_cpuid_id() & CPU_IS_##core##_MASK) == CPU_IS_##core)
 
 #ifdef CONFIG_CPU_32v4T
@@ -80,6 +83,12 @@
 #define cpu_is_pxa270() (0)
 #endif
 
+#ifdef CONFIG_CPU_XSC3
+#define cpu_is_xsc3()	cpu_is_arm(XSC3)
+#else
+#define cpu_is_xsc3()	(0)
+#endif
+
 #ifdef CONFIG_CPU_32v5
 #ifdef ARM_ARCH
 #define ARM_MULTIARCH

-- 
2.47.3



