Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp21.mail.ru ([94.100.176.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SdGBx-0006JV-3l
 for barebox@lists.infradead.org; Sat, 09 Jun 2012 07:34:38 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat,  9 Jun 2012 11:34:26 +0400
Message-Id: <1339227266-9398-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1339227266-9398-1-git-send-email-shc_work@mail.ru>
References: <1339227266-9398-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] Added "/dev/full" and "/dev/null" devices
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/stddev.c |   55 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 55 insertions(+), 0 deletions(-)

diff --git a/commands/stddev.c b/commands/stddev.c
index 18fea94..8995fad 100644
--- a/commands/stddev.c
+++ b/commands/stddev.c
@@ -49,3 +49,58 @@ static int zero_init(void)
 }
 
 device_initcall(zero_init);
+
+static ssize_t full_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
+{
+	memset(buf, 0xff, count);
+	return count;
+}
+
+static struct file_operations fullops = {
+	.read  = full_read,
+	.lseek = dev_lseek_default,
+};
+
+static int full_init(void)
+{
+	struct cdev *cdev;
+
+	cdev = xzalloc(sizeof (*cdev));
+
+	cdev->name = "full";
+	cdev->size = ~0;
+	cdev->ops = &fullops;
+
+	devfs_create(cdev);
+
+	return 0;
+}
+
+device_initcall(full_init);
+
+static ssize_t null_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
+{
+	return count;
+}
+
+static struct file_operations nullops = {
+	.write = null_write,
+	.lseek = dev_lseek_default,
+};
+
+static int null_init(void)
+{
+	struct cdev *cdev;
+
+	cdev = xzalloc(sizeof (*cdev));
+
+	cdev->name = "null";
+	cdev->size = 0;
+	cdev->ops = &nullops;
+
+	devfs_create(cdev);
+
+	return 0;
+}
+
+device_initcall(null_init);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
