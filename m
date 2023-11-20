Delivery-date: Mon, 20 Nov 2023 08:23:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4ycW-0016XK-2g
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 08:23:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4ycW-0004eD-Ry
	for lore@pengutronix.de; Mon, 20 Nov 2023 08:23:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ryo203OOYjV7ERvy9nhiuAayqtI5zG/c2HUZtnkyYwk=; b=ZLTREMwiVLf4+QOgBwkMgYZYWm
	OfN9Hl3eGyO55FSz/5V+LeCwg7dXKlEi6NuyH+G83tl83Y/wxhZyc4Z0lDz5bWHBsXw3p+pmsu1Yc
	PssTWPdUpvMBs5kTZJjPiR+DkNh+ucgz2nqmZwI/TrPzvLwEbjnMCxn87+B72GsqfNsBb6x1nGXed
	cQUxYunv/YkygJVTxJfWgs81gNr8/f/fxSIsb5vyBNVOQHo6Be26V7D65/pK9uRMOF6/dqQwzBgVM
	6cE0ZQVVSo9qm6pwtR8FeaU4KBqQQ3anz+co9PpIDnXYaPZ0Xj0zm0/kZCSt/P8RFaY5WpAD5JwBc
	p2EzmQCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yb8-00BN0M-1Z;
	Mon, 20 Nov 2023 07:21:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yb1-00BMvy-1E
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 07:21:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-0004H0-Kh; Mon, 20 Nov 2023 08:21:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-00AIZ6-85; Mon, 20 Nov 2023 08:21:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-008Q4J-0V;
	Mon, 20 Nov 2023 08:21:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Hemer <S.Hemer@phytec.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Nov 2023 08:21:19 +0100
Message-Id: <20231120072122.2006805-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_232127_504732_296A0A8D 
X-CRM114-Status: GOOD (  10.46  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/4] console: define stub for console_get_first_active
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

console_get_first_active() is unconditionally called in startup.c to
check if the boot countdown can be skipped. The function is not defined
for CONFIG_CONSOLE_NONE however. Provide a stub in that case, so the
code can be compiled again.

This changes behavior: Configured countdown for systems without consoles
will be ignored and the system will boot directly. This is deemed
acceptable as it aligns behavior with systems with consoles that are
exclusively non-interactive and on the off-chance that a board requires
delays, it can always add a late init call delaying the boot.

Fixes: 66232c0ca70f ("startup: don't skip countdown if consoles were runtime enabled")
Reported-by: Steffen Hemer <S.Hemer@phytec.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/console.h | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/include/console.h b/include/console.h
index b8c901801e9f..018d47f69ef7 100644
--- a/include/console.h
+++ b/include/console.h
@@ -101,8 +101,6 @@ extern struct list_head console_list;
 
 extern int barebox_loglevel;
 
-struct console_device *console_get_first_active(void);
-
 int console_open(struct console_device *cdev);
 int console_close(struct console_device *cdev);
 int console_set_active(struct console_device *cdev, unsigned active);
@@ -201,6 +199,15 @@ static inline void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx) {}
 
 bool console_allow_color(void);
 
+#ifndef CONFIG_CONSOLE_NONE
+struct console_device *console_get_first_active(void);
+#else
+static inline struct console_device *console_get_first_active(void)
+{
+	return NULL;
+}
+#endif
+
 #ifdef CONFIG_CONSOLE_FULL
 void console_ctrlc_allow(void);
 void console_ctrlc_forbid(void);
-- 
2.39.2



