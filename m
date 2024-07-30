Delivery-date: Tue, 30 Jul 2024 10:37:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYiMX-004PJI-2h
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:37:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYiMX-0007hi-2v
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:37:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ya4ndfTSs5obDYIlZl0JX3aaHuZqCEYewJvB1M0Q8wo=; b=JR93DY+nQk8Lq09FJdjuGFSpnm
	/5xbHsT9s/emFBeVDkusoOX5GQYmB6EFB4AtTcWsCduy1nwV2+oc+Dwpx8vLZQkfiaR8CNqAR/iPj
	g0PFTYKNhqGv22++kjdtIbValtAOZX5pFYGHEFcbzzPYL2Xr3U7AH87/SNHN+BRnDh0wgReG6pQfE
	U6ROPMdHS6YrisQqGNr148GbDPzEXPrH6JduNE9Sac5kdzlQdUstFxRgWUzqcgn2M2w1cl9KmGwqd
	V5WTv4x8guRY8h2Haputn++JSbB6S6c4wQpntk0Lsm1+lEPQ2fsYzuIeM/3r2j8+yC051RPF0J6i4
	hLm/pXUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYiM5-0000000EJdM-3U2A;
	Tue, 30 Jul 2024 08:37:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYiJs-0000000EIoI-1GbC
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:34:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYiJq-0007CV-Pj; Tue, 30 Jul 2024 10:34:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYiJq-003F7q-Cf; Tue, 30 Jul 2024 10:34:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYiJq-009FuX-0y;
	Tue, 30 Jul 2024 10:34:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Jul 2024 10:34:50 +0200
Message-Id: <20240730083451.2203330-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_013456_438204_E6E694D7 
X-CRM114-Status: GOOD (  19.50  )
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
Subject: [PATCH v3 1/2] console: add new CONSOLE_ACTIVATE_ALL_FALLBACK option
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
v2 -> v3:
  - actually use CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK in C-code (Sascha)
v1 -> v2 (RESEND):
  - added this missing patch
---
 common/Kconfig   | 19 ++++++++++++++++++-
 common/console.c | 29 +++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+), 1 deletion(-)

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
index 73b4c4d4db01..9db994220e67 100644
--- a/common/console.c
+++ b/common/console.c
@@ -450,6 +450,35 @@ int console_unregister(struct console_device *cdev)
 }
 EXPORT_SYMBOL(console_unregister);
 
+static __maybe_unused int console_activate_all_fallback(void)
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
+#ifdef CONSOLE_ACTIVATE_ALL_FALLBACK
+postenvironment_initcall(console_activate_all_fallback);
+#endif
+
 static int getc_raw(void)
 {
 	struct console_device *cdev;
-- 
2.39.2



