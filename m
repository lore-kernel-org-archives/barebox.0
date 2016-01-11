Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIbOO-0007mW-2U
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 12:16:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Jan 2016 13:15:49 +0100
Message-Id: <1452514549-23584-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] hush: Initialize struct p_context
To: Barebox List <barebox@lists.infradead.org>

The hush context must be initialized before it is used. Add
initialization where necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 084dd85..832bc7b 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1865,7 +1865,7 @@ static char * make_string(char ** inp)
 
 int run_command(const char *cmd)
 {
-	struct p_context ctx;
+	struct p_context ctx = {};
 	int ret;
 
 	initialize_context(&ctx);
@@ -1889,7 +1889,7 @@ static int execute_script(const char *path, int argc, char *argv[])
 
 static int source_script(const char *path, int argc, char *argv[])
 {
-	struct p_context ctx;
+	struct p_context ctx = {};
 	char *script;
 	int ret;
 
@@ -1918,7 +1918,7 @@ int run_shell(void)
 {
 	int rcode;
 	struct in_str input;
-	struct p_context ctx;
+	struct p_context ctx = {};
 	int exit = 0;
 
 	login();
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
