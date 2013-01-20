Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvv-00043d-1p
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:15 +0100
Message-Id: <1358696119-18387-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
References: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/10] startup: use IS_ENABLED instead of ifdef
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |   17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index c36bf7c..6513ba5 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -94,9 +94,7 @@ void start_barebox (void)
 {
 	initcall_t *initcall;
 	int result;
-#ifdef CONFIG_COMMAND_SUPPORT
 	struct stat s;
-#endif
 
 	if (!IS_ENABLED(CONFIG_SHELL_NONE))
 		barebox_main = run_shell;
@@ -122,15 +120,16 @@ void start_barebox (void)
 #endif
 	}
 #endif
-#ifdef CONFIG_COMMAND_SUPPORT
-	printf("running /env/bin/init...\n");
 
-	if (!stat("/env/bin/init", &s)) {
-		run_command("source /env/bin/init", 0);
-	} else {
-		printf("not found\n");
+	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
+		printf("running /env/bin/init...\n");
+
+		if (!stat("/env/bin/init", &s)) {
+			run_command("source /env/bin/init", 0);
+		} else {
+			printf("not found\n");
+		}
 	}
-#endif
 
 	if (!barebox_main) {
 		printf("No main function! aborting.\n");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
