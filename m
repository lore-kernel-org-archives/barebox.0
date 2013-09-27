Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSEt-0000iy-JZ
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:13:24 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 779F7DC206B
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 09:13:06 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Sep 2013 09:14:14 +0200
Message-Id: <1380266058-18501-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/8] console: introduce startup and shutdown
To: barebox@lists.infradead.org

so enable the uart only if used
so linux can detect the right one enable if it want

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console.c        |  6 ++++++
 common/console_common.c | 36 ++++++++++++++++++++++++++++++++++++
 common/console_simple.c |  3 +++
 include/console.h       |  4 ++++
 4 files changed, 49 insertions(+)

diff --git a/common/console.c b/common/console.c
index 56bc864..00fd2cf 100644
--- a/common/console.c
+++ b/common/console.c
@@ -83,8 +83,14 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 
 	if (flag && !cdev->f_active) {
 		/* The device is being activated, set its baudrate */
+		if (cdev->startup)
+			cdev->startup(cdev);
 		if (cdev->setbrg)
 			cdev->setbrg(cdev, cdev->baudrate);
+	} else if (!flag && cdev->f_active) {
+		/* The device is being desactivated, shutdown it */
+		if (cdev->shutdown)
+			cdev->shutdown(cdev);
 	}
 
 	active[i] = 0;
diff --git a/common/console_common.c b/common/console_common.c
index b18409c..357e002 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -192,3 +192,39 @@ struct console_device *console_get_by_name(const char *cname)
 	return NULL;
 }
 EXPORT_SYMBOL(console_get_by_name);
+
+int console_open(struct console_device *cdev)
+{
+	int ret;
+
+	if (cdev->f_active)
+		return 0;
+
+	if (cdev->startup) {
+		ret = cdev->startup(cdev);
+		if (ret)
+			return ret;
+	}
+
+	if (cdev->setbrg) {
+		cdev->baudrate = CONFIG_BAUDRATE;
+		ret = cdev->setbrg(cdev, cdev->baudrate);
+		if (ret) {
+			console_close(cdev);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(console_open);
+
+void console_close(struct console_device *cdev)
+{
+	if (!cdev->f_active)
+		return;
+
+	if (cdev->shutdown)
+		cdev->shutdown(cdev);
+}
+EXPORT_SYMBOL(console_close);
diff --git a/common/console_simple.c b/common/console_simple.c
index 6cb72bb..0f83fa4 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -89,6 +89,9 @@ int console_register(struct console_device *newcdev)
 	console_list.prev = console_list.next = &newcdev->list;
 	newcdev->list.prev = newcdev->list.next = &console_list;
 
+	if (newcdev->startup)
+		newcdev->startup(newcdev);
+
 	if (newcdev->setbrg) {
 		newcdev->baudrate = CONFIG_BAUDRATE;
 		newcdev->setbrg(newcdev, newcdev->baudrate);
diff --git a/include/console.h b/include/console.h
index 7d1f5e5..20d9986 100644
--- a/include/console.h
+++ b/include/console.h
@@ -37,6 +37,8 @@ struct console_device {
 	struct device_d *dev;
 	struct device_d class_dev;
 
+	int (*startup)(struct console_device *cdev);
+	void (*shutdown)(struct console_device *cdev);
 	int (*tstc)(struct console_device *cdev);
 	void (*putc)(struct console_device *cdev, char c);
 	int  (*getc)(struct console_device *cdev);
@@ -66,5 +68,7 @@ void console_allow_input(bool val);
 
 struct console_device *console_get_first_current(void);
 struct console_device *console_get_by_name(const char *cname);
+int console_open(struct console_device *cdev);
+void console_close(struct console_device *cdev);
 
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
