Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9uv-0007UM-EW
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:35:35 +0000
Received: from geraet.fritz.box (i577B626B.versanet.de [87.123.98.107])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id EA7D0240015
 for <barebox@lists.infradead.org>; Wed, 22 Apr 2020 07:35:28 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 22 Apr 2020 09:35:17 +0200
Message-Id: <20200422073517.64477-3-ahmad@a3f.at>
In-Reply-To: <20200422073517.64477-1-ahmad@a3f.at>
References: <20200422073517.64477-1-ahmad@a3f.at>
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
Subject: [PATCH v2 3/3] startup: add $global.autoboot to make behavior
 configurable
To: barebox@lists.infradead.org

We already have a global_autoboot_state variable that controls barebox
init behavior on startup:

* ABORT      abort and fall into shell
* MENU       display boot menu
* BOOT       boot immediately, only abortable via ctrl+c
             during init
* COUNTDOWN  regular boot after count down

Exporting this as a device parameter allows us to support some
different boot scenarios:

* COUNTDOWN is the default
* ABORT boot always while debugging
* display MENU by default (e.g. for graphical boots)
* BOOT while ignoring external code calling console_countdown_abort()

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  * Add magic var description (Sascha)
  * Rebased on the other patches as well as Sascha magicvar commit
  * Reworded commit message to address aborting on autoboot=boot
---
 common/startup.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index bda782317697..796cd6cc7e3b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -164,6 +164,14 @@ static const char * const global_autoboot_abort_keys[] = {
 };
 static int global_autoboot_timeout = 3;
 
+static const char * const global_autoboot_states[] = {
+	[AUTOBOOT_COUNTDOWN] = "countdown",
+	[AUTOBOOT_ABORT] = "abort",
+	[AUTOBOOT_MENU] = "menu",
+	[AUTOBOOT_BOOT] = "boot",
+};
+static int global_autoboot_state = AUTOBOOT_COUNTDOWN;
+
 static bool test_abort(void)
 {
 	bool do_abort = false;
@@ -195,8 +203,6 @@ static bool test_abort(void)
 #define INITFILE "/env/bin/init"
 #define MENUFILE "/env/menu/mainmenu"
 
-static enum autoboot_state global_autoboot_state = AUTOBOOT_COUNTDOWN;
-
 /**
  * set_autoboot_state - set the autoboot state
  * @autoboot: the state to set
@@ -287,6 +293,10 @@ static int run_init(void)
 				  ARRAY_SIZE(global_autoboot_abort_keys));
 	globalvar_add_simple_int("autoboot_timeout",
 				 &global_autoboot_timeout, "%u");
+	globalvar_add_simple_enum("autoboot",
+				  &global_autoboot_state,
+				  global_autoboot_states,
+				  ARRAY_SIZE(global_autoboot_states));
 
 	setenv("PATH", "/env/bin");
 
@@ -394,6 +404,9 @@ void shutdown_barebox(void)
 	}
 }
 
+BAREBOX_MAGICVAR_NAMED(autoboot_state,
+                       global.autoboot,
+                       "Autoboot state. Possible values: countdown (default), abort, menu, boot");
 BAREBOX_MAGICVAR_NAMED(global_autoboot_abort_key,
                        global.autoboot_abort_key,
                        "Which key allows to interrupt autoboot. Possible values: any, ctrl-c");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
