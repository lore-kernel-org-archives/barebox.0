Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSFDb-0004kT-J6
 for barebox@lists.infradead.org; Tue, 13 Oct 2020 07:59:36 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 13 Oct 2020 09:59:25 +0200
Message-Id: <20201013075925.2984-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] console: add new write-only option
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add CONFIG_CONSOLE_WRITEONLY to configure the consoles as write-only,
making the bootup effectively non-interactive.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/Kconfig          | 11 +++++++++++
 common/console.c        |  2 +-
 common/console_simple.c |  5 ++++-
 common/startup.c        |  5 +++++
 4 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 1a5bb53182..abf9b7bd73 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -775,6 +775,17 @@ config CONSOLE_ALLOW_COLOR
 	  compile time default for colored console output. After boot it
 	  can be controlled using global.allow_color.
 
+config CONSOLE_WRITEONLY
+	prompt "Enable writeonly consoles (non-interactive)"
+	depends on CONSOLE_FULL || CONSOLE_SIMPLE
+	bool
+	help
+	  If enabled, all consoles are configured to be write-only, meaning
+	  they will not read any input, making the console effectively
+	  non-interactive.
+	  CAUTION: this will also disable input devices, since they are registered as
+	  consoles.
+
 config PBL_CONSOLE
 	depends on PBL_IMAGE
 	depends on !CONSOLE_NONE
diff --git a/common/console.c b/common/console.c
index 3375ecb7e5..fb26886f8c 100644
--- a/common/console.c
+++ b/common/console.c
@@ -93,7 +93,7 @@ int console_set_active(struct console_device *cdev, unsigned flag)
 {
 	int ret;
 
-	if (!cdev->getc)
+	if (!cdev->getc || IS_ENABLED(CONFIG_CONSOLE_WRITEONLY))
 		flag &= ~CONSOLE_STDIN;
 	if (!cdev->putc)
 		flag &= ~(CONSOLE_STDOUT | CONSOLE_STDERR);
diff --git a/common/console_simple.c b/common/console_simple.c
index 42224842c5..75257c7b08 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -92,7 +92,10 @@ int console_register(struct console_device *newcdev)
 		newcdev->setbrg(newcdev, newcdev->baudrate);
 	}
 
-	newcdev->f_active = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	if (IS_ENABLED(CONFIG_CONSOLE_WRITEONLY))
+		newcdev->f_active = CONSOLE_STDOUT | CONSOLE_STDERR;
+	else
+		newcdev->f_active = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 
 	barebox_banner();
 
diff --git a/common/startup.c b/common/startup.c
index ea7ce6b8da..d7bf99df14 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -253,6 +253,11 @@ enum autoboot_state do_autoboot_countdown(void)
 
 	menu_exists = stat(MENUFILE, &s) == 0;
 
+	if (IS_ENABLED(CONFIG_CONSOLE_WRITEONLY)) {
+		printf("\nNon-interactive console, booting system\n");
+		return autoboot_state = AUTOBOOT_BOOT;
+	}
+
 	if (menu_exists) {
 		printf("\nHit m for menu or %s to stop autoboot: ",
 		       global_autoboot_abort_keys[global_autoboot_abort_key]);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
