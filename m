Delivery-date: Tue, 06 Aug 2024 10:12:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbFJS-006lYS-2L
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 10:12:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbFJS-0000Ub-2N
	for lore@pengutronix.de; Tue, 06 Aug 2024 10:12:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xHrnaZ3WQM/fvpadyGa3hyLbTvFLk+LbnRTL48bm/dQ=; b=jrRr2fsGZ9FE+fck1Qh+GKon/h
	kA4VWCgggiVBEg5vyRZBQD1/fpqHBn2ps0y6BMUd1CZa6RVO1tnGYomeMPQX21P/KlrDiBoUlKymi
	fYP66qrGJS275JOYrPo6EoosOAPMWnsCiW1KLdKLq7lpTeTmaEaVhD0OByNt0k61oqJN8jQemkLPG
	OrisJfhX4g/DUz9IDgNjdEFZqL5n+ZwO83JXUXZj2eDdgyqzn8C0EX0FL6wT1Ivmlz9msg+hxkerb
	uZWi+2W1bfCyQk3aAQD/L5WmXT4Yr+8BRGCkIxKUAPb2uv3i+e5RW7KMV8LjXRWBxUqttm03xWkjn
	ArZs7dXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbFIw-00000000tpu-2TTQ;
	Tue, 06 Aug 2024 08:12:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbFIc-00000000tmW-1dx9
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 08:12:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sbFIa-0000Nf-MZ; Tue, 06 Aug 2024 10:12:04 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sbFIa-004uOY-9L; Tue, 06 Aug 2024 10:12:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sbFIa-006Sxg-0T;
	Tue, 06 Aug 2024 10:12:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lgo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 Aug 2024 10:12:03 +0200
Message-Id: <20240806081203.1538702-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_011206_452418_050E5F0B 
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
Subject: [PATCH] console: countdown: report who is interrupting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fastboot and RATP automatically abort the boot countdown, so the user
can send more commands.

In cases where services talk either protocol unbeknownst to the user,
this can be very confusing, thus print an info message whenever this
happens.

Notably missing here is a printout when GPIO keys are triggered.
This is more complicated however, because getchar() only returns a
character without indication which console received it.
To debug such issues, the user can set global.autoboot_abort_key to
narrow down the culprit or enable CONFIG_INPUT_EVBUG.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console_countdown.c  | 4 +++-
 common/fastboot.c           | 2 +-
 common/ratp/ratp.c          | 2 +-
 include/console_countdown.h | 2 +-
 4 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/console_countdown.c b/common/console_countdown.c
index e41641aca23e..17f6fcd7aea7 100644
--- a/common/console_countdown.c
+++ b/common/console_countdown.c
@@ -13,8 +13,10 @@
 
 static bool console_countdown_timeout_abort;
 
-void console_countdown_abort(void)
+void console_countdown_abort(const char *reason)
 {
+	if (reason)
+		pr_info("\nCount down aborted by %s\n", reason);
 	console_countdown_timeout_abort = true;
 }
 
diff --git a/common/fastboot.c b/common/fastboot.c
index d283fc8fc098..532286703089 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -812,7 +812,7 @@ static void fb_run_command(struct fastboot *fb, const char *cmdbuf,
 	const struct cmd_dispatch_info *cmd;
 	int i;
 
-	console_countdown_abort();
+	console_countdown_abort("fastboot");
 
 	for (i = 0; i < num_commands; i++) {
 		cmd = &cmds[i];
diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index fddb286e01bc..5cbdb8bd5f85 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -501,7 +501,7 @@ int barebox_ratp(struct console_device *cdev)
 
 	ctx->poller_registered = true;
 
-	console_countdown_abort();
+	console_countdown_abort("RATP");
 
 	console_set_active(&ctx->ratp_console, CONSOLE_STDOUT | CONSOLE_STDERR |
 			CONSOLE_STDIN);
diff --git a/include/console_countdown.h b/include/console_countdown.h
index df8da71e8bee..f4bebf755b44 100644
--- a/include/console_countdown.h
+++ b/include/console_countdown.h
@@ -9,6 +9,6 @@
 #define CONSOLE_COUNTDOWN_EXTERN (1 << 5)
 
 int console_countdown(int timeout_s, unsigned flags, const char *keys, char *out_key);
-void console_countdown_abort(void);
+void console_countdown_abort(const char *reason);
 
 #endif /* __CONSOLE_COUNTDOWN_H */
-- 
2.39.2



