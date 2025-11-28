Delivery-date: Fri, 28 Nov 2025 13:56:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOy1o-005muk-13
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 13:56:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOy1n-0004EW-I3
	for lore@pengutronix.de; Fri, 28 Nov 2025 13:56:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8DDvLMduH2Pqqh4GQuBV7pz0cGOzgeVDn3xjVPub6cY=; b=2pcU9a8ijf/5y1q2R1wHHnh8eS
	YUuMHvRc1IZ5TPcahNgRjIKlhH577M4CKtGAEQNEYITNXPGgw8GmXCx3VPlxWRXEZ2NXiAVAHcmNW
	Lq+r2vUQxguVA2s2ItIMQ7v68QmL2tXqMifZKpZx7xdG/BgvPR6jnYHYvxglo/txc5CLMW3m7GA3I
	GdNC6gSwTIXWId2cWLkETT2rT+Mwhc/xYsLFduy/qV/BGZkRsan36o9Gc7b6E6axqZGWcs6Nx/UXJ
	sD/h6gghWZ0SPf3iuo0QEnPMZ/uRdMTVoKp8rwGfPzeZdLljJyQFY/zs5fwTCqwvff4+yMnIl88oe
	DCyslj/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOy1Q-00000000Rfd-2MEO;
	Fri, 28 Nov 2025 12:56:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOy1L-00000000Rcx-0cGJ
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:56:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-00042u-M4; Fri, 28 Nov 2025 13:56:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-002xLj-1a;
	Fri, 28 Nov 2025 13:56:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-00000002TQM-1X2W;
	Fri, 28 Nov 2025 13:56:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 13:50:05 +0100
Message-ID: <20251128125616.136559-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128125616.136559-1-a.fatoum@pengutronix.de>
References: <20251128125616.136559-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_045619_192076_E49DB2C6 
X-CRM114-Status: GOOD (  10.83  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] console: move non-stdio elements to console.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To prepare addition of more functions that hosted implementations
provide in stdio.h, let's move existing console functionality into the
console.h header, where they belong.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/console.h | 33 +++++++++++++++++
 include/stdio.h   | 93 +++++------------------------------------------
 2 files changed, 42 insertions(+), 84 deletions(-)

diff --git a/include/console.h b/include/console.h
index 37e127e175c9..149378fc2839 100644
--- a/include/console.h
+++ b/include/console.h
@@ -222,6 +222,39 @@ static inline int barebox_set_loglevel(int loglevel)
 }
 #endif
 
+#ifdef CONFIG_ARCH_HAS_CTRLC
+int arch_ctrlc(void);
+#endif
+
+#ifndef CONFIG_CONSOLE_NONE
+/* stdout */
+void console_putc(unsigned int ch, const char c);
+int console_puts(unsigned int ch, const char *s);
+void console_flush(void);
+
+int ctrlc(void);
+int ctrlc_non_interruptible(void);
+void ctrlc_handled(void);
+void console_ctrlc_allow(void);
+void console_ctrlc_forbid(void);
+#else
+static inline int console_puts(unsigned int ch, const char *str) { return 0; }
+static inline void console_putc(unsigned int ch, char c) {}
+static inline void console_flush(void) {}
+
+/* test if ctrl-c was pressed */
+static inline int ctrlc (void) { return 0; }
+static inline int ctrlc_non_interruptible(void) { return 0; }
+static inline void ctrlc_handled(void) { }
+static inline void console_ctrlc_allow(void) { }
+static inline void console_ctrlc_forbid(void) { }
+#endif
+
+#define STDIN_FILENO		0
+#define STDOUT_FILENO		1
+#define STDERR_FILENO		2
+#define MAX_FILES	128
+
 /**
  * clk_get_for_console - get clock, ignoring known unavailable clock controller
  * @dev: device for clock "consumer"
diff --git a/include/stdio.h b/include/stdio.h
index c0043b08bcc5..945ec4692609 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -8,100 +8,30 @@
 #include <xfuncs.h>
 #include <linux/sprintf.h>
 
-/*
- * STDIO based functions (can always be used)
- */
-
-#ifdef CONFIG_ARCH_HAS_CTRLC
-int arch_ctrlc(void);
-#endif
-
 #ifndef CONFIG_CONSOLE_NONE
 /* stdin */
 int tstc(void);
-
-/* stdout */
-void console_putc(unsigned int ch, const char c);
 int getchar(void);
-int console_puts(unsigned int ch, const char *s);
-void console_flush(void);
-
 int vprintf(const char *fmt, va_list args);
-
-int ctrlc(void);
-int ctrlc_non_interruptible(void);
-void ctrlc_handled(void);
-void console_ctrlc_allow(void);
-void console_ctrlc_forbid(void);
 #else
-static inline int tstc(void)
-{
-	return 0;
-}
-
-static inline int console_puts(unsigned int ch, const char *str)
-{
-	return 0;
-}
-
-static inline int getchar(void)
-{
-	return -EINVAL;
-}
-
-static inline void console_putc(unsigned int ch, char c) {}
-
-static inline void console_flush(void) {}
-
-static inline int vprintf(const char *fmt, va_list args)
-{
-	return 0;
-}
-
-/* test if ctrl-c was pressed */
-static inline int ctrlc (void)
-{
-	return 0;
-}
-
-static inline int ctrlc_non_interruptible(void)
-{
-	return 0;
-}
-
-static inline void ctrlc_handled(void)
-{
-}
-
-static inline void console_ctrlc_allow(void) { }
-static inline void console_ctrlc_forbid(void) { }
+static inline int tstc(void) { return 0; }
+static inline int vprintf(const char *fmt, va_list args) { return 0; }
+static inline int getchar(void) { return -EINVAL; }
 #endif
 
 int readline(const char *prompt, char *buf, int len);
 
 #if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
 	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
-static inline int puts(const char *s)
-{
-	return console_puts(CONSOLE_STDOUT, s);
-}
-
-static inline void putchar(char c)
-{
-	console_putc(CONSOLE_STDOUT, c);
-}
+static inline int puts(const char *s) { return console_puts(CONSOLE_STDOUT, s); }
+static inline void putchar(char c) { console_putc(CONSOLE_STDOUT, c); }
 #else
-static inline int puts(const char *s)
-{
-	return 0;
-}
-
-static inline void putchar(char c)
-{
-	return;
-}
+static inline int puts(const char *s) { return 0; }
+static inline void putchar(char c) {}
 #endif
 
+int readline(const char *prompt, char *buf, int len);
+
 /*
  * FILE based functions
  */
@@ -116,11 +46,6 @@ static inline void putchar(char c)
 #define eputchar(ch)		dputc(STDERR_FILENO, ch)
 #endif
 
-#define STDIN_FILENO		0
-#define STDOUT_FILENO		1
-#define STDERR_FILENO		2
-#define MAX_FILES	128
-
 int vdprintf(int fd, const char *fmt, va_list args) ;
 int dprintf(int file, const char *fmt, ...) __printf(2, 3);
 int dputs(int file, const char *s);
-- 
2.47.3



