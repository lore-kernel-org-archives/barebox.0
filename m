Delivery-date: Thu, 09 Mar 2023 15:36:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paHO0-00Ewj6-Uy
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 15:36:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paHO0-00035G-92
	for lore@pengutronix.de; Thu, 09 Mar 2023 15:36:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VxKFg2+FaFQsQP9/E+cqtlCfLJLUqHocuZ2u7gbIwV0=; b=fgCqZX7CXtHurNWkv2+vFADabM
	TJYVKDXC5tn3xXEZxhD7ulxqbl46VO8zLowwMXiFB4E9PlVOoEIT146DSQT9oTfDtnIcwq3iMmOCG
	0nAI0j6l8w5iBFm5nl4rTQNlRtZCEtYaWyuXPeHcZUOhVgY1tdeB0Q5lyjg8lMOBaVQiafd6l1r7p
	5V1yrh8JESL7psAhXRochEekjchiPs8vVeyFRw9ojw76BuEWMda46fybu56C2V11RI9aVl9sGkJwR
	ZlE3eTlGfJU5znomYPWKxJRl1tDthDN2fuqCYnIgPHzipx3T9rs0/Zp6eWYzss7DANBCsZ1zVTP5T
	f40XNYkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paHMX-00AZH9-6e; Thu, 09 Mar 2023 14:35:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paHE3-00AVbe-CJ
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 14:26:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paHE1-0001LA-PV; Thu, 09 Mar 2023 15:26:33 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paHE1-002yFm-5H; Thu, 09 Mar 2023 15:26:33 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paHE0-001Q2e-Gc; Thu, 09 Mar 2023 15:26:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Mar 2023 15:26:31 +0100
Message-Id: <20230309142631.338244-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_062635_460905_F700C5FC 
X-CRM114-Status: GOOD (  12.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Do not print exception stacktrace in panic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

panic() prints a stacktrace by default. When being called in a an
exception this will print the stacktrace of the exception stack
which is not useful, so drop it. We are printing the desired
stacktrace anyway before calling panic().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts.c    |  2 +-
 arch/arm/cpu/interrupts_64.c |  2 +-
 common/misc.c                | 29 +++++++++++++++++++++++------
 include/printk.h             |  1 +
 4 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index a1728eb353..5bc790a796 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -68,7 +68,7 @@ static void __noreturn do_exception(struct pt_regs *pt_regs)
 {
 	show_regs(pt_regs);
 
-	panic("");
+	panic_no_stacktrace("");
 }
 
 /**
diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index f54fdcd3dd..d844915fee 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -88,7 +88,7 @@ static void __noreturn do_exception(struct pt_regs *pt_regs)
 
 	unwind_backtrace(pt_regs);
 
-	panic("panic: unhandled exception");
+	panic_no_stacktrace("panic: unhandled exception");
 }
 
 /**
diff --git a/common/misc.c b/common/misc.c
index 400c1fb48f..e266f0951e 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -216,15 +216,13 @@ device_initcall(of_kernel_init);
 
 BAREBOX_MAGICVAR(global.of.kernel.add_machine_compatible, "Additional machine/board compatible");
 
-void __noreturn panic(const char *fmt, ...)
+static void __noreturn do_panic(bool stacktrace, const char *fmt, va_list ap)
 {
-	va_list args;
-	va_start(args, fmt);
-	vprintf(fmt, args);
+	vprintf(fmt, ap);
 	putchar('\n');
-	va_end(args);
 
-	dump_stack();
+	if (stacktrace)
+		dump_stack();
 
 	led_trigger(LED_TRIGGER_PANIC, TRIGGER_ENABLE);
 
@@ -235,4 +233,23 @@ void __noreturn panic(const char *fmt, ...)
 		restart_machine();
 	}
 }
+
+void __noreturn panic(const char *fmt, ...)
+{
+	va_list args;
+
+	va_start(args, fmt);
+	do_panic(true, fmt, args);
+	va_end(args);
+}
 EXPORT_SYMBOL(panic);
+
+void __noreturn panic_no_stacktrace(const char *fmt, ...)
+{
+	va_list args;
+
+	va_start(args, fmt);
+	do_panic(false, fmt, args);
+	va_end(args);
+}
+EXPORT_SYMBOL(panic_no_stacktrace);
diff --git a/include/printk.h b/include/printk.h
index 6f8635fae2..bf9645249d 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -28,6 +28,7 @@ static inline int printf(const char *fmt, ...)
 #endif
 
 void __attribute__((noreturn)) panic(const char *fmt, ...);
+void __attribute__((noreturn)) panic_no_stacktrace(const char *fmt, ...);
 
 #define printk			printf
 
-- 
2.30.2



