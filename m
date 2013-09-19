Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMe8w-0005vU-4q
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 13:19:38 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B28C3DC8868
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 15:19:18 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Sep 2013 15:20:24 +0200
Message-Id: <1379596826-5743-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] console: introduce new callback set_mode
To: barebox@lists.infradead.org

so we can set the port in rs485 mode

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/console.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/console.h b/include/console.h
index 355e259..ef6e193 100644
--- a/include/console.h
+++ b/include/console.h
@@ -28,6 +28,11 @@
 #define CONSOLE_STDOUT          (1 << 1)
 #define CONSOLE_STDERR          (1 << 2)
 
+enum console_mode {
+	CONSOLE_MODE_NORMAL,
+	CONSOLE_MODE_RS485,
+};
+
 struct console_device {
 	struct device_d *dev;
 	struct device_d class_dev;
@@ -37,6 +42,7 @@ struct console_device {
 	int  (*getc)(struct console_device *cdev);
 	int (*setbrg)(struct console_device *cdev, int baudrate);
 	void (*flush)(struct console_device *cdev);
+	int (*set_mode)(struct console_device *cdev, enum console_mode mode);
 
 	struct list_head list;
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
