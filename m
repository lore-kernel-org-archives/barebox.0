Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeiCO-0008Fv-HE
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:50:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 11:49:39 +0200
Message-Id: <1398678579-17491-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
References: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] OF: barebox-env: Use bb device on NAND
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/barebox.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 44ec820..8c05924 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -24,6 +24,7 @@
 #include <malloc.h>
 #include <partition.h>
 #include <envfs.h>
+#include <linux/mtd/mtd.h>
 
 struct of_partition {
 	struct list_head list;
@@ -57,6 +58,24 @@ static int environment_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
+	/*
+	 * The environment support is not bad block aware, hence we
+	 * have to use the .bb device. Test if we have a nand device
+	 * and if yes, append .bb to the filename.
+	 */
+	if (!strncmp(path, "/dev/", 5)) {
+		struct cdev *cdev;
+		char *cdevname;
+
+		cdevname = path + 5;
+		cdev = cdev_by_name(cdevname);
+		if (cdev && cdev->mtd && mtd_can_have_bb(cdev->mtd)) {
+			char *bbpath = asprintf("%s.bb", path);
+			free(path);
+			path = bbpath;
+		}
+	}
+
 	dev_info(dev, "setting default environment path to %s\n", path);
 
 	default_environment_path_set(path);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
