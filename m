Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPZL-0007PB-7X
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:01:48 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:01:26 +0100
Message-Id: <1322103690-32669-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322103690-32669-1-git-send-email-robert.jarzmik@free.fr>
References: <1322103690-32669-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 1/5] console: add console unregistering
To: barebox@lists.infradead.org
Cc: Robert Jarzmik <robert.jarzmik@atosorigin.com>

From: Robert Jarzmik <robert.jarzmik@atosorigin.com>

Some console are transient, like the USB connected serial
console which should be removed when the USB connection is
severed.

Enable console removal for such devices.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 common/console.c        |   24 ++++++++++++++++++------
 common/console_simple.c |    4 ++++
 include/console.h       |    1 +
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/common/console.c b/common/console.c
index 06e9c29..706d9b2 100644
--- a/common/console.c
+++ b/common/console.c
@@ -154,13 +154,9 @@ int console_register(struct console_device *newcdev)
 
 	list_add_tail(&newcdev->list, &console_list);
 
-	if (console_output_buffer) {
-		while (kfifo_getc(console_output_buffer, &ch) == 0)
-			console_putc(CONSOLE_STDOUT, ch);
-		kfifo_free(console_output_buffer);
-		console_output_buffer = NULL;
-	}
 
+	while (kfifo_getc(console_output_buffer, &ch) == 0)
+		console_putc(CONSOLE_STDOUT, ch);
 	if (first)
 		barebox_banner();
 
@@ -168,6 +164,22 @@ int console_register(struct console_device *newcdev)
 }
 EXPORT_SYMBOL(console_register);
 
+int console_unregister(struct console_device *cdev)
+{
+	struct device_d *dev = &cdev->class_dev;
+	int status;
+
+	list_del(&cdev->list);
+	if (list_empty(&console_list))
+		initialized = CONSOLE_UNINITIALIZED;
+
+	status = unregister_device(dev);
+	if (!status)
+		memset(cdev, 0, sizeof(*cdev));
+	return status;
+}
+EXPORT_SYMBOL(console_unregister);
+
 static int getc_raw(void)
 {
 	struct console_device *cdev;
diff --git a/common/console_simple.c b/common/console_simple.c
index 7304d8e..7e0619d 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -157,3 +157,7 @@ int console_register(struct console_device *newcdev)
 	}
 	return 0;
 }
+
+int console_unregister(struct console_device *cdev)
+{
+}
diff --git a/include/console.h b/include/console.h
index 3bcc5db..c0817f6 100644
--- a/include/console.h
+++ b/include/console.h
@@ -49,6 +49,7 @@ struct console_device {
 };
 
 int console_register(struct console_device *cdev);
+int console_unregister(struct console_device *cdev);
 
 extern struct list_head console_list;
 #define for_each_console(console) list_for_each_entry(console, &console_list, list)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
