Delivery-date: Mon, 16 Dec 2024 12:37:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9PU-008nt9-2P
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 12:37:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9PU-0003Q8-JP
	for lore@pengutronix.de; Mon, 16 Dec 2024 12:37:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j+ofEO48ILcRSp8nhLD4lCPjZ0ECksCHxJLfwcnym28=; b=dMTgpoh8Rmddjl2u7jGjYs1Frj
	BiZsiEo3HyLMfnyUHKa60YeeUoXSXStfgh/oezWCYr2niKgnyzeDhPjNOT9kC6oUYDMDWN/+iJf6b
	wBMnqKrmW6SJmlSHbXdTqy6KnZ816CEDf9KevFVCsEyWKAaUnL61VzAgv9Y/nCzZ0WJcHu4yNYc0x
	vBoFjbg7mYodQ4nlq/WCw8THM4NVQFs/b+H8miEDCsO84F8gM5rxI3oMeBvA5O8/S4KqBK4Q4Duyx
	qT3LqO4ljZh3qW5OPtbUK6C+nChqHn83tTjzksfjjgQ92Rpx3BfmHVX/06pvs4aTarja/qmbL+swY
	el4tMUMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9P4-00000009r97-3erx;
	Mon, 16 Dec 2024 11:36:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9P1-00000009r6k-0GuN
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 11:36:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oz-0003AR-Pv; Mon, 16 Dec 2024 12:36:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oy-003ghX-2j;
	Mon, 16 Dec 2024 12:36:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oz-001hq4-1h;
	Mon, 16 Dec 2024 12:36:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Dec 2024 12:36:40 +0100
Message-Id: <20241216113640.403845-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241216113640.403845-1-a.fatoum@pengutronix.de>
References: <20241216113640.403845-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_033643_101383_6BDFCA76 
X-CRM114-Status: UNSURE (   8.91  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] startup: set barebox_main in data section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By initializing barebox_main in start_barebox(), we preclude changing
barebox_main before start_barebox() is called.

This can be useful, at least in sandbox. Therefore, let's initialize
barebox_main statically.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 4cb9cfcdaa49..898bef6d22e4 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -355,16 +355,15 @@ static void do_ctors(void)
 #endif
 }
 
-int (*barebox_main)(void);
+int (*barebox_main)(void)
+	= !IS_ENABLED(CONFIG_SHELL_NONE) &&
+           IS_ENABLED(CONFIG_COMMAND_SUPPORT) ? run_init : NULL;
 
 void __noreturn start_barebox(void)
 {
 	initcall_t *initcall;
 	int result;
 
-	if (!IS_ENABLED(CONFIG_SHELL_NONE) && IS_ENABLED(CONFIG_COMMAND_SUPPORT))
-		barebox_main = run_init;
-
 	do_ctors();
 
 	for (initcall = __barebox_initcalls_start;
-- 
2.39.5



