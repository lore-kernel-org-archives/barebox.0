Delivery-date: Fri, 22 Nov 2024 17:06:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEWBA-0054hB-2K
	for lore@lore.pengutronix.de;
	Fri, 22 Nov 2024 17:06:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEWBA-0001ao-0b
	for lore@pengutronix.de; Fri, 22 Nov 2024 17:06:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=udgE7s58RBxwNftQGr9uZY4fwEYhOg/wyLEMu7+PHN4=; b=anl93llnE04Wrfda8NFFwQrCpE
	Qy3i2sELHirEpGBzS0D/slcpsLJ6T4DN6kDuAFtNE7haf9FmeHyqhx7m7ARjIok9EeMWdOF5ny4EK
	TG+uXqHuP7D+FwRYTiwLmAdKYzim9/q2tob3HFjliiZIyNtQ8bDTji0iBwQSbi5dZI+/QMfebHIPO
	i1hPGyNzwjT58LIJPrMCZc9MRIV0BQuRNIGit6A3nMlIIiN/b1YlxSqFt7Hbjcgnu7qmbgWPhWuaT
	cB9TzCF6ZoUVExFSO3J35/BRZqO9gOqk5iMjHwdVqcklbF1pJ12dYbO1LpRO7EoTdqUtPMYtH2++d
	xDtnxfHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEWAU-00000002mqj-1q3f;
	Fri, 22 Nov 2024 16:06:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEWAR-00000002mq1-1OIN
	for barebox@lists.infradead.org;
	Fri, 22 Nov 2024 16:06:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWAO-0001SF-TQ; Fri, 22 Nov 2024 17:05:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWAO-00261s-2K;
	Fri, 22 Nov 2024 17:05:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWAO-00GK8G-23;
	Fri, 22 Nov 2024 17:05:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 Nov 2024 17:05:55 +0100
Message-Id: <20241122160555.3890597-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241122160555.3890597-1-a.fatoum@pengutronix.de>
References: <20241122160555.3890597-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_080559_368379_6599757B 
X-CRM114-Status: GOOD (  11.16  )
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
Subject: [PATCH master 2/2] startup: do not bring up networking if console input disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Bringing up network interfaces is a development convenience.
If barebox is configured not to enable any console input by default,
it's reasonable to expect that the user wouldn't appreciate barebox
trying to get a DHCP lease when boot fails.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/startup.c b/common/startup.c
index 9510824a908a..d71d83c221dc 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -315,7 +315,7 @@ static int run_init(void)
 	if (autoboot == AUTOBOOT_BOOT)
 		run_command("boot");
 
-	if (IS_ENABLED(CONFIG_NET))
+	if (IS_ENABLED(CONFIG_NET) && !IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT))
 		eth_open_all();
 
 	if (autoboot == AUTOBOOT_MENU)
-- 
2.39.5



