Delivery-date: Fri, 26 Jul 2024 14:27:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sXK2G-0038xH-30
	for lore@lore.pengutronix.de;
	Fri, 26 Jul 2024 14:27:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sXK2G-0005ro-7A
	for lore@pengutronix.de; Fri, 26 Jul 2024 14:27:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WtLq1YtCvLqxr1fUaEx+Ib/15QJCJ28qeMK6m2s+/8Q=; b=cLzPtmD6ZNyQl90o0gnSBpwtOp
	OZRHtpeM1vbui7J66Ddjgq3XNfzxz1w8Dr/3QcbCLOBt2Q0IuahKjgOTBj9fR0gqCgBD12ty8WSkQ
	Mp5Z093VO8ZzUoOxOUjWCo+LjPI/Bx92eWP810VC7SHR5wV49lN7qkXxKY+0DQ9aJiiCGXGhYpceN
	X7GT8Z7jyAe0dRJG+r5RmFD5hgZkqd0Xwm/M+ITTLuCXd8DmMBJXPsyaD4d8O+zc4Regjb6o35EG8
	7A2R12iG4NwtHnOZ89kOvyDFSHZjsgwCZZdiB6GXucoI9vEELlZCRVq7hH2xgBuDbDLPkI9/EouO0
	u0lDFuBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXK1m-00000003q8b-40ND;
	Fri, 26 Jul 2024 12:26:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXK1i-00000003q7T-2dJj
	for barebox@lists.infradead.org;
	Fri, 26 Jul 2024 12:26:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sXK1h-0005h3-4h; Fri, 26 Jul 2024 14:26:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sXK1g-002KoY-Nj; Fri, 26 Jul 2024 14:26:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sXK1g-00ExvY-25;
	Fri, 26 Jul 2024 14:26:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 Jul 2024 14:26:22 +0200
Message-Id: <20240726122623.3566935-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_052626_686976_8E123E12 
X-CRM114-Status: GOOD (  18.69  )
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
Subject: [RESEND][PATCH 1/2] console: add new CONSOLE_ACTIVATE_ALL_FALLBACK option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have three CONSOLE_ACTIVATE options and every one of them has
drawbacks:

  - ACTIVATE_ALL: May write barebox log to external devices like MCUs
    that don't expect it

  - ACTIVATE_FIRST: Not applicable for most systems that probe from
    device tree, where the order of probe is not necessarily fixed,
    so what console is first may change over updates

  - ACTIVATE_NONE: has a misleading name and may leave the user without
    any consoles at all if nothing else activates a console

Let's add a new option and make it the default, which avoids all these
issues: Like ACTIVATE_NONE, it expects board code, DT or environment to
enable a console and if none of them do it falls back to activating all
consoles, so the user isn't kept in the dark with an error instructing
the user to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Sent out second patch only by mistake instead of both...
---
 common/Kconfig   | 19 ++++++++++++++++++-
 common/console.c | 27 +++++++++++++++++++++++++++
 2 files changed, 45 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 31360892aeef..2dda5ce5743a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -812,7 +812,7 @@ endchoice
 choice
 	prompt "Console activation strategy"
 	depends on CONSOLE_FULL
-	default CONSOLE_ACTIVATE_FIRST
+	default CONSOLE_ACTIVATE_ALL_FALLBACK
 
 config CONSOLE_ACTIVATE_FIRST
 	bool
@@ -831,6 +831,23 @@ config CONSOLE_ACTIVATE_ALL
 	  Only the first registered console will have the full startup
 	  log though.
 
+config CONSOLE_ACTIVATE_ALL_FALLBACK
+	bool
+	prompt "activate all consoles as fallback"
+	help
+	  This option is similar to CONFIG_CONSOLE_ACTIVATE_NONE in that it
+	  leaves consoles disabled on startup. If by the end of barebox
+	  startup, no consoles have been activated via board code, device
+	  tree or environment, barebox will enable all registered consoles
+	  as fallback, so the user has a chance to see output.
+
+	  This will be indicated by a fat error, so the user knows that
+	  the configuration needs to be fixed. If you don't see any
+	  output at all, consider trying again after enabling
+	  CONFIG_CONSOLE_ACTIVATE_ALL, so consoles are activated immediately
+	  at registration time and/or with CONFIG_DEBUG_LL, so barebox output
+	  is written even before console drivers were registered.
+
 config CONSOLE_ACTIVATE_NONE
 	prompt "leave all consoles disabled"
 	bool
diff --git a/common/console.c b/common/console.c
index 73b4c4d4db01..e83a3e1e2d7f 100644
--- a/common/console.c
+++ b/common/console.c
@@ -450,6 +450,33 @@ int console_unregister(struct console_device *cdev)
 }
 EXPORT_SYMBOL(console_unregister);
 
+static int console_activate_all_fallback(void)
+{
+	int activate = CONSOLE_STDIOE;
+	struct console_device *cdev;
+
+	for_each_console(cdev) {
+		if (cdev->f_active & (CONSOLE_STDOUT | CONSOLE_STDERR))
+			return 0;
+	}
+
+	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT))
+		activate &= ~CONSOLE_STDIN;
+
+	for_each_console(cdev)
+		console_set_active(cdev, activate);
+
+	/*
+	 * This is last resort, so the user is not kept in the dark.
+	 * Writing to all consoles is a bad idea as the devices at the
+	 * other side might get confused by it, thus the error log level.
+	 */
+	pr_err("No consoles were activated. Activating all consoles as fallback!\n");
+
+	return 0;
+}
+postenvironment_initcall(console_activate_all_fallback);
+
 static int getc_raw(void)
 {
 	struct console_device *cdev;
-- 
2.39.2



