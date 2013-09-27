Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSEu-0000ix-VE
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:13:26 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A9A09DC203A
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 09:13:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Sep 2013 09:14:13 +0200
Message-Id: <1380266058-18501-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130927071255.GB32444@ns203013.ovh.net>
 <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/8] console: factorise function to get the console by name
To: barebox@lists.infradead.org

rename it to console_get_by_name

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/loadxy.c       | 26 ++------------------------
 common/console_common.c | 17 +++++++++++++++++
 include/console.h       |  1 +
 3 files changed, 20 insertions(+), 24 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index 1def6ae..fe1b5f5 100644
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
 		cdev = console_get_first_current();
 	if (!cdev) {
@@ -180,7 +158,7 @@ static int do_loadx(int argc, char *argv[])
 	}
 
 	if (cname)
-		cdev = get_named_console(cname);
+		cdev = console_get_by_name(cname);
 	else
 		cdev = console_get_first_current();
 	if (!cdev) {
diff --git a/common/console_common.c b/common/console_common.c
index b9a93db..b18409c 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -175,3 +175,20 @@ struct console_device *console_get_first_current(void)
 	return NULL;
 }
 EXPORT_SYMBOL(console_get_first_current);
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
index 400ef7e..7d1f5e5 100644
--- a/include/console.h
+++ b/include/console.h
@@ -65,5 +65,6 @@ bool console_is_input_allow(void);
 void console_allow_input(bool val);
 
 struct console_device *console_get_first_current(void);
+struct console_device *console_get_by_name(const char *cname);
 
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
