Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZov-0003fo-Lr
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:44:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:29 +0200
Message-Id: <1469191472-14491-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/18] boot: add single quotes when printing boot target names
To: Barebox List <barebox@lists.infradead.org>

It's nicer to read when target names have quotes around them, it
makes it clear that this is a string passed in somewhere.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 4d29349..e66bacb 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -104,7 +104,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	ret = bootm_boot(&data);
 	if (ret)
-		pr_err("Booting %s failed: %s\n", basename(bs->scriptpath), strerror(-ret));
+		pr_err("Booting '%s' failed: %s\n", basename(bs->scriptpath), strerror(-ret));
 out:
 	return ret;
 }
@@ -130,7 +130,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 {
 	int ret;
 
-	printf("booting %s\n", be->title);
+	printf("booting '%s'\n", be->title);
 
 	if (IS_ENABLED(CONFIG_WATCHDOG) && boot_watchdog_timeout) {
 		ret = watchdog_set_timeout(boot_watchdog_timeout);
@@ -141,7 +141,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 	ret = be->boot(be, verbose, dryrun);
 
 	if (ret)
-		printf("booting %s failed: %s\n", be->title, strerror(-ret));
+		printf("booting '%s' failed: %s\n", be->title, strerror(-ret));
 
 	return ret;
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
