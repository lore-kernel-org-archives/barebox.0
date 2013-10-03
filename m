Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRdDs-0002DF-Ri
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 07:21:24 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 8364F10550A3
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 09:20:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 Oct 2013 09:21:54 +0200
Message-Id: <1380784920-30890-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131003071723.GP32444@ns203013.ovh.net>
 <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/8] console: factorise function to get the console by name
To: barebox@lists.infradead.org

rename it to console_get_by_name

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/loadxy.c       | 26 ++------------------------
 common/console_common.c | 17 +++++++++++++++++
 include/console.h       |  1 +
 3 files changed, 20 insertions(+), 24 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index 7a91286..b90d2fd 100644
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
@@ -180,7 +158,7 @@ static int do_loadx(int argc, char *argv[])
 	}
 
 	if (cname)
-		cdev = get_named_console(cname);
+		cdev = console_get_by_name(cname);
 	else
 		cdev = console_get_first_active();
 	if (!cdev) {
diff --git a/common/console_common.c b/common/console_common.c
index c3a3053..b02f525 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -202,3 +202,20 @@ struct console_device *console_get_first_active(void)
 	return NULL;
 }
 EXPORT_SYMBOL(console_get_first_active);
+
+struct console_device *console_get_by_name(const char *cname)
+{
+	struct console_device *cdev;
+	const char *target;
+
+	for_each_console(cdev) {
+		target = dev_id(&cdev->class_dev);
+		if (strcmp(cname, target))
+			continue;
+		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT))
+			return cdev;
+		return NULL;
+	}
+	return NULL;
+}
+EXPORT_SYMBOL(console_get_by_name);
diff --git a/include/console.h b/include/console.h
index 2bf791c..b8c3fc9 100644
--- a/include/console.h
+++ b/include/console.h
@@ -66,5 +66,6 @@ void console_allow_input(bool val);
 
 extern int barebox_loglevel;
 struct console_device *console_get_first_active(void);
+struct console_device *console_get_by_name(const char *cname);
 
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
