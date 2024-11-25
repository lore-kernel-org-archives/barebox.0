Delivery-date: Mon, 25 Nov 2024 16:39:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFbBg-000GNj-23
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:39:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFbBg-0005d8-Ju
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:39:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=go6L7SFcb9+eskmAXLA4HROErXCuktiSE8EP3n9qnu4=; b=omb6Z37Ss/djZOUNokdCDcHYga
	o4hIW1J0xcQwyfFgXvfTOnolDhDRPnFNYN/wHUZv8rmcR2PRJoii/ZYthBaFVN/QhSgbQGN74rJDg
	VFc+HyRv9tB9JJ2kxdYPq0jYaMNDUBlD29y4ZDhDM4llV9PtZkLhU/zNS/qz8NvVtb8SLCk5coLH/
	QgIT11U1MTmR8DOUM4nEZf/i/rKnsUC2Cvcc3KLkgdaKN1PFiPA/K0VpjKXEI/0FBXvoreKU4VCXf
	qlBV+ZPu7yHx6ehYlB3yP8UkpLiINC67HZVOkzgo6HKiS5DEgVLtRleyAsCp2ivnlSsaiZdjKgjYG
	XZAoqTmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFbBJ-00000008WvO-0QTk;
	Mon, 25 Nov 2024 15:39:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFbBG-00000008WuN-2XGw
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:39:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFbBF-0005XR-5Y; Mon, 25 Nov 2024 16:39:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFbBE-0006WB-0Q;
	Mon, 25 Nov 2024 16:39:16 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFbBE-006UwQ-0b;
	Mon, 25 Nov 2024 16:39:16 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:39:15 +0100
Message-Id: <20241125153915.1548894-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073918_641471_EA0E3596 
X-CRM114-Status: GOOD (  11.65  )
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
Subject: [PATCH] startup: don't fallback to shell from menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code to determine whether to drop to shell or to run the menu is a
bit hard to follow and may even be used to circumvent the menu in some
circumstances.

Fix this by wrapping the menu in an infinite loop and refuse dropping to
shell.

Suggested-by: Christian Melki <christian.melki@t2data.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index d71d83c221dc..4c497d95bedb 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -318,16 +318,17 @@ static int run_init(void)
 	if (IS_ENABLED(CONFIG_NET) && !IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT))
 		eth_open_all();
 
-	if (autoboot == AUTOBOOT_MENU)
+	if (autoboot != AUTOBOOT_MENU) {
+		if (autoboot == AUTOBOOT_ABORT && autoboot == global_autoboot_state)
+			watchdog_inhibit_all();
+
+		run_shell();
+	}
+
+	while (1)
 		run_command(MENUFILE);
 
-	if (autoboot == AUTOBOOT_ABORT && autoboot == global_autoboot_state)
-		watchdog_inhibit_all();
-
-	run_shell();
-	run_command(MENUFILE);
-
-	return 0;
+	unreachable();
 }
 
 typedef void (*ctor_fn_t)(void);
-- 
2.39.5



