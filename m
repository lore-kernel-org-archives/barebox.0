Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXCac-0000PN-RZ
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 21:30:32 +0000
Received: by mail-pf0-x242.google.com with SMTP id b17-v6so5505695pfi.0
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 14:30:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 14:29:59 -0700
Message-Id: <20180624212959.27468-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180624212959.27468-1-andrew.smirnov@gmail.com>
References: <20180624212959.27468-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/4] drivers: of: Make use of devpath_to_name()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/of/of_path.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index e53041b0a..f8bbf2cba 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <of.h>
+#include <fs.h>
 
 #include <linux/mtd/mtd.h>
 
@@ -142,10 +143,7 @@ struct device_node *of_find_node_by_devpath(struct device_node *root, const char
 
 	pr_debug("%s: looking for path %s\n", __func__, path);
 
-	if (!strncmp(path, "/dev/", 5))
-		path += 5;
-
-	cdev = cdev_by_name(path);
+	cdev = cdev_by_name(devpath_to_name(path));
 	if (!cdev) {
 		pr_debug("%s: cdev %s not found\n", __func__, path);
 		return NULL;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
