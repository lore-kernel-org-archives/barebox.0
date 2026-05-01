Delivery-date: Fri, 01 May 2026 08:54:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhlV-000mhH-0y
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 08:54:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhlT-0003ck-Ku
	for lore@pengutronix.de; Fri, 01 May 2026 08:54:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EuyuOhM0Z9aeA7O925zb+NE7YextKt3aciGuC9SYnzs=; b=ItBMrt0QL3sFMu/BPd9E998HZs
	gaLFdZC4Me57SWf9lyNKDy0KFzWZ3v4mbfuySqDTSFmZMJytnNOs0ELSO+FatXQoGfuE1BQXIhihI
	ng/QzbYEGK3JajTmmuzmgjpYgewR5dgcTibAPfdXXk5JR1Xa+dD34PWj7sx0xFCrm6XTPrCFxGQPw
	UzqZjAvZ3IfVwqnwlgarW6G2mBxZB49aeExN9dKbUJ0lGVHYEvm5LGGZhI203YCmJ2PAIDZ3y53dE
	urtzcJNOYfYjO1QTLGB2MHq+rx8gAnu7nNR9TZzDTCLIKmNki3pgekoAUZ73PIdW/kWYk++yvEcQP
	Q3ocBzOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhkf-00000006RAU-2HP4;
	Fri, 01 May 2026 06:53:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhkc-00000006R9p-3zkT
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 06:53:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhkZ-000377-Cl; Fri, 01 May 2026 08:53:23 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:53:18 +0200
Message-ID: <20260501065321.950215-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501065321.950215-1-a.fatoum@barebox.org>
References: <20260501065321.950215-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_235326_996937_6E604E1E 
X-CRM114-Status: GOOD (  15.05  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] readkey: handle standalone ESC keypress with timeout
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
 common/console.c | 13 +++++++++++++
 include/stdio.h  |  2 ++
 lib/readkey.c    | 31 +++++++++++++++++++++++++++++--
 3 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index 0ce89390864b..8b6824b85e43 100644
--- a/common/console.c
+++ b/common/console.c
@@ -565,6 +565,19 @@ int getchar(void)
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
 int tstc(void)
 {
 	return kfifo_len(console_input_fifo) || tstc_raw();
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



