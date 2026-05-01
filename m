Delivery-date: Fri, 01 May 2026 09:07:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxz-000n38-3C
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:07:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIhxz-00023z-Bd
	for lore@pengutronix.de; Fri, 01 May 2026 09:07:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XuZ5xSPxpRb44tooCiluQiHyX6ou594yfOSok626MJU=; b=c6VoPcgOmfRSyus6JYRXik0kXB
	0Jwgy9Y/TxvwoZ/9oAsaml8fVHsU99s2urrJG+uEGXLYgIG7W9eWEdRhnRey8Ohs50j9yo+Cmqlz1
	dGaQad1IA/No73fDSQshZdMrtPMN/EkgngTv7sDIeOmtdywTeVpw4lAyAQ4kS0D7544Lp7PTFdF/P
	lP4oX2pohoMOI4na0XkWTNu9sU/8STyS+Qgn42X9LttS7rVfYzkcXBhUFTGIl0kgYfXfpsx+DthHu
	FnwRlfT0ynGKFYT3lkL23suYMB/MOvfyiNpLdcEy2V+yuV6bx5PHp5+hEcwg4Zcq6l94OtDKmfuTU
	135+GYvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxY-00000006Rhj-2y5X;
	Fri, 01 May 2026 07:06:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIhxV-00000006ReI-20ci
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:06:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIhxT-0001W8-UP; Fri, 01 May 2026 09:06:44 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 08:53:59 +0200
Message-ID: <20260501070625.952091-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_000645_513644_DD920B20 
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
Subject: [PATCH 5/9] lib: term: fix term_getsize cursor restore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

term_getsize() sends \e7 (DECSC) per-cdev to Save Cursor position, but
fails to use \e8 (DECRC) to Restore Cursor on each console afterwards.

Instead, it attempts to restore with term_setpos(0, 0) which uses printf()
internally and thus hits all stdout consoles, including ones that were
never queried like fbconsole.

Fix this by making cursor saving/restoring per-console by means of
DECSC/DECRC and thereby removing the term_setpos(0, 0) call entirely.

Both existent callers are safe without the term_setpos(0, 0):

- edit.c immediately clears the screen with \e[2J and positions its own
  cursor
- watch.c sends \e[H\e[J (home + clear) before calling term_getsize

Also send DECRC on parse failure to restore cursor even when the terminal
didn't respond to the position query.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/term.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/lib/term.c b/lib/term.c
index 3949aeb45136..0a656d79e725 100644
--- a/lib/term.c
+++ b/lib/term.c
@@ -76,6 +76,7 @@ int term_cdev_get_size(struct console_device *cdev,
 		       int *screenwidth, int *screenheight)
 {
 	const char esc[] = "\e7" "\e[r" "\e[999;999H" "\e[6n";
+	const char restore[] = "\e8";
 	int ret, params[2];
 
 	if (!(cdev->f_active & CONSOLE_STDIN))
@@ -88,6 +89,9 @@ int term_cdev_get_size(struct console_device *cdev,
 	console_puts(cdev, esc);
 
 	ret = term_cdev_read_reply(cdev, params, 2, 'R');
+
+	console_puts(cdev, restore);
+
 	if (ret)
 		return ret;
 
@@ -113,8 +117,6 @@ int term_getsize(int *screenwidth, int *screenheight)
 		found = true;
 	}
 
-	term_setpos(0, 0);
-
 	if (!found)
 		return -ENOENT;
 
-- 
2.47.3



