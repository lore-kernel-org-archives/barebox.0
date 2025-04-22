Delivery-date: Tue, 22 Apr 2025 07:27:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A4-003uqO-0K
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A2-00047q-VH
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ca1G24pwTLZiOjT5eyuQb5Mv5JAy3bYWglguhZYGwg=; b=ReaTZXswisbnCWS4z1j5g6NgZ7
	9Fx2N/4ZxouZzLalxTlPDln62ubEwanSpg5l4ZiMXPHJSKRH6wOeqw1PAV5Wnb/g89jBE+BThpIpH
	mfas6Uh18HkwbBDxpA4YGgXOkrh4fF7Z29iPewQUC3Rg27BF/bmkrm7CIg1y5fZmi/QkVL1iuCjzl
	AhqcAsCI/958Wt7QicVesowfBh/kcewZOxytBn3blyS2mGJ3p7KEMFEe7AZ0xRCqOR9hzntzT4WJd
	YZPaRBxCCONNEMQOQgNrIF2zcqFo7kvyEnwa48nkL6relchkkuFoJqJ7pDj5nRbVv3A37mM9IHQTZ
	MS2b5MfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769b-00000005rD1-1euD;
	Tue, 22 Apr 2025 05:26:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769X-00000005r9U-0Me1
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-0003ip-MY; Tue, 22 Apr 2025 07:26:37 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001Uuy-1d;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-1K;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:26:27 +0200
Message-Id: <20250422052635.3423961-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222639_128573_AFBD32EC 
X-CRM114-Status: GOOD (  12.27  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] clocksource: make available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently have some adhoc early_udelay implementations in PBL.
As the clocksource framework is already very lightweight, let's port it
to allow dropping early_udelay in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Makefile | 1 +
 common/clock.c  | 5 ++++-
 include/sched.h | 2 +-
 pbl/Kconfig     | 3 +++
 4 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 9b67187561bf..e12eef4691fe 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -5,6 +5,7 @@ obj-y				+= memory.o
 obj-y				+= memory_display.o
 pbl-$(CONFIG_PBL_CONSOLE)	+= memory_display.o
 obj-y				+= clock.o
+pbl-$(CONFIG_PBL_CLOCKSOURCE)	+= clock.o
 obj-y				+= console_common.o
 obj-$(CONFIG_OFDEVICE)		+= deep-probe.o
 obj-y				+= startup.o
diff --git a/common/clock.c b/common/clock.c
index b300e5798a16..15e26c67c887 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -34,7 +34,7 @@ static struct clocksource dummy_cs = {
 	.priority = -1,
 };
 
-static struct clocksource *current_clock = &dummy_cs;
+static struct clocksource *current_clock = IN_PROPER ? &dummy_cs : NULL;
 
 static int dummy_csrc_warn(void)
 {
@@ -55,6 +55,9 @@ uint64_t get_time_ns(void)
 	uint64_t cycle_now, cycle_delta;
 	uint64_t ns_offset;
 
+	if (IN_PBL && !cs)
+		panic("No PBL clocksource has been initialized\n");
+
 	/* read clocksource: */
 	cycle_now = cs->read() & cs->mask;
 
diff --git a/include/sched.h b/include/sched.h
index 4dadff20696e..0b5e91f0be44 100644
--- a/include/sched.h
+++ b/include/sched.h
@@ -2,7 +2,7 @@
 #ifndef __BAREBOX_SCHED_H_
 #define __BAREBOX_SCHED_H_
 
-#ifdef CONFIG_HAS_SCHED
+#if defined CONFIG_HAS_SCHED && IN_PROPER
 void resched(void);
 #else
 static inline void resched(void)
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 98d71791454b..6e3581829d58 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -57,6 +57,9 @@ config PBL_VERIFY_PIGGY
 	depends on ARM || MIPS || RISCV
 	bool "Verify barebox proper hash before decompression" if COMPILE_TEST
 
+config PBL_CLOCKSOURCE
+	bool
+
 config BOARD_GENERIC_DT
 	bool
 	select LIBFDT
-- 
2.39.5



