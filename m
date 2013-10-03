Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRdDt-0002DI-DV
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 07:21:25 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1FCEA10550D8
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 09:21:00 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 Oct 2013 09:21:57 +0200
Message-Id: <1380784920-30890-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/8] console: console_get_by_name pass flags
To: barebox@lists.infradead.org

this will allow to get console by name and specific feature
we use CONSOLE_STDIN to check input support and CONSOLE_STDOUT for output
support at driver level

this will also allow to use non active console for loadxy as example

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/loadxy.c       |  4 ++--
 common/console_common.c | 10 ++++++----
 include/console.h       |  2 +-
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index 7cefba4..41181f2 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -90,7 +90,7 @@ static int do_loady(int argc, char *argv[])
 	}
 
 	if (cname)
-		cdev = console_get_by_name(cname);
+		cdev = console_get_by_name(cname, CONSOLE_STDIN & CONSOLE_STDOUT);
 	else
 		cdev = console_get_first_active();
 	if (!cdev) {
@@ -167,7 +167,7 @@ static int do_loadx(int argc, char *argv[])
 	}
 
 	if (cname)
-		cdev = console_get_by_name(cname);
+		cdev = console_get_by_name(cname, CONSOLE_STDIN & CONSOLE_STDOUT);
 	else
 		cdev = console_get_first_active();
 	if (!cdev) {
diff --git a/common/console_common.c b/common/console_common.c
index 05603c4..6e5fb68 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -203,7 +203,7 @@ struct console_device *console_get_first_active(void)
 }
 EXPORT_SYMBOL(console_get_first_active);
 
-struct console_device *console_get_by_name(const char *cname)
+struct console_device *console_get_by_name(const char *cname, int flags)
 {
 	struct console_device *cdev;
 	const char *target;
@@ -212,9 +212,11 @@ struct console_device *console_get_by_name(const char *cname)
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
index 8f0aac0..f1bc049 100644
--- a/include/console.h
+++ b/include/console.h
@@ -68,7 +68,7 @@ void console_allow_input(bool val);
 
 extern int barebox_loglevel;
 struct console_device *console_get_first_active(void);
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
