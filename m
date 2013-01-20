Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvv-00043e-1u
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:16 +0100
Message-Id: <1358696119-18387-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] startup: Use IS_ENABLED for loading environment
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |   20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 6513ba5..c26bc5f 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -110,16 +110,18 @@ void start_barebox (void)
 
 	debug("initcalls done\n");
 
-#ifdef CONFIG_ENV_HANDLING
-	if (envfs_load(default_environment_path, "/env", 0)) {
-#ifdef CONFIG_DEFAULT_ENVIRONMENT
-		printf("no valid environment found on %s. "
-			"Using default environment\n",
-			default_environment_path);
-		envfs_load("/dev/defaultenv", "/env", 0);
-#endif
+	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
+		int ret;
+
+		ret = envfs_load(default_environment_path, "/env", 0);
+
+		if (ret && IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT)) {
+			printf("no valid environment found on %s. "
+				"Using default environment\n",
+				default_environment_path);
+			envfs_load("/dev/defaultenv", "/env", 0);
+		}
 	}
-#endif
 
 	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
 		printf("running /env/bin/init...\n");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
