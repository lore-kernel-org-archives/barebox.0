Delivery-date: Mon, 13 Apr 2026 12:11:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGo-00BgII-0n
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:11:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGn-0001cx-A5
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:11:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o7Z/0X2PX2YY9L2oluhmWT3SFU8SCjWoE/lt/n6E5UI=; b=Lls4s+35cmlcLUjHK1YwACqjtQ
	QoiJK9+AyNfZCO2PLI+UBkcFNFo9Cybe8wg4fyjMdmECxlmLgvJXzZj5HGLdQ7KzrpfVCq3REY91T
	K/cBrIC1ckNr1Gqs7M7nQjOb6qRy6XRGuFGCKUOuSnreBfuQbxX7T91EGJJTots+3h+lpQ4KbnLYN
	RVwVevC0AV7LFV+Bh9aCTMaJL9ICFy3+O0YKYCRFEq1Y93ToxxUwyhusphhoXZiWpKlfcA89PLCoi
	Xn8Cam0OowrjeutU1g5NLMrJrTD+xl/kipq1w8DV6S8e1S+lF0DK0RGl2nmoKYEyoFxWJMePRD0SM
	xjx8hi1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGM-0000000FS66-33Oj;
	Mon, 13 Apr 2026 10:11:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGJ-0000000FS3e-2fs6
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:11:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=o7Z/0X2PX2YY9L2oluhmWT3SFU8SCjWoE/lt/n6E5UI=; b=EukdJSynYIKkcXwey4ArT2fLoo
	sGVwFFJ0OkaCCgqTp9n5k/u+XuQCuyrB62UbfWHKv190XoODHv9ibQnY5K9OOEQ6C9OULjg65pqNc
	dWsTXqlIDflHUkgVmUw3GHTwALuGUvvumtUVN1hsWQrlu/S8L0yqkdhARVpmis5uiiW+N7mT293v7
	5hr3KmrnHQhZVTMOfZUpqV6lzEzyt7rD4+S7KY3LvO08t1NXtT07UYNyUsJAMI+R8DMo+/jvYstSB
	9TqDHuSS+WoHRW9zRU7TSnwBFkt0+D+ouwNrDpf+mx1hdHU1/0C7/MSEXDrOUlbLR/cps6ZPW+Lc6
	dSD+z92Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGG-0000000GZ66-0ixK
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:11:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEGF-0001Is-C3; Mon, 13 Apr 2026 12:11:19 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:09:36 +0200
Message-ID: <20260413101118.1462119-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_111120_478441_4F8FCA3F 
X-CRM114-Status: GOOD (  13.07  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] console: return characters written from console_putc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

console_putc() prints two characters instead of one when it does
LF -> CRLF conversion.

As console_putc already has to do the CRLF check, have it return the
number of printed characters as well to simplify its users.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/console.c        | 17 +++++++----------
 common/console_common.c |  2 +-
 common/console_simple.c | 13 +++++++------
 include/console.h       |  4 ++--
 pbl/console.c           |  8 ++++++--
 5 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/common/console.c b/common/console.c
index 62ca57e43b05..30a72b2bb6d2 100644
--- a/common/console.c
+++ b/common/console.c
@@ -576,10 +576,11 @@ int tstc(void)
 }
 EXPORT_SYMBOL(tstc);
 
-void console_putc(unsigned int ch, char c)
+int console_putc(unsigned int ch, char c)
 {
 	struct console_device *cdev;
 	int init = initialized;
+	bool crlf = c == '\n';
 
 	switch (init) {
 	case CONSOLE_UNINITIALIZED:
@@ -587,20 +588,20 @@ void console_putc(unsigned int ch, char c)
 		fallthrough;
 	case CONSOLE_INITIALIZED_BUFFER:
 		kfifo_putc(console_output_fifo, c);
-		if (c == '\n')
+		if (crlf)
 			putc_ll('\r');
 		putc_ll(c);
-		return;
+		return 1 + crlf;
 
 	case CONSOLE_INIT_FULL:
 		for_each_console(cdev) {
 			if (cdev->f_active & ch) {
-				if (c == '\n')
+				if (crlf)
 					cdev->putc(cdev, '\r');
 				cdev->putc(cdev, c);
 			}
 		}
-		return;
+		return 1 + crlf;
 	default:
 		/* If we have problems inititalizing our data
 		 * get them early
@@ -626,11 +627,7 @@ int console_puts(unsigned int ch, const char *str)
 	}
 
 	while (*s) {
-		if (*s == '\n')
-			n++;
-
-		console_putc(ch, *s);
-		n++;
+		n += console_putc(con, *s);
 		s++;
 	}
 	return n;
diff --git a/common/console_common.c b/common/console_common.c
index 20c93de68cdc..e3b49200c538 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -423,7 +423,7 @@ int dputc(int fd, char c)
 	if (fd == 1)
 		putchar(c);
 	else if (fd == 2)
-		console_putc(CONSOLE_STDERR, c);
+		return console_putc(CONSOLE_STDERR, c);
 	else
 		return write(fd, &c, 1);
 
diff --git a/common/console_simple.c b/common/console_simple.c
index 25fe6217448c..dfc180e70f98 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -17,28 +17,29 @@ int console_puts(unsigned int ch, const char *str)
 	int i = 0;
 
 	while (*s) {
-		console_putc(ch, *s);
+		i += console_putc(ch, *s);
 		s++;
-		i++;
 	}
 
 	return i;
 }
 EXPORT_SYMBOL(console_puts);
 
-void console_putc(unsigned int ch, char c)
+int console_putc(unsigned int ch, char c)
 {
+	bool crlf = c == '\n';
 	if (!console) {
-		if (c == '\n')
+		if (crlf)
 			putc_ll('\r');
 		putc_ll(c);
-		return;
+		return 1 + crlf;
 	}
 
-	if (c == '\n')
+	if (crlf)
 		console->putc(console, '\r');
 
 	console->putc(console, c);
+	return 1 + crlf;
 }
 EXPORT_SYMBOL(console_putc);
 
diff --git a/include/console.h b/include/console.h
index cd00e86a805c..353a5088a547 100644
--- a/include/console.h
+++ b/include/console.h
@@ -229,7 +229,7 @@ int arch_ctrlc(void);
 
 #ifndef CONFIG_CONSOLE_NONE
 /* stdout */
-void console_putc(unsigned int ch, const char c);
+int console_putc(unsigned int ch, const char c);
 int console_puts(unsigned int ch, const char *s);
 void console_putbin(unsigned int ch, const u8 *str, size_t len);
 void console_flush(void);
@@ -241,7 +241,7 @@ void console_ctrlc_allow(void);
 void console_ctrlc_forbid(void);
 #else
 static inline int console_puts(unsigned int ch, const char *str) { return 0; }
-static inline void console_putc(unsigned int ch, char c) {}
+static inline int console_putc(unsigned int ch, char c) { return 0;}
 static inline void console_flush(void) {}
 
 /* test if ctrl-c was pressed */
diff --git a/pbl/console.c b/pbl/console.c
index f2e7b3a20e9c..1274552b2088 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -32,12 +32,14 @@ static void __putc(void *ctx, int c)
 	putc(ctx, c);
 }
 
-void console_putc(unsigned int ch, char c)
+int console_putc(unsigned int ch, char c)
 {
 	if (putc_offset)
 		__putc(putc_ctx, c);
 	else
 		putc_ll(c);
+
+	return 1;
 }
 
 int console_puts(unsigned int ch, const char *str)
@@ -45,8 +47,10 @@ int console_puts(unsigned int ch, const char *str)
 	int n = 0;
 
 	while (*str) {
-		if (*str == '\n')
+		if (*str == '\n') {
 			console_putc(ch, '\r');
+			n++;
+		}
 
 		console_putc(ch, *str);
 		str++;
-- 
2.47.3



