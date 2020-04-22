Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9uv-0007UG-ET
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:35:36 +0000
Received: from geraet.fritz.box (i577B626B.versanet.de [87.123.98.107])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id EF9AD24000F
 for <barebox@lists.infradead.org>; Wed, 22 Apr 2020 07:35:27 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 22 Apr 2020 09:35:15 +0200
Message-Id: <20200422073517.64477-1-ahmad@a3f.at>
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
Subject: [PATCH v2 1/3] startup: rename AUTOBOOT_UNKNOWN to more descriptive
 AUTOBOOT_COUNTDOWN
To: barebox@lists.infradead.org

If we export the autoboot state variable for customization, having
unknown as default is not so helpful. Rename it to what actually happens
(abortable countdown).

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  * New commit
---
 common/startup.c | 4 ++--
 include/common.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index e251142fca9e..7373ba7d0cd3 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -195,7 +195,7 @@ static bool test_abort(void)
 #define INITFILE "/env/bin/init"
 #define MENUFILE "/env/menu/mainmenu"
 
-static enum autoboot_state autoboot_state = AUTOBOOT_UNKNOWN;
+static enum autoboot_state autoboot_state = AUTOBOOT_COUNTDOWN;
 
 /**
  * set_autoboot_state - set the autoboot state
@@ -229,7 +229,7 @@ enum autoboot_state do_autoboot_countdown(void)
 	char *abortkeys = NULL;
 	unsigned char outkey;
 
-	if (autoboot_state != AUTOBOOT_UNKNOWN)
+	if (autoboot_state != AUTOBOOT_COUNTDOWN)
 		return autoboot_state;
 
 	menu_exists = stat(MENUFILE, &s) == 0;
diff --git a/include/common.h b/include/common.h
index ef2e4e5c31dd..b2533f4176bc 100644
--- a/include/common.h
+++ b/include/common.h
@@ -87,7 +87,7 @@ unsigned long long strtoull_suffix(const char *str, char **endp, int base);
 extern int (*barebox_main)(void);
 
 enum autoboot_state {
-	AUTOBOOT_UNKNOWN,
+	AUTOBOOT_COUNTDOWN,
 	AUTOBOOT_ABORT,
 	AUTOBOOT_MENU,
 	AUTOBOOT_BOOT,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
