Delivery-date: Mon, 15 Dec 2025 09:25:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3tL-00BfzW-39
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:25:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3tL-0008Pi-DJ
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:25:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=G77dPlDEZx4H8fdqTuMR6AGuZdTwRSg7y2nPAf9EQXs=; b=Nd5OnOEYE+r5z/B3taOHIDmxo5
	OBHIZdfrzcbjPaNpdswqN2lXoBPlMTDdSppp2ttBM8YR93WUde/+WMV8hWe6G1y/fHNYdooKeN5f/
	aWvSYbAUFfWj3m4BDiwqPkIv/eeK4XDxsOa9eFBC+I5+A34ZsqliiGN0HlQ4CDaGIo3XheM919Ffg
	wNiYdUZk83QWcusxgCRyVDe3VkQE0voC00348TSD1L91UIYDtrnBvRPYkv+XqjTUBuCoF4n8EVpOf
	wIZyHBbGH+wlUuEkFJ1PdEAeEnzW0KRUAB3/b27+RZULp8AwwuRZuiBdNNFaY8C3FGzs0iMbhGDph
	Q4BZbtFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3sw-00000003G43-0rAd;
	Mon, 15 Dec 2025 08:24:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3ss-00000003G29-0Lca
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:24:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3sp-0008GD-FK; Mon, 15 Dec 2025 09:24:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3sp-005kUP-0u;
	Mon, 15 Dec 2025 09:24:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3sp-00000008IwD-0msC;
	Mon, 15 Dec 2025 09:24:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:24:37 +0100
Message-ID: <20251215082442.1977789-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_002446_126017_01A5F455 
X-CRM114-Status: GOOD (  11.42  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] startup: implement get_autoboot_state() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This helper returns the last autoboot state used and can thus be used to
detect if boot was aborted manually.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c  | 24 ++++++++++++++++++------
 include/barebox.h |  1 +
 2 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 73cf4a495b9c..81a3ae1513c2 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -274,11 +274,22 @@ static int register_autoboot_vars(void)
 }
 postcore_initcall(register_autoboot_vars);
 
+static enum autoboot_state current_autoboot = AUTOBOOT_UNKNOWN;
+
+/**
+ * get_autoboot_state - get the autoboot state
+ *
+ * This functions returns the autoboot state last used.
+ */
+enum autoboot_state get_autoboot_state(void)
+{
+	return current_autoboot;
+}
+
 static int run_init(void)
 {
 	const char *bmode, *cmdline;
 	bool env_bin_init_exists;
-	enum autoboot_state autoboot;
 	struct stat s;
 	glob_t g;
 	int i, ret;
@@ -355,19 +366,20 @@ static int run_init(void)
 		free(scr);
 	}
 
-	autoboot = do_autoboot_countdown();
+	current_autoboot = do_autoboot_countdown();
 
 	console_ctrlc_allow();
 
-	if (autoboot == AUTOBOOT_BOOT)
+	if (current_autoboot == AUTOBOOT_BOOT)
 		run_command("boot");
 
 	if (IS_ENABLED(CONFIG_NET) && !IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT) &&
-	    autoboot != AUTOBOOT_HALT)
+	    current_autoboot != AUTOBOOT_HALT)
 		eth_open_all();
 
-	if (autoboot != AUTOBOOT_MENU) {
-		if (autoboot == AUTOBOOT_ABORT && autoboot == global_autoboot_state)
+	if (current_autoboot != AUTOBOOT_MENU) {
+		if (current_autoboot == AUTOBOOT_ABORT &&
+		    current_autoboot == global_autoboot_state)
 			watchdog_inhibit_all();
 
 		run_shell();
diff --git a/include/barebox.h b/include/barebox.h
index 6f3179d4bd62..4e694e0db9a6 100644
--- a/include/barebox.h
+++ b/include/barebox.h
@@ -40,6 +40,7 @@ enum autoboot_state {
 	AUTOBOOT_UNKNOWN,
 };
 
+enum autoboot_state get_autoboot_state(void);
 void set_autoboot_state(enum autoboot_state autoboot);
 enum autoboot_state do_autoboot_countdown(void);
 
-- 
2.47.3



