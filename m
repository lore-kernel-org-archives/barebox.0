Delivery-date: Mon, 13 Dec 2021 22:11:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbO-005g9m-25
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:11:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsbL-0003Jn-GP
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:11:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02ogjUwN+ujykeO9OZcostoATq2SD4od22QlkZx61wk=; b=DMCIJDBhkImBSo
	Uw+KILOEBLs9NwzpuRouEitxCTrvdDj3hafCOwJ8QXeh8LVCHJNXXpq8hm6O6bdcrGbeUcVxxF4yZ
	0A2N6FUdlHy3zBDhx5vQtqoaya3c7zSl0+PATVoH+BRsDvLsyWkRo3RSHJJe5rjHtiqvWwl97nlOq
	Q5IQyW4bkQMeM5t8JezuUr7iLoiecuWvhanrdyEJaiGxZMdzbvnNRZUr2MDAAc1JsG28RTAocPCCh
	f3iSD3vKK71MZNynR04owpAemcakITOUGxPAsRj3z4w6pLh5Snln0gZrBsamp9r8wZNw/RyC3RQW6
	JOJCM4YHw95l0JDQXP4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsZq-00BP4G-SX; Mon, 13 Dec 2021 21:09:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZM-00BOoa-Bt
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:16 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZK-0002T8-VE; Mon, 13 Dec 2021 22:09:10 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpU-Cb; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:09:00 +0100
Message-Id: <20211213210905.3399551-21-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_130912_507466_45DE280C 
X-CRM114-Status: GOOD (  14.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/25] edit: improve screen size detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When detecting the screen size iterate over all active consoles and
probe the screen size individually. The smallest sizes are then used
for the editor. This fixes the editor size when multiple consoles are
activated. Also not all consoles may support reading back the cursor
position, so do not wait forever for the answer, but use a timeout
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/edit.c | 57 +++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 48 insertions(+), 9 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index f1e4e4d5c2..30448cbc04 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -12,6 +12,7 @@
 #include <errno.h>
 #include <xfuncs.h>
 #include <linux/stat.h>
+#include <console.h>
 
 #define TABSPACE 8
 
@@ -347,19 +348,57 @@ static void merge_line(struct line *line)
 
 static void getwinsize(void)
 {
-	int i = 0, r;
-	char buf[100];
+	int n;
 	char *endp;
+	struct console_device *cdev;
+	const char esc[] = ESC "7" ESC "[r" ESC "[999;999H" ESC "[6n";
+	char buf[64];
 
-	printf(ESC "7" ESC "[r" ESC "[999;999H" ESC "[6n");
+	screenwidth = screenheight = 256;
 
-	while ((r = getchar()) != 'R') {
-		buf[i] = r;
-		i++;
-	}
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
 
-	screenheight = simple_strtoul(buf + 2, &endp, 10);
-	screenwidth = simple_strtoul(endp + 1, NULL, 10);
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
+		screenwidth = min(screenwidth, width);
+		screenheight = min(screenheight, height);
+	}
 
 	pos(0, 0);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

