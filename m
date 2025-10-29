Delivery-date: Wed, 29 Oct 2025 09:37:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE1g6-00Cz4Z-1X
	for lore@lore.pengutronix.de;
	Wed, 29 Oct 2025 09:37:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE1g5-0007LV-PM
	for lore@pengutronix.de; Wed, 29 Oct 2025 09:37:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h9IcmM9bqIzTZ47LVS1CwQ+ZZlH/bHdP4Q4wmx70B00=; b=cw+m6nynTvXHwP4eAnea4Ao4h/
	7JbucKf06Pr2E0rWqaEG/kZBXnP+M1Jm8yg+uGgJZRYayyNEqRgDYSNsGRtcFhitAT9sdk6018XcV
	TNpQ0gPjViHMogMWCM1gpP8hx+y3CP3tuN2LV/DBa7estrRttM5ecGYnetxsE2Bwd5CGJEhYsg1aY
	gk3qLBmN4Sf17xzQIFQzrdWyuOloENHU/gqWfWBM/nxPz29V5VgQyTSHMJdsfuB79iXReYyWGDZb9
	/fDobAHFQv0ohR3U7XrjyCzfhOwBru/1ua7Oqi629MdyRFnj4+kSrb8RNzipmNi8H+MCNyAJQxS8D
	CT8UaO8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE1fa-00000000KSB-1aPa;
	Wed, 29 Oct 2025 08:36:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE1fY-00000000KRA-0zsX
	for barebox@lists.infradead.org;
	Wed, 29 Oct 2025 08:36:37 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vE1fW-0007D6-2a; Wed, 29 Oct 2025 09:36:34 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 29 Oct 2025 09:35:23 +0100
Message-ID: <20251029083627.3464965-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_013636_280249_70ED0CB0 
X-CRM114-Status: GOOD (  17.13  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3] console_common: get_first_active: respect security policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the console input is deactivated through a security policy, then
there is no need to iterate over the current consoles, as none should
have a STDIN.

Since this stretches the definition of active, the function is renamed
to console_get_first_interactive to make it clearer, what it does.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
v2:
Fix in console common instead of working around it in startup.c

v3:
Renamed to console_get_first_interactive

 arch/arm/mach-omap/xload.c      |  2 +-
 arch/powerpc/mach-mpc85xx/fdt.c |  2 +-
 commands/loadb.c                |  2 +-
 commands/loadxy.c               |  4 ++--
 common/console_common.c         | 10 ++++++++--
 common/startup.c                |  2 +-
 include/console.h               |  4 ++--
 7 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index e632b53788..d0d8c564b5 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -181,7 +181,7 @@ static void *omap_serial_boot(void){
 		return NULL;
 	}
 
-	cdev = console_get_first_active();
+	cdev = console_get_first_interactive();
 	if (!cdev) {
 		printf("failed to get console\n");
 		return NULL;
diff --git a/arch/powerpc/mach-mpc85xx/fdt.c b/arch/powerpc/mach-mpc85xx/fdt.c
index de0114ad64..ee43627d8c 100644
--- a/arch/powerpc/mach-mpc85xx/fdt.c
+++ b/arch/powerpc/mach-mpc85xx/fdt.c
@@ -75,7 +75,7 @@ static int fdt_stdout_setup(struct device_node *blob)
 		goto error;
 	}
 
-	cdev = console_get_first_active();
+	cdev = console_get_first_interactive();
 	if (cdev)
 		sprintf(sername, "serial%d", cdev->dev->id);
 	else
diff --git a/commands/loadb.c b/commands/loadb.c
index 140d3743f6..15e844ea69 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -628,7 +628,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 			return -ENODEV;
 		}
 	} else {
-		cdev = console_get_first_active();
+		cdev = console_get_first_interactive();
 		if (!cdev) {
 			printf("No console device with STDIN and STDOUT\n");
 			return -ENODEV;
diff --git a/commands/loadxy.c b/commands/loadxy.c
index e2d1a11a2c..dd9a3b8b4b 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -61,7 +61,7 @@ static int do_loady(int argc, char *argv[])
 	if (cname)
 		cdev = console_get_by_name(cname);
 	else
-		cdev = console_get_first_active();
+		cdev = console_get_first_interactive();
 	if (!cdev) {
 		printf("%s:No console device %s with STDIN and STDOUT\n",
 		       argv[0], cname ? cname : "default");
@@ -151,7 +151,7 @@ static int do_loadx(int argc, char *argv[])
 	if (cname)
 		cdev = console_get_by_name(cname);
 	else
-		cdev = console_get_first_active();
+		cdev = console_get_first_interactive();
 	if (!cdev) {
 		printf("%s:No console device %s with STDIN and STDOUT",
 		       argv[0], cname ? cname : "default");
diff --git a/common/console_common.c b/common/console_common.c
index 5b7a64c99c..ba9fd746c0 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -23,6 +23,7 @@
 #include <linux/math64.h>
 #include <linux/sizes.h>
 #include <linux/overflow.h>
+#include <security/config.h>
 
 #ifndef CONFIG_CONSOLE_NONE
 
@@ -327,10 +328,15 @@ EXPORT_SYMBOL(console_get_by_name);
  * @return console device which is registered with CONSOLE_STDIN and
  * CONSOLE_STDOUT
  */
-struct console_device *console_get_first_active(void)
+struct console_device *console_get_first_interactive(void)
 {
 	struct console_device *cdev;
 	const unsigned char active = CONSOLE_STDIN | CONSOLE_STDOUT;
+
+	/* if no console input is allows, then we can't have STDIN on any. */
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return NULL;
+
 	/*
 	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
 	 * same output console
@@ -342,7 +348,7 @@ struct console_device *console_get_first_active(void)
 
 	return NULL;
 }
-EXPORT_SYMBOL(console_get_first_active);
+EXPORT_SYMBOL(console_get_first_interactive);
 
 struct console_device *of_console_get_by_alias(const char *alias)
 {
diff --git a/common/startup.c b/common/startup.c
index 4313435f05..82ff45096b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -188,7 +188,7 @@ enum autoboot_state do_autoboot_countdown(void)
 	if (autoboot_state != AUTOBOOT_UNKNOWN)
 		return autoboot_state;
 
-	if (!console_get_first_active() &&
+	if (!console_get_first_interactive() &&
 	    global_autoboot_state != AUTOBOOT_ABORT &&
 	    global_autoboot_state != AUTOBOOT_HALT) {
 		printf("\nNon-interactive console, booting system\n");
diff --git a/include/console.h b/include/console.h
index 590a78110d..37e127e175 100644
--- a/include/console.h
+++ b/include/console.h
@@ -199,7 +199,7 @@ bool console_allow_color(void);
 extern struct list_head console_list;
 #define for_each_console(console) list_for_each_entry(console, &console_list, list)
 
-struct console_device *console_get_first_active(void);
+struct console_device *console_get_first_interactive(void);
 
 extern int barebox_loglevel;
 static inline int barebox_set_loglevel(int loglevel)
@@ -211,7 +211,7 @@ static inline int barebox_set_loglevel(int loglevel)
 #else
 #define for_each_console(console) while (((void)console, 0))
 
-static inline struct console_device *console_get_first_active(void)
+static inline struct console_device *console_get_first_interactive(void)
 {
 	return NULL;
 }
-- 
2.47.3



