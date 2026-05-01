Delivery-date: Fri, 01 May 2026 09:07:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxy-000n2a-22
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:07:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxx-00023B-Ud
	for lore@pengutronix.de; Fri, 01 May 2026 09:07:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bu9TA4wFNIYngB5B2T0fbiHJMd0/2YEes5TKIIm492I=; b=IhPvNc0D8VrOvmiFVt7uwKmlmG
	Dhqr2DsbWqho1iwRtaOwvvYyldOC5DZ7MIeTha0X0VDMkep89ZITqMA8jd67ASXqvtkTEiX7ascu4
	Grw+k8C6EQluf90qy87q7wWQR2VfQKjBGP82wFtRZeht+RHBLYIVdBFCCKDBjLr41JhyxnDRm6npF
	wZ8asdasWSyU9a+MQuFKToTHl8XjgW/u3g/ApO46clSyUBuYq2tX6ePiFdgfv0oGwBMbCQlNNQKmu
	jZbB6N14aQGBjUdtodbimx5SgL4P/FICuYBQiuLpuaixEgCxFRvNKf5/YRgs4p4ybI9hiElJE8xfp
	sbhRRuBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxX-00000006Rgc-2m4A;
	Fri, 01 May 2026 07:06:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxU-00000006RdU-12lT
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:06:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhxS-0001W8-Mg; Fri, 01 May 2026 09:06:42 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:53:56 +0200
Message-ID: <20260501070625.952091-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_000644_303768_C0669A8B 
X-CRM114-Status: GOOD (  11.28  )
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
Subject: [PATCH 2/9] lib: term: return error code from term_getsize()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of silently writing a magic value of 256 into the output
parameters on error, let callers distinguish the case that
"no interactive console responded" from a legitimate terminal size
by means of an error code.

No current user makes use of the 256 magic value, so we only need to
change term_getsize() itself.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/term.h |  2 +-
 lib/term.c     | 32 +++++++++++++++++++-------------
 2 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/include/term.h b/include/term.h
index 097f84681d49..e53fcffcfc28 100644
--- a/include/term.h
+++ b/include/term.h
@@ -3,6 +3,6 @@
 #define __TERM_H
 
 void term_setpos(int x, int y);
-void term_getsize(int *screenwidth, int *screenheight);
+int term_getsize(int *screenwidth, int *screenheight);
 
 #endif /* __LIBBB_H */
diff --git a/lib/term.c b/lib/term.c
index 0aa4612d0b08..78158a3036c3 100644
--- a/lib/term.c
+++ b/lib/term.c
@@ -11,20 +11,17 @@ void term_setpos(int x, int y)
 	printf("\x1b[%d;%dH", y + 2, x + 1);
 }
 
-void term_getsize(int *screenwidth, int *screenheight)
+int term_getsize(int *screenwidth, int *screenheight)
 {
 	int n;
+	int width = INT_MAX, height = INT_MAX;
+	bool found = false;
 	char *endp;
 	const char esc[] = "\e7" "\e[r" "\e[999;999H" "\e[6n";
 	char buf[64];
 
-	if (screenwidth)
-		*screenwidth = 256;
-	if (screenheight)
-		*screenheight = 256;
-
 	for_each_console(cdev) {
-		int width, height;
+		int w, h;
 		uint64_t start;
 
 		if (!(cdev->f_active & CONSOLE_STDIN))
@@ -60,14 +57,23 @@ void term_getsize(int *screenwidth, int *screenheight)
 		if (buf[1] != '[')
 			continue;
 
-		height = simple_strtoul(buf + 2, &endp, 10);
-		width = simple_strtoul(endp + 1, NULL, 10);
+		h = simple_strtoul(buf + 2, &endp, 10);
+		w = simple_strtoul(endp + 1, NULL, 10);
 
-		if (screenwidth)
-			*screenwidth = min(*screenwidth, width);
-		if (screenheight)
-			*screenheight = min(*screenheight, height);
+		width = min(w, width);
+		height = min(h, height);
+		found = true;
 	}
 
 	term_setpos(0, 0);
+
+	if (!found)
+		return -ENOENT;
+
+	if (screenwidth)
+		*screenwidth = width;
+	if (screenheight)
+		*screenheight = height;
+
+	return 0;
 }
-- 
2.47.3



