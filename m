Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuo-0004rk-Fg
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:09 +0200
Message-Id: <1433830875-31119-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
References: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] loadxy: Use console_get_by_name
To: Barebox List <barebox@lists.infradead.org>

Use console_get_by_name rather than iterating over the console list in the
loadxy code. The code in loadxy.c used to test whether a console is active
before using it. This check is dropped along the way since there's no reason
to not being able to use a disabled console for loadxy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadxy.c | 26 ++------------------------
 1 file changed, 2 insertions(+), 24 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index 1e65cb6..62b3956 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -57,28 +57,6 @@ static int console_change_speed(struct console_device *cdev, int baudrate)
 	return current_baudrate;
 }
 
-static struct console_device *get_named_console(const char *cname)
-{
-	struct console_device *cdev;
-	const char *target;
-
-	/*
-	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
-	 * same output console
-	 */
-	for_each_console(cdev) {
-		target = dev_id(&cdev->class_dev);
-		if (strlen(target) != strlen(cname))
-			continue;
-		printf("RJK: looking for %s in console name %s\n",
-		       cname, target);
-		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT))
-		    && !strcmp(cname, target))
-			return cdev;
-	}
-	return NULL;
-}
-
 /**
  * @brief provide the loady(Y-Modem or Y-Modem/G) support
  *
@@ -112,7 +90,7 @@ static int do_loady(int argc, char *argv[])
 	}
 
 	if (cname)
-		cdev = get_named_console(cname);
+		cdev = console_get_by_name(cname);
 	else
 		cdev = console_get_first_active();
 	if (!cdev) {
@@ -196,7 +174,7 @@ static int do_loadx(int argc, char *argv[])
 	}
 
 	if (cname)
-		cdev = get_named_console(cname);
+		cdev = console_get_by_name(cname);
 	else
 		cdev = console_get_first_active();
 	if (!cdev) {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
