Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrmBl-0007bV-7i
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 08:34:26 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Thu, 19 Jul 2012 10:33:49 +0200
Message-Id: <1342686830-30950-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] Add /dev/urandom device.
To: barebox@lists.infradead.org

Nice for testing purposes.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 commands/stddev.c |   39 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 39 insertions(+), 0 deletions(-)

diff --git a/commands/stddev.c b/commands/stddev.c
index 098aea8..b807df6 100644
--- a/commands/stddev.c
+++ b/commands/stddev.c
@@ -20,7 +20,9 @@
  */
 
 #include <common.h>
+#include <clock.h>
 #include <init.h>
+#include <stdlib.h>
 
 static ssize_t zero_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
@@ -104,3 +106,40 @@ static int null_init(void)
 }
 
 device_initcall(null_init);
+
+static ssize_t urandom_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
+{
+	size_t i;
+	unsigned int *buffer;
+
+	buffer = (unsigned int *) buf;
+
+	for (i = 0; i < (count / sizeof(size_t)); i++)
+		buffer[i] = rand() | rand() << 16;
+
+	return count;
+}
+
+static struct file_operations urandomops = {
+	.read  = urandom_read,
+	.lseek = dev_lseek_default,
+};
+
+static int urandom_init(void)
+{
+	struct cdev *cdev;
+
+	cdev = xzalloc(sizeof(*cdev));
+
+	cdev->name = "urandom";
+	cdev->size = ~0;
+	cdev->ops = &urandomops;
+
+	devfs_create(cdev);
+
+	srand(get_time_ns());
+
+	return 0;
+}
+
+device_initcall(urandom_init);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
