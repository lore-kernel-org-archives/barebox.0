Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp93.ord1d.emailsrvr.com ([184.106.54.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haznR-0007Xy-2T
 for barebox@lists.infradead.org; Wed, 12 Jun 2019 09:43:58 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Wed, 12 Jun 2019 10:43:33 +0100
Message-Id: <20190612094333.8648-1-abbotti@mev.co.uk>
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
Subject: [PATCH] startup: execute /env/bin/init as part of the initial shell
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

Commit 90df2a955e3c ("defaultenv: Convert init script to C")
unintentionally changed the way the legacy "/env/bin/init" script is
run, so that it runs in a sub-shell context, effectively changing
`run_command("source /env/bin/init");` to
`run_command("/env/bin/init");`.  Therefore, any changes to shell
environment variables made by the script are undone when the script
exits.  This patch reverts back to the old behavior.

Fixes: 90df2a955e3c ("defaultenv: Convert init script to C")
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 common/startup.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 9fac0eabb..9345d131b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -188,11 +188,12 @@ static bool test_abort(void)
 	return false;
 }
 
+#define INITFILE "/env/bin/init"
+
 static int run_init(void)
 {
 	DIR *dir;
 	struct dirent *d;
-	const char *initfile = "/env/bin/init";
 	const char *initdir = "/env/init";
 	const char *menufile = "/env/menu/mainmenu";
 	struct stat s;
@@ -206,10 +207,10 @@ static int run_init(void)
 	setenv("PATH", "/env/bin");
 
 	/* Run legacy /env/bin/init if it exists */
-	env_bin_init_exists = stat(initfile, &s) == 0;
+	env_bin_init_exists = stat(INITFILE, &s) == 0;
 	if (env_bin_init_exists) {
-		pr_info("running %s...\n", initfile);
-		run_command(initfile);
+		pr_info("running %s...\n", INITFILE);
+		run_command("source " INITFILE);
 		return 0;
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
