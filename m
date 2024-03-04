Delivery-date: Mon, 04 Mar 2024 20:01:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZI-008cra-34
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:01:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDZH-0005KR-Tq
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:01:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PqDxlYxGLNHzM7atHkiyJz2N2EngycbRiW3Pi1vdVbI=; b=xgP+tJIArrlWHyPJDVcuc+osl0
	e2yS3ePnjJta02H6OyHw69rIOy3D0iDVxkWTIpNjSd8z2vWul0DWQ3o5Pzin4KL3ge95wO+101u4m
	mYJGrs6YGkm2TkBOogAaXk2Qln9mPoF21yMO5DRc9pVEU1ghPk01ONR/tZpvucEM1aVYnxtQSUdYn
	bFwLwsxEVgfcWTdFqC5avOTGa0JTgsiaYrYt4318LtAfzSvnJooQldaL3c8O9vy1BREwnmpCbSMxv
	cZ+DAyJwq/4bN3P+F7FLVMxE2duxRBl7Y18k24VjnUDMwcdnZ+sXyeYw/tXm+IsjFH1Xh/1UCF8Yf
	IJEnTrdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYb-0000000AHYq-42A1;
	Mon, 04 Mar 2024 19:01:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDYL-0000000AHPk-2lQs
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:00:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-0004VM-C2; Mon, 04 Mar 2024 20:00:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-004PFf-TA; Mon, 04 Mar 2024 20:00:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-0z;
	Mon, 04 Mar 2024 20:00:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:58:50 +0100
Message-Id: <20240304190038.3486881-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110045_871430_B4682522 
X-CRM114-Status: GOOD (  18.37  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 005/113] common: add option to poweroff system on failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When developing using Qemu and KASAN/Hardening options enabled, it can
be useful to just terminate Qemu on an error, because a stack trace is
already printed to console and restarting barebox or hanging just
results in the developer having to kill the process.

For this use case, add shutdown as third option besides hang and reset.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 44 ++++++++++++++++++++++++++++++++++----------
 common/misc.c  | 12 ++++++++----
 2 files changed, 42 insertions(+), 14 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index d16c8696dad4..cb0fef46ccbe 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -353,16 +353,40 @@ config RELOCATABLE
 	  allowing it to relocate to the end of the available RAM. This
 	  way you have the whole memory in a single piece.
 
-config PANIC_HANG
-	bool "hang the system in case of a fatal error"
-	help
-	  This option enables stop of the system in case of a
-	  fatal error, so that you have to reset it manually.
-	  This is probably NOT a good idea for an embedded
-	  system where you want the system to reboot
-	  automatically as fast as possible, but it may be
-	  useful during development since you can try to debug
-	  the conditions that lead to the situation.
+choice
+	prompt "Configure action on fatal error"
+	default PANIC_RESET
+
+	config PANIC_POWEROFF
+		bool "power off the system"
+		help
+		  This option shuts down the system in case of a
+		  fatal error, so that you have to power it on manually.
+		  This is probably NOT a good idea for an embedded
+		  system where you want the system to reboot
+		  automatically as fast as possible, but it may be
+		  useful in emulation, because the system returns
+		  to parent shell immediately.
+
+	config PANIC_HANG
+		bool "hang the system"
+		help
+		  This option enables stop of the system in case of a
+		  fatal error, so that you have to reset it manually.
+		  This is probably NOT a good idea for an embedded
+		  system where you want the system to reboot
+		  automatically as fast as possible, but it may be
+		  useful during development since you can try to debug
+		  the conditions that lead to the situation.
+
+	config PANIC_RESET
+		bool "reset the system"
+		help
+		  This option enables reset of the system in case of a
+		  fatal error, so you don't have to reset it manually.
+		  This is the recommended configuration in production.
+
+endchoice
 
 config PROMPT
 	string
diff --git a/common/misc.c b/common/misc.c
index e266f0951ee9..04ff4e6eb5c5 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -13,6 +13,7 @@
 #include <led.h>
 #include <of.h>
 #include <restart.h>
+#include <poweroff.h>
 #include <linux/stringify.h>
 
 int errno;
@@ -226,12 +227,15 @@ static void __noreturn do_panic(bool stacktrace, const char *fmt, va_list ap)
 
 	led_trigger(LED_TRIGGER_PANIC, TRIGGER_ENABLE);
 
-	if (IS_ENABLED(CONFIG_PANIC_HANG)) {
+	if (IS_ENABLED(CONFIG_PANIC_HANG))
 		hang();
-	} else {
-		udelay(100000);	/* allow messages to go out */
+
+	udelay(100000);	/* allow messages to go out */
+
+	if (IS_ENABLED(CONFIG_PANIC_POWEROFF))
+		poweroff_machine();
+	else
 		restart_machine();
-	}
 }
 
 void __noreturn panic(const char *fmt, ...)
-- 
2.39.2



