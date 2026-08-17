Delivery-date: Mon, 17 Aug 2026 17:15:44 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvz3v-004AoW-0i
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 17:15:44 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 93AA7201B9A
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 17:15:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vqi1MvWq;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NCgjIdR0DN8XFbQud4e7+vvik+SzKgaCfIat1327Cig=; b=vqi1MvWqNpNElg7pDzSilt2M5Z
	N/xGy98U1tjikz3qX9PgU9vVsmfO3pqous91cnT8ulaX5WBwI0RuW+Xpeqlw+iF4RGnf1Tfdm2kUO
	e6e65NwAAn6WofFMqtE+3OvHiupGr+sJnFKOFuDK+I9f4rIAFCISwyQnhk3Yf305J54KL8vvY07z9
	b49pLFeexS0fk4HWYPOByloD5rZlTb4T1jBEb4YnfRuqnZ0DerR08M5lCSnW+qSj696w+WXULb+mV
	DSII/u1uehgHXmO7lKTPG46IN7fcEKaSTPC0s/wUas3YgW4Ug7YidRA3KXjxlEliIC0thWMvrUmBZ
	8CJ6uICg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu5-00000006G5o-1f6S;
	Mon, 17 Aug 2026 14:01:29 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu1-00000006G2d-4898
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 14:01:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 03742202210;
	Mon, 17 Aug 2026 16:01:19 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-001xrv-2T;
	Mon, 17 Aug 2026 16:01:18 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-0000000F1aR-2a6k;
	Mon, 17 Aug 2026 16:01:18 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 17 Aug 2026 16:01:18 +0200
Subject: [PATCH v3 7/8] ARM64: enable PBL_CLOCKSOURCE compatibility
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260817-feature-pbl-get-time-ns-v3-7-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_070126_179205_EC7384E3 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  All ARMv8-A cores implement the 64bit wide generic timer CNTPCT[1].
    If the architected timer driver is enabled the barebox PBL automatically
   is PBL_CLOCKSOURCE compatible. The setup of the PBL clocksource is implemented
    in the newly added PBL constructors which are called at the end of setup_c.
    There is one catch though: 
 
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
X-Stat-Signature: s65wy9a8y7tffu9aukfq3bok6gi6whkb
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
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
X-Rspamd-Queue-Id: 93AA7201B9A

All ARMv8-A cores implement the 64bit wide generic timer CNTPCT[1]. If
the architected timer driver is enabled the barebox PBL automatically is
PBL_CLOCKSOURCE compatible.

The setup of the PBL clocksource is implemented in the newly added PBL
constructors which are called at the end of setup_c. There is one catch
though:

The CNTFRQ_EL0 register[2] must be programmed by the bootrom, barebox or
the tf-a before the `arm_arch_timer_init` call. A later
re-initialization is also possible by calling `arm_arch_timer_init`
again.

[1]: See "ARM Architecture Reference Manual for A-profile architecture
(rev L.a)", chapter D12 "The Generic Timer in AArch64 state"
[2]: See "ARM Architecture Reference Manual for A-profile architecture
(rev L.a)", chapter D12.1.2.1 "Initializing and reading the system
effective frequency"

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/lib64/Makefile      |  3 ++-
 arch/arm/lib64/clocksource.c | 10 ++++++++++
 arch/arm/lib64/delay.c       | 19 -------------------
 drivers/clocksource/Kconfig  |  1 +
 4 files changed, 13 insertions(+), 20 deletions(-)

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index f28cf81ab3..218de68a54 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -10,4 +10,5 @@ obj-pbl-y   += runtime-offset.o
 obj-pbl-y   += setjmp.o
 obj-pbl-y   += reloc.o
 obj-y += io.o
-pbl-y	+= div0.o delay.o
+pbl-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER)	+= clocksource.o
+pbl-y	+= div0.o
diff --git a/arch/arm/lib64/clocksource.c b/arch/arm/lib64/clocksource.c
new file mode 100644
index 0000000000..f992be09b8
--- /dev/null
+++ b/arch/arm/lib64/clocksource.c
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <debug_ll.h>
+#include <asm/hardware/arm_architected_timer.h>
+
+__attribute__((constructor)) static void init_arch_clock(void)
+{
+	if (arm_arch_timer_init(0))
+		puts_ll("Failed to setup architected timer\n");
+}
diff --git a/arch/arm/lib64/delay.c b/arch/arm/lib64/delay.c
deleted file mode 100644
index 78eab33f8d..0000000000
--- a/arch/arm/lib64/delay.c
+++ /dev/null
@@ -1,19 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <asm/system.h>
-#include <clock.h>
-#include <common.h>
-
-void udelay(unsigned long us)
-{
-	unsigned long cntfrq = get_cntfrq();
-	unsigned long ticks = (us * cntfrq) / 1000000;
-	unsigned long start = get_cntpct();
-
-	while ((long)(start + ticks - get_cntpct()) > 0);
-}
-
-void mdelay(unsigned long ms)
-{
-	udelay(ms * 1000);
-}
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 5ee83d2b38..6cf68d8be4 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -79,6 +79,7 @@ config CLOCKSOURCE_ARM_ARCHITECTED_TIMER
 	bool "ARM architected timer clock source" if COMPILE_TEST
 	default y
 	depends on ARM && (CPU_64v8 || CPU_V7)
+	select PBL_CLOCKSOURCE if CPU_64v8
 
 config CLOCKSOURCE_ARM_GLOBAL_TIMER
 	bool "ARM global timer clock source" if COMPILE_TEST

-- 
2.47.3



