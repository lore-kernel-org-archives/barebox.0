Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW1tX-0003ND-C6
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 10:30:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2013 12:30:08 +0200
Message-Id: <1381833008-1892-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] boot: remove incomplete 'title' handling in menu
To: barebox@lists.infradead.org

The 'boot -m' command executes the /env/boot/* scripts in order to
determine the title of a boot menu entry. This is not complete and
depends on changes in the environment, so remove it for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 7850805..8105889 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -57,11 +57,10 @@ static void bootsource_action(struct menu *m, struct menu_entry *me)
 
 static int bootsources_menu_env_entries(struct blspec *blspec)
 {
-	const char *path = "/env/boot", *title;
+	const char *path = "/env/boot";
 	DIR *dir;
 	struct dirent *d;
 	struct blspec_entry *be;
-	char *cmd;
 
 	dir = opendir(path);
 	if (!dir)
@@ -75,17 +74,7 @@ static int bootsources_menu_env_entries(struct blspec *blspec)
 		be = blspec_entry_alloc(blspec);
 		be->me.type = MENU_ENTRY_NORMAL;
 		be->scriptpath = asprintf("/env/boot/%s", d->d_name);
-
-		cmd = asprintf(". %s menu", be->scriptpath);
-		setenv("title", "");
-		run_command(cmd, 0);
-		free(cmd);
-		title = getenv("title");
-
-		if (title)
-			be->me.display = xstrdup(title);
-		else
-			be->me.display = xstrdup(d->d_name);
+		be->me.display = xstrdup(d->d_name);
 	}
 
 	closedir(dir);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
