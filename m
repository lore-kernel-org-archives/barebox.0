Delivery-date: Fri, 01 May 2026 09:07:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhy2-000n4X-15
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:07:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhy1-00028V-OB
	for lore@pengutronix.de; Fri, 01 May 2026 09:07:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z45NSJ+FNmkHoxCAP+myAg/P8qy7ZY7mehgwJe6/Ur8=; b=aphGg12x0UTGbK0YUw825RzME9
	0Yex58YoMWb6twzbz6nKlaoRXeiJJ/W3SeKAsVpDsFSDp2qPdEJqNE5+hvpr4KA1t2PsiKuTQuxdF
	tV8vNIC3wpfJY0EcDeylrXAwV1X8UQhrneIT7iBUqWfk3Rptc8H0uZibgM2pNjyQr7Di7m0KS6OU0
	fZp29vha8MonbyH/vRwObIiO7/WOQjztl36IkqFBzLGz4CrsXBvQEKS+dpORJuZvjn/K7Ui2zVZpW
	Huk2nhHgQWx0u55syNkkWY3E5gAUa6/SEKpSP/c5UqNLqd5uL6YZmVWOCShHHWFjrO42J+a+A4Zw6
	loD7FznQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxY-00000006Rh5-00b1;
	Fri, 01 May 2026 07:06:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxV-00000006Rdr-0D5y
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:06:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhxT-0001W8-GY; Fri, 01 May 2026 09:06:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:53:58 +0200
Message-ID: <20260501070625.952091-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_000645_084299_96B65780 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 4/9] lib: term: factor out single cdev handling from term_getsize
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The logic is easier to follow with the per-cdev code split off.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/term.h |  5 +++++
 lib/term.c     | 42 +++++++++++++++++++++++++++---------------
 2 files changed, 32 insertions(+), 15 deletions(-)

diff --git a/include/term.h b/include/term.h
index e53fcffcfc28..4845aad6ec66 100644
--- a/include/term.h
+++ b/include/term.h
@@ -2,7 +2,12 @@
 #ifndef __TERM_H
 #define __TERM_H
 
+struct console_device;
+
 void term_setpos(int x, int y);
 int term_getsize(int *screenwidth, int *screenheight);
 
+int term_cdev_get_size(struct console_device *cdev,
+		       int *screenwidth, int *screenheight);
+
 #endif /* __LIBBB_H */
diff --git a/lib/term.c b/lib/term.c
index 96fdb0737d31..3949aeb45136 100644
--- a/lib/term.c
+++ b/lib/term.c
@@ -72,29 +72,41 @@ static int term_cdev_read_reply(struct console_device *cdev,
 	return 0;
 }
 
+int term_cdev_get_size(struct console_device *cdev,
+		       int *screenwidth, int *screenheight)
+{
+	const char esc[] = "\e7" "\e[r" "\e[999;999H" "\e[6n";
+	int ret, params[2];
+
+	if (!(cdev->f_active & CONSOLE_STDIN))
+		return -ENOENT;
+	if (!(cdev->f_active & CONSOLE_STDOUT))
+		return -ENOENT;
+
+	term_cdev_drain(cdev);
+
+	console_puts(cdev, esc);
+
+	ret = term_cdev_read_reply(cdev, params, 2, 'R');
+	if (ret)
+		return ret;
+
+	*screenheight = params[0];
+	*screenwidth = params[1];
+
+	return 0;
+}
+
 int term_getsize(int *screenwidth, int *screenheight)
 {
 	int width = INT_MAX, height = INT_MAX;
 	bool found = false;
-	const char esc[] = "\e7" "\e[r" "\e[999;999H" "\e[6n";
 
 	for_each_console(cdev) {
-		int w, h, params[2];
+		int w, h;
 
-		if (!(cdev->f_active & CONSOLE_STDIN))
+		if (term_cdev_get_size(cdev, &w, &h))
 			continue;
-		if (!(cdev->f_active & CONSOLE_STDOUT))
-			continue;
-
-		term_cdev_drain(cdev);
-
-		console_puts(cdev, esc);
-
-		if (term_cdev_read_reply(cdev, params, 2, 'R'))
-			continue;
-
-		h = params[0];
-		w = params[1];
 
 		width = min(w, width);
 		height = min(h, height);
-- 
2.47.3



