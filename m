Delivery-date: Sun, 03 May 2026 10:24:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJS8D-000TmR-0C
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:24:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJS8B-0002Mi-LH
	for lore@pengutronix.de; Sun, 03 May 2026 10:24:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qmPhTAyY2bL7XvO5zVMF14+ZnOxMfTLE/3qsVTHSqEA=; b=CFAFHk0Vfuo9ruIrxqn9wgtWD4
	/VGosM9olX/yA06xHQnZO8KqQ27D7LNkX/0n6/Q0IkvXC1kuLVEl2kK94weiVIdgbeWGxcYl6jCUl
	ptNdJfulY6MYAkfMQqw9R9BWqwqA1DR/XiNqa0f7GF/3KDJnQEkg7sBAdMa/hqv+9PRK708VrhlE1
	3XsSRK3J/vSf7jkt2oILw0ny4+0WxR6ynRxrr+6ImNMW6ON5vYCvKJBQ7n4T4hxR8WwB4V8yST7t7
	L2/tI/MAxDzcf7Jw7ulxuFlR1nIv3MPhs43uBmx2NEv5NdkHRkb13KhfjpVEpvVTJjB3qTbpd4soz
	eo6Fsk8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJS7N-0000000AcdA-2Lyk;
	Sun, 03 May 2026 08:24:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJS7F-0000000AcbN-1rWc
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:23:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJS7C-0002Dt-PV; Sun, 03 May 2026 10:23:50 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:23:20 +0200
Message-ID: <20260503082348.2755843-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503082348.2755843-1-a.fatoum@barebox.org>
References: <20260503082348.2755843-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_012353_488533_49E25FDF 
X-CRM114-Status: GOOD (  15.67  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] readkey: handle standalone ESC keypress with timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

read_key() unconditionally called getchar() twice after receiving an
ESC byte (0x1B), assuming it was the start of a multi-byte escape
sequence. A standalone ESC keypress sends only the single 0x1B byte,
so the second getchar() would block indefinitely, making it impossible
to use ESC on its own to cancel operations.

Poll with tstc() and a 50ms timeout after the initial ESC byte. If no
follow-up character arrives, return the bare ESC. This matches the
standard terminal approach for distinguishing ESC keypresses from
escape sequences, which arrive as a rapid burst.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - implement pollchar() for CONSOLE_SIMPLE as well
---
 common/console.c        | 13 +++++++++++++
 common/console_simple.c | 14 ++++++++++++++
 include/stdio.h         |  2 ++
 lib/readkey.c           | 31 +++++++++++++++++++++++++++++--
 4 files changed, 58 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index 0ce89390864b..162579b8c5cf 100644
--- a/common/console.c
+++ b/common/console.c
@@ -571,6 +571,19 @@ int tstc(void)
 }
 EXPORT_SYMBOL(tstc);
 
+int pollchar(ktime_t duration)
+{
+	ktime_t start = get_time_ns();
+
+	while (!tstc()) {
+		if (is_timeout(start, duration))
+			return -ETIMEDOUT;
+	}
+
+	return getchar();
+}
+EXPORT_SYMBOL(pollchar);
+
 int console_putc(struct console_device *con, char c)
 {
 	bool crlf = c == '\n';
diff --git a/common/console_simple.c b/common/console_simple.c
index b4d0e19015d8..6771d457455e 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -5,6 +5,7 @@
 #include <errno.h>
 #include <debug_ll.h>
 #include <console.h>
+#include <clock.h>
 #include <security/config.h>
 
 LIST_HEAD(console_list);
@@ -66,6 +67,19 @@ int getchar(void)
 }
 EXPORT_SYMBOL(getchar);
 
+int pollchar(ktime_t duration)
+{
+	ktime_t start = get_time_ns();
+
+	while (!tstc()) {
+		if (is_timeout(start, duration))
+			return -ETIMEDOUT;
+	}
+
+	return getchar();
+}
+EXPORT_SYMBOL(pollchar);
+
 void console_flush(void)
 {
 	if (console && console->flush)
diff --git a/include/stdio.h b/include/stdio.h
index f5b23140adde..c8225430ad29 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -12,9 +12,11 @@
 /* stdin */
 int tstc(void);
 int getchar(void);
+int pollchar(ktime_t duration);
 #else
 static inline int tstc(void) { return 0; }
 static inline int getchar(void) { return -EINVAL; }
+static inline int pollchar(ktime_t duration) { return -ENOSYS; }
 #endif
 
 int readline(const char *prompt, char *buf, int len);
diff --git a/lib/readkey.c b/lib/readkey.c
index c26e9d51aba9..71f9b41c5055 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -17,6 +17,8 @@
  */
 
 #include <common.h>
+#include <clock.h>
+#include <linux/ktime.h>
 #include <linux/ctype.h>
 #include <readkey.h>
 
@@ -46,6 +48,18 @@ static const struct esc_cmds esccmds[] = {
 	{"[6~", BB_KEY_PAGEDOWN},// Cursor Key Page Down
 };
 
+static int poll_key_into_buf(unsigned char *key)
+{
+	int ret;
+
+	ret = pollchar(50 * MSECOND);
+	if (ret < 0)
+		return ret;
+
+	*key = ret;
+	return 0;
+}
+
 int read_key(void)
 {
 	unsigned char c;
@@ -54,8 +68,21 @@ int read_key(void)
 
 	if (c == 27) {
 		int i = 0;
-		esc[i++] = getchar();
-		esc[i++] = getchar();
+
+		/*
+		 * Escape sequences (arrow keys, etc.) arrive as a burst
+		 * of characters: ESC [ A, ESC [ 1 ~ etc.  A standalone
+		 * ESC keypress sends just the single 0x1b byte.
+		 *
+		 * Wait briefly for a follow-up character; if nothing
+		 * arrives it was a bare ESC.
+		 */
+		if (poll_key_into_buf(&esc[i++]))
+			return '\e';
+
+		if (poll_key_into_buf(&esc[i++]))
+			return -1;
+
 		if (isdigit(esc[1])) {
 			while(1) {
 				esc[i] = getchar();
-- 
2.47.3



