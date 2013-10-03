Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRdDs-0002DG-NP
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 07:21:22 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id B5D3210550CF
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 09:20:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 Oct 2013 09:21:55 +0200
Message-Id: <1380784920-30890-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/8] console: introduce startup and shutdown
To: barebox@lists.infradead.org

so enable the uart only if used
so linux can detect the right one enable if it want

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console.c        |  6 ++++++
 common/console_common.c | 35 +++++++++++++++++++++++++++++++++++
 common/console_simple.c |  3 +++
 include/console.h       |  4 ++++
 4 files changed, 48 insertions(+)

diff --git a/common/console.c b/common/console.c
index 56bc864..b0a9542 100644
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
+		/* The device is being deactivated, shutdown it */
+		if (cdev->shutdown)
+			cdev->shutdown(cdev);
 	}
 
 	active[i] = 0;
diff --git a/common/console_common.c b/common/console_common.c
index b02f525..05603c4 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -219,3 +219,38 @@ struct console_device *console_get_by_name(const char *cname)
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
index b8c3fc9..8f0aac0 100644
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
@@ -67,5 +69,7 @@ void console_allow_input(bool val);
 extern int barebox_loglevel;
 struct console_device *console_get_first_active(void);
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
