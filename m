Delivery-date: Mon, 01 Jul 2024 12:35:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOEO0-000TTO-2W
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 12:35:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOENz-0000me-Vw
	for lore@pengutronix.de; Mon, 01 Jul 2024 12:35:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BH7hZhFSgd1NpoAo8xJ6W1nlda2bhT/xF3pt67YGq20=; b=zHRZ5/+oCB2sfZ7CUDESs6MZJo
	sgCCaK1BbsxoAcqQDAFmqHENe97wEaE54DO17+eU+Jm7RMukTzM5II4ByBuGq60fyDNnz6kxLEp06
	uToOyzBkUNb0tIfi7JhisXlsobWTmHOCJJKCCsKAzdqcqOA7QX3HUV7WztfFItL0WSX9XK5AoHp2A
	F2yc4Fh0oj+rqlkW/0EIyAiyHKUZ/iQwjSWQ57eiHkpXQ2uxhR2DBq04zbwurQm5QJxaPqj4ZFzYB
	zLaL6giRI/oikfSY8vSuLqnW0O6xBzy3TPUqRGwlw/fEys7uUXC1FCCq6IrHb/vx7UGLgNQ8EReQZ
	GIp34ejw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOENZ-00000002iLE-3zd8;
	Mon, 01 Jul 2024 10:35:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOENR-00000002iGV-16cp
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 10:35:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOENP-0000ar-Ro; Mon, 01 Jul 2024 12:35:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOENP-006Lp2-FB; Mon, 01 Jul 2024 12:35:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOENP-00GSv9-1D;
	Mon, 01 Jul 2024 12:35:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 12:35:12 +0200
Message-Id: <20240701103514.3924345-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_033517_356312_9FAA3EA4 
X-CRM114-Status: GOOD (  22.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] commands: edit: factor out getwinsize and export it for reuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function is currently only used by the sedit command, but can be
useful for other "full-screen" commands as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 commands/edit.c | 85 +++++++------------------------------------------
 include/term.h  |  8 +++++
 lib/Makefile    |  1 +
 lib/term.c      | 69 +++++++++++++++++++++++++++++++++++++++
 4 files changed, 90 insertions(+), 73 deletions(-)
 create mode 100644 include/term.h
 create mode 100644 lib/term.c

diff --git a/commands/edit.c b/commands/edit.c
index dea383aae7a6..893fa0271d83 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -13,6 +13,7 @@
 #include <xfuncs.h>
 #include <linux/stat.h>
 #include <console.h>
+#include <term.h>
 
 #define TABSPACE 8
 
@@ -40,11 +41,6 @@ static struct line *curline;	/* line where the cursor is */
 static struct line *scrline;	/* the first line on screen */
 static int scrcol = 0;		/* the first column on screen */
 
-static void pos(int x, int y)
-{
-	printf("\x1b[%d;%dH", y + 2, x + 1);
-}
-
 static char *screenline(char *line, int *pos)
 {
 	int i, outpos = 0;
@@ -95,10 +91,10 @@ static int setpos(char *line, int position)
 static void refresh_line(struct line *line, int ypos)
 {
 	char *str = screenline(line->data, NULL) + scrcol;
-	pos(0, ypos);
+	term_setpos(0, ypos);
 	str[screenwidth] = 0;
 	printf("%s\x1b[K", str);
-	pos(cursx, cursy);
+	term_setpos(cursx, cursy);
 }
 
 /*
@@ -119,7 +115,7 @@ static void refresh(int full)
 			if (scrline->next == lastscrline) {
 				printf("\x1b[1T");
 				refresh_line(scrline, 0);
-				pos(0, screenheight);
+				term_setpos(0, screenheight);
 				printf("%*s", screenwidth, "");
 				return;
 			}
@@ -149,7 +145,7 @@ static void refresh(int full)
 
 	i++;
 	while (i < screenheight) {
-		pos(0, i++);
+		term_setpos(0, i++);
 		printf("~");
 	}
 }
@@ -346,68 +342,11 @@ static void merge_line(struct line *line)
 
 #define ESC "\033"
 
-static void getwinsize(void)
-{
-	int n;
-	char *endp;
-	struct console_device *cdev;
-	const char esc[] = ESC "7" ESC "[r" ESC "[999;999H" ESC "[6n";
-	char buf[64];
-
-	screenwidth = screenheight = 256;
-
-	for_each_console(cdev) {
-		int width, height;
-		uint64_t start;
-
-		if (!(cdev->f_active & CONSOLE_STDIN))
-			continue;
-		if (!(cdev->f_active & CONSOLE_STDOUT))
-			continue;
-
-		memset(buf, 0, sizeof(buf));
-
-		cdev->puts(cdev, esc, sizeof(esc));
-
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
-			continue;
-
-		height = simple_strtoul(buf + 2, &endp, 10);
-		width = simple_strtoul(endp + 1, NULL, 10);
-
-		screenwidth = min(screenwidth, width);
-		screenheight = min(screenheight, height);
-	}
-
-	pos(0, 0);
-}
-
 static void statusbar(const char *str)
 {
-	pos(0, screenheight+1);
+	term_setpos(0, screenheight+1);
 	printf("%*c\r%s", screenwidth, ' ', str);
-	pos(cursx, cursy);
+	term_setpos(cursx, cursy);
 }
 
 static int read_modal_key(bool is_modal)
@@ -563,7 +502,7 @@ static int do_edit(int argc, char *argv[])
 	/* check if we are not called as "edit" */
 	if (*argv[0] != 'e') {
 		smartscroll = 1;
-		getwinsize();
+		term_getsize(&screenwidth, &screenheight);
 
 		/* check if we are called as "vi" */
 		if (*argv[0] == 'v')
@@ -597,12 +536,12 @@ static int do_edit(int argc, char *argv[])
 
 	printf("\x1b[2J");
 
-	pos(0, -1);
+	term_setpos(0, -1);
 
 	if (is_vi) {
 		screenheight -= 2;
 		printf("\x1b[7m%*c\x1b[0m", screenwidth , ' ');
-		pos(0, screenheight-1);
+		term_setpos(0, screenheight-1);
 		printf("\x1b[7m%*c\x1b[0m", screenwidth , ' ');
 		printf("\r\x1b[7m%-25s\x1b[0m", argv[1]);
 	} else {
@@ -613,7 +552,7 @@ static int do_edit(int argc, char *argv[])
 	if (smartscroll)
 		printf("\x1b[2;%dr", screenheight);
 
-	pos(0, 0);
+	term_setpos(0, 0);
 
 	screenheight--; /* status line */
 
@@ -652,7 +591,7 @@ static int do_edit(int argc, char *argv[])
 
 		lastscrcol  = scrcol;
 		lastscrline = scrline;
-		pos(cursx, cursy);
+		term_setpos(cursx, cursy);
 
 again:
 		c = read_modal_key(is_vi);
diff --git a/include/term.h b/include/term.h
new file mode 100644
index 000000000000..097f84681d49
--- /dev/null
+++ b/include/term.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __TERM_H
+#define __TERM_H
+
+void term_setpos(int x, int y);
+void term_getsize(int *screenwidth, int *screenheight);
+
+#endif /* __LIBBB_H */
diff --git a/lib/Makefile b/lib/Makefile
index 54866f59cc05..0dde52527f41 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y			+= bcd.o
+obj-y			+= term.o
 obj-$(CONFIG_BOOTSTRAP)	+= bootstrap/
 obj-pbl-y		+= ctype.o
 obj-y			+= rbtree.o
diff --git a/lib/term.c b/lib/term.c
new file mode 100644
index 000000000000..64dd5e430478
--- /dev/null
+++ b/lib/term.c
@@ -0,0 +1,69 @@
+#include <console.h>
+#include <term.h>
+
+void term_setpos(int x, int y)
+{
+	printf("\x1b[%d;%dH", y + 2, x + 1);
+}
+
+void term_getsize(int *screenwidth, int *screenheight)
+{
+	int n;
+	char *endp;
+	struct console_device *cdev;
+	const char esc[] = "\e7" "\e[r" "\e[999;999H" "\e[6n";
+	char buf[64];
+
+	if (screenwidth)
+		*screenwidth = 256;
+	if (screenheight)
+		*screenheight = 256;
+
+	for_each_console(cdev) {
+		int width, height;
+		uint64_t start;
+
+		if (!(cdev->f_active & CONSOLE_STDIN))
+			continue;
+		if (!(cdev->f_active & CONSOLE_STDOUT))
+			continue;
+
+		memset(buf, 0, sizeof(buf));
+
+		cdev->puts(cdev, esc, sizeof(esc));
+
+		n = 0;
+
+		start = get_time_ns();
+
+		while (1) {
+			if (is_timeout(start, 100 * MSECOND))
+				break;
+
+			if (!cdev->tstc(cdev))
+				continue;
+
+			buf[n] = cdev->getc(cdev);
+
+			if (buf[n] == 'R')
+				break;
+
+			n++;
+		}
+
+		if (buf[0] != 27)
+			continue;
+		if (buf[1] != '[')
+			continue;
+
+		height = simple_strtoul(buf + 2, &endp, 10);
+		width = simple_strtoul(endp + 1, NULL, 10);
+
+		if (screenwidth)
+			*screenwidth = min(*screenwidth, width);
+		if (screenheight)
+			*screenheight = min(*screenheight, height);
+	}
+
+	term_setpos(0, 0);
+}
-- 
2.39.2



