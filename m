Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cou5y-0006nj-9n
 for barebox@lists.infradead.org; Fri, 17 Mar 2017 15:47:19 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 17 Mar 2017 16:46:38 +0100
Message-Id: <20170317154638.30513-5-o.rempel@pengutronix.de>
In-Reply-To: <20170317154638.30513-1-o.rempel@pengutronix.de>
References: <20170317154638.30513-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 4/4] fs: add random device
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

this should provide easy access to get_random_bytes() interfaces.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/stddev.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/commands/stddev.c b/commands/stddev.c
index 318d05741..99d60e5de 100644
--- a/commands/stddev.c
+++ b/commands/stddev.c
@@ -17,6 +17,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <stdlib.h>
 
 static ssize_t zero_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
@@ -100,3 +101,31 @@ static int null_init(void)
 }
 
 device_initcall(null_init);
+
+static ssize_t random_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
+{
+	get_random_bytes(buf, count);
+	return count;
+}
+
+static struct file_operations randomops = {
+	.read  = random_read,
+	.lseek = dev_lseek_default,
+};
+
+static int random_init(void)
+{
+	struct cdev *cdev;
+
+	cdev = xzalloc(sizeof (*cdev));
+
+	cdev->name = "random";
+	cdev->flags = DEVFS_IS_CHARACTER_DEV;
+	cdev->ops = &randomops;
+
+	devfs_create(cdev);
+
+	return 0;
+}
+
+device_initcall(random_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
