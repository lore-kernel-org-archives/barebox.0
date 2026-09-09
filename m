Delivery-date: Wed, 09 Sep 2026 13:44:05 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4Gij-000BDA-1q
	for lore@lore.pengutronix.de;
	Wed, 09 Sep 2026 13:44:05 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZE0waD5s;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 147B42058FB
	for <lore@pengutronix.de>; Wed, 09 Sep 2026 13:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LS/d2keAMrsr82TEUvzOuFBLl9j4xm9vWnt0RzlIyew=; b=ZE0waD5slXEQeZtBGduAxd2NM+
	T3vqKbLpXpMAsvJen2r7klQE3rso30xO0sJZ2F6jSjCjo49BuAG2P1JOfqRDK+hxwmRtNa0+NSC0G
	jC8iVAMCq/kI3h16nmUe+uLkl+FlI4BsP91HUD1wHvKyCa/ZEQ4o8k81aO/m2afulE+cxtXH7L0UN
	ovkzP+uiI3LbXgtT3OkpfX5qBGlBbh7O4HuSF9aeH/m06EaCOHjREbfwNMYhXGLAiyACduNpsLDTm
	cyRXnE+K0RRve4FCKDeHlp8/NDMpAQAnANoAyuLAQeX9WgR8KxYwYtLNQ1im2udvo9R4WTzFB2ySq
	o/jMmE9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GhW-0000000Bbsw-1wfC;
	Wed, 09 Sep 2026 11:42:50 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GhT-0000000Bbs5-0vJ7
	for barebox@lists.infradead.org;
	Wed, 09 Sep 2026 11:42:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 800E62058FB;
	Wed, 09 Sep 2026 13:42:45 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4GhR-0005Dn-1P;
	Wed, 09 Sep 2026 13:42:45 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4GhR-0000000HCoq-3Wm7;
	Wed, 09 Sep 2026 13:42:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 2/2] ARM64: fall back to reading the counter directly in the PBL udelay()
Date: Wed,  9 Sep 2026 13:42:39 +0200
Message-ID: <20260909114242.4099220-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260909114242.4099220-1-a.fatoum@pengutronix.de>
References: <20260909114242.4099220-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_044247_413880_35E07D45 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since commit 67531b21addc ("ARM64: enable PBL_CLOCKSOURCE
   compatibility"), udelay() in PBL expects a clocksource to have been registered.
    That happens from a constructor in setup_c(), but i.MX93 alrea [...] 
 
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
X-Rspamd-Server: mx1
X-Stat-Signature: yonxkix6jf9o91haf7bkwkbjrdzjfuib
X-Rspamd-Queue-Id: 147B42058FB
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Since commit 67531b21addc ("ARM64: enable PBL_CLOCKSOURCE compatibility"),
udelay() in PBL expects a clocksource to have been registered. That
happens from a constructor in setup_c(), but i.MX93 already polls the
ELE mailbox from its unrelocated lowlevel init before that and now
panics with "No PBL clocksource has been initialized".

Let's override udelay(), get_time_ns() and is_timeout() in the ARM64
PBL: As long as no clocksource is registered, udelay() reads the counter
directly like it used to and time stands still, so timeouts never fire.
The check happens in assembly without touching the stack and
current_clock is moved to .data, so this is usable from image entry on,
before BSS is cleared.

Fixes: 67531b21addc ("ARM64: enable PBL_CLOCKSOURCE compatibility")
Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib64/Makefile                 |  1 +
 arch/arm/lib64/clocksource-registered.S | 16 +++++++++
 arch/arm/lib64/delay.c                  | 47 +++++++++++++++++++++++++
 common/clock.c                          |  4 ++-
 include/clock.h                         |  5 +++
 5 files changed, 72 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/lib64/clocksource-registered.S
 create mode 100644 arch/arm/lib64/delay.c

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index 218de68a5468..a3b0b00f3024 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -11,4 +11,5 @@ obj-pbl-y   += setjmp.o
 obj-pbl-y   += reloc.o
 obj-y += io.o
 pbl-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER)	+= clocksource.o
+pbl-$(CONFIG_PBL_CLOCKSOURCE)	+= delay.o clocksource-registered.o
 pbl-y	+= div0.o
diff --git a/arch/arm/lib64/clocksource-registered.S b/arch/arm/lib64/clocksource-registered.S
new file mode 100644
index 000000000000..242643926388
--- /dev/null
+++ b/arch/arm/lib64/clocksource-registered.S
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+/*
+ * Returns nonzero once init_clock() has set current_clock. Reads it
+ * PC-relatively and uses no stack, so it works before relocation,
+ * before BSS is cleared and before a stack is set up. Clobbers x0 only.
+ */
+.section .text.clocksource_registered, "ax"
+ENTRY(clocksource_registered)
+	ldr_l	x0, current_clock
+	cmp	x0, #0
+	cset	w0, ne
+	ret
+ENDPROC(clocksource_registered)
diff --git a/arch/arm/lib64/delay.c b/arch/arm/lib64/delay.c
new file mode 100644
index 000000000000..1ff770ca5450
--- /dev/null
+++ b/arch/arm/lib64/delay.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <asm/system.h>
+#include <clock.h>
+
+/* Uses only architected timer system registers, so usable before relocation */
+static __always_inline void arch_timer_udelay(unsigned long us)
+{
+	unsigned long cntfrq = get_cntfrq();
+	unsigned long ticks = (us * cntfrq) / 1000000;
+	unsigned long start = get_cntpct();
+
+	while ((long)(start + ticks - get_cntpct()) > 0)
+		;
+}
+
+/*
+ * Until a clocksource is registered, read the counter directly, which
+ * works as soon as CNTFRQ_EL0 is programmed, even before relocation.
+ */
+void __prereloc udelay(unsigned long us)
+{
+	if (clocksource_registered())
+		clocksource_current_udelay(us);
+	else
+		arch_timer_udelay(us);
+}
+
+/*
+ * Until a clocksource is registered, time stands still and timeouts
+ * never fire, so polls wait indefinitely instead of panicking.
+ */
+uint64_t __prereloc get_time_ns(void)
+{
+	if (clocksource_registered())
+		return clocksource_current_get_time_ns();
+
+	return 0;
+}
+
+int __prereloc is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+{
+	if (clocksource_registered())
+		return clocksource_current_is_timeout(start_ns, time_offset_ns);
+
+	return 0;
+}
diff --git a/common/clock.c b/common/clock.c
index 0f2f47ed5399..67c02f369a6c 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -35,7 +35,9 @@ static struct clocksource dummy_cs = {
 	.priority = -1,
 };
 
-static struct clocksource *current_clock = IN_PROPER ? &dummy_cs : NULL;
+/* in .data, so clocksource_registered() reads NULL even before BSS is cleared */
+struct clocksource *current_clock __section(.data) =
+	IN_PROPER ? &dummy_cs : NULL;
 
 static int dummy_csrc_warn(void)
 {
diff --git a/include/clock.h b/include/clock.h
index ea87bfd2020a..88de5deb47b9 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -53,6 +53,11 @@ static inline int is_timeout_interruptible(uint64_t start_ns,
 
 void arm_architected_timer_udelay(unsigned long us);
 
+extern struct clocksource *current_clock;
+
+/* implemented in assembly, so usable before relocation and stack setup */
+bool clocksource_registered(void);
+
 void ndelay(unsigned long nsecs);
 void udelay(unsigned long usecs);
 void mdelay(unsigned long msecs);
-- 
2.47.3



