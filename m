Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPU0M-000466-SR
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 09:06:31 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1C1D1DC21F4
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 11:06:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Sep 2013 11:07:24 +0200
Message-Id: <1380272844-24589-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130927071255.GB32444@ns203013.ovh.net>
References: <20130927071255.GB32444@ns203013.ovh.net>
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
Subject: [PATCH 9/9] console: console_get_by_name pass flags
To: barebox@lists.infradead.org

this will allow to get console by name and specific feature
we use CONSOLE_STDIN to check input support and CONSOLE_STDOUT for output
support at driver level

this will also allow to use non active console for loadxy as example

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---

missing patch in the serie

Best Regards,
J.
 commands/loadxy.c       |  4 ++--
 common/console_common.c | 10 ++++++----
 include/console.h       |  2 +-
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index 33f923d..3ae7fd8 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -90,7 +90,7 @@ static int do_loady(int argc, char *argv[])
 	}
 
 	if (cname)
-		cdev = console_get_by_name(cname);
+		cdev = console_get_by_name(cname, CONSOLE_STDIN & CONSOLE_STDOUT);
 	else
 		cdev = console_get_first_current();
 	if (!cdev) {
@@ -167,7 +167,7 @@ static int do_loadx(int argc, char *argv[])
 	}
 
 	if (cname)
-		cdev = console_get_by_name(cname);
+		cdev = console_get_by_name(cname, CONSOLE_STDIN & CONSOLE_STDOUT);
 	else
 		cdev = console_get_first_current();
 	if (!cdev) {
diff --git a/common/console_common.c b/common/console_common.c
index 357e002..f6bd5da 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -176,7 +176,7 @@ struct console_device *console_get_first_current(void)
 }
 EXPORT_SYMBOL(console_get_first_current);
 
-struct console_device *console_get_by_name(const char *cname)
+struct console_device *console_get_by_name(const char *cname, int flags)
 {
 	struct console_device *cdev;
 	const char *target;
@@ -185,9 +185,11 @@ struct console_device *console_get_by_name(const char *cname)
 		target = dev_id(&cdev->class_dev);
 		if (strcmp(cname, target))
 			continue;
-		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT))
-			return cdev;
-		return NULL;
+		if ((flags & CONSOLE_STDIN) && !(cdev->tstc && cdev->getc))
+			return NULL;
+		if ((flags & CONSOLE_STDOUT) && !cdev->putc)
+			return NULL;
+		return cdev;
 	}
 	return NULL;
 }
diff --git a/include/console.h b/include/console.h
index 20d9986..13567fe 100644
--- a/include/console.h
+++ b/include/console.h
@@ -67,7 +67,7 @@ bool console_is_input_allow(void);
 void console_allow_input(bool val);
 
 struct console_device *console_get_first_current(void);
-struct console_device *console_get_by_name(const char *cname);
+struct console_device *console_get_by_name(const char *cname, int flags);
 int console_open(struct console_device *cdev);
 void console_close(struct console_device *cdev);
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
