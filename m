Delivery-date: Fri, 01 May 2026 09:07:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhy1-000n3p-0S
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:07:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhy0-00024u-GA
	for lore@pengutronix.de; Fri, 01 May 2026 09:07:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ayY2h9ywxVQtTvv6l4Xc7xtm212E05IWAt0k3M3W4Tw=; b=Iegx8lfJ30T8DN+5DKTz+s7A6M
	Lbs3RSifjbBGiZ3tIfSu1CoEQVXPrc1fEijlzBP+XnqvVIagyALeZTJ9ZlhD9uaSUgHoc0AiK5FTk
	URO4httVgxqVBzseYWhlq8L0Fq9/jl2inXAx9M3lUtX1pisZ0BRR9g7qdVhTM2gYEaqQAgLzwbhBj
	xDz98qhvg6xN1YnzenTyMldaqaKkBZxIbknBfuIGJ8t9oGmqURNf19AkNtrxg3SYJDp02SHV9fbVG
	O2guoa5W6j392PYo9d2iyQGb6fW+xbAGfHQ5wdAUo1CG3PhfXLMQOVrUpq7eVYV+ixBa0l5nkq5j+
	2/a6ruPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxY-00000006RhL-1Rea;
	Fri, 01 May 2026 07:06:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxU-00000006Rdq-2mFk
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:06:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhxT-0001W8-5H; Fri, 01 May 2026 09:06:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:53:57 +0200
Message-ID: <20260501070625.952091-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_000644_708591_A28A5880 
X-CRM114-Status: GOOD (  15.39  )
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
Subject: [PATCH 3/9] lib: term: add per-console terminal response parser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add term_cdev_read_reply() to parse CSI responses from the specified
console device, replacing the open-coded parsing in term_getsize().

The function collects the response into a buffer with a single 100ms
timeout, then validates and parses it using simple_strtoul, keeping
the same timeout and parsing semantics as the original code.

Also add term_cdev_drain() to discard pending input before sending
a query, preventing stale data from being parsed as a response.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/term.c | 96 +++++++++++++++++++++++++++++++++++++-----------------
 1 file changed, 66 insertions(+), 30 deletions(-)

diff --git a/lib/term.c b/lib/term.c
index 78158a3036c3..96fdb0737d31 100644
--- a/lib/term.c
+++ b/lib/term.c
@@ -3,6 +3,8 @@
 
 #include <linux/kstrtox.h>
 #include <linux/minmax.h>
+#include <errno.h>
+#include <clock.h>
 #include <console.h>
 #include <term.h>
 
@@ -11,54 +13,88 @@ void term_setpos(int x, int y)
 	printf("\x1b[%d;%dH", y + 2, x + 1);
 }
 
+static void term_cdev_drain(struct console_device *cdev)
+{
+	while (cdev->tstc(cdev))
+		cdev->getc(cdev);
+}
+
+/**
+ * term_cdev_read_reply - read and parse a CSI response from a console
+ * @cdev:	console device to read from
+ * @params:	output array of parsed integer parameters
+ * @num:	number of expected parameters
+ * @end_char:	character that terminates the response (e.g. 'R')
+ *
+ * Reads a CSI response of the form ESC [ Pn ; Pn ; ... <end_char>
+ * with a single 100ms timeout for the entire response.
+ *
+ * Return: 0 on success, -ETIMEDOUT or -EINVAL on failure.
+ */
+static int term_cdev_read_reply(struct console_device *cdev,
+				int *params, int num, char end_char)
+{
+	char buf[64];
+	uint64_t start;
+	char *endp;
+	int n = 0, i;
+
+	start = get_time_ns();
+
+	while (1) {
+		if (is_timeout(start, 100 * MSECOND))
+			return -ETIMEDOUT;
+
+		if (!cdev->tstc(cdev))
+			continue;
+
+		buf[n] = cdev->getc(cdev);
+		if (buf[n] == end_char)
+			break;
+
+		if (++n >= sizeof(buf) - 1)
+			return -EINVAL;
+	}
+
+	if (n < 2 || buf[0] != '\e' || buf[1] != '[')
+		return -EINVAL;
+
+	endp = buf + 2;
+	for (i = 0; i < num; i++) {
+		params[i] = simple_strtoul(endp, &endp, 10);
+		if (i < num - 1) {
+			if (*endp != ';')
+				return -EINVAL;
+			endp++;
+		}
+	}
+
+	return 0;
+}
+
 int term_getsize(int *screenwidth, int *screenheight)
 {
-	int n;
 	int width = INT_MAX, height = INT_MAX;
 	bool found = false;
-	char *endp;
 	const char esc[] = "\e7" "\e[r" "\e[999;999H" "\e[6n";
-	char buf[64];
 
 	for_each_console(cdev) {
-		int w, h;
-		uint64_t start;
+		int w, h, params[2];
 
 		if (!(cdev->f_active & CONSOLE_STDIN))
 			continue;
 		if (!(cdev->f_active & CONSOLE_STDOUT))
 			continue;
 
-		memset(buf, 0, sizeof(buf));
+		term_cdev_drain(cdev);
 
 		console_puts(cdev, esc);
 
-		n = 0;
-
-		start = get_time_ns();
-
-		while (1) {
-			if (is_timeout(start, 100 * MSECOND))
-				break;
-
-			if (!cdev->tstc(cdev))
-				continue;
-
-			buf[n] = cdev->getc(cdev);
-
-			if (buf[n] == 'R')
-				break;
-
-			n++;
-		}
-
-		if (buf[0] != 27)
-			continue;
-		if (buf[1] != '[')
+		if (term_cdev_read_reply(cdev, params, 2, 'R'))
 			continue;
 
-		h = simple_strtoul(buf + 2, &endp, 10);
-		w = simple_strtoul(endp + 1, NULL, 10);
+		h = params[0];
+		w = params[1];
 
 		width = min(w, width);
 		height = min(h, height);
-- 
2.47.3



