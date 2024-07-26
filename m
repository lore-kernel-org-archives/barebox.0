Delivery-date: Fri, 26 Jul 2024 14:24:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sXJzg-0038vn-05
	for lore@lore.pengutronix.de;
	Fri, 26 Jul 2024 14:24:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sXJzf-0005LP-AJ
	for lore@pengutronix.de; Fri, 26 Jul 2024 14:24:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ukQvCvtkTSi0HBybfgDeeUfzFUjlssgKlgDP6wvlgbU=; b=qoxnP7YJsMA7PAKid8YcqEIQBH
	+r8v4sWwVy0nwYnjVRombZw57xM44t1dv8uClaMCB2YSpjtICC9vM5v1wBWCszPQdgdv5O+20nYp6
	oB7hy1Ee33yWURXdgh+tvwbh75rDBGaGyzq3D8OO3d99X6TLhGIs2gG+k4cvb8ONKJ4/RL97i5K8A
	hwX6Uj1wH5AUw140UVnvSS/NWH1LMHZxus3aZuCUmaI9enImv1UiWWcFGFTIAvcs0nQXC0rNl6pJj
	DzPrK7HglSmu+RjSLjXYenUd5pdUeESSfI6M7aB19erxeXnhCfRWuSyzeRYpthxtTbOQyV7+vv1hd
	+Ecp6hhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXJz6-00000003psi-3Xg6;
	Fri, 26 Jul 2024 12:23:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXJz3-00000003psG-2qKn
	for barebox@lists.infradead.org;
	Fri, 26 Jul 2024 12:23:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sXJz2-0005CK-1F; Fri, 26 Jul 2024 14:23:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sXJz1-002KoA-Hb; Fri, 26 Jul 2024 14:23:39 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sXJz1-00ExtB-1R;
	Fri, 26 Jul 2024 14:23:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Casey Reeves <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 Jul 2024 14:23:36 +0200
Message-Id: <20240726122336.3566793-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_052341_739202_7892A9E7 
X-CRM114-Status: GOOD (  12.62  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: clarify help text for CONFIG_CONSOLE_ACTIVATE_* options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_CONSOLE_ACTIVATE_NONE is an unfortunate name. The help text
explains how consoles are still activated, but omits the main way they
are activated: The device tree's /chosen/stdout-path property.

Similarly, CONFIG_CONSOLE_ACTIVATE_(FIRST/NONE) don't talk about the
implications of selecting them, so reword the help texts to better
inform the user.

Reported-by: Casey Reeves <contact@xogium.me>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 2dda5ce5743a..fea26262da86 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -818,9 +818,10 @@ config CONSOLE_ACTIVATE_FIRST
 	bool
 	prompt "activate first console on startup"
 	help
-	  Normally on startup all consoles are disabled, so you won't
-	  see anything from barebox starting. Enabling this option
-	  enables the first console.
+	  Select this to activate the first registered console.
+	  On many systems, devices are probed in no strict order,
+	  so you probably should say n here if you are probing
+	  from device tree and have more than one console.
 
 config CONSOLE_ACTIVATE_ALL
 	bool
@@ -831,6 +832,10 @@ config CONSOLE_ACTIVATE_ALL
 	  Only the first registered console will have the full startup
 	  log though.
 
+	  If you have consoles that aren't meant for barebox log output
+	  (e.g. a connected MCU), you will want to say n here and use
+	  CONFIG_ACTIVATE_ALL_FALLBACK or CONFIG_CONSOLE_ACTIVATE_NONE instead.
+
 config CONSOLE_ACTIVATE_ALL_FALLBACK
 	bool
 	prompt "activate all consoles as fallback"
@@ -852,9 +857,10 @@ config CONSOLE_ACTIVATE_NONE
 	prompt "leave all consoles disabled"
 	bool
 	help
-	  Leave all consoles disabled on startup. Board code or environment
-	  is responsible for enabling a console. Otherwise you'll get a working
-	  barebox, you just won't see anything.
+	  Leave all consoles disabled on startup. Board code, environment
+	  or the device tree /chosen/stdout-path property will be responsible
+	  for enabling a console. Otherwise you'll get a working barebox,
+	  you just won't see anything.
 
 endchoice
 
-- 
2.39.2



