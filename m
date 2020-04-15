Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeSm-0007VI-Ts
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 09:36:10 +0000
Received: from geraet.fritz.box (muedsl-82-207-215-039.citykom.de
 [82.207.215.39]) (Authenticated sender: ahmad@a3f.at)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id B4138240010
 for <barebox@lists.infradead.org>; Wed, 15 Apr 2020 09:36:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 15 Apr 2020 11:36:00 +0200
Message-Id: <20200415093600.1662643-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Subject: [PATCH] startup: add $global.autoboot to make behavior configurable
To: barebox@lists.infradead.org

We already have a autoboot_state variable that controls barebox init
behavior on startup:

* ABORT:  abort and fall into shell
* MENU:   display boot menu
* BOOT:   boot directly without delay
* UNKNOWN: default; count down and then boot

Exporting this as a device parameter allows us to support some
different boot scenarios:

* ABORT boot always while debugging
* display MENU by default (e.g. for graphical boots)

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/startup.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/common/startup.c b/common/startup.c
index c417a4d0781a..ff890fa744ab 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -163,6 +163,13 @@ static const char * const global_autoboot_abort_keys[] = {
 };
 static int global_autoboot_timeout = 3;
 
+static const char * const autoboot_states[] = {
+	[AUTOBOOT_UNKNOWN] = "unknown",
+	[AUTOBOOT_ABORT] = "abort",
+	[AUTOBOOT_MENU] = "menu",
+	[AUTOBOOT_BOOT] = "boot",
+};
+
 static bool test_abort(void)
 {
 	bool do_abort = false;
@@ -194,7 +201,7 @@ static bool test_abort(void)
 #define INITFILE "/env/bin/init"
 #define MENUFILE "/env/menu/mainmenu"
 
-static enum autoboot_state autoboot_state = AUTOBOOT_UNKNOWN;
+static int autoboot_state = AUTOBOOT_UNKNOWN;
 
 /**
  * set_autoboot_state - set the autoboot state
@@ -285,6 +292,10 @@ static int run_init(void)
 				  ARRAY_SIZE(global_autoboot_abort_keys));
 	globalvar_add_simple_int("autoboot_timeout",
 				 &global_autoboot_timeout, "%u");
+	globalvar_add_simple_enum("autoboot",
+				  &autoboot_state,
+				  autoboot_states,
+				  ARRAY_SIZE(autoboot_states));
 
 	setenv("PATH", "/env/bin");
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
