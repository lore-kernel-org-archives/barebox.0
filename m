Delivery-date: Mon, 14 Oct 2024 15:30:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9A-004H1A-0s
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L98-00039A-Ie
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I/wEdkq2qMValKOePgnKek6akH4dAmc4qwCIqIpla60=; b=tiD7HQ8OkOSoH7t6UlWilU/jzr
	1Z0MZ6tZdcUZYYaiVicECXaceWr6S/DD541OrR/OaMm0JIjb2/jTVEGtWezqAkW3ZQLGMe8H5agfu
	afZKTYiQXU1+qL2BQhV0QutNJURbpLrQPeQv4U1kMzU0H7W8K6x9rc94kf4y28QQ54lW2115KafhV
	skpeLlVZe1IWnKZQIF10MTJvoZ+NMIYe8qUuxfdXbqKx1GhGc3a4YzMnAIJR2Ogw/XHtNjXSXljhg
	94yqBb/R43g39N8BDBzfuqkVmQAZm2DiLQi3VMCv8OUzCPi0n3UWSTKqQGUXCWDAVZrtoaWtgUh70
	UaxLe91Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8c-00000005HVh-1xJR;
	Mon, 14 Oct 2024 13:29:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb5-00000004zKp-1tOS
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=I/wEdkq2qMValKOePgnKek6akH4dAmc4qwCIqIpla60=; b=WrZs3z8JXrE480t8BqqVBeD+nb
	6Sh8tzgD7JmfEMiL+Ofj0/3OYdznGLLA/5IWYq3hxahsJscLYhkvvMR8EBLLbESvRm9v30xhB3ks3
	bo5G7df12CofkIzTAzGCJTPZv05sztwTMRNdp0qckruor1X77smapOtMFm55nP6/nCtNxLBeLA3tM
	VzzE0YcaIGF/mMGgsQYURs4P/uoy0UDv83hAuGngF88DyBnbHS+FvbNTZtAApOKor1uH3h0cdFsvD
	y2ltn4j7GOOHgYUvsa36059zC4FMk/aWkyJ41Bf3Z/8XSg9UhCEq9f5cKTCHAEv8igYyFFP09ccAe
	AEBIqOTQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb1-00000006Kl5-0Fbo
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:50:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-0001C1-Ey; Mon, 14 Oct 2024 13:50:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-001mUP-2F; Mon, 14 Oct 2024 13:50:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jaz-00BvdQ-3A;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:29 +0200
Message-Id: <20241014115040.2843121-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125043_450065_9FB2D651 
X-CRM114-Status: GOOD (  14.21  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/12] include: common.h: move barebox startup functions into separate header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Symbols exclusively defined in common.h are a problem, because other
headers that require them will need to include a lot of extra baggage,
which in the worst case can lead to cyclic dependencies and in every
case leads to longer compile times.

In preparation for turning common.h into containing only #include lines,
let's move the barebox boot stage stuff into a separate header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/barebox.h | 35 +++++++++++++++++++++++++++++++++++
 include/common.h  | 28 +---------------------------
 2 files changed, 36 insertions(+), 27 deletions(-)
 create mode 100644 include/barebox.h

diff --git a/include/barebox.h b/include/barebox.h
new file mode 100644
index 000000000000..741463bc1cf9
--- /dev/null
+++ b/include/barebox.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __BAREBOX_H_
+#define __BAREBOX_H_
+
+#include <linux/compiler.h>
+
+/* For use when unrelocated */
+static inline void __hang(void)
+{
+	while (1);
+}
+void __noreturn hang (void);
+
+/*
+ * Function pointer to the main barebox function. Defaults
+ * to run_shell() when a shell is enabled.
+ */
+extern int (*barebox_main)(void);
+
+enum autoboot_state {
+	AUTOBOOT_COUNTDOWN,
+	AUTOBOOT_ABORT,
+	AUTOBOOT_MENU,
+	AUTOBOOT_BOOT,
+	AUTOBOOT_UNKNOWN,
+};
+
+void set_autoboot_state(enum autoboot_state autoboot);
+enum autoboot_state do_autoboot_countdown(void);
+
+void __noreturn start_barebox(void);
+void shutdown_barebox(void);
+
+#endif
diff --git a/include/common.h b/include/common.h
index 571f46fd0bc1..cc7f089aeef0 100644
--- a/include/common.h
+++ b/include/common.h
@@ -8,6 +8,7 @@
 #define __COMMON_H_	1
 
 #include <stdio.h>
+#include <barebox.h>
 #include <module.h>
 #include <config.h>
 #include <clock.h>
@@ -45,14 +46,6 @@
  */
 void reginfo(void);
 
-/* For use when unrelocated */
-static inline void __hang(void)
-{
-	while (1);
-}
-
-void __noreturn hang (void);
-
 char *size_human_readable(unsigned long long size);
 
 int	readline	(const char *prompt, char *buf, int len);
@@ -76,25 +69,6 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size);
 unsigned long strtoul_suffix(const char *str, char **endp, int base);
 unsigned long long strtoull_suffix(const char *str, char **endp, int base);
 
-/*
- * Function pointer to the main barebox function. Defaults
- * to run_shell() when a shell is enabled.
- */
-extern int (*barebox_main)(void);
-
-enum autoboot_state {
-	AUTOBOOT_COUNTDOWN,
-	AUTOBOOT_ABORT,
-	AUTOBOOT_MENU,
-	AUTOBOOT_BOOT,
-	AUTOBOOT_UNKNOWN,
-};
-
-void set_autoboot_state(enum autoboot_state autoboot);
-enum autoboot_state do_autoboot_countdown(void);
-
-void __noreturn start_barebox(void);
-void shutdown_barebox(void);
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
 int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
-- 
2.39.5



