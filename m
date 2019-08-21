Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Qfe-0001jD-JZ
 for barebox@lists.infradead.org; Wed, 21 Aug 2019 13:29:03 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992279AbfHUN3AN4QuP (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Wed, 21 Aug 2019 15:29:00 +0200
Date: Wed, 21 Aug 2019 15:28:59 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190821132859.GA21288@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] startup: Register autoboot variables earlier
To: Barebox List <barebox@lists.infradead.org>

Autoboot is controlled by autoboot_timeout and autoboot_abort_key
variables which might be altered by init scripts, so we need to
register them before those scripts are run. Otherwise they are
set back to defaultenv values upon registration.

Fixes: 35266d7e583f ("startup: Factor out the autoboot counter...")
Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 common/startup.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index bef9d29c6..b5b86d114 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -221,13 +221,6 @@ enum autoboot_state do_autoboot_countdown(void)
 	if (autoboot_state != AUTOBOOT_UNKNOWN)
 		return autoboot_state;
 
-	globalvar_add_simple_enum("autoboot_abort_key",
-				  &global_autoboot_abort_key,
-                                  global_autoboot_abort_keys,
-				  ARRAY_SIZE(global_autoboot_abort_keys));
-	globalvar_add_simple_int("autoboot_timeout",
-				 &global_autoboot_timeout, "%u");
-
 	menu_exists = stat(MENUFILE, &s) == 0;
 
 	if (menu_exists) {
@@ -272,6 +265,17 @@ static int run_init(void)
 	enum autoboot_state autoboot;
 	struct stat s;
 
+	/*
+	 * Register autoboot variables here as they might be altered by
+	 * init scripts.
+	 */
+	globalvar_add_simple_enum("autoboot_abort_key",
+				  &global_autoboot_abort_key,
+                                  global_autoboot_abort_keys,
+				  ARRAY_SIZE(global_autoboot_abort_keys));
+	globalvar_add_simple_int("autoboot_timeout",
+				 &global_autoboot_timeout, "%u");
+
 	setenv("PATH", "/env/bin");
 
 	/* Run legacy /env/bin/init if it exists */
-- 
2.23.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
