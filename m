Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMe8w-0005vE-4o
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 13:19:38 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E4349DC84B2
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 15:19:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Sep 2013 15:20:23 +0200
Message-Id: <1379596826-5743-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379596826-5743-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130919131929.GA1137@ns203013.ovh.net>
 <1379596826-5743-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] console: introduce console_get_by_dev
To: barebox@lists.infradead.org

so we can get console by it's device

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console_common.c | 13 +++++++++++++
 include/console.h       |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/common/console_common.c b/common/console_common.c
index d139d1a..24aa63e 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -108,3 +108,16 @@ int fputc(int fd, char c)
 	return 0;
 }
 EXPORT_SYMBOL(fputc);
+
+struct console_device *console_get_by_dev(struct device_d *dev)
+{
+	struct console_device *cdev;
+
+	for_each_console(cdev) {
+		if (cdev->dev == dev)
+			return cdev;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(console_get_by_dev);
diff --git a/include/console.h b/include/console.h
index 72cf99f..355e259 100644
--- a/include/console.h
+++ b/include/console.h
@@ -49,6 +49,8 @@ struct console_device {
 int console_register(struct console_device *cdev);
 int console_unregister(struct console_device *cdev);
 
+struct console_device *console_get_by_dev(struct device_d *dev);
+
 extern struct list_head console_list;
 #define for_each_console(console) list_for_each_entry(console, &console_list, list)
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
