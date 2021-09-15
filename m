Delivery-date: Wed, 15 Sep 2021 14:38:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQUBS-00069D-KM
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 14:38:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQUBR-00086c-Fc
	for lore@pengutronix.de; Wed, 15 Sep 2021 14:38:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4yRBMsDJGUaGxzSdoAGvDtCDl5+/0sum61y7R1hj3Zc=; b=2RAT4FPW6haHkN
	u6CmarqwI3bMIQpNfTW5/x0Ykju6Jf6uPSbqOotVYQ/8pfD9LDvp2PXCAEsXUM0tX0PHcFvVk0gxg
	FK8KGdpwJkQ9qJfViHDcGx5Veo5coJ58/7/Ll/HVE138Ai6SE3uNZnxeRXruuPV8uZf4QBJ2uBk1y
	jx0kUKVGW718rBY5LeURirndSmcWoglUz2zsc6R6BpW4XKVlw1ma99A84WpqrbtC2UM8BFCdkJUuh
	qw2tmLOKZdmEZCJ5ExPcSbZXULM2HpANh/tNjiz3xTG3AVp8ZiwnNM193oR4pyYPU3VcnCnzh3OjY
	38ZSqI1/lssLt2iqlAsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQU9v-0093Sh-Qt; Wed, 15 Sep 2021 12:37:03 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQU9q-0093S9-CQ
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 12:37:00 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 31E18240014;
 Wed, 15 Sep 2021 12:36:50 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 15 Sep 2021 14:36:44 +0200
Message-Id: <20210915123644.1292607-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_053658_746714_BE9495AB 
X-CRM114-Status: GOOD (  14.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] console: add new CONFIG_CONSOLE_DISABLE_INPUT option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add CONFIG_CONSOLE_DISABLE_INPUT to initialize the consoles without
input support, making default bootup effectively non-interactive.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 is <20201013075925.2984-1-r.czerwinski@pengutronix.de>
v1 -> v2:
  - Make it the default for CONSOLE_NONE. This allows skipping
    count down there early.
  - rename write-only to disable input. This is arguably clearer
  - allow re-enabling input on a per console basis. This way
    e.g. a gpio-key with limited function can be reenabled,
    but all other consoles have input disabled by default.
  - add new CONSOLE_STDIOE to make the three bits easier to
    write as a group.
---
 common/Kconfig          | 11 +++++++++++
 common/console.c        | 12 +++++++-----
 common/console_simple.c |  5 ++++-
 common/startup.c        |  5 +++++
 include/console.h       |  2 ++
 5 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index a9feae2ae866..9ae9238f88dc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -812,6 +812,17 @@ config CONSOLE_ALLOW_COLOR
 	  compile time default for colored console output. After boot it
 	  can be controlled using global.allow_color.
 
+config CONSOLE_DISABLE_INPUT
+	prompt "Disable input on all consoles by default (non-interactive)"
+	def_bool CONSOLE_NONE
+	help
+	  If enabled, all consoles are initially configured to not accept any input,
+	  making the consoles effectively non-interactive.
+	  The active device parameter can be used to override this on a per-console
+	  basis.
+	  CAUTION: this will also disable input devices by default, since they are
+	  registered as consoles.
+
 config PBL_CONSOLE
 	depends on PBL_IMAGE
 	depends on !CONSOLE_NONE
diff --git a/common/console.c b/common/console.c
index ad1a6aaab2a0..0368c72d0b10 100644
--- a/common/console.c
+++ b/common/console.c
@@ -328,7 +328,7 @@ int console_register(struct console_device *newcdev)
 		return of_platform_populate(serdev_node, NULL, dev);
 
 	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev, &baudrate)) {
-		activate = 1;
+		activate = CONSOLE_STDIOE;
 		console_set_stdoutpath(newcdev, baudrate);
 	}
 
@@ -349,16 +349,18 @@ int console_register(struct console_device *newcdev)
 
 	if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_FIRST)) {
 		if (list_empty(&console_list))
-			activate = 1;
+			activate = CONSOLE_STDIOE;
 	} else if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_ALL)) {
-		activate = 1;
+		activate = CONSOLE_STDIOE;
 	}
 
 	list_add_tail(&newcdev->list, &console_list);
 
+	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT))
+		activate &= ~CONSOLE_STDIN;
+
 	if (activate)
-		console_set_active(newcdev, CONSOLE_STDIN |
-				CONSOLE_STDOUT | CONSOLE_STDERR);
+		console_set_active(newcdev, activate);
 
 	/* expose console as device in fs */
 	newcdev->devfs.name = basprintf("%s%d", newcdev->class_dev.name,
diff --git a/common/console_simple.c b/common/console_simple.c
index 42224842c5ea..3b95570e5e76 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -92,7 +92,10 @@ int console_register(struct console_device *newcdev)
 		newcdev->setbrg(newcdev, newcdev->baudrate);
 	}
 
-	newcdev->f_active = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	newcdev->f_active = CONSOLE_STDIOE;
+
+	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT))
+		newcdev->f_active = ~CONSOLE_STDIN;
 
 	barebox_banner();
 
diff --git a/common/startup.c b/common/startup.c
index d170cb8a7c5a..0c7033f38186 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -241,6 +241,11 @@ enum autoboot_state do_autoboot_countdown(void)
 	if (autoboot_state != AUTOBOOT_UNKNOWN)
 		return autoboot_state;
 
+	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT)) {
+		printf("\nNon-interactive console, booting system\n");
+		return autoboot_state = AUTOBOOT_BOOT;
+	}
+
 	if (global_autoboot_state != AUTOBOOT_COUNTDOWN)
 		return global_autoboot_state;
 
diff --git a/include/console.h b/include/console.h
index a71d0da42ed0..5d5783ca6668 100644
--- a/include/console.h
+++ b/include/console.h
@@ -18,6 +18,8 @@
 #define CONSOLE_STDOUT          (1 << 1)
 #define CONSOLE_STDERR          (1 << 2)
 
+#define CONSOLE_STDIOE          (CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR)
+
 enum console_mode {
 	CONSOLE_MODE_NORMAL,
 	CONSOLE_MODE_RS485,
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

