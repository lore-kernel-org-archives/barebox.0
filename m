Delivery-date: Mon, 17 Aug 2026 17:19:20 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvz7Q-004ArN-0L
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 17:19:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 57A55201B9A
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 17:19:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PmaiwVyI;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x4aMveR2VIQkLeNpBp9+k67W22RxSePlpUQhoK6rBj4=; b=PmaiwVyITP7jtN+y127mDJLDWA
	8F34VsCMkbUh/9zSvnJXmqaNRAWt4yk5gdeVpJlmgViWHHlISbKBFjDt1jvGcPvsl7LounggHj0pc
	sEImXp/xrhmXaE3/GEnscZWaza61Bt2Bty0wDBoY6A2EhEBlNFDdckRNCgfSnEW5n+/3EGJLzICx5
	BCiPKb4+dP1MPi7lsTFxGzRsSOhbNJkB3588jIwaFo5OjBN8j+rUmNEZsGpzeMix+yti7UFla3LBg
	D5GC/CPUVBa1r+REAg4lszjPxK36WeShl8JpDRSw9JVPefZOPDhjbgc6GTOECRwECrOwkf+t2pfCP
	Rm56FpEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu5-00000006G5v-2JX6;
	Mon, 17 Aug 2026 14:01:29 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu2-00000006G2e-03jJ
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 14:01:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 007D820220C;
	Mon, 17 Aug 2026 16:01:19 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-001xru-2S;
	Mon, 17 Aug 2026 16:01:18 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-0000000F1aR-2X2S;
	Mon, 17 Aug 2026 16:01:18 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 17 Aug 2026 16:01:15 +0200
Subject: [PATCH v3 4/8] drivers: arm_architected_timer: refactor for pbl
 compatibility
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260817-feature-pbl-get-time-ns-v3-4-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_070126_211613_FF2F1DCA 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  All ARMv8-A cores implement the 64bit wide generic timer CNTPCT[1].
    Thus the driver is the candidate for all AARCH64 SoCs to implement PBL_CLOCKSOURCE
    compatibilty. There is one catch though: the CNTFRQ_EL0 register[2] must
   be programmed by the bootrom, barebox or the tf-a before the `arm_arch_timer_init`
    call or the clocksource setup will return with -ENODEV. A [...] 
 
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
X-Stat-Signature: 8hafpc9yzntcppgbc9mfypznkt5g1f3m
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: 57A55201B9A

All ARMv8-A cores implement the 64bit wide generic timer CNTPCT[1]. Thus
the driver is the candidate for all AARCH64 SoCs to implement
PBL_CLOCKSOURCE compatibilty.

There is one catch though: the CNTFRQ_EL0 register[2] must be programmed
by the bootrom, barebox or the tf-a before the `arm_arch_timer_init`
call or the clocksource setup will return with -ENODEV. A later
re-initialization is also possible by calling `arm_arch_timer_init`
again.

[1]: See "ARM Architecture Reference Manual for A-profile architecture
(rev L.a)", chapter D12 "The Generic Timer in AArch64 state"
[2]: See "ARM Architecture Reference Manual for A-profile architecture
(rev L.a)", chapter D12.1.2.1 "Initializing and reading the system
effective frequency"

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 .../include/asm/hardware/arm_architected_timer.h   | 21 +++++++++++++++++++
 drivers/clocksource/Makefile                       |  2 +-
 drivers/clocksource/arm_architected_timer.c        | 24 ++++++++++++++--------
 3 files changed, 38 insertions(+), 9 deletions(-)

diff --git a/arch/arm/include/asm/hardware/arm_architected_timer.h b/arch/arm/include/asm/hardware/arm_architected_timer.h
new file mode 100644
index 0000000000..e0c1fd84fd
--- /dev/null
+++ b/arch/arm/include/asm/hardware/arm_architected_timer.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_ARM_HARDWARE_ARCH_TIMER_H
+#define __ASM_ARM_HARDWARE_ARCH_TIMER_H
+
+#include <linux/types.h>
+
+/**
+ * arm_arch_timer_init() - Initialize the ARM architected timer as global
+ * clocksource
+ * @cntfrq: The timer frequency, if zero the frequency is read from the
+ *          CNTFRQ_EL0 register
+ *
+ * This function is meant to be called in a PBL constructor or in the driver
+ * probe function.
+ *
+ * Return: 0 on success, -ENODEV if the timer frequency can not be determined
+ */
+int arm_arch_timer_init(uint64_t cntfrq);
+
+#endif
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index dff8255650..0c92477247 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -13,7 +13,7 @@ obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
 obj-$(CONFIG_CLOCKSOURCE_UEMD)    += uemd.o
 obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+= rk_timer.o
 obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += timer-atmel-pit.o
-obj-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER) += arm_architected_timer.o
+obj-pbl-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER) += arm_architected_timer.o
 ifneq ($(CONFIG_CPU_V8),y)
 CFLAGS_arm_architected_timer.o := -march=armv7-a
 endif
diff --git a/drivers/clocksource/arm_architected_timer.c b/drivers/clocksource/arm_architected_timer.c
index daced94c0e..ea5f5b8e05 100644
--- a/drivers/clocksource/arm_architected_timer.c
+++ b/drivers/clocksource/arm_architected_timer.c
@@ -9,6 +9,7 @@
 #include <linux/clk.h>
 #include <io.h>
 #include <asm/system.h>
+#include <asm/hardware/arm_architected_timer.h>
 
 static uint64_t arm_arch_clocksource_read(void)
 {
@@ -22,22 +23,29 @@ static struct clocksource cs = {
 	.priority = 70,
 };
 
-static int arm_arch_timer_probe(struct device *dev)
+int arm_arch_timer_init(uint64_t cntfrq)
 {
-	u32 cntfrq;
-	int ret;
-
-	/* Some platforms don't set CNTFRQ_EL0 before barebox */
-	ret = of_property_read_u32(dev->of_node, "clock-frequency", &cntfrq);
-
-	if (ret)
+	if (!cntfrq)
 		cntfrq = get_cntfrq();
 
+	if (!cntfrq)
+		return -ENODEV;
+
 	cs.mult = clocksource_hz2mult(cntfrq, cs.shift);
 
 	return init_clock(&cs);
 }
 
+static int arm_arch_timer_probe(struct device *dev)
+{
+	u32 cntfrq = 0;
+
+	/* Some platforms don't set CNTFRQ_EL0 before barebox */
+	of_property_read_u32(dev->of_node, "clock-frequency", &cntfrq);
+
+	return arm_arch_timer_init(cntfrq);
+}
+
 static struct of_device_id arm_arch_timer_dt_ids[] = {
 	{ .compatible = "arm,armv7-timer", },
 	{ .compatible = "arm,armv8-timer", },

-- 
2.47.3



