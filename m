Delivery-date: Mon, 20 Nov 2023 08:23:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4ycZ-0016Xo-0I
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 08:23:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r4ycZ-0004f2-4J
	for lore@pengutronix.de; Mon, 20 Nov 2023 08:23:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uEsQGVwtFpzO55sbfc77KcjbNor3NkJzzzyaWktPjzs=; b=f+X2RY+MburAmFMieQBRZgNwrm
	/B2hrhhHTDfRmcPkvRYUtfr+xG67t0KpFd+stel4Dewao+Ok6QOmoiZOj3DB7EEvR89PghrKq25xc
	jMpmLlACddR6gO4MpC/MNJwcdyOULvh6DAT+o5UBvdxCT0uiR/vPlf6tF060RwLAG5Xkha2/Prcot
	8TWODl9j96p/LvilYCYwuXRjEQVW3Tw28wFCk8Xi6pQYU13HlrmqhD80rfFUEyYoN7fL83OX1tSEc
	HZC74WLG8PU6/XQA/v1ZvlYlvnVdcQ/57FPTQB3jz4ClMp9Ftl0XdgSvfWlFkQlkVMJ0z4hszluuf
	uH0J1caQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yb6-00BMzf-1W;
	Mon, 20 Nov 2023 07:21:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4yb1-00BMvz-1E
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 07:21:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-0004H1-M9; Mon, 20 Nov 2023 08:21:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-00AIZ7-9Y; Mon, 20 Nov 2023 08:21:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r4yax-008Q4J-0f;
	Mon, 20 Nov 2023 08:21:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Hemer <S.Hemer@phytec.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Nov 2023 08:21:20 +0100
Message-Id: <20231120072122.2006805-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120072122.2006805-1-a.fatoum@pengutronix.de>
References: <20231120072122.2006805-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_232127_504074_CD0C81E8 
X-CRM114-Status: UNSURE (   9.48  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/4] console: add for_each_console stub
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With CONFIG_CONSOLE_NONE, we have no consoles and no console_list, but
the unconditional for_each_console in the bootm earlycon code references
console_list leading to a linker error.

Let's define for_each_console as a no-op to fix this.

Fixes: d17f29dba030 ("console: add new $global.bootm.earlycon parameter")
Reported-by: Steffen Hemer <S.Hemer@phytec.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/console.h | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/include/console.h b/include/console.h
index 018d47f69ef7..b400b6bf49ec 100644
--- a/include/console.h
+++ b/include/console.h
@@ -94,9 +94,6 @@ struct console_device *console_get_by_dev(struct device *dev);
 struct console_device *console_get_by_name(const char *name);
 struct console_device *of_console_get_by_alias(const char *alias);
 
-extern struct list_head console_list;
-#define for_each_console(console) list_for_each_entry(console, &console_list, list)
-
 #define CFG_PBSIZE (CONFIG_CBSIZE+sizeof(CONFIG_PROMPT)+16)
 
 extern int barebox_loglevel;
@@ -200,8 +197,13 @@ static inline void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx) {}
 bool console_allow_color(void);
 
 #ifndef CONFIG_CONSOLE_NONE
+extern struct list_head console_list;
+#define for_each_console(console) list_for_each_entry(console, &console_list, list)
+
 struct console_device *console_get_first_active(void);
 #else
+#define for_each_console(console) while (((void)console, 0))
+
 static inline struct console_device *console_get_first_active(void)
 {
 	return NULL;
-- 
2.39.2



