Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9uv-0007UH-EV
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:35:35 +0000
Received: from geraet.fritz.box (i577B626B.versanet.de [87.123.98.107])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 78DBF24000D
 for <barebox@lists.infradead.org>; Wed, 22 Apr 2020 07:35:28 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 22 Apr 2020 09:35:16 +0200
Message-Id: <20200422073517.64477-2-ahmad@a3f.at>
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
Subject: [PATCH v2 2/3] startup: don't clobber original autoboot state
To: barebox@lists.infradead.org

do_autoboot_countdown changes autoboot state if the user presses m for
menu or ctrl+c to abort during count down. This is an internal detail
and doesn't need to be reflected in the state of the global variable.

This will improve UX when exporting the variable in the follow-up
commit, because on a regular boot it $autoboot will expand to countdown
instead of abort/boot/menu dependent on prior user input.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  * New commit
---
 common/startup.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 7373ba7d0cd3..bda782317697 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -195,7 +195,7 @@ static bool test_abort(void)
 #define INITFILE "/env/bin/init"
 #define MENUFILE "/env/menu/mainmenu"
 
-static enum autoboot_state autoboot_state = AUTOBOOT_COUNTDOWN;
+static enum autoboot_state global_autoboot_state = AUTOBOOT_COUNTDOWN;
 
 /**
  * set_autoboot_state - set the autoboot state
@@ -206,7 +206,7 @@ static enum autoboot_state autoboot_state = AUTOBOOT_COUNTDOWN;
  */
 void set_autoboot_state(enum autoboot_state autoboot)
 {
-	autoboot_state = autoboot;
+	global_autoboot_state = autoboot;
 }
 
 /**
@@ -222,6 +222,7 @@ void set_autoboot_state(enum autoboot_state autoboot)
  */
 enum autoboot_state do_autoboot_countdown(void)
 {
+	enum autoboot_state autoboot_state;
 	unsigned flags = CONSOLE_COUNTDOWN_EXTERN;
 	int ret;
 	struct stat s;
@@ -229,8 +230,8 @@ enum autoboot_state do_autoboot_countdown(void)
 	char *abortkeys = NULL;
 	unsigned char outkey;
 
-	if (autoboot_state != AUTOBOOT_COUNTDOWN)
-		return autoboot_state;
+	if (global_autoboot_state != AUTOBOOT_COUNTDOWN)
+		return global_autoboot_state;
 
 	menu_exists = stat(MENUFILE, &s) == 0;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
