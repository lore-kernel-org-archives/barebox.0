Delivery-date: Tue, 30 Jul 2024 10:37:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYiMX-004PIx-1D
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:37:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYiMW-0007hE-I0
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:37:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qyyp7phksJic2uYpkCx8dIkFuykKNYzMSCrbZDlf3xY=; b=esn2xK+ivW5ofxngMIdGqJhCxa
	RInlxqguHqZ8H5/dN1mJhbxu2uM48LzfzIezQmBSjX6WWLx6kdkAQ74GmaUz+JfJ9GN048I/t4fMD
	sJZ+QkAXb9f5eDDESDVE9XQr2evoDa7UxMmv5hMH0y/4MLsWlSrZcwxnwiHkqMIIjMJOB4ltc4Aam
	HTwcRAUPmhaKvAbygfNq2tM+8MmiYoQwH+H+Up0OgQsbOwGNCx11zhG9HW9TNAdRO6HLKAJwvpzfG
	UjafgH22kagrlHdya14bt11DTRyYsgyd43h3D9VOnLWeejMR3/RUwil6LSJM7dUcQpRiykS7gKjKx
	tQiaTsew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYiM6-0000000EJdr-28ri;
	Tue, 30 Jul 2024 08:37:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYiJs-0000000EIoG-1Fvf
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:34:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYiJq-0007CW-RN; Tue, 30 Jul 2024 10:34:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYiJq-003F7r-EF; Tue, 30 Jul 2024 10:34:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYiJq-009FuX-17;
	Tue, 30 Jul 2024 10:34:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Casey Reeves <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Jul 2024 10:34:51 +0200
Message-Id: <20240730083451.2203330-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240730083451.2203330-1-a.fatoum@pengutronix.de>
References: <20240730083451.2203330-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_013456_419349_CBD1C710 
X-CRM114-Status: GOOD (  13.99  )
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
Subject: [PATCH v3 2/2] common: clarify help text for CONFIG_CONSOLE_ACTIVATE_* options
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
v1 -> v3:
  - no change
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



