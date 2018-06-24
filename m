Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXCaZ-0000PF-TA
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 21:30:29 +0000
Received: by mail-pg0-x242.google.com with SMTP id l65-v6so5157910pgl.8
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 14:30:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 14:29:56 -0700
Message-Id: <20180624212959.27468-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/4] fs: devfs-core: Make use of devpath_to_name()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/devfs-core.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 6b5e6da6a..f017e1c55 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -28,6 +28,7 @@
 #include <linux/fs.h>
 #include <linux/mtd/mtd.h>
 #include <unistd.h>
+#include <fs.h>
 
 LIST_HEAD(cdev_list);
 
@@ -155,10 +156,7 @@ struct cdev *cdev_open(const char *name, unsigned long flags)
 	struct cdev *cdev;
 	int ret;
 
-	if (!strncmp(name, "/dev/", 5))
-		name += 5;
-
-	cdev = cdev_by_name(name);
+	cdev = cdev_by_name(devpath_to_name(name));
 	if (!cdev)
 		return NULL;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
